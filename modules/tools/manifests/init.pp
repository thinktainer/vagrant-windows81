class tools {

  package { "ConEmu":
    ensure => "present"
  }

  package { "EthanBrown.ConEmuConfig":
    ensure => "present"
  }

  package { "BeyondCompare":
    ensure => "present"
  }

  package { "GoogleChrome":
    ensure => "present"
  }

  package { "linqpad4":
    ensure => "present"
  }

  package { "VisualStudio2013Professional":
    ensure => "present"
  }

  package { "visualfsharptools":
    ensure => "present"
  }

  package { "VS2013.PowerTools":
    ensure => "present"
  }

  package { "editorconfig.vs":
    ensure => "present"
  }

  package { "resharper":
    ensure => "present"
  }

  package { "ncrunch2.vs2013":
    ensure => "present"
  }

  package { "vim":
    ensure => "present"
  }
}
