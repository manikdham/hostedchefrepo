# base-ubuntu.rb
name "base-ubuntu"
description "base role for base ubuntu server"
run_list "recipe[apt::default]","recipe[chef-client::cron]"