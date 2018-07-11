Function Table {

    # Parameter help description
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

    foreach($Value in $InputObj){
        foreach($HeaderName in $HeaderNames){
            $TableLine = $TableLine + " | " + $value.$HeaderName 
        }
        $TableLine = $TableLine + " |"
        $Line = [PSMDSection]::new($Type,$TableLine)
        $ReturnArr += $Line
    }

    $ReturnArr += $empty
    return $ReturnArr
}