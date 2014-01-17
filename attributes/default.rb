node.default['rackbox'] = {
  user: 'ocd',
  group: 'sudo',
  password: "$1$3XJlGhET$Zz2s1s0yURmac7p1u1Peh.", # D1git@l0cd
  ssh_keys: [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDL4enOfTs8LI0KjeGIDQwv0Urstk5sjMjdv8w8jAnWeI4DQ4+RXPjC77F/SrSuLUwUbgO2jAGl6VhgmQ6urnbI7mgZebSMMCobo6qpsvkYW4yAoXoJl1vWZgLbusfl9UqZtRYTFxu3y8z1pZQY69yjRT8AI57AS3XeGG4BpstEpmwPhhhPPQoiBMF6k6rCTh0sivHC0/60uJa6TuKUGXgt4Df97PqXe/Q4ROd8Oo7SZDprqajs43TjrKzKA6ALuurwX7FVi5ZQO4GPRIYi/m5QX7xgvvB5w4YLnOUKr6lFsHOSbjg1ztNqPxSxonJhq0ppqHT3dFNngfN274dztC+t jrmy.ward@gmail.com"
  ],
  home_dir: "/home/ocd"
}

node.default['build_essential']['compiletime']      = true
node.default["rackbox"]["db_root_password"]         = "$1$3XJlGhET$Zz2s1s0yURmac7p1u1Peh.", # D1git@l0cd
node.default["rackbox"]["databases"]["postgresql"]  = []
node.default['postgresql']['version']               = "9.2"
node.default['postgresql']['enable_pgdg_apt']       = true
node.default['postgresql']['server']['packages']    = ["postgresql-9.2"]
node.default['postgresql']['dir']                   = "/var/lib/postgresql/9.2/main"

node.default['rackbox']['ruby'] = {
  versions: %w(2.0.0-p247),
  global_version: "2.0.0-p247"
}

# node.default['sshd']['sshd_config']['Port'] = 30007
node.default['sshd']['sshd_config'] = {
  'AllowUsers' => "#{node['rackbox']['user']} postgres",
  'AuthorizedKeysFile' => '%h/.ssh/authorized_keys',
  'LoginGraceTime' => '120',
  'LogLevel' => 'INFO',
  'PasswordAuthentication' => 'yes', # probably want to change to NO
  'PermitEmptyPasswords' => 'no',
  'PermitRootLogin' => 'yes', # set to NO
  'Port' => 30007, # Change to 30007
  'PubkeyAuthentication' => 'yes',
  'PrintLastLog' => 'yes',
  'RSAAuthentication' => 'yes',
  'StrictModes' => 'yes',
  'TCPKeepAlive' => 'yes',
  'UseDNS' => 'no',
  'UsePAM' => 'no',
  'X11DisplayOffset' => '10'
}