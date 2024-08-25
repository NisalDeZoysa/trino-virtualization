import pandas as pd
from sqlalchemy.engine import create_engine

# Create a Trino connection
engine = create_engine('trino://user@localhost:8081/tpch/sf1?source=python_client')

# Define your query
query = 'SELECT * FROM orders'

# Execute the query and fetch the data into a DataFrame
df = pd.read_sql(query, engine)

# Save the DataFrame to a CSV file
df.to_csv('C:/Users/USER/Documents/LSEG/order_data.csv', index=False)
