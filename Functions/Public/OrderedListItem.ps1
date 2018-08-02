Function OrderedListItem {
<#
.SYNOPSIS
    Generates OrderedListItems in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate OrderedListItems.
    OrderedListItems are used to list text in a Markdown document.
.PARAMETER Text
    This string will be the Content of your OrderedListItem.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        OrderedListItem -Text "First of all" -number 1
        OrderedListItem -Text "Second of all" -number 2
        OrderedListItem -Text "And last but not least..." -number 3
    }
    This Will output 3 OrderedListItems in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    param(
        [string]
        $Text,

        [int]
        $Number,

        [SectionType]
        $Type = "OrderedListItem"
    )

    
        $Line = "$number. $Text"

    $OrderedListItem = [PSMDSection]::new($Type,$Line)

    return $OrderedListItem
}