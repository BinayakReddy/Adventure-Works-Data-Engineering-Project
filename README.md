# Azure-Data-Engineering-Project | End-to-End Data Pipeline.

Introduction

The goal of this project is to build an end-to-end data engineering pipeline on Microsoft Azure to ingest, transform, and analyze large datasets. The project demonstrates how cloud services can be used to process raw data and generate meaningful insights using modern data engineering tools such as Azure Data Factory, Azure Data Lake Storage, Azure Databricks, and Power BI.

**Architecture**
![architecture](https://github.com/BinayakReddy/Adventure-Works-Data-Engineering-Project/blob/main/Azure%20Project%20Architecture.jpeg)

The data pipeline follows the Medallion Architecture (Bronze, Silver, Gold) approach:
Bronze Layer – Raw data ingestion into Azure Data Lake Storage.
Silver Layer – Data cleaning and transformation using Azure Databricks with Apache Spark.
Gold Layer – Curated datasets prepared for analytics and reporting.
Visualization Layer – Data connected to Power BI dashboards for business insights.

**Technology Used**

1.Programming / Processing
>Apache Spark (Databricks)

2. Microsoft Azure Services
> Azure Data Factory
> Azure Data Lake Storage Gen2
> Azure Databricks

3.Visualization
  >Power BI

**Dataset Used**

This project uses a sample dataset to demonstrate the data ingestion, transformation, and analytics pipeline.
The dataset contains structured data used for building analytical models and dashboards.

Link :https://www.kaggle.com/datasets/ukveteran/adventure-works

**Data Pipeline Workflow**

> Raw data is ingested into Azure Data Lake Storage using Azure Data Factory.

> Azure Databricks processes and transforms the raw data using Apache Spark.

> Data is organized into Bronze, Silver, and Gold layers for better data management.

> The curated data is connected to Power BI for visualization and reporting.

**Dashboard & Insights**

Power BI dashboards are created to provide interactive analytics and insights based on the processed data.
