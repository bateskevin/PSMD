Function Title {
<#
.SYNOPSIS
    Generates Titles in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate Titles.
    Titles are used to generate Titles in a Markdown document.
.PARAMETER Text
    This string will be the Text of your Titles.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        Title -Text "This is a header (h1)" -Size h1
        Title -Text "This is a header (h2)" -Size h2
        Title -Text "This is a header (h3)" -Size h3
        Title -Text "This is a header (h4)" -Size h4
        Title -Text "This is a header (h5)" -Size h5
        Title -Text "This is a header (h6)" -Size h6
    }
    This Will output 6 titles in different sizes in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    param(
        [string]
        $Text,

        [ValidateSet("h1","h2","h3","h4","h5","h6")]
        [string]
        $Size,

        [SectionType]
        $Type = "Title"
    )

    Switch ( $Size ) {
        "h1" {$Line = "# $Text"}
        "h2" {$Line = "## $Text"}
        "h3" {$Line = "### $Text"}
        "h4" {$Line = "#### $Text"}
        "h5" {$Line = "##### $Text"}
        "h6" {$Line = "###### $Text"}
    }

    $Title = [PSMDSection]::new($Type,$Line)

    return $Title
}