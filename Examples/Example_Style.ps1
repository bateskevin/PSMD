$doc = New-PSMDDocument -Name "Sample" -Content {
    Paragraph -Text "This is bold text" -Style bold
    Paragraph -Text "This is Italic text" -Style Italic
    Paragraph -Text "This is bold and italic text" -Style bold,Italic
}