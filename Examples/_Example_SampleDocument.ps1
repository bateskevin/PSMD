$doc = New-PSMDDocument -Name "Sample" -Content {
    Title -Text "Sample Document" -Size h1
    Title -Text "Images" -Size h3
    Paragraph -Text "You can add Images like this:"

    Paragraph -Text "This is a sample document created with PSMD"
    Paragraph -Text "you wanna learn how it's done?"

    Title -Text "Sample Document" -Size h2
    Link -Text "Go Checkout the other examples" -Value "Examples/"
    Link -Text "Google it yourself" -Value "https://Google.com"
} -OutputPath ".\local\"