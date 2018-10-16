class keycloak_docker inherits keycloak_docker::params {
  include 'docker'
  class { 'docker::compose':
    ensure => present,
  }
  file { $docker_compose_file_path:
    ensure => file,
    content => template('keycloak_docker/docker-compose.yml.erb'),
  }
}
