--CREATE MASTER KEY  ENCRYPTION BY PASSWORD ='Binayakazure@1999' 

CREATE DATABASE SCOPED CREDENTIAL credential_BR
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE SOURCE_SILVER
WITH
(
    LOCATION='https://awstlake.blob.core.windows.net/silver',
    CREDENTIAL = credential_BR
)


--CREATE EXTERNAL DATA SOURCE SOURCE_GOLD
--WITH
--(
--    LOCATION='https://awstlake.blob.core.windows.net/GOLD',
--    CREDENTIAL = credential_BR
--)

--DROP EXTERNAL DATA SOURCE SOURCE_GOLD;
CREATE EXTERNAL DATA SOURCE SOURCE_GOLD
WITH
(
    LOCATION='https://awstlake.dfs.core.windows.net/gold',
    CREDENTIAL = credential_BR
);

CREATE EXTERNAL FILE FORMAT FORMAT_PARQUET
WITH
(
    FORMAT_TYPE =PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
)

--create external table as external sales
---------------------------------------------
CREATE EXTERNAL TABLE gold.extsale
WITH
(
    LOCATION='extsale',
    DATA_SOURCE= SOURCE_GOLD,
    FILE_FORMAT = FORMAT_PARQUET
)
AS 
SELECT * FROM gold.sales;

SELECT * from gold.extsale

