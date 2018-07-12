Function Paragraph {

    # Parameter help description
    param(
        [string]
        $Text,
        
        [StyleOption[]]
        $Style,

        [switch]
        $NoNewLine,

        [SectionType]
        $Type = "Paragraph"
    )

    $Line = $Text

    if($Style){
        if($NoNewLine){
            $Paragraph = [PSMDSection]::new($Type,$Line,$Style,$NoNewLine)
        }else{
            $Paragraph = [PSMDSection]::new($Type,$Line,$Style)
        }
    }else{
        if($NoNewLine){
            $Paragraph = [PSMDSection]::new($Type,$Line,$NoNewLine)
        }else{
            $Paragraph = [PSMDSection]::new($Type,$Line)
        }
    }
    
    return $Paragraph
}