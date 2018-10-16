ctransmart_packerlass keycloak_docker::params (
  String $db_password = lookup('keycloak_docker::db_password', String, first, ''),
  String $keycloak_user = lookup('keycloak_docker::keycloak_user', String, first, ''),
  String $keycloak_password = lookup('keycloak_docker::keycloak_password', String, first, ''),
  String $keycloak_fqdn = lookup('keycloak_docker::keycloak_fqdn', String, first, ''),
  String $docker_compose_file_path = lookup('keycloak_docker::docker_compose_file_path', String, first, '/tmp/docker-compose.yml'),
) {
  if $db_password == '' {
    fail('No database password specified. Please configure keycloak_docker::db_password')
  }
  if $keycloak_user == '' {
    fail('No admin user specified. Please configure keycloak_docker::keycloak_user')
  }
  if $keycloak_password == '' {
    fail('No admin password specified. Please configure keycloak_docker::keycloak_password')
  }
  if $keycloak_fqdn == '' {
    fail('No server fqdn specified. Please configure keycloak_docker::keycloak_fqdn')
  }
}
