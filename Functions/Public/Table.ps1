Function Table {
<#
.SYNOPSIS
    Generates Tables in a PSMDDocument.
.DESCRIPTION
    Use this function within a PSMDDocument to generate Tables.
    Tables are used to display Tables in a Markdown document.
    Tables take Objects as an input. The names of the properties
    will then make the headers of the table and the values of the object
    will be the values in the tables.
.PARAMETER InputObj
    This Object will be the Content of your Table.
.PARAMETER Properties
    With the properties parameter you can select the properties of the object
    that you want in your table.
.EXAMPLE
    $hash = @{}
    $hash1=@{}
    $hash.surname = "Jones"
    $Hash.SecondName = "Joseph"
    $Hash.FirstName = "Jonas"
    $obj1 = New-Object psobject -Property $hash
    $hash1.surname = "Walther"
    $Hash1.SecondName = "William"
    $hash1.FirstName = "Waldo"
    $obj2 = New-Object psobject -Property $hash1
    $arr = $obj1,$obj2
    $doc = New-PSMDDocument -Name "Custom_Table_Sample" -Content {
        Table -InputObj $arr
    }
    This Will output a table with a custom object in your PSMDDocument.
.EXAMPLE
    #Table Generated from "Get-Service"
    $doc = New-PSMDDocument -Name "Service_Table_Sample" -Content {
        Table -InputObj (Get-Service) #-properties ("Name","Status")
    }
    This Will output a table with the output of "Get-Service" in your PSMDDocument.
.NOTES
    Author: Kevin Bates
#>

    param(
        [Object[]]
        $InputObj,

        [SectionType]
        $Type = "Table",

        [string[]]
        $Properties
    )
    
    $ReturnArr = @()
    if($Properties){
        $HeaderNames = $Properties
    }else{
        $props = $InputObj | Get-Member -MemberType Properties | Select-Object Name
        $HeaderNames = @()
        foreach($i in $props){$HeaderNames += $i.name}
    }

    $MinusLine = " "

    foreach($HeaderName in $HeaderNames){
        $HeaderLine = $HeaderLine + " | " + $HeaderName
        $count = 0
        $MinusLine = $MinusLine + "|-"
        do{
            $MinusLine = $MinusLine + "-"
            $count ++
        }while($count -lt $HeaderName.length)
    }
    $MinusLine = $MinusLine + "|"
    $Minus = [PSMDSection]::new($Type,$MinusLine)


    $HeaderLine = $HeaderLine + " |"
    $Head = [PSMDSection]::new($Type,$HeaderLine)
    $empty = [PSMDSection]::new($Type,"")

    $ReturnArr += $empty
    $ReturnArr += $Head
    $ReturnArr += $Minus

    
    $count = 0
    foreach($Value in $InputObj){
        $TableLine = $null
        foreach($HeaderName in $HeaderNames){
            $TableLine = $TableLine + " | " + $value.$HeaderName 
        }
        $TableLine = $TableLine + " |"
        $Line = [PSMDSection]::new($Type,$TableLine)
        $ReturnArr += $Line
        $count++
    }

    $ReturnArr += $empty
    return $ReturnArr
}