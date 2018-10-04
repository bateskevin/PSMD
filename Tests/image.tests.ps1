$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force

Describe "Testing Function Image" {
    Context "Base Functionality" {
        it "[PSMD][Function][Image] Create a Image" {
            {image -Text "Hello" -ImagePath "path"} | should not throw
        }
    }

    Context "Image specifics" {

        $Image = image -Text "Hello" -ImagePath "path"

        it "[PSMD][Function][Image] The Type Property should be 'Image'" {
            $Image.Type | should Be "Image"
        }

        it "[PSMD][Function][Image] The ID Property should not be empty" {
            $Image.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Image] The Line Property should not be empty" {
            $Image.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Image] The string in 'Line' should start with '[" {
            $Image.Line | should Match '\[*'
        }

        it "[PSMD][Function][Image] The string in 'Line' should end with ')'" {
            $Image.Line | should BeLike "*)"
        }
    }
}