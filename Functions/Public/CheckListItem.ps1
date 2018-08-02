Function CheckListItem {
<#
.SYNOPSIS
    Generates CheckListItems in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate CheckListItems.
    CheckListItems are used for CheckLists in a Markdown document.
.PARAMETER Text
    This string will be the Content of your CheckListItem.
.PARAMETER Status
    This bool will be determene if your ChecklistItem is checked or not.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        CheckListItem -Text "Female"
        CheckListItem -Text "Male" -Status Checked
        CheckListItem -Text "hungry" -Status Unchecked
        CheckListItem -Text "very hungry" -Status Checked
    }
    This will output 4 CheckListItems in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>
    
    param(
        [string]
        $Text,

        [ValidateSet("Checked","Unchecked")]
        [string]
        $Status = "Unchecked",

        [SectionType]
        $Type = "CheckListItem"
    )

    Switch ( $Status ) {
        "Checked" {$Line = "- [X] $Text"}
        "Unchecked" {$Line = "- [ ] $Text"}
    }

    $CheckListItem = [PSMDSection]::new($Type,$Line)

    return $CheckListItem
}