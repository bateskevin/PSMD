$doc = New-PSMDDocument -Name "Sample" -Content {
    OrderedListItem -Text "First of all" -number 1
    OrderedListItem -Text "Second of all" -number 2
    OrderedListItem -Text "And last but not least..." -number 3
}