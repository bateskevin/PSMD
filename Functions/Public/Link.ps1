Function Link {

    # Parameter help description
    param(
        [string]
        $Text,

        [string]
        $Value,

        [SectionType]
        $Type = "Link"
    )

    $Line = "[$Text]($Value)"

    $Link = [PSMDSection]::new($Type,$Line)
    
    return $Link
}