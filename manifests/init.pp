class keycloak_docker inherits keycloak_docker::params {
  file { $docker_compose_file_path:
    ensure => file,
    content => template('keycloak_docker/docker-compose.yml.erb'),
  }
}
