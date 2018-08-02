using module "..\PSMD.psd1"

Describe "Testing Function Table" {
    Context "Base Functionality" {
        it "[PSMD][Function][Table] Create a Table" {
            {table -InputObj (get-date)} | should not throw
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
    }
}