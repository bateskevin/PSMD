$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force



Describe "Testing Class PSMDDocument" {
    Context "Base functionality" {
        it "[PSMD][Class][PSMDDocument] Creating an instance" {
            {[PSMDDocument]::new("TestName","TestContent")} | should not throw
        }
    }

    Context "Properties" {

        $Content = [PSMDSection]::new("Paragraph","TestContent")
        $Doc = [PSMDDocument]::new("TestName",$Content)

        it "[PSMD][Class][PSMDDocument] The Name Property should not be empty" {
            $Doc.Name | should not BeNullOrEmpty
        }
        
        it "[PSMD][Class][PSMDDocument] The Name Property should be of type 'String'" {
            $Doc.Name | should BeOfType String
        }

        it "[PSMD][Class][PSMDDocument] The ID Property should not be empty" {
            $Doc.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Class][PSMDDocument] The Content Property should not be empty" {
            $Doc.Content | should not BeNullOrEmpty
        }
        
        it "[PSMD][Class][PSMDDocument] The Content Property should be of type 'PSMDSection'" {
            $Doc.Content.GetType().name | should be "PSMDSection"
        }
    }
}