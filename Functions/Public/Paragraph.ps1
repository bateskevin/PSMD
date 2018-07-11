Function Paragraph {

    # Parameter help description
    param(
        [string]
        $Text,

        [SectionType]
        $Type = "Paragraph"
    )

    $Line = $Text

    $Paragraph = [PSMDSection]::new($Type,$Line)
    
    return $Paragraph
}