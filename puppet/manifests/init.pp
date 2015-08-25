#
# vagrant-docker
#

########################################
# Install Docker Engine.
########################################
class { 'docker':
  version      => '1.7.1',
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
