## Architecture

```mermaid
flowchart LR
    A[Source Data<br/>AdventureWorks CSVs]
    B[Azure Data Factory<br/>Lookup → ForEach → Dynamic Copy]
    C[ADLS Gen2<br/>Bronze]
    D[Azure Databricks<br/>PySpark Transformations]
    E[ADLS Gen2<br/>Silver]
    F[Azure Synapse Analytics<br/>Gold Views / External Table]
    G[SQL Analytics]

    A --> B
    B --> C
    C --> D
    D --> E
    E --> F
    F --> G
```
