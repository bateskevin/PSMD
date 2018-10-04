$TestsPath = Split-Path $MyInvocation.MyCommand.Path

$RootFolder = (get-item $TestsPath).Parent

Push-Location -Path $RootFolder.FullName

set-location -Path $RootFolder.FullName

Import-module ".\PSMD" -force

Describe "Testing Function Title" {
    Context "Base Functionality" {
        it "[PSMD][Function][Title] Create a Title" {
            {Title -Text "Hello" -Size h1} | should not throw
            {Title -Text "Hello" -Size h2} | should not throw
            {Title -Text "Hello" -Size h3} | should not throw
            {Title -Text "Hello" -Size h4} | should not throw
            {Title -Text "Hello" -Size h5} | should not throw
            {Title -Text "Hello" -Size h6} | should not throw
        }
    }

    Context "Title specifics" {

        $Title = Title -Text "Hello" -Size h1

        it "[PSMD][Function][Title] The Type Property should be 'Title'" {
            $Title.Type | should Be "Title"
        }

        it "[PSMD][Function][Title] The ID Property should not be empty" {
            $Title.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Title] The Line Property should not be empty" {
            $Title.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Title] The string in 'Line' should be '# Hello'" {
            $Title.Line | should BeExactly "# Hello"
        }

        $Title = Title -Text "Hello" -Size h2
        it "[PSMD][Function][Title] The string in 'Line' should be '## Hello'" {
            $Title.Line | should BeExactly "## Hello"
        }

        $Title = Title -Text "Hello" -Size h3
        it "[PSMD][Function][Title] The string in 'Line' should be '### Hello'" {
            $Title.Line | should BeExactly "### Hello"
        }

        $Title = Title -Text "Hello" -Size h4
        it "[PSMD][Function][Title] The string in 'Line' should be '#### Hello'" {
            $Title.Line | should BeExactly "#### Hello"
        }

        $Title = Title -Text "Hello" -Size h5
        it "[PSMD][Function][Title] The string in 'Line' should be '##### Hello'" {
            $Title.Line | should BeExactly "##### Hello"
        }

        $Title = Title -Text "Hello" -Size h6
        it "[PSMD][Function][Title] The string in 'Line' should be '###### Hello'" {
            $Title.Line | should BeExactly "###### Hello"
        }
    }
}