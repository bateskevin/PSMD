Function BlockQuote {
<#
.SYNOPSIS
    Generates Blockquotes in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate BlockQuotes.
    BlockQuotes are used to highliht text in a Markdown document.
.PARAMETER Text
    This string will be the Content of your Blockquote.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        BlockQuote -Text "This is a normal BlockQuote"
    }
    This Will output "This is a normal BlockQuote" as a Blockquote in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    param(
        [string]
        $Text,

        [SectionType]
        $Type = "BlockQuote"
    )

    $Line = "> $Text"

    $BlockQuote = [PSMDSection]::new($Type,$Line)
    
    return $BlockQuote
}