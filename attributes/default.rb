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

node.default['ocd_rackbox']['sshd_config']['AcceptEnv'] = 'LANG LC_*'
node.default['ocd_rackbox']['sshd_config']['AllowAgentForwarding'] = 'yes'
node.default['ocd_rackbox']['sshd_config']['AllowUsers'] = "#{node['ocd_rackbox']['user']} postgres"
node.default['ocd_rackbox']['sshd_config']['AuthorizedKeysFile'] = '%h/.ssh/authorized_keys'
node.default['ocd_rackbox']['sshd_config']['ChallengeResponseAuthentication'] = 'no'
node.default['ocd_rackbox']['sshd_config']['LoginGraceTime'] = '120'
node.default['ocd_rackbox']['sshd_config']['LogLevel'] = 'INFO'
node.default['ocd_rackbox']['sshd_config']['HostbasedAuthentication'] = 'no'
node.default['ocd_rackbox']['sshd_config']['HostKey'] = [
  '/etc/ssh/ssh_host_dsa_key',
  '/etc/ssh/ssh_host_ecdsa_key',
  '/etc/ssh/ssh_host_rsa_key'
],
node.default['ocd_rackbox']['sshd_config']'IgnoreRhosts'] = 'yes'
node.default['ocd_rackbox']['sshd_config']'KeyRegenerationInterval'] = '3600'
node.default['ocd_rackbox']['sshd_config']'PasswordAuthentication'] = 'yes' # probably want to change to NO
node.default['ocd_rackbox']['sshd_config']'PermitEmptyPasswords'] = 'no'
node.default['ocd_rackbox']['sshd_config']'PermitRootLogin'] = 'yes' # set to NO
node.default['ocd_rackbox']['sshd_config']'PrintMotd'] = 'no'
node.default['ocd_rackbox']['sshd_config']'Port'] = 30007 # Change to 30007
node.default['ocd_rackbox']['sshd_config']'Protocol'] = 2
node.default['ocd_rackbox']['sshd_config']'PubkeyAuthentication'] = 'yes'
node.default['ocd_rackbox']['sshd_config']'PrintLastLog'] = 'yes'
node.default['ocd_rackbox']['sshd_config']'RhostsRSAAuthentication'] = 'no'
node.default['ocd_rackbox']['sshd_config']'RSAAuthentication'] = 'yes'
node.default['ocd_rackbox']['sshd_config']'ServerKeyBits'] = '768'
node.default['ocd_rackbox']['sshd_config']'StrictModes'] = 'yes'
node.default['ocd_rackbox']['sshd_config']'Subsystem'] = 'sftp /usr/lib/openssh/sftp-server'
node.default['ocd_rackbox']['sshd_config']'SyslogFacility'] = 'AUTH'
node.default['ocd_rackbox']['sshd_config']'TCPKeepAlive'] = 'yes'
node.default['ocd_rackbox']['sshd_config']'UseDNS'] = 'no'
node.default['ocd_rackbox']['sshd_config']'UsePAM'] = 'no'
node.default['ocd_rackbox']['sshd_config']'UsePrivilegeSeparation'] = 'yes'
node.default['ocd_rackbox']['sshd_config']'X11DisplayOffset'] = '10'
node.default['ocd_rackbox']['sshd_config']'X11Forwarding'] = 'yes'

