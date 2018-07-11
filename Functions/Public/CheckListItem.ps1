Function CheckListItem {

    # Parameter help description
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