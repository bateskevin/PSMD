using module "..\PSMD.psd1"

Describe "Testing Function Paragraph" {
    Context "Base Functionality" {
        it "[PSMD][Function][Paragraph] Create a paragraph" {
            {Paragraph -Text "Test"} | should not throw
        }

        it "[PSMD][Function][Paragraph] Create a paragraph on the same line and with style italic" {
            {Paragraph -Text "Test" -NoNewLine -Style Italic} | should not throw
        }

        it "[PSMD][Function][Paragraph] Create a paragraph on the same line" {
            {Paragraph -Text "Test" -NoNewLine} | should not throw
        }
    }

    Context "Paragraph specifics" {

        $Paragraph = Paragraph -Text "Test" -Style Italic

        it "[PSMD][Function][Paragraph] The Type Property should be 'Paragraph'" {
            $Paragraph.Type | should Be "Paragraph"
        }

        it "[PSMD][Function][Paragraph] The ID Property should not be empty" {
            $Paragraph.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Paragraph] The Line Property should not be empty" {
            $Paragraph.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Paragraph] The Style Property should not be empty" {
            $Paragraph.Style | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Paragraph] The NoNewLine Property should be False" {
            $Paragraph.NoNewLine | should be $false
        }
    }
}