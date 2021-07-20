#requires -Version 2.0 -Modules Microsoft.PowerShell.Utility, Pester, PSScriptAnalyzer, System.IO.Ports.Commands

[CmdletBinding()]
param(
  [string]$oldVersion = '1.0.0.0',
  [string]$version = '1.1.0.0',
  [string]$moduleName = 'System.IO.Ports.Commands',
  [string]$StartWith = "$env:USERPROFILE/Documents/GitHub/"
)

$FolderPath = '{0}\{1}'
Add-Type -AssemblyName Microsoft.PowerShell.Commands.Utility

$Repository = ($FolderPath -f $StartWith, $moduleName)
$moduleFolder = ($FolderPath -f $Repository, $moduleName)
$moduleManifestPath = ('{0}\{1}\{2}.psd1' -f $moduleFolder, $version, $moduleName)
$manifest = Import-PowerShellDataFile -Path $moduleManifestPath -ErrorAction Stop

Describe -Name 'Testing module' -Fixture {
    
  It -Name 'must have a module manifest with the same as the module' -Test {
    $moduleManifestPath | Should -Exist
  }

  It -Name 'must have the description manifest key populated' -Test {
    $manifest.Description | Should -Not -BeNullOrEmpty
  }

  It -Name 'must have the Autor manifest key populated' -Test {
    $manifest.Author | Should -Not -BeNullOrEmpty
  }

  It -Name 'must have a ModuleVersion manifest key populated' -Test {
    $manifest.ModuleVersion | Should -BeGreaterThan -ActualValue ([version]::new($oldVersion))
  }

  It -Name 'must pass Test-ModuleManifest validation' -Test {
    Test-ModuleManifest -Path $moduleManifestPath | Should -Be -ActualValue $true
  }

  It -Name 'must have associated Pester tests' -Test {
    ('{0}\tests\{1}.Tests.ps1' -f $Repository, $moduleName) | Should -Exist
  }

  It -Name 'muss pass PSScriptAnalyzer rules' -Test {
    Invoke-ScriptAnalyzer -Path ('{0}\{1}\{2}.psm1' -f $moduleFolder, $version, $moduleName) -ExcludeRule PSUseDeclaredVarsMoreThanAssignments | Should -BeNullOrEmpty
  }
}

# describes the function Get-SerialPort
Describe -Name 'Get-SerialPort' -Fixture {

  # scenario 1: call the function without arguments
  Context -Name 'Running without arguments'   -Fixture {
    # test 1: it does not throw an exception:
    It -Name 'runs without errors' -Test {
      # Gotcha: to use the "Should Not Throw" assertion,
      # make sure you place the command in a 
      # scriptblock (braces):
      { Get-SerialPort } | Should -Not -Throw
    }
  }
}