using module "..\PSMD.psd1"

Describe "Testing PSMD Module Functionality" {
    Context "Importing the Module" {
        it "[PSMD][Module] The module should be available after the import" {
            $Module = Get-Module PSMD
            $Module | should be $true
        }
    }
    Context "Base Classes" {
        it "[PSMD][Class][PSMDDocument] Creating a basic PSMDDocument"{
            {New-PSMDDocument -Name "adf" -Content {
                Link -Text "Google it yourself" -Value "https://Google.com"
            }} | Should not throw
        }
    }
}