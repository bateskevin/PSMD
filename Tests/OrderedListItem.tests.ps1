using module "..\PSMD.psd1"

Describe "Testing Function OrderedListItem" {
    Context "Base Functionality" {
        it "[PSMD][Function][OrderedListItem] Create a OrderedListItem" {
            {OrderedListItem -Text "a" -Number 1} | should not throw
        }
    }

    Context "OrderedListItem specifics" {

        $OrderedListItem = OrderedListItem -Text "a" -Number 1

        it "[PSMD][Function][OrderedListItem] The Type Property should be 'OrderedListItem'" {
            $OrderedListItem.Type | should Be "OrderedListItem"
        }

        it "[PSMD][Function][OrderedListItem] The ID Property should not be empty" {
            $OrderedListItem.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][OrderedListItem] The Line Property should not be empty" {
            $OrderedListItem.Line | should not BeNullOrEmpty
        }
    }
}