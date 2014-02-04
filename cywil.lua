require "datas"

cywile = {}
  for i=0,ilosc_cywili do
    local cywil = {}
    cywil.x = math.random(0,700)
    cywil.y = civil_level_y
    cywil.speed_x = 100
    cywil.speed_y = 0
     cywil.z_x=1 --okresla kierunek 
    cywil.z_y=-1
    cywil.zywy  = true 
    cywil.wolny=true
    cywil.pic = love.graphics.newImage("images/cywil.png")
    table.insert(cywile,cywil)
  end--for

function cywil_draw()
  for i, c in ipairs(cywile) do
  love.graphics.draw(c.pic, c.x, c.y)
  end--for
end --cywil draw

 --USTAWIA NA MIEJSCU PORZUCONYCH CYWILOW
function cywil_wroc_na_miejsce(dt)
    for iii,vvv in ipairs(cywile) do
    if vvv.y<civil_level_y then 
      vvv.speed_y=100
      vvv.speed_x=0
      vvv.y=vvv.y+vvv.speed_y*dt
      love.audio.play(uratowany_sfx)
    else
      vvv.speed_y=0
      vvv.speed_x=100
      vvv.wolny=true
      end--if
    end --for
  
  end --cywil wroc na miejsxe

function cywil_move(dt)
  
--nie moge tego wykomentowac bo wtedy stoja
for i, v in ipairs(cywile) do
v.x = v.x+v.speed_x*dt*v.z_x  --obecna pozycja zmieniona o szybkosc, czas i kierunek
v.y = v.y-v.speed_y*dt*v.z_y --jw
end


--to zabezpiecza (powinno) kosmite przez wyjsciem z mapy w poziomie
for ii,vv in ipairs(cywile) do
if vv.x>x_max and vv.wolny then vv.z_x=vv.z_x*(-1) end
if vv.x<=x_min and vv.wolny then vv.z_x=vv.z_x*(-1) end
end

--to powinno zabezoieczac w pionie zeby kosmita nie wylazil
for ii,vv in ipairs(cywile) do
if vv.y>y_max and vv.wolny then vv.z_y=vv.z_y*(-1) end
if vv.y<=y_min and vv.wolny then vv.z_y=vv.z_y*(-1) end
end
end--cywil move

function cywil_init()
  for i,v in ipairs(cywile) do
    v.zywy = true
    v.y=civil_level_y
    v.x=math.random(50,750)
  end --for
end --cywil init


  
 
   
   
