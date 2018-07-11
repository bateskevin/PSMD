Function New-PSMDDocument {

    # Parameter help description
    param(
        [String]
        $Name,

        [String]
        $Path,

        [ScriptBlock]
        $Content
    )

    [PSMDDocument]::new($Name,$Content.invoke())

}

$d = New-PSMDDocument -Name "adf" -Content {
    Link -Text "Google it yourself" -Value "https://Google.com"
}