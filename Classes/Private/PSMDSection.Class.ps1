Enum SectionType {
    Title
    Table
    List
    Link
    Image
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

