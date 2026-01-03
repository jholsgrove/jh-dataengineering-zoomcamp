import sys
import pandas as pd
print("arguments", sys.argv)

month = int(sys.argv[1])

dataFrame = pd.DataFrame({"day": [1,2], "num_passengers": [3,4]})
dataFrame['month'] = month
print (dataFrame.head())

dataFrame.to_parquet(f"output_{month}.parquet")

day = int(sys.argv[1])
print(f"Running pipeline for day {day}")