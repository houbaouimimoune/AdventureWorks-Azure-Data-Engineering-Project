This project builds a complete data pipeline using Azure for extracting, transforming, storing, and visualizing AdventureWorks data. Raw data is extracted, stored in Azure Data Lake, cleaned, and transformed with PySpark and Azure Synapse Analytics. Data is loaded into a data warehouse and visualized with Power BI.


This architecture diagram represents a data processing and analytics pipeline using various Azure services. Here's a breakdown of each component and its role in the overall architecture:

- On-premises SQL Server Database:

The starting point of our data pipeline where raw data resides.

- Azure Data Factory (ADF):

Responsible for orchestrating and automating data movement from the on-prem SQL Server Database to Azure Data Lake Gen2.

- Azure Data Lake Gen2:

Bronze Layer:
Raw data ingested from the source.
Gold Layer:
Final, highly curated data for advanced analytics and reporting.

- Azure Databricks:

Provides a platform for data engineering and data science. Used for transforming raw data in the Bronze Layer to refined data in the Silver and Gold Layers using Apache Spark.

- Azure Synapse Analytics:

An integrated analytics service that accelerates time to insight across data warehouses and big data systems. Used for querying and analyzing data stored in the Gold Layer.

- Power BI:

A business analytics tool used to visualize data and share insights across the organization. Connects to Azure Synapse Analytics to create interactive dashboards and reports.


Security & Governance

- Azure Active Directory:

Provides secure authentication and authorization services, ensuring only authorized users can access the data and services.

- Azure Key Vault:

Safeguards cryptographic keys and secrets used by cloud applications and services, enhancing security and compliance.