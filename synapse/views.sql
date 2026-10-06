-- 1. CREATE VIEW CALENDAR
CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakeproj1.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUERY1;


-- 2. CREATE VIEW CUSTOMERS
DROP VIEW IF EXISTS customers;

CREATE VIEW gold.customer
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakeproj1.blob.core.windows.net/silver/AdventureWorks_Customer/',
    FORMAT = 'PARQUET'
) AS QUERY1;


-- 3. CREATE VIEW PRODUCT CATEGORIES
CREATE VIEW gold.product_categories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakeproj1.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) AS QUERY1;


-- 4. CREATE VIEW PRODUCTS
CREATE VIEW gold.products
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakeproj1.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUERY1;


-- 5. CREATE VIEW RETURNS
CREATE VIEW gold.returns
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakeproj1.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUERY1;


-- 6. CREATE VIEW SALES
CREATE VIEW gold.sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakeproj1.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUERY1;


-- 7. CREATE VIEW TERRITORIES
CREATE VIEW gold.territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://awstoragedatalakeproj1.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS QUERY1;
