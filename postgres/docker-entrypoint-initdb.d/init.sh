#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER pupa SUPERUSER;
    CREATE DATABASE opencivicdata;
    GRANT ALL PRIVILEGES ON DATABASE opencivicdata TO pupa;
EOSQL