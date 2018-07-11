$doc = New-PSMDDocument -Name "Sample" -Content {
    Title -Text "This is a header (h1)" -Size h1
    Title -Text "This is a header (h2)" -Size h2
    Title -Text "This is a header (h3)" -Size h3
    Title -Text "This is a header (h4)" -Size h4
    Title -Text "This is a header (h5)" -Size h5
    Title -Text "This is a header (h6)" -Size h6
}