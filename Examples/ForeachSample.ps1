$Services = (Get-Service).Name

New-PSMDDocument -Name "Services" -Content {

    Title -Text "Servcices" -Size h1

    foreach($Service in $Services){
        Title -Text "$Service" -Size h2
        Paragraph -Text "This would be the description of $Service"
    }
} -OutputPath "..\Docs"