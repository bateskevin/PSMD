Class PSMDDocument {
    [String]$Name
    [String]$ID
    $Content

    PSMDDocument ($Name,$Content){
        $This.Name = $Name
        $This.Content = $Content
        $This.ID = New-Guid
    }
}