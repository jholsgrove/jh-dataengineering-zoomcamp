import pandas as pd

df = pd.read_parquet("green_tripdata_2025-11.parquet")
df.to_csv("green_tripdata_2025-11.csv", index=False)

print("Done: green_tripdata_2025-11.csv created")