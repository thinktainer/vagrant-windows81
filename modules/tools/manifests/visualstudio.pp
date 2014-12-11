class tools::visualstudio {
  $install = "installed"
  package { "visualstudio2013ultimate":
    install_options => ['-InstallArguments /Features:WebTools SQL'],
    ensure => $install
  }

  package { "VS2013.3":
    ensure => $install,
    require => Package['visualstudio2013ultimate']
  }

  package { "visualfsharptools":
    ensure => $install,
    require => Package['visualstudio2013ultimate']
  }

  package { "VS2013.PowerTools":
    ensure => $install,
    require => Package['visualstudio2013ultimate']
  }

  package { "editorconfig.vs":
    ensure => $install,
    require => Package['visualstudio2013ultimate']
  }

  package { "resharper":
    ensure => $install,
    require => Package['visualstudio2013ultimate']
  }

  package { "ncrunch2.vs2013":
    ensure => $install,
    require => Package['visualstudio2013ultimate']
  }

  package { "ilmerge":
    ensure => "installed",
    require => Package['visualstudio2013ultimate']
  }


}
