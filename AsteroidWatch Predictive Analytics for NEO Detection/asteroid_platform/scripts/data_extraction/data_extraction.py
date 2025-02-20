import requests
import pandas as pd
import os

# Constants for API and file names
API_URL = "https://ssd-api.jpl.nasa.gov/sbdb_query.api"
RAW_DATA_DIR = '../../data/raw'  # Directory for raw data
RAW_DATA_FILE = 'asteroid_dataset_raw.csv'
RAW_SAMPLE_DATA_FILE = 'asteroid_dataset_raw_sample.csv' # Added sample file constant

# Ensure the processed data directory exists
os.makedirs(RAW_DATA_DIR, exist_ok=True)

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

    # --- Data Extraction ---
    
    # Print null value counts
    print(df.isna().sum())

    # --- Create Raw Sample Dataset ---
    sample_df = df.head(100)
    output_path = os.path.join(RAW_DATA_DIR, RAW_SAMPLE_DATA_FILE)
    df.to_csv(output_path, index=False)

    # --- Save the raw data ---
    output_path = os.path.join(RAW_DATA_DIR, RAW_DATA_FILE)
    df.to_csv(output_path, index=False)

    # --- Print some summary stats  ---
    print(df.shape)
    print(df.describe())
    print(df.columns)

except requests.exceptions.RequestException as e:
    print(f"API request failed: {e}")
except KeyError as e:
    print(f"Error parsing API response: {e}")
except Exception as e:
    print(f"An error occurred: {e}")