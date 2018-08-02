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
    LineBreak
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
    [Bool]$NoNewLine

    PSMDSection ([SectionType]$Type,$Line,[Styleoption[]]$Style) {
        $This.Type = $Type
        $This.Line = $Line
        $This.Style = $Style
        $This.ID = New-Guid
        $This.NoNewLine = $false

        #Switch ($Style) {
        #    "Bold" {$this.line = "**" + $this.line + "**"}
        #    "Italic" {$this.line = "_" + $this.line + "_"}
        #}

        if($Style -contains "Bold"){
            $this.line = "**" + $this.line + "**"
        }
        if($Style -contains "Italic"){
            $this.line = "_" + $this.line + "_"
        }
    }

    PSMDSection ([SectionType]$Type,$Line,[Styleoption[]]$Style,$NoNewLine) {
        $This.Type = $Type
        $This.Line = $Line
        $This.Style = $Style
        $This.ID = New-Guid
        $This.NoNewLine = $true

        Switch ($Style) {
            "Bold" {$this.line = "**" + $this.line + "**"}
            "Italic" {$this.line = "_" + $this.line + "_"}
        }

        $this.Line = "<nobr>" + $this.Line + "</nobr>"
    }

    PSMDSection ([SectionType]$Type,$Line) {
        $This.Type = $Type
        $This.Line = $Line
        $This.ID = New-Guid
        $This.NoNewLine = $false
    }

    PSMDSection ([SectionType]$Type,$Line,$NoNewLine) {
        $This.Type = $Type
        $This.Line = $Line
        $This.ID = New-Guid
        $This.NoNewLine = $true
    
        $this.Line = "<nobr>" + $this.Line + "</nobr>"
    }
}

