Import-Module -Force -Name .\PSMD.psd1

Describe "Testing PSMD" {
    Context "Importing the Module" {
        it "[PSMD][Module] The module should be available after the import" {
            $Module = Get-Module PSMD
            $Module | should be $true
        }
    }
    Context "Test" {
        it "logically"{
            $true | Should be $true
        }        
    }
}