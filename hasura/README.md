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


