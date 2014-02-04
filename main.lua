require "player"
require "kosmita"
require "text"
require "cywil"
require "sounds"
require "mapa"
require "gui"
require "level"
require "particles"
require "strzal"
require "keyology"
require "progress"
require "datas"
require "graphics"
require "animations"
require "cinematics"

function love.load()
  
  kosmita_init()
  
  cywil_init()
  progress_init()

stan = "title_menu" --stan 0-menu, 1-gra, 2-game over

init=true


end --load

function love.update(dt)
 
 --przed initami zadnych bzdur mi tu nie pisac!!!
 if init==true then
   strzal_init()
 --  walki_zajely=0
   init=false
   

  
  if level_10_completed and continue then cinematic=11 --stan="credits"
  elseif level_9_completed then cinematic=10 level_10_load() 
  elseif level_8_completed then cinematic=9 level_9_load()
  elseif level_7_completed then cinematic=8 level_8_load()
  elseif level_6_completed then cinematic=7 level_7_load()
  elseif level_5_completed then cinematic=6 level_6_load()
  elseif level_4_completed then cinematic=5 level_5_load()
  elseif level_3_completed then cinematic=4 level_4_load()a4=true
  elseif level_2_completed then cinematic=3 level_3_load() a3=true
  elseif level_1_completed then cinematic=2 level_2_load() a2=true
  else cinematic=1 level_1_load() a1=true
end--if --load
  end
  
  ---koniec initow!!!!!!!

   
   if policz_kosmitow()==0 then 
     stan="level_completed" 
     if lvl == 1 then level_1_completed=true init=true end
     if lvl == 2 then level_2_completed=true init=true end
     if lvl == 3 then level_3_completed=true init=true end
     if lvl == 4 then level_4_completed=true init=true end
     if lvl == 5 then level_5_completed=true init=true end
     if lvl == 6 then level_6_completed=true init=true  end
     if lvl == 7 then level_7_completed=true init=true  end
     if lvl == 8 then level_8_completed=true init=true  end
     if lvl == 9 then level_9_completed=true init=true  end
     if lvl == 10 then level_10_completed=true init=true  end
     init=true 
     end

if stan=="level_completed" and love.keyboard.isDown("y") then stan="cinematic" end

if policz_kosmitow()<=2 and policz_kosmitow()>-11 and policz_kosmitow_wyg()<=ilosc_kosmitow_max then fala(lvl) end

	   p:update(dt)
  
 
  keys(dt)
  
   
  
  strzal.x=strzal.x + strzal.kierunek*dt
  
 -- p:setPosition(strzal.x+32, strzal.y+32)
  
 
  p:setPosition(player.x+20, player.y+20)
  p:setColors(sea_green,black)
 


kosmita_move(dt)
cywil_move(dt)
cywil_wroc_na_miejsce(dt)
kosmita_collision(dt)

--sprawdz kolizje z pociskiem
kosmita_strzal(dt)

--sprawdzanie czy ludzik jest w pobliżu --widzi true, 
kosmita_czy_widzi(dt)
  
  --porwanie 
kosmita_porwanie(dt)

 
   --nie widzi
kosmita_nie_widzi(dt)

--podepnij teksty
if tekst.licznik1>0 then
  tekst.txt1x=player.x
  tekst.txt1y=player.y
  tekst.licznik1=tekst.licznik1-1
  if tekst.licznik1==0 then 
      tekst.txt1x=-500
      tekst.txt1y=500
    end
  end
  
 title_menu_animation(dt)
 
  
 
end--update

function love.draw()
  if a1 then love.graphics.printf("a1",0,100,100,left) end
  if a2 then love.graphics.printf("a2",0,120,100,left) end
  if a3 then love.graphics.printf("a3",0,140,100,left) end
  if a4 then love.graphics.printf("a4",0,160,100,left) end
  
  if stan=="title_menu" then --czyli menu glowne
       
    love.graphics.setColor(255,255,255,255)
      
       love.graphics.draw(logo,150,0)
       
         love.graphics.setColor(255,255,255,255)
  
    love.graphics.printf("Start [z]",100,100,100,center)
    love.graphics.printf("Credits [c]",100,120,100,center)
     --
     if platek1 then
      love.graphics.translate(logo1_x+244, logo1_y+327)
    love.graphics.rotate(rotacja)
        love.graphics.translate(-logo1_x-244, -logo1_y-327)
        
        xxx=xxx-0.3
      love.graphics.setColor(xxx,xxx,xxx,xxx)
      love.graphics.draw(logo1,logo1_x,logo1_y)
      
       end
     if platek2 then  
       love.graphics.translate(logo2_x+273, logo2_y+322)
      love.graphics.rotate(rotacja) 
        love.graphics.translate(-logo2_x-272, -logo2_y-322)
        
        xxx=xxx-0.3
     love.graphics.setColor(xxx,xxx,xxx,xxx)
     love.graphics.draw(logo2,logo2_x,logo2_y)
     
     end
    
    liczba_platkow=9
    
    if love.keyboard.isDown("z") then init=true initinit=true stan="cinematic"  end
    
    if love.keyboard.isDown("c") then init=true initinit=true stan="credits"  end
    
    end--stan0
  ---------------------------------------------------------------------
  
  if stan=="level" then --czyli gra, lvl 1
    
    if xxx<=255 and kier=="inkrementuj" and stan=="level" then--==0 then--and xxx_start then 
    xxx=xxx+2
      if xxx>=255 then kier="dekrementuj" xxx=255 walki_zajely=walki_zajely+1 end 
      
    end
    if xxx>=0 and kier=="dekrementuj" and stan=="level" then
       xxx=xxx-2
      if xxx<=0 then kier="inkrementuj" xxx=0 end
     
     end
    -- else 
      -- xxx_start=false 
       --xxx=xxx-1 
     --if xxx==255 then 
       --xxx_start=true 
     --end 
    --end
    love.graphics.draw(tlo2.pic,tlo2.x,tlo2.y)
    love.graphics.setColor(255,255,255,xxx)--resetuje przyciemnienie po game overze
    
  love.graphics.draw(tlo.pic,tlo.x,tlo.y)

 mapa_draw()
  
  love.graphics.draw(strzal.pic,strzal.x,strzal.y)
 love.graphics.draw(p)
	player_draw()
 -- czlowieczek_draw()
 --kosmita_init()
 kosmita_draw()


for i, v in ipairs(cywile) do --i czyli 0 do 7, v to uchwyt czyli kosmici[i]
  if v.zywy then love.graphics.draw(v.pic,v.x,v.y) end --uwaga, to nie zmienia mu polozenia i bedzie zabijal graczs, polozenie zmieniane przy kolozji
end

 -- if enemy.zywy==true then enemy_draw()end
  text_draw()
  gui_draw()

  end--stan1
  ---------------------------------------------------
  
  if stan=="game_over" then --czyli game over
    
   -- love.graphics.setColor(100,100,100,100)
     love.graphics.draw(game_over,0,0)
     love.graphics.setColor(255,255,255,255)
    love.graphics.printf("game over, naciśnij b",100,100,100,center);
   
    
    if love.keyboard.isDown("b") then stan="title_menu" end
  end--stan2
  ----------------------------------------------------------------------
  if stan=="level_completed" then --czyli level completed
  --   love.graphics.setColor(255,0,0,100)
      love.graphics.draw(level_completed,0,0)
     love.graphics.setColor(255,255,255,255)
    love.graphics.printf("level completed, wcisnij y //k",100,100,100,center)
    love.graphics.printf("walki zajely:",100,200,100,center)
    love.graphics.printf(walki_zajely,200,200,100,center)
   
   kasa_stara=0
   kasa_nowa=(ilosc_kosmitow_max+policz_cywili()-walki_zajely)*100
   
     love.graphics.printf(kasa_stara,600,220,200,center)
     love.graphics.printf(kasa_nowa,600,220,200,center)
     --love.graphics.printf(w_sumie,500,200,200,center)
   
     love.graphics.printf("Nacisnij 0-9, zeby kupic:",300,200,200,center)
     
     love.graphics.printf("0: extra life:",300,220,200,center)
     love.graphics.printf("1: podwojny strzal",300,240,200,center)
     love.graphics.printf("2: poczworny strzal",300,260,200,center)
     love.graphics.printf("3: 8-krotny strzal",300,280,200,center)
     love.graphics.printf("4: pocisk szybszy o 25%",300,300,200,center) --nie ma sensu, 1 szybkosc jest ok
     love.graphics.printf("5: pocisk szybszy o 50%",300,320,200,center) --pocisk przeszywajacy
     love.graphics.printf("6: pocisk szybszy o 75%",300,340,200,center) --rozszczepiajacy sie
     love.graphics.printf("7: gracz szybszy o 25%",300,360,200,center)
     love.graphics.printf("8: gracz szybszy o 50%",300,380,200,center)
     love.graphics.printf("9: gracz szybszy o 75%",300,400,200,center)
          
          love.graphics.printf("Cena:",500,200,200,center)
          
     love.graphics.printf("1000",500,220,200,center)
     love.graphics.printf("1000",500,240,200,center)
     love.graphics.printf("2000",500,260,200,center)
     love.graphics.printf("3000",500,280,200,center)
     love.graphics.printf("1000",500,300,200,center)
     love.graphics.printf("2000",500,320,200,center)
     love.graphics.printf("3000",500,340,200,center)
     love.graphics.printf("1000",500,360,200,center)
     love.graphics.printf("2000",500,380,200,center)
     love.graphics.printf("3000",500,400,200,center)
     
    -- a=true
    
    --if love.keyboard.isDown("k") then --initinit=true 
    --   walki_zajely=0 stan="cinematic" init=true 
   -- end
  end--lvl1cmp
  ----------------------------------------------------------
   if stan=="credits" then --czyli credits
     
     love.audio.play(muzyka01)
     
     love.graphics.setColor(255,0,0,100)
      love.graphics.draw(tlo.pic,tlo.x,tlo.y)
     love.graphics.setColor(255,255,255,255)
    love.graphics.printf("credits:",100,60,200,center)
        love.graphics.printf("Barbara Jeziorek",100,100,200,center)
        love.graphics.printf("narzedzia:",100,140,200,center)
        love.graphics.printf("FL Studio (demo)",100,160,200,center)
        love.graphics.printf("GIMP2",100,180,200,center)
        love.graphics.printf("ZeroBrane",100,200,200,center)
        love.graphics.printf("lua",100,220,200,center)
        love.graphics.printf("love engine",100,240,200,center)
        love.graphics.printf("markery alkoholowe",100,260,200,center)
        love.graphics.printf("wcisnij b",100,300,200,center)
    
    if love.keyboard.isDown("b") then initinit=true stan="title_menu" end
    end --stan credits
    --------------------------------------------------------------------------
    if stan=="cinematic" then
     
     love.graphics.setColor(reset)
          love.graphics.printf("[t] for skip", 0,500,300,center)
  if cinematic==1 then
  cinematic_01()
  end--cinematic1

  if cinematic==2 then
  cinematic_02()
  end--cinematic2
  
   if cinematic==3 then
  cinematic_03()
  end--cinematic3
  
   if cinematic==4 then
  cinematic_04()
  end--cinematic4
  
   if cinematic==5 then
  cinematic_05()
  end--cinematic5
  
   if cinematic==6 then
  cinematic_06()
  end--cinematic6
  
   if cinematic==7 then
  cinematic_07()
  end--cinematic7
  
   if cinematic==8 then
  cinematic_08()
  end--cinematic8
  
   if cinematic==9 then
  cinematic_09()
  end--cinematic9
  
   if cinematic==10 then
  cinematic_10()
  end--cinematic10
  
  if cinematic==11 then
  cinematic_11()
  end--cinematic11

 --  if love.keyboard.isDown("t") then stan="level" end

  end--stan cinematic
  
end 