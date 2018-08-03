using module "..\PSMD.psd1"

Describe "Testing Function Link" {
    Context "Base Functionality" {
        it "[PSMD][Function][Link] Create a Link" {
            {Link -Text "Test" -Value "https://google.com" } | should not throw
        }
    }

    Context "Link specifics" {

        $Link = Link -Text "Test" -Value "https://google.com"

        it "[PSMD][Function][Link] The Type Property should be 'Link'" {
            $Link.Type | should Be "Link"
        }

        it "[PSMD][Function][Link] The ID Property should not be empty" {
            $Link.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Link] The Line Property should not be empty" {
            $Link.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][Link] The string in 'Line' should start with '[" {
            $Link.Line | should Match '\[*'
        }

        it "[PSMD][Function][Link] The string in 'Line' should end with ')'" {
            $Link.Line | should BeLike "*)"
        }
    }
}