#
# vagrant-docker
#

########################################
# Install Docker Engine.
########################################
class { 'docker':
  version      => '1.8.1',
  dns          => [
    '8.8.8.8'
  ],
  docker_users => [
    'vagrant'
  ]
}

########################################
# Disable firewall.
########################################
service { 'ufw':
  ensure => stopped,
  enable => false,
}
