using module "..\PSMD.psd1"

Describe "Testing Function CheckListItem" {
    Context "Base Functionality" {
        it "[PSMD][Function][CheckListItem] Create a CheckListItem" {
            {CheckListItem -Text "Test" -Status Checked } | should not throw
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
    }
}