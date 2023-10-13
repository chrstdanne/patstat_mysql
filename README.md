Importing PATSTAT 2023a into MySQL
=========================

Imports the European Patent Office (EPO) 2023a database PATSTAT (https://www.epo.org/en/searching-for-patents/business/patstat) into MySQL.  

Instructions
-------------
- Unzip every `tlsXXX_partYY.zip` found in PATSTAT archives into a single folder. 
- Run `01_create_DB_and_tables.sql` to create the database and tables.
- Open `02_import_data_files.sql` and change the `SET PATH TO DATA FOLDER` chunk to the directory containing the unzipped PATSTAT csv files.
- Run `02_import_data_files.sql` to import the data. This may take some time. You may want to comment out unneeded tables.
- Run `03_row_counts.sql` to check if the row counts match the ones reported by PATSTAT.
- Run `04_indexation.sql` to create indices.
 
