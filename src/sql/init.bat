@echo off
REM Configuration variables
set DB_USER=root
set DB_PASSWORD=151005zz
set DB_HOST=localhost
set DB_NAME=proman_lavryk

REM Inform the user what is happening
echo Creating the database %DB_NAME% if it does not exist...
mysql -u %DB_USER% -p"%DB_PASSWORD%" -h %DB_HOST% -e "CREATE DATABASE IF NOT EXISTS %DB_NAME;"

echo Running migrations from migrate.sql...
mysql -u %DB_USER% -p"%DB_PASSWORD%" -h %DB_HOST% %DB_NAME% < migrate.sql

echo Seeding the database from seed.sql...
mysql -u %DB_USER% -p"%DB_PASSWORD%" -h %DB_HOST% %DB_NAME% < seed.sql

echo Database setup completed successfully!
pause
exit /b 0
