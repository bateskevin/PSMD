using module "..\PSMD.psd1"

Describe "Testing Function New-PSMDDocument" {
    Context "Base Functionality" {
        it "[PSMD][Function][New-PSMDDocument] The funtion should not throw an error if called correctly." {
            {New-PSMDDocument -Name "Test" -Content {
                Paragraph -Text "Hello"
            }} | should not throw
        }
    }

    Context "New-PSMDDocument specifics" {
       
        it "[PSMD][Function][New-PSMDDocument] The Path parameter only takes valid paths." {
            {New-PSMDDocument -Name "Test" -Content {
                Paragraph -Text "Hello"
            } -OutputPath asdf} | should throw
        }

        it "[PSMD][Function][New-PSMDDocument] The Outputpath should be formed of the name and the path." {
            $Name = "Test"
            $Path = $HOME
            $File = Join-Path -Path $Path -ChildPath ($Name + ".md")
            New-PSMDDocument -Name $Name -Content {
                Paragraph -Text "Hello"
            } -OutputPath $Path
            {Test-Path -Path $File}| should not throw
            remove-item $file
        }

        it "[PSMD][Function][New-PSMDDocument] The Content and the Lines of PSMDDocument should not be empty." {
            $Doc = New-PSMDDocument -Name "Test" -Content {
                Paragraph -Text "Hello"
            } 
            $Doc.Content | should not BeNullOrEmpty
            $Doc.Content.Line | should not BeNullOrEmpty
        }
    }
}