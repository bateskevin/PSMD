Function LineBreak {
<#
.SYNOPSIS
    Generate LineBreaks in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate LineBreaks.
    LineBreaks are used to generate a new line in a Markdown document.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        LineBreak
    }
    This will output an LineBreak in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    [SectionType]$Type = "LineBreak"
    $Line = "<br/>"

    $LineBreak = [PSMDSection]::new($Type,$Line)

    return $LineBreak
}