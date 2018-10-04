$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force

Describe "Testing Function BlockQuote" {
    Context "Base Functionality" {
        it "[PSMD][Function][BlockQuote] Create a BlockQuote" {
            {BlockQuote -Text "Test"} | should not throw
        }
    }

    Context "BlockQuote specifics" {

        $BlockQuote = BlockQuote -Text "Test"

        it "[PSMD][Function][BlockQuote] The Type Property should be 'BlockQuote'" {
            $BlockQuote.Type | should Be "BlockQuote"
        }

        it "[PSMD][Function][BlockQuote] The ID Property should not be empty" {
            $BlockQuote.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][BlockQuote] The Line Property should not be empty" {
            $BlockQuote.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][BlockQuote] The string in 'Line' should start with '>'" {
            $BlockQuote.Line | should BeLike "> *"
        }
    }
}