


###############################################################################################
#                                                                                             # 
#name           CubeAnimation                                                                 #
#description    just a fun project after end of working day                                   #
#                                                                                             # 
#version        1.0                                                                           #
#author         PrivatPinguin                                                                 #
#createdate     04.02.2021 #ddmmyyyy                                                          #
#                                                                                             # 
#:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:#
#                                                                                             #
#command        Strg + C #to stop the loop                                                    #
#                                                                                             #    
###############################################################################################


#this is the animation array[]
$cubeArray = (
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
[array]::Reverse($cubeListReverse) #actually reverse the $cubeListReverse

# reminder:
Write-Host "`n`nReminder:: Press " -NoNewline
Write-Host "[ Strg + C ]" -ForegroundColor red -NoNewline
Write-Host " to exit loop.`n`nLoop starts in 5 seconds"
Start-Sleep -Seconds 5

while($True)
{
    #forward sequence
    foreach($cube in $cubeList)
    {
        clear 
        $cube
        # reminder:
        Write-Host "`n`nReminder:: Press " -NoNewline
        Write-Host "[ Strg + C ]" -ForegroundColor red -NoNewline
        Write-Host " to exit loop."
        Start-Sleep -Milliseconds $mlt
    }
    #reverse sequence
    foreach($cube in $cubeListReverse)
    {
        clear 
        $cube
        # reminder:
        Write-Host "`n`nReminder:: Press " -NoNewline
        Write-Host "[ Strg + C ]" -ForegroundColor red -NoNewline
        Write-Host " to exit loop."
        Start-Sleep -Milliseconds $mlt
    }
}
