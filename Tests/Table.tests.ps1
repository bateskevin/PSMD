$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force

Describe "Testing Function Table" {
    Context "Base Functionality" {
        it "[PSMD][Function][Table] Create a Table" {
            {table -InputObj (get-date) -Properties Date,Day} | should not throw
        }
    }

    Context "Table specifics" {

        $Table = table -InputObj (get-date)

        it "[PSMD][Function][Table] The Type Property should be 'Table'" {
            $Table[0].Type | should Be "Table"
        }

        it "[PSMD][Function][Table] The ID Property should not be empty" {
            $Table.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Table] The Line Property should not be empty" {
            $Table[1].Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Table] The string in 'Line' should start with ' |'" {
            $Table[1].Line | should BeLike " |*"
        }

        it "[PSMD][Function][Table] The second string in 'Line' should start with ' |-'" {
            $Table[2].Line | should BeLike " |-*"
        }
    }
}