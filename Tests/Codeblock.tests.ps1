using module "..\PSMD.psd1"

Describe "Testing Function CodeBlock" {
    Context "Base Functionality" {
        it "[PSMD][Function][CodeBlock] Create a CodeBlock" {
            {CodeBlock -Code "Write-Host 'Hello World'"} | should not throw
        }
    }

    Context "CodeBlock specifics" {

        $CodeBlock = CodeBlock -Code "Write-Host 'Hello World'"

        it "[PSMD][Function][CodeBlock] The Type Property should be 'CodeBlock'" {
            $CodeBlock.Type | should Be "CodeBlock"
        }

        it "[PSMD][Function][CodeBlock] The ID Property should not be empty" {
            $CodeBlock.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][CodeBlock] The Line Property should not be empty" {
            $CodeBlock.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][CodeBlock] The string in 'Line' should start with '```````'" {
            $CodeBlock.Line | should Match '``` *'
        }

        it "[PSMD][Function][CodeBlock] The string in 'Line' should end with '```````'" {
            $CodeBlock.Line | should Match '```'
        }
    }
}