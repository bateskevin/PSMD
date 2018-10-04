$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force

Describe "Testing Function CheckListItem" {
    Context "Base Functionality" {
        it "[PSMD][Function][CheckListItem] Create a CheckListItem" {
            {CheckListItem -Text "Test" -Status Checked } | should not throw
            {CheckListItem -Text "Test" -Status UnChecked } | should not throw
        }
    }

    Context "CheckListItem specifics" {

        $CheckListItem = CheckListItem -Text "Test" -Status Checked

        it "[PSMD][Function][CheckListItem] The Type Property should be 'CheckListItem'" {
            $CheckListItem.Type | should Be "CheckListItem"
        }

        it "[PSMD][Function][CheckListItem] The ID Property should not be empty" {
            $CheckListItem.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][CheckListItem] The Line Property should not be empty" {
            $CheckListItem.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][CheckListItem] The 'Checked' string in 'Line' should start with '- [X]'" {
            $CheckListItem.Line | should match '- \[X]*'
        }

        $CheckListItem = CheckListItem -Text "Test" -Status UnChecked
        it "[PSMD][Function][CheckListItem] The 'UnChecked' string in 'Line' should start with '- ['" {
            $CheckListItem.Line | should match '- \[*'
        }
    }
}