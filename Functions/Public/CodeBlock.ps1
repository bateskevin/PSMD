Function CodeBlock {
<#
.SYNOPSIS
    Generates CodeBlocks in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate CodeBlocks.
    CodeBlocks are used to display bits of code in a Markdown document.
.PARAMETER Code
    This (Multiline)string will be the Content of your CheckListItem.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        CodeBlock -Code @'
        Write-Host "Hello World"
    '@
    }
    This will output a CodeBlock in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    param(
        [string]
        $Code,

        [SectionType]
        $Type = "CodeBlock"
    )

    $Line = @"
``````

$Code

``````
"@

    $CodeBlock = [PSMDSection]::new($Type,$Line)
    
    return $CodeBlock
}