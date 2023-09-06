FROM postgres

COPY ./backup.backup /docker-entrypoint-initdb.d/backup.backup

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=inventory_system_db

COPY restore.sh /docker-entrypoint-initdb.d/restore.sh
EXPOSE 5432