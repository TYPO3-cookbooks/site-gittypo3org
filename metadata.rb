name             "site-gittypo3org"
maintainer       "Steffen Gebert / TYPO3 Association"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache 2.0"
description      "Installs/configures git.typo3.org"
version          "0.1.13"

depends "zabbix-custom-checks", "= 0.2.0"
depends "ssl_certificates", "= 1.1.3"
depends "t3-chef-vault", "= 1.0.1"
depends "t3-gitweb", "= 0.1.7"
depends "git-daemon", "= 1.2.0"
depends "apt"
depends "runit"
