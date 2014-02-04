
player = {}
player.x = 300
player.y = 500 --bo od 0 do 300 sa kosmici, wiec zeby sie nie zderzyl
player.speed = 150
player.health = 20
player.damage = 2
player.mini_x = 0
player.mini_y = 0
player.upgrade_extra_life=true
player.upgrade_extra_life_cena=1000
player.upgrade_2x_strzal=false
player.upgrade_2x_strzal_cena=2000
player.upgrade_4x_strzal=false
player.upgrade_4x_strzal_cena=4000
player.upgrade_8x_strzal=false
player.upgrade_8x_strzal_cena=8000
player.upgrade_25_speed=false
player.upgrade_25_speed_cena=1000
player.upgrade_50_speed=false
player.upgrade_50_speed_cena=2000
player.upgrade_75_speed=false
player.upgrade_75_speed_cena=3000
player.upgrade_25_strzal=false
player.upgrade_25_strzal_cena=1000
player.upgrade_50_strzal=false
player.upgrade_50_strzal_cena=2000
player.upgrade_75_strzal=false
player.upgrade_75_strzal_cena=3000


--player.pic = love.graphics.newImage("images/kulka.png")
player.pic = love.graphics.newImage("images/player.png")

--a=500
--b=500
function player_draw() --tu nie moge dawac cyfr, ani a=500 itp, bo sie rzuca o znak rownosci
--	a=m--500
	--b=n--550
	love.graphics.draw(player.pic,player.x,player.y) --tu podane wspolrzedne dzialaja ok
end

function margines_playera_x1()
  --local x = player_max_x-player.x
  return 400--x
  end--margines playera
  
  function margines_playera_x2()
  --local x = player_max_x-player.x
  return  400 --x
  end--margines playera

function w_lewo(dt)
   player.x = player.x - player.speed*dt
        tlo.x = tlo.x + player.speed*dt
         tlo2.x = tlo2.x + player.speed*dt
  end

function skos_w_lewo(dt)
  
        player.y = player.y - player.speed*dt
        player.x = player.x - player.speed*dt/4
        tlo.x = tlo.x + player.speed*dt/4
         tlo2.x = tlo2.x + player.speed*dt/4
  end
  
  function lewo_w_dol(dt)
    player.y = player.y + player.speed*dt
        player.x = player.x - player.speed*dt/4
        tlo.x = tlo.x + player.speed*dt/4
        tlo2.x = tlo2.x + player.speed*dt/4
        end--e dol
  
  function w_prawo(dt)
   player.x = player.x + player.speed*dt
     tlo.x = tlo.x - player.speed*dt
         tlo2.x = tlo2.x - player.speed*dt
     end --- wprawo
     
     
     function prawo_w_dol(dt)
        player.y = player.y + player.speed*dt
     player.x = player.x + player.speed*dt/4
     tlo.x = tlo.x - player.speed*dt/4
     tlo2.x = tlo2.x - player.speed*dt/4
     end--prawo w dol
  
  function prawo_w_gore(dt)
    
      
        player.y = player.y - player.speed*dt
    player.x = player.x + player.speed*dt/4
     tlo.x = tlo.x - player.speed*dt/4
     tlo2.x = tlo2.x - player.speed*dt/4
     end--prawo w gore
  
  function w_gore(dt)
    player.y = player.y - player.speed*dt
    end--e gore
  
  function w_dol(dt)
    player.y = player.y + player.speed*dt
    end--w dol
  


function kosmita_nie_widzi(dt)
  for ii,vv in ipairs(kosmici) do
  for iii,vvv in ipairs(cywile) do
if (vv.x<=(vvv.x-30) and vv.x>=(vvv.x+30)) and (vv.y<=(vvv.y-30) and vv.y>=(vvv.y+30)) then 
  --jesli nie jest na torze
  if vv.y_bazowy==vv.y and vv.nieucieka then --lataj w boki
     vv.speed_x=70 vv.speed_y=0
    vv.x=vv.x+vv.speed_x*dt*vv.z_x
    vv.y=vv.y-vv.speed_y*dt*vv.z_y
  end
  if vv.y_bazowy>vv.y then
  vv.speed_x=0 vv.speed_y=70
  vv.x=vv.x+vv.speed_x*dt*vv.z_x
    vv.y=vv.y-vv.speed_y*dt*vv.z_y
  end 
  --end --if
  end --for iii,vvv
 end --for ii,vv
  
  for iii,vvv in ipairs(cywile) do
  if vvv.y<-60 then vvv.zywy=false end
  end--for
  
   for ii,vv in ipairs(kosmici) do
  if vv.y<-60 then vv.uciekl=true end
  end--for iii
  end--for ii
  end--kosmita nie widzi