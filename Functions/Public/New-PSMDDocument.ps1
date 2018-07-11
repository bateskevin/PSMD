Function New-PSMDDocument {

    # Parameter help description
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