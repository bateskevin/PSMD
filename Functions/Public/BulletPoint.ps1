Function BulletPoint {
<#
.SYNOPSIS
    Generates BulletPoints in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate BulletPoints.
    BulletPoints are used to list textitems in a Markdown document.
.PARAMETER Text
    This string will be the Content of your BulletPoint.
.PARAMETER Level
    This int will determene the indentation of your BulletPoint.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        BulletPoint -Text "This is the Base level"
        BulletPoint -Text "This is the first level" -Level 1
        BulletPoint -Text "This is the second level" -Level 2
    }
    This will output 3 Bulletpoint lines in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    param(
        [string]
        $Text,

        [ValidateSet("0","1","2")]
        [string]
        $Level = "0",

        [SectionType]
        $Type = "BulletPoint"
    )

    Switch ( $Level ) {
        "0" {$Line = "* $Text"}
        "1" {$Line = "   * $Text"}
        "2" {$Line = "     * $Text"}
    }

    $BulletPoint = [PSMDSection]::new($Type,$Line)

    return $BulletPoint
}