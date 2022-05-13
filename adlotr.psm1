<#
    TODO Complete :D
    Work in progress
#>

$DataChar = Import-Csv .\data\lotr_characters.csv
# $DataScripts = Import-Csv .\data\lotr_scripts.csv

$Races = $DataChar.race | Where-Object {$_.Length -gt 2} | Select-Object -Unique

$ADData = Get-ADDomain

$DataChar | ForEach-Object {
    $_.name

    $Splat = @{
        Name = $_.Name
        UserPrincipleName = "$($_.Name.replace(" ","."))@$($ADData.Forest)"
        
    }
    $Splat
    # New-ADUser @Splat
}