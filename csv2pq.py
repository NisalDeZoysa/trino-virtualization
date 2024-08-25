import pandas as pd


csv_file_path = 'C:/Users/USER/Documents/LSEG/order_data.csv'


parquet_file_path = 'C:/Users/USER/Documents/LSEG/order_data.parquet'


df = pd.read_csv(csv_file_path)


df.to_parquet(parquet_file_path, engine='pyarrow', index=False)

print(f'Converted {csv_file_path} to {parquet_file_path}')
