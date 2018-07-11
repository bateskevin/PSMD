Function BlockQuote {

    # Parameter help description
    param(
        [string]
        $Text,

        [SectionType]
        $Type = "BlockQuote"
    )

    $Line = "> $Text"

    $BlockQuote = [PSMDSection]::new($Type,$Line)
    
    return $BlockQuote
}