require "kosmita"
require "cywil"
require "progress"
require "datas"

gui = {}
gui.pic=love.graphics.newImage("images/gui.png")
gui.x=0
gui.y=0

info = {}
info.level_text = "Level: "
info.level_value = lvl_nr --init
info.aliens_text = "Aliens: "
info.aliens_value_begin = -1 -- init
info.aliens_value_current = -1 -- init
info.civils_text = "Civils: "
info.civils_value_begin = -1 --init
info.civils_value_end = -1 --init


function gui_init()
  
  info.aliens_value_begin=ilosc_kosmitow
  info.civils_value_begin=ilosc_cywili
  
  info.aliens_value_current=policz_kosmitow()
  info.civils_value_current=policz_cywili()
  --for i,v in ipairs(info) do
    --  if v==-1 then end
  --end--for
end--gui init


function gui_draw()
  
  kolor={250,0,0}
   love.graphics.setColor(kolor,255)

--info.level=1

    love.graphics.printf("Level: i walki zajely",730,70,500,left)
    love.graphics.printf(info.level_value,750,100,500,left)
    love.graphics.printf(walki_zajely,750,120,500,left)
    
    love.graphics.printf("Kosmici2: ",275,40,500,left)
    love.graphics.printf(policz_kosmitow(),340,40,500,left)
    love.graphics.printf(policz_kosmitow_wyg(),355,40,500,left)
    love.graphics.printf(ilosc_kosmitow_max,305,60,500,left)
    
    love.graphics.printf("Cywile: ",450,40,500,left)
    love.graphics.printf(policz_cywili(),510,40,500,left)

  
    
      love.graphics.setColor(reset)
     love.graphics.draw(gui.pic,gui.x,gui.y)
end --gui draw

function policz_kosmitow()--na mapie
  local liczba_kosmitow=0
    for i,v in ipairs(kosmici) do
        if v.zywy then liczba_kosmitow = liczba_kosmitow+1 end
        if v.uciekl then liczba_kosmitow = liczba_kosmitow-1 end
    end
return liczba_kosmitow
end

function policz_kosmitow_wyg()--wygenerowanych
  local liczba_kosmitow=0
    for i,v in ipairs(kosmici) do
         liczba_kosmitow=liczba_kosmitow+1
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

