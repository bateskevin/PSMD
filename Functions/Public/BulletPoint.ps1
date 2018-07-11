Function BulletPoint {

    # Parameter help description
    param(
        [string]
        $Text,

        [ValidateSet("0","1","2")]
        [string]
        $Level = "0",

        [SectionType]
        $Type = "BulletPoint"
    )

    Switch ( $Level ) {
        "0" {$Line = "* $Text"}
        "1" {$Line = "   * $Text"}
        "2" {$Line = "     * $Text"}
    }

    $BulletPoint = [PSMDSection]::new($Type,$Line)

    return $BulletPoint
}