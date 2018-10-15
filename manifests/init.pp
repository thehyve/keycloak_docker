class keycloak-docker inherits keycloak-docker::params {
  file { $docker-compose_file_path:
    ensure => file,
    content => template('keycloak-docker/docker-compose.yml.erb'),
  }
}
