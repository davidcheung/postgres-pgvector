ARG POSTGRES_VERSION=13
# Use PostgreSQL 13 as the base image
FROM postgres:${POSTGRES_VERSION}
ENV POSTGRES_VERSION=${POSTGRES_VERSION:-13}
# Set the environment variable for the pgvector version

# Run the required commands to install pgvector
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       postgresql-${POSTGRES_VERSION}-pgvector 

# Run the PostgreSQL server
CMD ["postgres"]
