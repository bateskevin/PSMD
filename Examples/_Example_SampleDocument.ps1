$doc = New-PSMDDocument -Name "Sample" -Content {
    
    #Title
    Title -Text "Sample Document" -Size h1
    Paragraph -Text "You can add titles like this:"
    CodeBlock -Code @'
    Title -Text "Sample Document" -Size h1 
'@

    #Paragraph
    Title -Text "Paragraphs" -Size h3
    Paragraph -Text "You can add paragraphes like this:"
    CodeBlock -Code @'
    Paragraph -Text "here you go" 
'@

    #Links
    Title -Text "Links" -Size h3
    Paragraph -Text "You can add Links like this:"
    CodeBlock -Code @'
    Link -Text "Google it yourself" -Value "https://Google.com" 
'@

    Paragraph -Text "The Link will look something like this:"
    Link -Text "Google it yourself" -Value "https://Google.com"

    #Images
    Title -Text "Images" -Size h3
    Paragraph -Text "You can add Images like this:"
    CodeBlock -Code @'
    Image -Text "Sample image" -ImagePath "Images/Powershell.png" 
'@
    Paragraph -Text "The image will look something like this:"
    Image -Text "Sample image" -ImagePath "Images/Powershell.png"

    #BulletPoints
    Title -Text "BulletPoints" -Size h3
    Paragraph -Text "You can add BulletPoints like this:"
    CodeBlock -Code @'
    BulletPoint -Text "This is the Base level"
    BulletPoint -Text "This is the first level" -Level 1
    BulletPoint -Text "This is the second level" -Level 2 
'@  

    Paragraph -Text "The BulletPoints will look something like this:"
    BulletPoint -Text "This is the Base level"
    BulletPoint -Text "This is the first level" -Level 1
    BulletPoint -Text "This is the second level" -Level 2

    #OrderedListItem
    Title -Text "OrderedListItem" -Size h3
    Paragraph -Text "You can add OrderedListItem like this:"
    CodeBlock -Code @'
    OrderedListItem -Text "First of all" -number 1
    OrderedListItem -Text "Second of all" -number 2
    OrderedListItem -Text "And last but not least..." -number 3
'@  

    Paragraph -Text "The OrderedListItem will look something like this:"
    OrderedListItem -Text "First of all" -number 1
    OrderedListItem -Text "Second of all" -number 2
    OrderedListItem -Text "And last but not least..." -number 3

    #CheckListItem
    Title -Text "CheckListItem" -Size h3
    Paragraph -Text "You can add CheckListItem like this:"
    CodeBlock -Code @'
    CheckListItem -Text "Female"
    CheckListItem -Text "Male" -Status Checked
    CheckListItem -Text "hungry" -Status Unchecked
    CheckListItem -Text "very hungry" -Status Checked
'@  

    Paragraph -Text "The CheckListItem will look something like this:"
    CheckListItem -Text "Female"
    CheckListItem -Text "Male" -Status Checked
    CheckListItem -Text "hungry" -Status Unchecked
    CheckListItem -Text "very hungry" -Status Checked


    #CodeBlocks
    Title -Text "CodeBlocks" -Size h3
    Paragraph -Text "You can add CodeBlocks like this:"
    CodeBlock -Code @'
    CodeBlock -Code @'
        Function HelloWorld {
            return "HelloWorld"
        } 
    '@
}
'@

    Paragraph -Text "The CheckListItem will look something like this:"
    CodeBlock -Code @'
        Function HelloWorld {
            return "HelloWorld"
        } 
'@
    
    
    Title -Text "Sample Document" -Size h2
    Link -Text "Go Checkout the other examples" -Value "Examples/"
    Link -Text "Google it yourself" -Value "https://Google.com"
} -OutputPath ".\local\"