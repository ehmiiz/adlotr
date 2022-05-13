$Data = Import-Csv .\lotr_characters.csv

$Races = $Data.race | Where-Object {$_.Length -gt 2} | Select-Object -Unique