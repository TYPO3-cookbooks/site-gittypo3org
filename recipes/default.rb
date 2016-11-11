# todo
# move all the git-server stuff from roles/site-reviewtypo3org and roles/gerrit to this cookbook

include_recipe "t3-base"

include_recipe "t3-chef-vault"
include_recipe "t3-gitweb"
include_recipe "git-daemon"

include_recipe "zabbix-custom-checks::git" if node['t3-base']['flags']['production']
