class fonts {

  package { "SourceCodePro":
    ensure => "installed"
  }

  package { "ubuntu.font":
    ensure => "installed"
  }

  package { "dejavufonts":
    ensure => "installed"
  }

  package { "EnvyCodeR":
    ensure => "installed"
  }

  package { "Inconsolata":
    ensure => "installed"
  }

  package { "bitstreamverafonts":
    ensure => "installed"
  }

  package { "DroidSansMono":
    ensure => "installed"
  }
}
