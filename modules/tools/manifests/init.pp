class tools {

  package { "git.install":
    ensure => "installed"
  }

  package { "poshgit":
    ensure => "installed"
  }

  package {"cmder":
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

  package { "VisualStudio2013ultimate":
    install_options => '-InstallArguments "/Features:\'WebTools SQL\'"',
    ensure => "installed"
  }

  package { "VS2013.3":
    ensure => "installed",
    require => Package['VisualStudio2013ultimate']
  }

  package { "visualfsharptools":
    ensure => "installed",
    require => Package['VisualStudio2013ultimate']
  }

  package { "VS2013.PowerTools":
    ensure => "installed",
    require => Package['VisualStudio2013ultimate']
  }

  package { "stylecop":
    ensure => "installed"
  }

  package { "editorconfig.vs":
    ensure => "installed",
    require => Package['VisualStudio2013ultimate']
  }

  package { "resharper":
    ensure => "installed",
    require => Package['VisualStudio2013ultimate']
  }

  package { "ncrunch2.vs2013":
    ensure => "installed",
    require => Package['VisualStudio2013ultimate']
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

  package { "ilmerge":
    ensure => "installed",
    require => Package['VisualStudio2013ultimate']
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
