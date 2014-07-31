class tools {

  package { "ConEmu":
    ensure => "installed"
  }

  package { "EthanBrown.ConEmuConfig":
    ensure => "installed"
  }

  package { "BeyondCompare":
    ensure => "installed"
  }

  package { "GoogleChrome":
    ensure => "installed"
  }

  package { "linqpad4":
    ensure => "installed"
  }

  package { "VisualStudio2013Professional":
    install_options => '-InstallArguments "/Features:\'WebTools SQL\'"',
    ensure => "installed"
  }

  package { "visualfsharptools":
    ensure => "installed"
  }

  package { "VS2013.PowerTools":
    ensure => "installed"
  }

  package { "editorconfig.vs":
    ensure => "installed"
  }

  package { "resharper":
    ensure => "installed"
  }

  package { "ncrunch2.vs2013":
    ensure => "installed"
  }

  package { "vim":
    ensure => "installed"
  }
}
