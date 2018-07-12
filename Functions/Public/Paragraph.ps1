Function Paragraph {

    # Parameter help description
    param(
        [string]
        $Text,
        
        [StyleOption[]]
        $Style,

        [SectionType]
        $Type = "Paragraph"
    )

    $Line = $Text

    $Paragraph = [PSMDSection]::new($Type,$Line,$Style)
    
    return $Paragraph
}