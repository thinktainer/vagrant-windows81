if $::kernel == windows {
  #default package provider
  Package { provider => chocolatey }
}

node 'default' {
  include tools
  include fonts
}
