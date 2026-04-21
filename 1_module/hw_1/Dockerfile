FROM python:3.13

RUN pip install sqlalchemy pandas click psycopg2 pyarrow

WORKDIR /app

COPY ingest_data.py .
COPY green_tripdata_2025-11.parquet .
COPY taxi_zone_lookup.csv .

ENTRYPOINT ["python", "ingest_data.py" ]
