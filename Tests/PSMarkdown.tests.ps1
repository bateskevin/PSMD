Import-Module -Force -Name .\AppVeyorCI-Tests.psd1

Describe "Testing PSMarkdown" {
    Context "Importing the Module" {
        it "[PSMarkdown][Module] The module should be available after the import" {
            $Module = Get-Module AppVeyorCI-Tests
            $Module | should be $true
        }
    }
    Context "Test" {
        it "[PSMarkdown][Test] The return value should contain the value passed on the parameter"{
            $Val = Test -String "ABC"
            $Val | should belike "*ABC"
        }
        it "logically"{
            $true | Should be $true
        }        
    }
}