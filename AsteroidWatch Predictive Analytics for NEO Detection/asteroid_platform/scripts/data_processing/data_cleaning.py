import requests
import pandas as pd
import os

# Constants for API and file names
API_URL = "https://ssd-api.jpl.nasa.gov/sbdb_query.api"
PROCESSED_DATA_DIR = '../../data/processed'  # Directory for processed data
# PROCESSED_DATA_DIR = os.path.join(os.getcwd(), 'asteroid_platform', 'data', 'processed')  # Absolute path
CLEAN_DATA_FILE = 'asteroid_dataset_clean.csv'
SAMPLE_DATA_FILE = 'asteroid_dataset_clean_sample.csv' # Added sample file constant

# Ensure the processed data directory exists
os.makedirs(PROCESSED_DATA_DIR, exist_ok=True)

# API Parameters
params = {
    "sb-kind": "a",
    "fields": "full_name,neo,pha,H,diameter,orbit_id,e,i,moid,class",
}

try:
    # Make API request
    response = requests.get(API_URL, params=params)
    response.raise_for_status()

    # Parse JSON response
    data = response.json()
    asteroids = data.get("data", [])
    fields = data.get("fields", [])

    # Create Pandas DataFrame
    df = pd.DataFrame(asteroids, columns=fields)

    # --- Data Cleaning and Preprocessing ---
    
    # Print null value counts
    print(df.isna().sum())

    # Strip whitespace
    df['full_name'] = df['full_name'].str.strip()
    df['orbit_id'] = df['orbit_id'].str.strip()

    # Convert to numeric types
    df['diameter'] = pd.to_numeric(df['diameter'], errors='coerce')
    df['H'] = pd.to_numeric(df['H'], errors='coerce')
    df['e'] = pd.to_numeric(df['e'], errors='coerce')
    df['i'] = pd.to_numeric(df['i'], errors='coerce')
    df['moid'] = pd.to_numeric(df['moid'], errors='coerce')

    # Fill NaN values
    df['diameter'] = df['diameter'].fillna('Unknown')
    df['H'] = df['H'].fillna('Unknown')
    df['e'] = df['e'].fillna('Unknown')
    df['i'] = df['i'].fillna('Unknown')
    df['moid'] = df['moid'].fillna('Unknown')

    # Remove duplicate rows
    df.drop_duplicates(inplace=True)

    # --- Feature Engineering (Categorical Variables) ---

    # Convert 'neo' and 'pha' to 'Yes'/'No'
    df['neo'] = df['neo'].replace({'Y': 'Yes', 'N': 'No'})
    df['pha'] = df['pha'].replace({'Y': 'Yes', 'N': 'No'})

    # Categorical Diameter
    def categorize_diameter(diameter):
        if isinstance(diameter, str):
            return "unknown_size"
        if isinstance(diameter, (int, float)):
            if 0 <= diameter <= 24.9999:
                return "small"
            elif 25 <= diameter <= 99.9999:
                return "medium"
            elif diameter >= 100:
                return "large"
        else:
            return "unknown_size"

    df['diameter_category'] = df['diameter'].apply(categorize_diameter)

    # Categorical Absolute Magnitude (H)
    def categorize_h(h):
        if isinstance(h, str):
            return "unknown"
        if isinstance(h, (int, float)):
            if h < 0:
                return "negative"
            elif 0 <= h <= 9.99999999:
                return "low"
            elif 10 <= h <= 19.99999999:
                return "medium"
            elif h >= 20:
                return "high"
        else:
            return "unknown"

    df['h_category'] = df['H'].apply(categorize_h)

    # Categorical Eccentricity (e)
    def categorize_eccentricity(e):
        if isinstance(e, (int, float)):
            if 0 <= e <= 0.04:
                return "circular"
            elif 0.04000001 <= e <= 1:
                return "elliptical"
            elif e >= 1.0000001:
                return "hyperbolic"
        else:
            return "unknown"

    df['eccentricity_category'] = df['e'].apply(categorize_eccentricity)

    # Categorical Inclination (i)
    def categorize_inclination(i):
        if isinstance(i, (int, float)):
            if 0 <= i <= 90:
                return "acute"
            elif i > 90:
                return "obtuse"
        else:
            return "unknown"

    df['inclination_category'] = df['i'].apply(categorize_inclination)

    # Categorical MOID
    def categorize_moid(moid):
        if isinstance(moid, str):
            return "unknown"
        if isinstance(moid, (int, float)):
            if 0 <= moid <= 3.18:
                return "small"
            elif 3.180001 <= moid <= 25:
                return "medium"
            elif moid > 25:
                return "large"
        else:
            return "unknown"

    df['moid_category'] = df['moid'].apply(categorize_moid)

    # --- Renaming Columns (Done after feature engineering to avoid conflicts) ---
    df.rename(columns={"full_name": "full_name", "e": "eccentricity", "i": "inclination", "class": "orbit_class"}, inplace=True)

    # --- Add 'id' Column ---
    df.insert(0, 'id', ['a{:07d}'.format(i + 1) for i in range(len(df))])

    # --- Create Sample Dataset ---
    sample_df = df.head(10)
    output_path = os.path.join(PROCESSED_DATA_DIR, SAMPLE_DATA_FILE)
    df.to_csv(output_path, index=False)

    # --- Save the processed data ---
    output_path = os.path.join(PROCESSED_DATA_DIR, CLEAN_DATA_FILE)
    df.to_csv(output_path, index=False)

    # --- Print some summary stats ---
    print(df.shape)
    print(df.describe())
    print(df.columns)

except requests.exceptions.RequestException as e:
    print(f"API request failed: {e}")
except KeyError as e:
    print(f"Error parsing API response: {e}")
except Exception as e:
    print(f"An error occurred: {e}")