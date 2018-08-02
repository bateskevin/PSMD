using module "..\PSMD.psd1"

Describe "Testing Function LineBreak" {
    Context "Base Functionality" {
        it "[PSMD][Function][LineBreak] Create a LineBreak" {
            {LineBreak} | should not throw
        }
    }

    Context "LineBreak specifics" {

        $LineBreak = LineBreak

        it "[PSMD][Function][LineBreak] The Type Property should be 'LineBreak'" {
            $LineBreak.Type | should Be "LineBreak"
        }

        it "[PSMD][Function][LineBreak] The ID Property should not be empty" {
            $LineBreak.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][LineBreak] The Line Property should not be empty" {
            $LineBreak.Line | should not BeNullOrEmpty
        }
    }
}