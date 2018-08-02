Function Link {
<#
.SYNOPSIS
    Generates Links in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate Links.
    Links are used to generate links in a Markdown document.
.PARAMETER Text
    This string will be the displaytext of your link.
.PARAMETER Value
    This string will be the adress of your link.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        Link -Text "Google it yourself" -Value "https://Google.com"
    }
    This will a link in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    param(
        [string]
        $Text,

        [string]
        $Value,

        [SectionType]
        $Type = "Link"
    )

    $Line = "[$Text]($Value)"

    $Link = [PSMDSection]::new($Type,$Line)
    
    return $Link
}