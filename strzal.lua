
  strzal = {}
  strzal.x=-20
  strzal.y=20
  strzal.pic = love.graphics.newImage("images/strzal.png")
  strzal.kierunek=0

  

  
  function strzal_prawo()
    strzal.x=player.x
    strzal.y=player.y
    p:setPosition(strzal.x+32, strzal.y+32)
    p:setColors(black, sea_green)

   --  p:emit(100) 
    strzal.kierunek=500*strzal_factor
    strzal.x=player.x
    strzal.y=player.y
    init=false
    strzal_sfx=love.audio.newSource("sounds/strzal.ogg","static")
    love.audio.play(strzal_sfx)
    
    end--strzaprawo
    
      
  function strzal_lewo()
    
    p:emit(100) 
    strzal.kierunek=-500*strzal_factor
    strzal.x=player.x
    strzal.y=player.y
    init=false
    strzal_sfx=love.audio.newSource("sounds/strzal.ogg","static")
    love.audio.play(strzal_sfx)
    
    end--strzlewo
    
     function strzal_init()
   p:setPosition(player.x+3200, player.y+3200)
  end