using module "..\PSMD.psd1"

Describe "Testing Function BulletPoint" {
    Context "Base Functionality" {
        it "[PSMD][Function][BulletPoint] Create a BulletPoint" {
            {BulletPoint -Text "Test" -Level 0} | should not throw
            {BulletPoint -Text "Test" -Level 1} | should not throw
            {BulletPoint -Text "Test" -Level 2} | should not throw
        }
    }

    Context "BulletPoint specifics" {

        $BulletPoint = BulletPoint -Text "Test" -Level 0

        it "[PSMD][Function][BulletPoint] The Type Property should be 'BulletPoint'" {
            $BulletPoint.Type | should Be "BulletPoint"
        }

        it "[PSMD][Function][BulletPoint] The ID Property should not be empty" {
            $BulletPoint.ID | should not BeNullOrEmpty
        }

        it "[PSMD][Function][BulletPoint] The Line Property should not be empty" {
            $BulletPoint.Line | should not BeNullOrEmpty
        }

        it "[PSMD][Function][BulletPoint] The string in 'Line' should start with '*'" {
            $BulletPoint.Line | should match '\*'
        }

        $BulletPoint = BulletPoint -Text "Test" -Level 1
        it "[PSMD][Function][BulletPoint] The string in 'Line' should start with '   \*'" {
            $BulletPoint.Line | should match '   '
        }

        $BulletPoint = BulletPoint -Text "Test" -Level 2
        it "[PSMD][Function][BulletPoint] The string in 'Line' should start with '     \*'" {
            $BulletPoint.Line | should match '     '
        }
    }
}