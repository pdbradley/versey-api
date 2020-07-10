#! /bin/bash
docker run -d -p 8080:8080 \
       -e HASURA_GRAPHQL_DATABASE_URL=postgres://philip:@host.docker.internal:5432/jackdawg_api_development \
       -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
       hasura/graphql-engine:v1.2.2
