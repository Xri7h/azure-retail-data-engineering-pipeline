# Azure Retail Data Engineering Pipeline

End-to-end retail data engineering project using Azure Data Factory, ADLS Gen2, Databricks, PySpark and Azure Synapse Analytics.


## Architecture

```text
Source Data
AdventureWorks CSVs
        |
        v
Azure Data Factory
Lookup -> ForEach -> Dynamic Copy
        |
        v
ADLS Gen2 - Bronze
Raw CSV Data
        |
        v
Azure Databricks
PySpark Transformations
        |
        v
ADLS Gen2 - Silver
Parquet Data
        |
        v
Azure Synapse Analytics
Gold Views / External Table
        |
        v
SQL Analytics
```


## Project Overview

This project demonstrates an end-to-end Azure data engineering pipeline for processing retail data.

The pipeline ingests raw CSV data using Azure Data Factory, stores it in ADLS Gen2, transforms and cleans the data using PySpark in Azure Databricks, and exposes the processed data for analytics through Azure Synapse Analytics.

## Technology Stack

- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks
- PySpark
- Azure Synapse Analytics
- SQL
- GitHub

## Pipeline Flow

1. **Source Data**  
   AdventureWorks retail CSV files.

2. **Azure Data Factory**  
   Uses Lookup, ForEach and Dynamic Copy activities to ingest the source files.

3. **ADLS Gen2 - Bronze**  
   Stores the ingested raw data.

4. **Azure Databricks**  
   Uses PySpark to clean and transform the data.

5. **ADLS Gen2 - Silver**  
   Stores the transformed data in Parquet format.

6. **Azure Synapse Analytics**  
   Creates Gold views and an external table for SQL-based analytics.

## Key Features

- Dynamic ingestion of multiple CSV files using Azure Data Factory
- Bronze, Silver and Gold data lake architecture
- PySpark-based data cleaning and transformation
- Parquet-based Silver layer
- SQL views for analytics using Azure Synapse
- External table creation for analytical access
- Azure Managed Identity for secure data access
- GitHub-based project version control

## Data Lake Layers

### Bronze

Raw CSV data ingested from the source using Azure Data Factory.

### Silver

Cleaned and transformed data processed using PySpark and stored in Parquet format.

### Gold

Analytics-ready data exposed through Azure Synapse views and external tables.

## Data Entities

The project processes multiple retail business entities including:

- Customers
- Products
- Product Categories
- Product SubCategories
- Sales
- Returns
- Calendar
- Territories

## Project Structure

```text
azure-retail-data-engineering-pipeline/
│
├── README.md
├── Silver_layer.ipynb
│
├── Architecture/
│   └── README.md
│
├── adf/
│   ├── ARMTemplateForFactory.json
│   └── ARMTemplateParametersForFactory.json
│
└── synapse/
    ├── views.sql
    └── external_tables.sql
```

## Azure Data Factory

The ingestion pipeline uses:

- Lookup activity
- ForEach activity
- Dynamic Copy activity
- Parameterized datasets
- Azure Data Lake Storage Gen2 linked service

This enables multiple source CSV files to be ingested dynamically into the Bronze layer.

## Databricks and PySpark

Azure Databricks is used for Silver-layer processing.

The PySpark notebook performs data cleaning and transformation operations such as:

- Column transformations
- String manipulation
- Date and timestamp transformations
- Data type conversions
- Aggregations
- Data preparation for analytics

The transformed datasets are written to ADLS Gen2 in Parquet format.

## Azure Synapse Analytics

Azure Synapse provides the SQL-based analytical layer.

The project creates:

- SQL views over Silver Parquet data
- External data sources
- External file format
- External table for analytical access

This allows the processed data to be queried using SQL.

## Security

Azure Managed Identity is used for secure access between Azure services and ADLS Gen2 without exposing storage account credentials in the project code.


## Project Objective

The objective of this project is to demonstrate how a cloud-based data engineering pipeline can ingest raw business data, store it in a data lake, transform it using PySpark, and make the processed data available for SQL-based analytics.

## Outcome

The project demonstrates an end-to-end Azure data engineering workflow:

**Ingestion → Storage → Transformation → Analytics**

using Azure Data Factory, ADLS Gen2, Databricks, PySpark and Azure Synapse Analytics.
