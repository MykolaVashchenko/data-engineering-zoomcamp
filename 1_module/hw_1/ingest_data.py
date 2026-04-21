import pandas as pd
from sqlalchemy import create_engine
import click

@click.command()
@click.option('--pg-user', default='root', help='PostgreSQL user')
@click.option('--pg-pass', default='root', help='PostgreSQL password')
@click.option('--pg-host', default='localhost', help='PostgreSQL host')
@click.option('--pg-port', default=5432, type=int, help='PostgreSQL port')
@click.option('--pg-db', default='green_ny_taxi_trips', help='PostgreSQL database name')
@click.option('--target-table-1', default='green_taxi_data', help='Target table name for trips')
@click.option('--target-table-2', default='zones', help='Target table name for zones')

def run(pg_user, pg_pass, pg_host, pg_port, pg_db, target_table_1, target_table_2):
    engine = create_engine(f'postgresql://{pg_user}:{pg_pass}@{pg_host}:{pg_port}/{pg_db}')

    df_trips = pd.read_parquet("green_tripdata_2025-11.parquet")
    df_zones = pd.read_csv("taxi_zone_lookup.csv")


    df_trips.to_sql(
            name=target_table_1, 
            con=engine, 
            if_exists='replace'
        )
    
    df_zones.to_sql(
            name=target_table_2, 
            con=engine, 
            if_exists='replace'
        )

if __name__ == '__main__':
    run()
