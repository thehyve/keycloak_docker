# keycloak-docker
Puppet module to run keycloak with docker-compose

**Prerequirements**

You should have puppet-docker module installed.

**Install module**

Add this module as submodule:
`git submodule add https://github.com/thehyve/keycloak-docker.git`

Parameters:
* keycloak-docker::db_password - required
* keycloak-docker::keycloak_user - required
* keycloak-docker::keycloak_password - required
* keycloak-docker::keycloak_fqdn - required
* keycloak-docker::docker_compose_file_path - default is `/tmp/docker-compose.yml`
