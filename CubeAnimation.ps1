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
$n = 200#70
$cubeListReverse = $cubeList
$cubeListReverse = $cubeList[1..($cubeList.Length-1)]
#$cubeListReverse = $cubeListReverse.RemoveAt(0)
[array]::Reverse($cubeListReverse)
while($True){

       
    foreach($cube in $cubeList)
    {
        clear 
        $cube
        Start-Sleep -Milliseconds $n
    }   
    foreach($cube in $cubeListReverse)
    {
        clear 
        $cube
        Start-Sleep -Milliseconds $n
    }


}
