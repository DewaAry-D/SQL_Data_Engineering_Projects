-- local
-- duckdb dw_mart.duckdb -c ".read build_dw_marts.sql"

-- Mother DuckDB, make sure already create database, name : 'dw_mart'
-- duckdb md:dw_mart -c ".read build_dw_marts.sql"

-- Step 1: DW - Create star schema tables
.read 01_create_tables_dw.sql

-- Step 2: DW - Load data from CSV file into tables 
.read 02_load_schema_dw.sql

-- Step 3: Mart- Create flat mart table
.read 03_create_flat_schema.sql

-- Step 4: Mart - Create skills demand mart
.read 04_create_skills_mart.sql

-- Step 5: Mart - Create priority roles mart
.read 05_create_priority_mart.sql

-- Setep 6: Update priority roles mart
.read 06_update_priority_mart.sql