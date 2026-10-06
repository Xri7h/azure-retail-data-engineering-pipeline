-- Create Database Scoped Credential
CREATE DATABASE SCOPED CREDENTIAL credential_rish
WITH IDENTITY = 'Managed Identity';


-- Create External Data Source for Silver
CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awstoragedatalakeproj1.blob.core.windows.net/silver',
    CREDENTIAL = credential_rish
);


-- Create External Data Source for Gold
CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awstoragedatalakeproj1.blob.core.windows.net/gold',
    CREDENTIAL = credential_rish
);


-- Create External File Format
CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);


-- Create External Table
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.sales;


-- Validate External Table
SELECT *
FROM gold.extsales;
