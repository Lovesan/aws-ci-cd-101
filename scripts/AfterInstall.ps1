$ErrorActionPreference = 'Stop'

# Are you running in 32-bit mode?
#   (\SysWOW64\ = 32-bit mode)

if ($PSHOME -like "*SysWOW64*")
{
  Write-Warning "Restarting this script under 64-bit Windows PowerShell."

  # Restart this script under 64-bit Windows PowerShell.
  #   (\SysNative\ redirects to \System32\ for 64-bit mode)

  & (Join-Path ($PSHOME -replace "SysWOW64", "SysNative") powershell.exe) -File `
    (Join-Path $PSScriptRoot $MyInvocation.MyCommand) @args

  # Exit 32-bit script.

  Exit $LastExitCode
}
Import-Module WebAdministration

$name = 'AwsCICD101'
$path = "C:\aws-ci-cd-101"

if (-not (Get-Website $name)) {
  New-Website -Name $name -Port 80 -PhysicalPath $path -Force
}
