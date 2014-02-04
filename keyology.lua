 require "player"
 require "strzal"
 
 function keys(dt)
   
   if love.keyboard.isDown("c") then --initinit=true 
       cofnij()
       end
     

   if love.keyboard.isDown("o") then --initinit=true 
       stan="level_completed"
       end
    
   
   if love.keyboard.isDown("4") then --initinit=true 
       strzal_factor=1.5
       end
    
     if love.keyboard.isDown("5") then --initinit=true 
       strzal_factor=3
     end
     
      if love.keyboard.isDown("6") then --initinit=true 
       strzal_factor=6
       end
   
 if love.keyboard.isDown("e") then 
   strzal_prawo(dt)
  end
  
  
  if love.keyboard.isDown("q") then 
    strzal_lewo(dt)
  end
  
   if love.keyboard.isDown("m") then 
     stan="game_over"
   end
   
   if love.keyboard.isDown("k") then --initinit=true 
    -- walki_zajely=0 
    -- stan="cinematic" 
      stan="level" 
      init=true 
      end
   
    if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
    if player.x>=player_min_x then
      w_lewo(dt)
      if love.keyboard.isDown("up") or love.keyboard.isDown("w") then  
        if player.y>=player_min_y then
       skos_w_lewo(dt)
        
        end
    end --if
      if love.keyboard.isDown("down") or love.keyboard.isDown("s") then  
        if player.y<=player_max_y then
        lewo_w_dol(dt)
        end
    end end 
  elseif love.keyboard.isDown("right") or love.keyboard.isDown("d") then
   if player.x<=player_max_x then
   w_prawo(dt)
    
      if love.keyboard.isDown("up") or love.keyboard.isDown("w") then  
        if player.y>=player_min_y then
prawo_w_gore(dt)
         end
      end
   if love.keyboard.isDown("down") or love.keyboard.isDown("s") then  
     if player.y<=player_max_y then
    prawo_w_dol(dt)
     end
    end 
    end
     
  elseif love.keyboard.isDown("up") or love.keyboard.isDown("w") then
    if player.y>=player_min_y then
    w_gore(dt)
    end
  elseif love.keyboard.isDown("down") or love.keyboard.isDown("s") then
    if player.y<=player_max_y then
    w_dol(dt)
    end
  end
  end--function keys