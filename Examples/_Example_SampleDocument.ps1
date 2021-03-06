$doc = New-PSMDDocument -Name "Sample" -Content {
    
    #Intro
    Title -Text "How to use PSMD" -Size h1
    Paragraph -Text "You will find a short example from every feature of PSMD here. Feel free to give feedback on the structure of the functions and enjoy PSMD!"
    Paragraph -Text "Also btw, this Document was generated with PSMD. If you're interessted check out the"
    Link -Text "Script that generated this document" -Value "../Examples/_Example_SampleDocument.ps1"

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

    #LineBreaks
    Title -Text "Linebreaks" -Size h3
    Paragraph -Text "Normally after every line there is a new line starting. You can however, with PSMD, add more linebreaks or choose to have your value on the same line as the value above."
    Title -Text "Add a linebreak" -Size h3
    CodeBlock -Code @'
    Paragraph -Text "This is a sample paragraph"
    LineBreak
    LineBreak
    Paragraph -Text "This is a sample paragraph a few lines below." 
'@
    Paragraph -Text "This will look something like this:"
    LineBreak;LineBreak
    Paragraph -Text "This is a sample paragraph"
    LineBreak;LineBreak    
    Paragraph -Text "This is a sample paragraph a few lines below."
    
    Title -Text "Have two sections on one line" -Size h3
    CodeBlock -Code @'
    Paragraph -Text "This is a sample paragraph."
    Paragraph -Text " And this wil be on the line above." -NoNewLine 
'@
    Paragraph -Text "This will look something like this:"
    LineBreak    
    Paragraph -Text "This is a sample paragraph."
    Paragraph -Text " And this wil be on the line above." -NoNewLine

    #Paragraph
    Title -Text "Paragraphs" -Size h3
    Paragraph -Text "You can add paragraphes like this:"
    CodeBlock -Code @'
    Paragraph -Text "here you go" 
'@
    Title -Text "Style of Paragraphs" -Size h4
    Paragraph -Text "You can add styles to paragraphes like this:"
    CodeBlock -Code @'
    Paragraph -Text "This is bold text" -Style bold
    Paragraph -Text "This is Italic text" -Style Italic
    Paragraph -Text "This is bold and italic text" -Style bold,Italic 
'@
    Paragraph -Text "The Paragraphes with styles will look something like this:";LineBreak
    Paragraph -Text "This is bold text" -Style bold;LineBreak
    Paragraph -Text "This is Italic text" -Style Italic;LineBreak
    Paragraph -Text "This is bold and italic text" -Style bold,Italic

    #BlockQuote
    Title -Text "BlockQuote" -Size h3
    Paragraph -Text "You can add BlockQuotes like this:"
    CodeBlock -Code @'
    BlockQuote -Text "I have a dream" 
'@
    Paragraph -Text "The Blockquote will look something like this:"
    BlockQuote -Text "I have a dream" 

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
    Paragraph -Text "The image will look something like this:";LineBreak
    Image -Text "Sample image" -ImagePath "../Images/Powershell.png"

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

    #Tables
    Title -Text "Tables" -Size h3
    Paragraph -Text "Tables are generated with an object, or an array containing objects, as the input."
    LineBreak;LineBreak
    Paragraph -Text "To see how more advanced tables are generated see "
    Link -Text "the Table examples." -Value "../Examples/Example_Table.ps1"
    Paragraph -Text "To see results of the Tables see  " -NoNewLine
    Link -Text "the Tables themselves." -Value "../Examples/TableResults/"
    Paragraph -Text "You can add tables like this:"
    CodeBlock -Code @'
    $hash = @{}
    $hash.surname = "Jones"
    $Hash.SecondName = "Joseph"
    $Hash.FirstName = "Jonas"
    $obj = New-Object psobject -Property $hash
    $doc = New-PSMDDocument -Name "Table_Sample" -Content {
        Table -InputObj $obj
    } -OutputPath .\
'@

    Paragraph -Text "The Table will look something like this:"
    $hash = @{}
    $hash.surname = "Jones"
    $Hash.SecondName = "Joseph"
    $Hash.FirstName = "Jonas"
    $obj = New-Object psobject -Property $hash
    Table -InputObj $obj
    
    Title -Text "Sample Document" -Size h2
    Link -Text "Go Checkout the other examples" -Value "../Examples/"
} -OutputPath ".\local\"