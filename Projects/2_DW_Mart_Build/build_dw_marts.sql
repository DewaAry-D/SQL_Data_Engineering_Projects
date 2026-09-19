-- duckdb dw_mart.duckdb -c ".read build_dw_marts.sql"

-- Step 1: DW - Create star schema tables
.read 01_create_tables_dw.sql

-- Step 2: DW - Load data from CSV file into tables 
.read 02_load_schema_dw.sql