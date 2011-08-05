name "chef-srv"

description "vagrant chef-server ntp i upgrade chef na 0.10.2"

run_list [
  "recipe[ntp]",
  "recipe[chef-server::rubygems-install]", 
  "recipe[chef-server::default]",
  "recipe[upgrade_chef_0.10.0_0.10.2]"

]
