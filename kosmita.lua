   require "strzal"
 --  require "cywil"
require "datas"
require "particles"
   
   kosmici = {}
  for i=0,ilosc_kosmitow do 
    kosmita = {}
    kosmita.x = math.random(0,700)
    kosmita.y = math.random(0,300)
    kosmita.mini_x=kosmita.x
    kosmita.mini_y=kosmita.y
    kosmita.z_x=1 --okresla kierunek 
    kosmita.z_y=-1
    kosmita.speed_x = 100
    kosmita.speed_y = 0
    kosmita.zywy  = true
    kosmita.uciekl = false
    kosmita.typ = math.random(0,typ_kosmitow)
    kosmita.pic = nil
    kosmita.nieucieka = true
    kosmita.tekst=nil
    table.insert(kosmici,kosmita)
  end
  
  

function fala(lvl)
  for i=0,ilosc_kosmitow do
    kosmita = {}
    kosmita.x = math.random(0,700)
    kosmita.y = math.random(0,300)
    kosmita.mini_x=kosmita.x
    kosmita.mini_y=kosmita.y
    kosmita.z_x=1 --okresla kierunek 
    kosmita.z_y=-1
    kosmita.speed_x = 100
    kosmita.speed_y = 0
    kosmita.zywy  = true
    kosmita.uciekl = false
    kosmita.typ = math.random(0,typ_kosmitow)
    kosmita.pic = nil
    kosmita.nieucieka = true
    kosmita.tekst=i
    
    if kosmita.typ==0 then 
    kosmita.pic=love.graphics.newImage("images/kosmita_0.png") 
    kosmita.speed_x=50
    kosmita.speed_y=50
    end--end if typ 0
  if kosmita.typ==1 then 
    kosmita.pic=love.graphics.newImage("images/kosmita_1.png") 
    kosmita.speed_x=100
    kosmita.speed_y=100
    end--if typ 1
  if kosmita.typ==2 then 
    kosmita.pic=love.graphics.newImage("images/kosmita_2.png") 
    kosmita.speed_x=150
    kosmita.speed_y=150
    end--if typ 2
    
    table.insert(kosmici,kosmita)
  end
  
  end--fala

function kosmita_init()
  
  --resentnij tablice kosmitow
  for i,v in ipairs(kosmici) do
    table.remove(kosmici,i)
    end--for
  
   for i=0,ilosc_kosmitow do 
    kosmita = {}
    kosmita.x = math.random(0,700)
    kosmita.y = math.random(0,300)
    kosmita.mini_x=kosmita.x
    kosmita.mini_y=kosmita.y
    kosmita.z_x=1 --okresla kierunek 
    kosmita.z_y=-1
    kosmita.speed_x = 100
    kosmita.speed_y = 0
    kosmita.zywy  = true
    kosmita.uciekl = false
    kosmita.typ = math.random(0,typ_kosmitow)
    kosmita.pic = nil
    kosmita.nieucieka = true
    kosmita.tekst=i
   
  end
 for i,k in ipairs(kosmici) do
  if k.typ==0 then 
    k.pic=love.graphics.newImage("images/kosmita_0.png") 
    k.speed_x=50
    k.speed_y=50
    end--end if typ 0
  if k.typ==1 then 
    k.pic=love.graphics.newImage("images/kosmita_1.png") 
    k.speed_x=100
    k.speed_y=100
    end--if typ 1
  if k.typ==2 then 
    k.pic=love.graphics.newImage("images/kosmita_2.png") 
    k.speed_x=150
    k.speed_y=150
    end--if typ 2
 end--for
end--kosmita init

function kosmita_draw()
  for i, k in ipairs(kosmici) do
  love.graphics.draw(k.pic, k.x, k.y)
  end--for
end--kosmita draw

function kosmita_speed(k)
 -- for i,k in ipairs(kosmici) do
  if k.typ==0 then 
   return 50
   --speed=50
    end--end if typ 0
  if k.typ==1 then 
    return 100
   --speed=100
    end--if typ 1
  if k.typ==2 then 
    return 150
    --speed=150
    end--if typ 2
-- end--for
  --return speed
end--kosmita speed

function kosmita_move(dt)
--nie moge tego wykomentowac bo wtedy stoja
for i, v in ipairs(kosmici) do
v.x=v.x+v.speed_x*dt*v.z_x

--v.x = -player.x-v.x+v.speed_x*dt*v.z_x  --obecna pozycja zmieniona o szybkosc, czas i kierunek i uzwglednia przesuniecie gracza robiac uluzje chodzenia po mapie
v.y = v.y-v.speed_y*dt*v.z_y --jw
end


--to zabezpiecza (powinno) kosmite przez wyjsciem z mapy w poziomie
for ii,vv in ipairs(kosmici) do
if vv.x>x_max then vv.z_x=vv.z_x*(-1) end
if vv.x<=x_min then vv.z_x=vv.z_x*(-1) end
end

--to powinno zabezoieczac w pionie zeby kosmita nie wylazil
for ii,vv in ipairs(kosmici) do
if vv.y>y_max  then vv.z_y=vv.z_y*(-1) end
if vv.y<=y_min and vv.nieucieka then vv.z_y=vv.z_y*(-1) end
end
end--kosmita move

--sprawdz kolizje z graczem  
function kosmita_collision(dt)
  for ii,vv in ipairs(kosmici) do
 -- if (vv.x>=(player.x-collision_margin) and vv.x<=(player.x+collision_margin)) and (vv.y>=(player.y-collision_margin) and vv.y<=(player.y+collision_margin)) then stan="game_over" end
end--for ii
end --kosmita collision

--sprawdz kolizje z pociskiem i jesli wystapi to zabij kosmite
function kosmita_strzal(dt)
  for ii, vv in ipairs(kosmici) do
 if (vv.x>=(strzal.x-collision_margin) and vv.x<=(strzal.x+collision_margin)) and (vv.y>=(strzal.y-collision_margin) and vv.y<=(strzal.y+collision_margin)) then 
 --punkty
 --todo
     wolno_zmienic_kosmite=false
  vv.speed_x=0 vv.speed_y=0
  vv.zywy=false
 p:setPosition(vv.x+32, vv.y+32)
  p:setColors(green, green)
  p:emit(100)
  vv.x=-200
  vv.y=200
  tekst.licznik1=300
  strzal_sfx=love.audio.newSource("sounds/trafiony.ogg","static")
  love.audio.play(trafiony_sfx)
 p:setPosition(player.x+32, player.y+32)
 end
end--do fora ii,vv
  end--kosmita kolizja ze strzalem
  
  
  --kosmita czy widzi
  function kosmita_czy_widzi(dt)
    for ii, vv in ipairs(kosmici) do
  for iii, vvv in ipairs(cywile) do
 if vv.x>=(vvv.x-eyesight_margin) and vv.x<=(vvv.x+eyesight_margin) and vvv.wolny then--and wolno_zmieniac_kosmite then
   vv.speed_x=kosmita_speed(vv) vv.speed_y=kosmita_speed(vv) --to robi ze kosmita lata po przekatnej, a ma sprawdzac kierunek kosmity
   if vv.x>=vvv.x and vvv.wolny then vv.z_x=-1 end
   if vv.x<vvv.x and vvv.wolny then vv.z_x=1 end
 end --if
 end --iii,vvv
 end --ii,vv
 end --kosmita czy widzi
 
 
 
function kosmita_porwanie(dt)
  for ii,vv in ipairs(kosmici) do
  for iii,vvv in ipairs(cywile) do
if (vv.x>=(vvv.x-collision_margin) and vv.x<=(vvv.x+collision_margin)) and (vv.y>=(vvv.y-collision_margin) and vv.y<=(vvv.y+collision_margin)) then 
  vv.speed_x=0 vv.speed_y=-kosmita_speed(vv)
    vv.nieucieka=false --kosmita ucieka
    vvv.wolny=false
    vvv.x = vv.x+10
    vvv.y = vv.y+10
        
    love.audio.play(porwany_sfx)
  end 
  end --for iii,vvv
 end --for ii,vv
 end --kosmita powanie