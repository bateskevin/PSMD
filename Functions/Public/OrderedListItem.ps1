Function OrderedListItem {

    # Parameter help description
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