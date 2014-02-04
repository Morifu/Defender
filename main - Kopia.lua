require "player"
require "kosmita"
require "text"
require "cywil"
require "sounds"

function love.load()
  
  muzyka01=love.audio.newSource("sounds/melodia01.ogg","stream")
 strzal_sfx=love.audio.newSource("sounds/strzal.ogg","static")
 trafiony_sfx=love.audio.newSource("sounds/trafiony.ogg","static")
 porwany_sfx=love.audio.newSource("sounds/porwany.ogg","static")
 uratowany_sfx=love.audio.newSource("sounds/uratowany.ogg","static")
  
 --derecated 
 mapa_x = 400
 --deprecated 
 mapa_y = 0
  
   kosmici = {}
  for i=0,7 do
    local kosmita = {}
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
    kosmita.pic = love.graphics.newImage("images/kosmita.png")
    table.insert(kosmici,kosmita)
  end
  
   cywile = {}
  for i=0,7 do
    local cywil = {}
    cywil.x = math.random(0,700)
    cywil.y = 500
    cywil.speed_x = 100
    cywil.speed_y = 0
    cywil.zywy  = true
    cywil.pic = love.graphics.newImage("images/cywil.png")
    table.insert(cywile,cywil)
  end
  
wolno_zmieniac_kosmite=true
z_x=1
z_y=-1
stan = 0 --stan 0-menu, 1-gra, 2-game over
porwany = false
s=0
init=true
initinit=true
      info = {}
  info.level="Level: 1"
  info.enemies = "Enemies: 1/1"
  info.civils = "Civils: 1/1"
    
	medium = love.graphics.newFont(45)
  
	tlo = {}  tlo.pic = love.graphics.newImage("images/tlo_dlugie.png")
  tlo.x = -310
  tlo.y = 0
  
  strzal = {}
  strzal.x=-20
  strzal.y=20
  strzal.pic = love.graphics.newImage("images/strzal.png")

	--partikl

  --sorry, too lazy to pick an image, just skip point 1a and 1b when you use an image file
  --1a. create a blank 32px*32px image data
  id = love.image.newImageData(32, 32)
  --1b. fill that blank image data
  for x = 0, 31 do
    for y = 0, 31 do
      local gradient = 1 - ((x-15)^2+(y-15)^2)/40
      id:setPixel(x, y, 110, 110, 110, 255*(gradient<0 and 0 or gradient))
    end
  end
  
  --2. create an image from that image data
  i = love.graphics.newImage(id)
  
  --3a. create a new particle system which uses that image, set the maximum amount of particles (images) that could exist at the same time to 256
  p = love.graphics.newParticleSystem(i, 256)
  --3

--	setImage("images/kulka.png")
	
	p:setEmissionRate          (20  )
 p:setParticleLifetime              (-1) -- -1 == forever

  p:setPosition              (50, 50)
  p:setDirection             (0)
  p:setSpread                (0.1)
  p:setSpeed                 (100, 300)
--  p:setGravity               (30)
  p:setRadialAcceleration    (10)
  p:setTangentialAcceleration(0)
 -- p:setSize                  (1)
  p:setSizeVariation         (0.5)
  p:setRotation              (0)
  p:setSpin                  (0)
  p:setSpinVariation         (0)
 -- p:setColor                 (200, 200, 255, 240, 255, 255, 255, 10)
 
  -- p:setPosition(0,0)
   p:setSpread(2*math.pi)
   p:setSpeed(100, 200)

   -- Colors as tables with optional alpha.
   pink = {255, 0, 200}
   blue = {0, 200, 255, 0}
   white = {255,255,255}
   black = {0,0,0}
   sea_green = {0,255,255}
   p:setColors(black, sea_green)

   -- Name changes ahead.
   p:setEmitterLifetime(-1)
   p:setParticleLifetime(2)


 
 -- p:stop();--this stop is to prevent any glitch that could happen after the particle system is created
	
	--gamestate = "playing"

end

function policz_kosmitow()
  local liczba_kosmitow=0
    for i,v in ipairs(kosmici) do
        if v.zywy then liczba_kosmitow = liczba_kosmitow+1 end
        if v.uciekl then liczba_kosmitow = liczba_kosmitow-1 end
    end
return liczba_kosmitow
end

function policz_cywili()
  local liczba_cywili=0
    for i,v in ipairs(cywile) do
        if v.zywy then liczba_cywili = liczba_cywili+1 end
    end
return liczba_cywili
end






function love.update(dt)
  
 --przed initami zadnych bzdur nie pisac!!!

  if initinit==true then
        muzyka01=love.audio.newSource("sounds/melodia01.ogg","stream")
  info.level="Level: "
  info.enemies = "Enemies: "
  info.civils = "Civils: "
    
  for i,v in ipairs(kosmici) do
 
   
    v.x = math.random(0,1550)
    v.y = math.random(0,300)

     v.mini_x=v.x
    v.mini_y=v.y
   -- kosmita.x_bazowy=kosmita.x--nie potrzebne
    v.y_bazowy=v.y
    v.speed_x = 100
    v.speed_y = 0
    v.zywy  = true
    v.uciekl=false
    v.nieucieka=true
    
   
  end
  
   cywile = {}
  for i=0,7 do
    local cywil = {}
    cywil.x = math.random(0,1550)
    cywil.y = 550
    cywil.speed_x = 100
    cywil.speed_y = 0
    cywil.zywy  = true
    cywil.wolny=true
    cywil.pic = love.graphics.newImage("images/cywil.png")
    table.insert(cywile,cywil)
  end
    wolno_zmieniac_kosmite=true
z_x=1
z_y=-1

porwany = false
s=0
init=true

	medium = love.graphics.newFont(45)
  
	tlo = {}
  tlo.pic = love.graphics.newImage("images/tlo_dlugie.png")
  tlo.x = -310
  tlo.y = 0
  
  strzal = {}
  strzal.x=-20
  strzal.y=20
  strzal.pic = love.graphics.newImage("images/strzal.png")

enemy.x = 0
enemy.y = 100
enemy.speed_x = 100
enemy.speed_y = 0
enemy.health = 20
enemy.zywy=true

czlowieczek.x = 200
czlowieczek.y = 550
czlowieczek.speed = 50
czlowieczek.health = 20

    initinit=false
  end


    if init==true then
    strzal.x=player.x
    strzal.y=player.y
    p:setPosition(player.x+3200, player.y+3200)
   -- init=false
  end
  
  ---koniec initow!!!!!!!
  
   if policz_kosmitow()==0 then stan=3 end

	p:update(dt);
  
  if love.keyboard.isDown("e") then 
    p:emit(100) 
    s=500
    strzal.x=player.x
    strzal.y=player.y
    init=false
    strzal_sfx=love.audio.newSource("sounds/strzal.ogg","static")
    love.audio.play(strzal_sfx)
  end
  
  
  if love.keyboard.isDown("q") then 
    p:emit(100) 
    s=-500
    strzal.x=player.x
    strzal.y=player.y
    init=false
       strzal_sfx=love.audio.newSource("sounds/strzal.ogg","static")
    love.audio.play(strzal_sfx)
  end
  
   if love.keyboard.isDown("m") then 
     stan=2
     end
  
  strzal.x=strzal.x + s*dt
  
  p:setPosition(strzal.x+32, strzal.y+32)
  
  if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
    if player.x>=0 then
       player.x = player.x - player.speed*dt
        tlo.x = tlo.x + player.speed*dt
      if love.keyboard.isDown("up") or love.keyboard.isDown("w") then  
        if player.y>=0 then
       
        
        player.y = player.y - player.speed*dt
        player.x = player.x - player.speed*dt/4
        tlo.x = tlo.x + player.speed*dt/4
        end
    end --if
      if love.keyboard.isDown("down") or love.keyboard.isDown("s") then  
        if player.y<=536 then
        player.y = player.y + player.speed*dt
        player.x = player.x - player.speed*dt/4
        tlo.x = tlo.x + player.speed*dt/4
        end
    end end 
  elseif love.keyboard.isDown("right") or love.keyboard.isDown("d") then
   if player.x<=760 then
    player.x = player.x + player.speed*dt
     tlo.x = tlo.x - player.speed*dt
    
      if love.keyboard.isDown("up") or love.keyboard.isDown("w") then  
        if player.y>=0 then

      
        player.y = player.y - player.speed*dt
    player.x = player.x + player.speed*dt/4
     tlo.x = tlo.x - player.speed*dt/4
         end
      end
   if love.keyboard.isDown("down") or love.keyboard.isDown("s") then  
     if player.y<=536 then
     player.y = player.y + player.speed*dt
     player.x = player.x + player.speed*dt/4
     tlo.x = tlo.x - player.speed*dt/4
     end
    end 
    end
     
  elseif love.keyboard.isDown("up") or love.keyboard.isDown("w") then
    if player.y>=0 then
    player.y = player.y - player.speed*dt
    end
  elseif love.keyboard.isDown("down") or love.keyboard.isDown("s") then
    if player.y<=536 then
    player.y = player.y + player.speed*dt
    end
  end
 -- p:setPosition(player.x+20, player.y+20)
  
  --USTAWIA NA MIEJSCU PORZUCONYCH CYWILOW
  for iii,vvv in ipairs(cywile) do
    if vvv.y<500 then 
      vvv.speed_y=100
      vvv.y=vvv.y+vvv.speed_y*dt
      love.audio.play(uratowany_sfx)
      end--if
    end --for
  
--to robi ze kosmita sobie chodzi na boki  
enemy.x=enemy.x+enemy.speed_x*dt*z_x
enemy.y=enemy.y-enemy.speed_y*dt*z_y

--nie moge tego wykomentowac bo wtedy stoja
for i, v in ipairs(kosmici) do --i czyli 0 do 7, v to uchwyt czyli kosmici[i]
v.x = v.x+v.speed_x*dt*v.z_x  
v.y = v.y-v.speed_y*dt*v.z_y
end


--to zabezpiecza (powinno) kosmite przez wyjsciem z mapy w poziomie
for ii,vv in ipairs(kosmici) do
if vv.x>1550 then vv.z_x=vv.z_x*(-1) end
if vv.x<=0 then vv.z_x=vv.z_x*(-1) end
end

--to powinno zabezoieczac w pionie zeby kosmita nie wylazil
for ii,vv in ipairs(kosmici) do
if vv.y>550 then vv.z_y=vv.z_y*(-1) end
if vv.y<=0 then vv.z_y=vv.z_y*(-1) end
end

--sprawdz kolizje z graczem
if (enemy.x>=(player.x-30) and enemy.x<=(player.x+30)) and (enemy.y>=(player.y-30) and enemy.y<=(player.y+30)) then stan=2 end

--sprawdz kolizje z pociskiem
for ii, vv in ipairs(kosmici) do
 if (vv.x>=(strzal.x-30) and vv.x<=(strzal.x+30)) and (vv.y>=(strzal.y-30) and vv.y<=(strzal.y+30)) then 
 --punkty
 --todo
     wolno_zmienic_kosmite=false
  vv.speed_x=0 vv.speed_y=0
  vv.zywy=false
  vv.x=-200
  vv.y=200
  tekst.licznik1=300
  strzal_sfx=love.audio.newSource("sounds/trafiony.ogg","static")
  love.audio.play(trafiony_sfx)

 end
end--do fora ii,vv

--sprawdzanie czy ludzik jest w pobliżu --widzi true, 
for ii, vv in ipairs(kosmici) do
  for iii, vvv in ipairs(cywile) do
 if vv.x>=(vvv.x-100) and vv.x<=(vvv.x+100) and vvv.wolny then--and wolno_zmieniac_kosmite then
   vv.speed_x=70 vv.speed_y=70 --to robi ze kosmita lata po przekatnej, a ma sprawdzac kierunek kosmity
   if vv.x>=vvv.x then vv.z_x=-1 end
   if vv.x<vvv.x then vv.z_x=1 end

   
   --else enemy.speed_x=70 enemy.speed_y=0
 end
 end --iii,vvv
 end --ii,vv
  
  --porwanie --if widzi
for ii,vv in ipairs(kosmici) do
  for iii,vvv in ipairs(cywile) do
if (vv.x>=(vvv.x-30) and vv.x<=(vvv.x+30)) and (vv.y>=(vvv.y-30) and vv.y<=(vvv.y+30)) then 
  vv.speed_x=0 vv.speed_y=-70
    vv.nieucieka=false
    vvv.wolny=false
    vvv.x = vv.x+10
    vvv.y = vv.y+10
        
    love.audio.play(porwany_sfx)
  end 
  end --for iii,vvv
 end --for ii,vv
 
   --nie widzi
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
  end--for
  end
czlowieczek.x=czlowieczek.x+czlowieczek.speed*dt*z_x
if czlowieczek.x>=550 then z_x=z_x*(-1) end
if czlowieczek.x<=0 then z_x=z_x*(-1) end

if tekst.licznik1>0 then
  tekst.txt1x=player.x
  tekst.txt1y=player.y
  tekst.licznik1=tekst.licznik1-1
  if tekst.licznik1==0 then 
      tekst.txt1x=-500
      tekst.txt1y=500
    end
  end


function love.draw()
  
  if stan==0 then --czyli menu glowne
       
   
  -- love.audio.play(muzyka01)
   
   
    love.graphics.setColor(0,255,255) --resetuje przyciemnienie po game overze
      love.graphics.draw(tlo.pic,tlo.x,tlo.y)
      love.graphics.draw(strzal.pic,strzal.x,strzal.y)
    text_draw() 
    love.graphics.setColor(0,0,0,255)
    love.graphics.printf("naciśnij z, żeby rozpocząć",100,100,100,center)
    if love.keyboard.isDown("z") then init=true initinit=true stan=1  end
    end--stan0
  
  if stan==1 then --czyli gra, lvl 1
    love.graphics.setColor(255,255,255)--resetuje przyciemnienie po game overze
    
  love.graphics.draw(tlo.pic,tlo.x,tlo.y)
  
  --mapa start
  --mapa = love.image.newImageData(160, 60) --bo mapa jest 1600x600
  love.graphics.setColor(0,0,0,100)
  love.graphics.rectangle("fill",mapa_x,mapa_y,160,60)
  --mapa stop
  love.graphics.setColor(255,255,255)
  
  love.graphics.draw(strzal.pic,strzal.x,strzal.y)
 love.graphics.draw(p)
	player_draw()
  czlowieczek_draw()
 
for i, v in ipairs(kosmici) do --i czyli 0 do 7, v to uchwyt czyli kosmici[i]
  if v.zywy then 
    love.graphics.draw(v.pic,v.x,v.y) 
    v.mini_x=v.x
    v.mini_y=v.y
    love.graphics.draw(v.pic,v.mini_x/10+mapa_x,v.mini_y/10+mapa_y,0.2,0.2)
    end --uwaga, to nie zmienia mu polozenia i bedzie zabijal graczs
end

for i, v in ipairs(cywile) do --i czyli 0 do 7, v to uchwyt czyli kosmici[i]
  if v.zywy then love.graphics.draw(v.pic,v.x,v.y) end --uwaga, to nie zmienia mu polozenia i bedzie zabijal graczs, polozenie zmieniane przy kolozji
end

  if enemy.zywy==true then enemy_draw()end
  text_draw()
  
   love.graphics.setColor(0,0,0,255)

info.level=1

    love.graphics.printf("Level: ",0,0,500,left)
    love.graphics.printf(info.level,50,00,500,left)
    
    love.graphics.printf("Kosmici: ",100,0,500,left)
    love.graphics.printf(policz_kosmitow(),150,0,500,left)

    
    love.graphics.printf("Cywile: ",200,0,500,left)
    love.graphics.printf(policz_cywili(),250,0,500,left)
  --jesli dam o wyzej to wlynie na wyswietlanie
	-- love.graphics.setColor(100,100,100,200)
  --  love.graphics.rectangle("fill",0,0,800,20)
    
  end--stan1
  
  if stan==2 then --czyli game over
    love.graphics.setColor(100,100,100,100)
      love.graphics.draw(tlo.pic,tlo.x,tlo.y)
     love.graphics.setColor(255,255,255,255)
    love.graphics.printf("game over, naciśnij n",100,100,100,center);
   
    
    if love.keyboard.isDown("n") then stan=0 end
  end--stan2
  
  if stan==3 then --czyli level completed
     love.graphics.setColor(255,0,0,100)
      love.graphics.draw(tlo.pic,tlo.x,tlo.y)
     love.graphics.setColor(255,255,255,255)
    love.graphics.printf("level completed, wcisnij n",100,100,100,center)
   
    
    if love.keyboard.isDown("n") then initinit=true stan=0 end
    end
  
end end