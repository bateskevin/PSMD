#Custom Table
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
} -OutputPath .\

#Table Generated from "Get-Service"
$doc = New-PSMDDocument -Name "Service_Table_Sample" -Content {
    Table -InputObj (Get-Service) #-properties ("Name","Status")
} -OutputPath .\

