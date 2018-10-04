$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force

. $PSScriptRoot\..\Classes\Private\PSMDDocument.Class.ps1
. $PSScriptRoot\..\Classes\Private\PSMDSection.Class.ps1

Describe "Testing Class PSMDSection" {
    Context "Base functionality" {
        it "[PSMD][Class][PSMDSection] Creating an instance" {
            {[PSMDSection]::new("Paragraph","TestContent")} | should not throw
        }
    }

    Context "Properties" {

        $Content = [PSMDSection]::new("Paragraph","TestContent")

        it "[PSMD][Class][PSMDSection] The Type Property should not be empty" {
            $Content.Type | should not BeNullOrEmpty
        }
        
        it "[PSMD][Class][PSMDSection] The Type Property should be of type 'SectionType'" {
            $Content.Type | should BeOfType System.Enum
        }

        it "[PSMD][Class][PSMDSection] The ID Property should not be empty" {
            $Content.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Class][PSMDSection] The Line Property should not be empty" {
            $Content.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Class][PSMDSection] The Line Property should be of type 'String'" {
            $Content.Line | should BeOfType String
        }

        it "[PSMD][Class][PSMDSection] The Style Property should be Empty" {
            $Content.Style | should BeNullOrEmpty
        }

        it "[PSMD][Class][PSMDSection] The NoNewLine Property should be false" {
            $Content.NoNewLine | should be $false
        }
    }
}
