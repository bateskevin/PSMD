Function New-PSMDDocument {
<#
.SYNOPSIS
    Generates a PSMDDocument.
.DESCRIPTION
    Use this function within to generate PSMDDocuments.
    Within the Content parameter specify the content of your Markdown Document.
.PARAMETER name
    This will be the Name of your PSMDDocument.
.PARAMETER Content
    This Scriptblock will be the Content of your PSMDDocument.
.PARAMETER OutputPath
    Specify the Path to output your PSMDDocument as a Markdown document.
    Only specify the Path. The Name of the File will be the value of the -Name Parameter.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        Paragraph -Text "This is a normal Paragraph"
    }
    This Will output a PSMDDocument Object.
.EXAMPLE
    $doc = New-PSMDDocument -Name "Sample" -Content {
        Paragraph -Text "This is a normal Paragraph"
    } -OutputPath c:\
    This Will output a PSMDDocument Object and save a Markdownfile with the name "Sample.md" to your C:\ Drive.
.NOTES
    Author: Kevin Bates
#>

    param(
        [String]
        $Name,

        [ScriptBlock]
        $Content,
        
        [ValidateScript({Test-Path $_})]
        [System.IO.FileInfo]$OutputPath
    )

    $Document = [PSMDDocument]::new($Name,$Content.invoke())

    if($OutputPath){

        $null = New-Item -Path ((Join-Path -Path $OutputPath -ChildPath $Name) + ".md")

        foreach($line in $Document.Content){
            $Line.line | Out-File -FilePath ((Join-Path -Path $OutputPath -ChildPath $Name) + ".md") -Append
        }
    }

    return $Document
}