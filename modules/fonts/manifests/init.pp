class fonts {

  package { "sourcecodepro":
    ensure => "installed"
  }

  package { "ubuntu.font":
    ensure => "installed"
  }

  package { "dejavufonts":
    ensure => "installed"
  }

  package { "envycoder":
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
