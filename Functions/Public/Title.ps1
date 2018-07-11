Function Title {

    # Parameter help description
    param(
        [string]
        $Text,

        [ValidateSet("h1","h2","h3","h4","h5","h6")]
        [string]
        $Size,

        [SectionType]
        $Type = "Title"
    )

    Switch ( $Size ) {
        "h1" {$Line = "# $Text"}
        "h2" {$Line = "## $Text"}
        "h3" {$Line = "### $Text"}
        "h4" {$Line = "#### $Text"}
        "h5" {$Line = "##### $Text"}
        "h6" {$Line = "###### $Text"}
    }

    $Title = [PSMDSection]::new($Type,$Line)

    return $Title
}