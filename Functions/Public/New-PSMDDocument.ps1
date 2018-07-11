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