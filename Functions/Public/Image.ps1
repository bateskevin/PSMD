Function Image {
<#
.SYNOPSIS
    Display Images in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate Images.
    Images are used to display Images in a Markdown document.
.PARAMETER Text
    This string will be the Text (Hover) of your Image.
.PARAMETER ImagePath
    This String is the Path to your Image.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        Image -Text "Sample image" -ImagePath "Images/Powershell.png"
    }
    This will output an Image in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

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