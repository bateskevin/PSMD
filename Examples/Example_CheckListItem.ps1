$doc = New-PSMDDocument -Name "Sample" -Content {
    CheckListItem -Text "Female"
    CheckListItem -Text "Male" -Status Checked
    CheckListItem -Text "hungry" -Status Unchecked
    CheckListItem -Text "very hungry" -Status Checked
}