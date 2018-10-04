$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force

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

        it "[PSMD][Function][Paragraph] The string in 'Line' should be '_Test_'" {
            $Paragraph.Line | should BeExactly "_Test_"
        }

        $Paragraph = Paragraph -Text "Test" -Style Bold

        it "[PSMD][Function][Paragraph] The string in 'Line' should be '**Test**'" {
            $Paragraph.Line | should BeExactly "**Test**"
        }

        $Paragraph = Paragraph -Text "Test" -Style Bold -NoNewLine

        it "[PSMD][Function][Paragraph] The string in 'Line' should be '**Test**'" {
            $Paragraph.Line | should BeExactly "<nobr>**Test**</nobr>"
        }
    }
}