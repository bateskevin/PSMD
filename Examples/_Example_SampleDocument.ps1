$doc = New-PSMDDocument -Name "Sample" -Content {
    Title -Text "Sample Document" -Size h1

    Paragraph -Text "This is a sample document created with PSMD"
    Paragraph -Text "you wanna learn how it's done?"

    Title -Text "Sample Document" -Size h1
    Link -Text "Go Checkout the other examples" -Value "Examples/"
    Link -Text "Google it yourself" -Value "https://Google.com"
} -OutputPath c:\user\taabake4\vscode\psmd\