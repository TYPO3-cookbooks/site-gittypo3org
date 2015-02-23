# generic defaults

default['site-gittypo3org']['amqp']['server'] = nil
default['site-gittypo3org']['amqp']['user'] = nil
default['site-gittypo3org']['amqp']['vhost'] = nil

# override defaults for production
if node.chef_environment == 'production'
  default['site-gittypo3org']['amqp'] = {
    'server' => 'mq.typo3.org',
    'user' => 'gittypo3org',
    'vhost' => 'infrastructure'
  }
# override defaults for pre-production
elsif node.chef_environment == 'pre-production'
  default['site-gittypo3org']['amqp'] = {
    'server' => 'mq.typo3.org',
    'user' => 'devgittypo3org',
    'vhost' => 'infrastructure_dev'
  }
end

default['git-daemon']['home'] = "/var/git"
default['git-daemon']['path'] = "/var/git/repositories"
default['git-daemon']['max_connections'] = "60"

default['gitweb']['path'] = "/var/git/repositories"
default['gitweb']['ssl'] = true
default['gitweb']['ssl_certificate'] = "wildcard.typo3.org"
