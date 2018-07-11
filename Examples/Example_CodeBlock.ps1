$doc = New-PSMDDocument -Name "Sample" -Content {
    CodeBlock -Code @'
Paragraph -Text "You can add Images like this:"
Paragraph -Text "You can add Images like this:"
Paragraph -Text "You can add Images like this:"
Paragraph -Text "You can add Images like this:"
Paragraph -Text "You can add Images like this:"
Paragraph -Text "You can add Images like this:"
Paragraph -Text "You can add Images like this:"

Write-Host "whatever" 
'@
}