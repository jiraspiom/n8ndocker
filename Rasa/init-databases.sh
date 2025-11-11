#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "postgres" <<-EOSQL
    CREATE DATABASE rasa_db;
    CREATE DATABASE botpress_db;
    GRANT ALL PRIVILEGES ON DATABASE rasa_db TO $POSTGRES_USER;
    GRANT ALL PRIVILEGES ON DATABASE botpress_db TO $POSTGRES_USER;
EOSQL