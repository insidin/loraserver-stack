#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" "$POSTGRES_DB" <<-EOSQL
    create role loraserver_as with login password 'loraserver_as';
    create database loraserver_as with owner loraserver_as;
EOSQL
