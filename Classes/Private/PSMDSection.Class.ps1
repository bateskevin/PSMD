Enum SectionType {
    BulletPoint
    Image
    CheckListItem
    OrderedListItem
    Title
    Table
    List
    Link
    Paragraph
    CodeBlock
    BlockQuote
   }

Enum StyleOption {
    Bold
    Italic
}

Class PSMDSection {
    [SectionType]$Type
    [String]$ID
    [String[]]$Line
    [StyleOption[]]$Style

    PSMDSection ([SectionType]$Type,$Line,[Styleoption[]]$Style) {
        $This.Type = $Type
        $This.Line = $Line
        $This.Style = $Style
        $This.ID = New-Guid

        Switch ($Style) {
            "Bold" {$this.line = "**" + $this.line + "**"}
            "Italic" {$this.line = "_" + $this.line + "_"}
        }
    }

    PSMDSection ([SectionType]$Type,$Line) {
        $This.Type = $Type
        $This.Line = $Line
        $This.ID = New-Guid
    }

}

