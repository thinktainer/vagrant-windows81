$ChocoInstallPath = "$env:ALLUSERPROFILE\chocolatey\bin"

# Put chocolatey on the MACHINE path, vagrant does not have access to user environment variables
$envPath = $env:PATH
if (!$envPath.ToLower().Contains($ChocoInstallPath.ToLower())) {

  Write-Host "PATH environment variable does not have `'$ChocoInstallPath`' in it. Adding..."
  $ActualPath = [Environment]::GetEnvironmentVariable('Path', [System.EnvironmentVariableTarget]::Machine)
  $StatementTerminator = ";"
  $HasStatementTerminator = $ActualPath -ne $null -and $ActualPath.EndsWith($StatementTerminator)
  If (!$HasStatementTerminator -and $ActualPath -ne $null) {$ChocoInstallPath = $StatementTerminator + $ChocoInstallPath}
  if (!$ChocoInstallPath.EndsWith($StatementTerminator)) {$ChocoInstallPath += $StatementTerminator}

  [Environment]::SetEnvironmentVariable('Path', $ActualPath + $ChocoInstallPath, [System.EnvironmentVariableTarget]::Machine)
}

$env:Path += ";$ChocoInstallPath"

if (!(Test-Path $ChocoInstallPath)) {
  # Install chocolatey
  iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))
}

Write-Host "Checking existence of puppet in path"
$puppetbinpath = "C:\Program Files\Puppet Labs\Puppet\bin"
if (!$env:Path.ToLower().Contains($puppetbinpath.ToLower())) {
    Write-Host "Adding puppet bin to path."
    $currentPath = $env:Path
    $newPath = $currentPath + ";" + $puppetbinpath
    [System.Environment]::SetEnvironmentVariable('Path', $newPath,  [System.EnvironmentVariableTarget]::Process)
    Write-Host "$env:Path"
}
cinst -y puppet
(new-object net.webclient).DownloadFile("https://www.geotrust.com/resources/root_certificates/certificates/GeoTrust_Global_CA.pem", "C:\tmp\GeoTrust_Global_CA.pem")
certutil -addstore Root C:\tmp\GeoTrust_Global_CA.pem
#$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
puppet module install --force chocolatey/chocolatey

