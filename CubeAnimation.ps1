$cubeList = (
"
+------+.
| .    |  .
|   +--+---+
|   |  |   |
+---+--+.  |
  . |     .|
    +------+", 
"
  +------+       
  |\     |\      
  | +----+-+     
  | |    | |     
  +-+----+ |     
   \|     \|     
    +------+",
"
    +------+     
    |      |     
    +------+     
    |      |     
    +------+     
    |      |     
    +------+",
"
      +------+   
     /|     /|   
    +-+----+ |   
    | |    | |   
    | +----+-+   
    |/     |/    
    +------+",
"
       .+------+   
     .' |    .'|
    +---+--+'  |
    |   |  |   |
    |  .+--+---+
    |.'    | .'
    +------+'",
"
        +------+   
       /|     /|   
      +-+----+ |   
      | |    | |   
      | +----+-+   
      |/     |/    
      +------+",
"
        +------+     
        |      |     
        +------+     
        |      |     
        +------+     
        |      |     
        +------+",
"
        +------+       
        |\     |\      
        | +----+-+     
        | |    | |     
        +-+----+ |     
         \|     \|     
          +------+",
"
        +------+.
        | .    |  .
        |   +--+---+
        |   |  |   |
        +---+--+.  |
          . |     .|
            +------+")
            
#millisecondsTimer            
$mlt = 70

#Remove first and last element to create a loop
$cubeListReverse = $cubeList
$cubeListReverse = $cubeList[1..($cubeList.Length-1)]
[array]::Reverse($cubeListReverse)

# reminder:
Write-Host "`n`nReminder:: Press " -NoNewline
Write-Host "[ Strg + C ]" -ForegroundColor red -NoNewline
Write-Host " to exit loop.`n`nLoop starts in 5 seconds"
Start-Sleep -Seconds 5

while($True){

       
    foreach($cube in $cubeList)
    {
        clear 
        $cube
        Start-Sleep -Milliseconds $mlt
    }   
    foreach($cube in $cubeListReverse)
    {
        clear 
        $cube
        Start-Sleep -Milliseconds $mlt
    }


}
