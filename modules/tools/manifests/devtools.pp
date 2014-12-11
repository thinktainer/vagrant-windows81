class tools::devtools {

  package { "git.install":
    ensure => "installed"
  }

  package { "poshgit":
    ensure => "installed"
  }

  package {"ConEmu":
    ensure => "installed"
  }

  package { "beyondcompare":
    ensure => "installed"
  }

  package { "GoogleChrome":
    ensure => "installed"
  }

  package { "linqpad4":
    ensure => "installed"
  }

  package { "stylecop":
    ensure => "installed"
  }

  package { "vim":
    ensure => "installed"
  }

  package { "dotPeek":
    ensure => "installed"
  }

  package { "fiddler":
    ensure => "installed"
  }

  package { "NugetPackageExplorer":
    ensure => "installed"
  }

  package { "windbg":
    ensure => "installed" }

  package { "DotNetDeveloperBundle":
    ensure => "installed" }

  package { "dotTrace":
    ensure => "installed" }
}

