if $::kernel == windows {
  #default package provider
  Package { provider => chocolatey }
}

include fonts
include tools
