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
