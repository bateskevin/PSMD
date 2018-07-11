Function CodeBlock {

    # Parameter help description
    param(
        [string]
        $Code,

        [SectionType]
        $Type = "CodeBlock"
    )

    $Line = @"
``````

$Code

``````
"@

    $CodeBlock = [PSMDSection]::new($Type,$Line)
    
    return $CodeBlock
}