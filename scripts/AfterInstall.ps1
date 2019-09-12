$ErrorActionPreference = 'Stop'

Import-Module WebAdministration

$name = 'AwsCICD101'
$path = "C:\aws-ci-cd-101"

if (-not (Get-Website $name)) {
  New-Website -Name $name -Port 80 -PhysicalPath $path -Force
}
