$doc = New-PSMDDocument -Name "Sample" -Content {
    BulletPoint -Text "This is the Base level"
    BulletPoint -Text "This is the first level" -Level 1
    BulletPoint -Text "This is the second level" -Level 2
}