CREATE SCHEMA GOLD;

CREATE VIEW gold.calendar
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstlake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1
