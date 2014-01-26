name             'ocd_rackbox'
maintainer       'Jeremy Ward'
maintainer_email 'jeremy.ward@digital-ocd.com'
license          'All rights reserved'
description      'Installs/Configures ocd-rackbox-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

supports 'ubuntu'

depends 'apt'
depends 'sshd'
depends 'sudo'
depends 'simple_iptables'
depends 'rbenv'
depends 'nginx'
depends 'nodejs'
# depends 'unicorn', '>= 1.2.2'
depends 'runit', '>= 1.1.2'
depends 'ocd_postgres'
depends 'redisio'