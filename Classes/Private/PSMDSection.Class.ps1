Enum SectionType {
    BulletPoint
    OrderedListItem
    Title
    Table
    List
    Link
    Image
    Paragraph
   }

Class PSMDSection {
    [SectionType]$Type
    [String]$ID
    [String[]]$Line

    PSMDSection ([SectionType]$Type,$Line) {
        $This.Type = $Type
        $This.Line = $Line
        $This.ID = New-Guid
    }

}

