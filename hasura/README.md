# README

This readme covers what you need to do to get hasura playing nicely with a
simple rails api. The goal is to make it easy to use hasura in development and
commit your changes to hasura metadata.

1. We will use rails for schema changes because Hasura's migrations are so 
  messy and the rails meta migration language is quite convenient after all these years.

2. We will run hasura locally in dev mode with a simple docker script

3. We will use Hasura CLI tools to export hasura metadata into version control

4. We will try to use a hook to import this metadata into production when
   deployed.

To start the hasura docker container run the hasura_docker.sh script in
application root.

Useful commands from within the hasura directory:

% hasura metadata export  (exports hasura metadata into hasura/metadata)
% hasura metadata reload  (reloads the existing metadata)
% hasura metadata apply   (removes and re-applies metadata)


For local development:

Run hasura via the docker-run.sh script in this folder;

Docker hasura container will run on localhost:8080

Set hasura db vars in .env (see .env.example for what you need)

To kill the docker container do "docker ps" to see the container id then "docker kill <id>"

Use Hasura CLI tools to export hasura metadata into version control so they can
be imported by other developers.

## To bring your local hasura up to date with the current metadata:

% hasura metadata apply

## To export your local hasura's metadata (configuration) into version control:

% hasura metadata export

## To export hasura metadata to staging or production (necessary for deployment)

% hasura metadata apply --endpoint "https://staging_url" --admin-secret "<admin secret>"

## A convenient script to apply hasura metadata to staging:

% apply-metadata-to-staging.sh

But it depends on your setting up .env.deployment_secrets  (see example)
