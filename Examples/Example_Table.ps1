$hash = @{}
$hash.surname = "Jones"
$Hash.SecondName = "Joseph"
$Hash.FirstName = "Jonas"
$obj = New-Object psobject -Property $hash
$doc = New-PSMDDocument -Name "Table_Sample" -Content {
    Table -InputObj $obj
} -OutputPath .\