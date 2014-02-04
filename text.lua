tekst = {}

tekst.txt1 = "wiecej was mama nie miala?"
tekst.txt1x = -500
tekst.txt1y = 500
tekst.licznik1 = 0

tekst.txt2 = "w takich momentach wygodnie jest wierzyc w reinkarnacje..."
tekst.txt2x = 0
tekst.txt2y = 0
tekst.licznik2=0

tekst.txt3 = "ziarnko do ziarnka..."
tekst.txt3x = 0
tekst.txt3y = 0
tekst.licznik3=0
--tekst.object = love.graphics.newFont
--tekst.object:setColor(100,100,100,100)


function text_draw()
  --tekst.kolor=love.graphics.setColor(100,100,100,100)
 love.graphics.setColor(0,0,0,255)
  love.graphics.printf(tekst.txt1,tekst.txt1x,tekst.txt1y+70,128,left)
  end