$doc = New-PSMDDocument -Name "Sample" -Content {
    Paragraph -Text "This is a sample paragraph"
    LineBreak
    LineBreak
    Paragraph -Text "This is a sample paragraph a few lines below."
    Paragraph -Text "And this wil be on the line above." -NoNewLine
}