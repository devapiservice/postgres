FROM postgres:10

RUN mkdir -p /tmp/psql_data/

COPY RSPLANES.sql /tmp/psql_data/
