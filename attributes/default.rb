node.default['ocd_rackbox']['user']             = 'ocd'
node.default['ocd_rackbox']['db_root_password'] = 'MyRandomdBpassword'
node.default['ocd_rackbox']['home_dir']         = "/home/#{node['ocd_rackbox']['user']}"
node.default['ocd_rackbox']['group']            = 'sudo'
node.default['ocd_rackbox']['password']         = "$1$3XJlGhET$Zz2s1s0yURmac7p1u1Peh."
node.default['ocd_rackbox']['no_password_cmds'] = [
  "/etc/init.d/nginx"
]
node.default['ocd_rackbox']['ssh_keys']         = [
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDL4enOfTs8LI0KjeGIDQwv0Urstk5sjMjdv8w8jAnWeI4DQ4+RXPjC77F/SrSuLUwUbgO2jAGl6VhgmQ6urnbI7mgZebSMMCobo6qpsvkYW4yAoXoJl1vWZgLbusfl9UqZtRYTFxu3y8z1pZQY69yjRT8AI57AS3XeGG4BpstEpmwPhhhPPQoiBMF6k6rCTh0sivHC0/60uJa6TuKUGXgt4Df97PqXe/Q4ROd8Oo7SZDprqajs43TjrKzKA6ALuurwX7FVi5ZQO4GPRIYi/m5QX7xgvvB5w4YLnOUKr6lFsHOSbjg1ztNqPxSxonJhq0ppqHT3dFNngfN274dztC+t jrmy.ward@gmail.com"
]

node.set['postgresql']['apt_distribution']  = 'precise'
node.set['postgresql']['version']           = "9.2"
node.default['ocd_rackbox']['ruby'] = {
  versions: %w(2.0.0-p247),
  global_version: "2.0.0-p247"
}

node.default['ocd_rackbox']['sshd_config'] = {
  'AcceptEnv' => 'LANG LC_*',
  'AllowAgentForwarding' => 'yes',
  'AllowUsers' => "#{node['ocd_rackbox']['user']} postgres",
  'AuthorizedKeysFile' => '%h/.ssh/authorized_keys',
  'ChallengeResponseAuthentication' => 'no',
  'LoginGraceTime' => '120',
  'LogLevel' => 'INFO',
  'HostbasedAuthentication' => 'no',
  'HostKey' => [ '/etc/ssh/ssh_host_dsa_key',
                 '/etc/ssh/ssh_host_ecdsa_key',
                 '/etc/ssh/ssh_host_rsa_key'
  ],
  'IgnoreRhosts' => 'yes',
  'KeyRegenerationInterval' => '3600',
  'PasswordAuthentication' => 'no',
  'PermitEmptyPasswords' => 'no',
  'PermitRootLogin' => 'no',
  'PrintMotd' => 'no',
  'Port' => 30007,
  'Protocol' => 2,
  'PubkeyAuthentication' => 'yes',
  'PrintLastLog' => 'yes',
  'RhostsRSAAuthentication' => 'no',
  'RSAAuthentication' => 'yes',
  'ServerKeyBits' => '768',
  'StrictModes' => 'yes',
  'Subsystem' => 'sftp /usr/lib/openssh/sftp-server',
  'SyslogFacility' => 'AUTH',
  'TCPKeepAlive' => 'yes',
  'UseDNS' => 'no',
  'UsePAM' => 'no',
  'UsePrivilegeSeparation' => 'yes',
  'X11DisplayOffset' => '10',
  'X11Forwarding' => 'yes'
}
