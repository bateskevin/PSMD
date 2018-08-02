Function Paragraph {
<#
.SYNOPSIS
    Generates Paragraphs in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate Paragraphs.
    Paragraphs are used to display text in a Markdown document.
.PARAMETER Text
    This string will be the Content of your Paragraph.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        Paragraph -Text "This is a normal Paragraph"
    }
    This Will output "This is a normal Paragraph" as a Paragraph in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

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

    if($Style -contains "Bold" -or $Style -contains "Italic"){
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