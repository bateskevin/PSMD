Function LineBreak {

    [SectionType]$Type = "LineBreak"
    $Line = "<br/>"

    $LineBreak = [PSMDSection]::new($Type,$Line)

    return $LineBreak
}