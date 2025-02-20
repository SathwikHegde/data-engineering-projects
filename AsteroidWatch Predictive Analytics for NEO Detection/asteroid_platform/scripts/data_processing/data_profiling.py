import requests
import pandas as pd
from ydata_profiling import ProfileReport
import os

api_url = "https://ssd-api.jpl.nasa.gov/sbdb_query.api"

params = {
    "sb-kind": "a",
    "fields": "spkid,full_name,neo,pha,H,diameter,orbit_id,e,i,moid,class",
} 

try:
    response = requests.get(api_url, params=params)
    response.raise_for_status()
    data = response.json()
    asteroids = data.get("data", [])
    fields = data.get("fields", [])

    df = pd.DataFrame(asteroids, columns=fields)
    print(df)

except requests.exceptions.RequestException as e:
    print(f"API request failed: {e}")
except KeyError as e:
    print(f"Error parsing API response: {e}")
except Exception as e:
    print(f"An error occurred: {e}")

# simplified report will be generated with less information than the full one
prof = ProfileReport(df, minimal=True)
prof.to_file(output_file='output.html')

low_memory=False