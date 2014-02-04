require "colors"
require "datas"
require "player"

minimapa = {}
minimapa.x = 300
minimapa.y = map_size_y-(map_size_y/skala_mini+skala_mini)
minimapa.wys = map_size_x/skala_mini --todo auto
minimapa.szer = map_size_y/skala_mini --todo auto
minimapa.tlo = nil
--minimapa.rozm_tla_x=minimapa.wys --todo auto
--minimapa.rozm_tla_y=minimapa.szer --todo auto

function mapa_draw()
  --mapa
  love.graphics.setColor(255,255,255,200)--black2)
  love.graphics.rectangle("fill",minimapa.x,minimapa.y,minimapa.wys,minimapa.szer)
  love.graphics.setColor(white)  
  
  --draw player on map
  love.graphics.setColor(0,255,0)
  player.mini_x=player.x
player.mini_y=player.y
 love.graphics.draw(player.pic,player.mini_x/skala_mini+minimapa.x,player.mini_y/skala_mini+minimapa.y,zmiejszenie_do_mapy,zmiejszenie_do_mapy)
 love.graphics.setColor(reset)
 
  --draw aliens on map
 for i, v in ipairs(kosmici) do --i czyli 0 do 7, v to uchwyt czyli kosmici[i]
  if v.zywy then 
    love.graphics.setColor(255,0,0)
    love.graphics.draw(v.pic,v.x,v.y) 
    v.mini_x=v.x
    v.mini_y=v.y
    love.graphics.draw(v.pic,v.mini_x/skala_mini+minimapa.x,v.mini_y/skala_mini+minimapa.y,zmiejszenie_do_mapy,zmiejszenie_do_mapy)
    love.graphics.setColor(reset)
    end --uwaga, to nie zmienia mu polozenia i bedzie zabijal graczs
end--for


  --draw civils on map
   for i, v in ipairs(cywile) do --i czyli 0 do 7, v to uchwyt czyli kosmici[i]
  if v.zywy then 
    love.graphics.setColor(0,0,255)
    love.graphics.draw(v.pic,v.x,v.y) 
    v.mini_x=v.x
    v.mini_y=v.y
    love.graphics.draw(v.pic,v.mini_x/skala_mini+minimapa.x,v.mini_y/skala_mini+minimapa.y,zmiejszenie_do_mapy,zmiejszenie_do_mapy)
    love.graphics.setColor(reset)
    end --uwaga, to nie zmienia mu polozenia i bedzie zabijal graczs
    end
end--mapa draw

function minimapa_init()
   
end