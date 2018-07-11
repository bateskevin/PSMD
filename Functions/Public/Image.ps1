Function Image {

    # Parameter help description
    param(
        [string]
        $Text,

        [string]
        $ImagePath,

        [SectionType]
        $Type = "Image"
    )

    $Line = "![$Text]($ImagePath)"

    $Image = [PSMDSection]::new($Type,$Line)

    return $Image
}