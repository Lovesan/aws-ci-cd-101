$ErrorActionPreference = 'Stop'

Import-Module WebAdministration

if (Get-Website AwsCICD101) {
  Stop-Website -Name AwsCICD101
}
