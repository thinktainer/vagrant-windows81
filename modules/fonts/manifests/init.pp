class fonts {

  package { "SourceCodePro":
    ensure => "present"
  }

  package { "ubuntu.font":
    ensure => "present"
  }

  package { "dejavufonts":
    ensure => "present"
  }

  package { "EnvyCodeR":
    ensure => "present"
  }

  package { "Inconsolata":
    ensure => "present"
  }

  package { "bitstreamverafonts":
    ensure => "present"
  }

  package { "DroidSansMono":
    ensure => "present"
  }
}
