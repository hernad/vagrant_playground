name "chef-srv"

description "vagrant chef-server ntp i upgrade chef na 0.10.2"

run_list [
  "recipe[ntp]",
  "recipe[hosts]",
  "recipe[chef-server::rubygems-install]", 
  "recipe[chef-server::default]",
  "recipe[chef_daemon_bin_sbin::default]",
  "recipe[chef_upgrade_0.10.0_0.10.2]"

]
