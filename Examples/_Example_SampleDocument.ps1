$doc = New-PSMDDocument -Name "Sample" -Content {
    
    #Intro
    Title -Text "How to use PSMD" -Size h1
    Paragraph -Text "You will find a short example from every feature of PSMD here. Feel free to give feedback on the structure of the functions and enjoy PSMD!"
    Paragraph -Text "Also btw, this Document was generated with PSMD. If you're interessted check out the"
    Link -Text "Script that generated this document" -Value "Examples/_Example_SampleDocument.ps1"

    Title -Text "Basics" -Size h2
    #Base Function
    Title -Text "New-PSMDDocument" -Size h3
    Paragraph -Text "Before you use one of the features of Markdown let me introduce you to the function you'll need to make PSMD work for you."
    Paragraph -Text "Surrounding all your PSMD code you will have to have the following piece of code:"
    CodeBlock -Code @'
    $Document = New-PSMDDocument -Name "Sample" -Content {}
'@

    Paragraph -Text "As an example. This will **not** Work:"
    CodeBlock -Code @'
    Title -Text "Sample Document" -Size h1
'@

    Title -Text "Output as object" -Size h4
    Paragraph -Text "If you place your PSMD code **in** the Scriptblock it will Work:"
    CodeBlock -Code @'
    $Document = New-PSMDDocument -Name "Sample" -Content {
        Title -Text "Sample Document" -Size h1
    }
'@

    Paragraph -Text 'So for now you will have the Object of the Document saved in **$Document**'

    Title -Text "Output as .md File" -Size h4
    Paragraph -Text "So if you want to export your PSMD code directly in a .md file you can set the parameter '-OutputPath'. The File will then be saved with the name you pass on '-name' and at the folder you pass on '-OutputPath'"
    CodeBlock -Code @'
    $Document = New-PSMDDocument -Name "Sample" -Content {
        Title -Text "Sample Document" -Size h1
    } -OutputPath .\Folder\of\your\choosing
'@  

    Title -Text "Individual Markdown Features in PSMD" -Size h2
    #Title
    Title -Text "Titles" -Size h3
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