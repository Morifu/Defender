function cinematic_01()
  liczba_platkow_stara=liczba_platkow
 love.graphics.setColor(reset)
  if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,270,30)
  love.graphics.printf("[n] Wasze ultimatum jest nie do przyjecia!",0,0,1000,left)
  sciezka = 0
   if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
   elseif dialogi_krok==1 then
  love.graphics.draw(komandor,0,30)
  love.graphics.printf("[j] Bo to jest ultimatum. Albo przestaniecie stawiac opor, albo zrownamy was z ziemia.",0,0,1000,left)
  dialog.sciezka = 0
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==2 then
  love.graphics.draw(rebeliantka,270,30)
  love.graphics.printf("[n] Nie ugne sie!",0,0,1000,left)
  dialog.sciezka = 0
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==3 then
 love.graphics.draw(komandor,0,30)
  love.graphics.printf("[j] Nie zostawiasz mi wyboru!",0,0,1000,left)
  dialog.sciezka = 0
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==4 then
love.graphics.draw(rebeliantka,270,30)
 love.graphics.printf("[n] ...",0,0,1000,left)
  dialog.sciezka = 0
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==5 then
love.graphics.draw(rebeliantka,270,30)
  love.graphics.printf( "[j] [koniec transmisji]",0,0,1000,left)
  dialog.sciezka = 0
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+1 end
 end
  
  if dialogi_krok==6 then
   love.graphics.draw(komandor,0,30)
  love.graphics.printf("[n] Polecisz tam i przyprowadzisz mi ja tu zywa. Moze przemowie jej do rozumu.",0,0,1000,left)
  dialog.sciezka = 0
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
 end
  
  if dialogi_krok==7 then
   love.graphics.draw(pilot,270,30)
  love.graphics.printf( "[p] tak jest",0,0,1000,left)
  love.graphics.printf("[r] czemu jej nie zabic?",0,20,1000,left)
  dialog.sciezka = 0 -->1
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 end
    if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+2 liczba_platkow=liczba_platkow-2 end
 end
  if dialogi_krok==8 then
 love.graphics.draw(komandor,0,30)
  love.graphics.printf("[j] Do roboty.",0,0,1000,left)
  dialog.sciezka = 1
 if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+2 end--10
end
  if dialogi_krok==9 then
   love.graphics.draw(komandor,0,30)
  love.graphics.printf("[j] Bo ja tak mowie! Jestes od roboty, nie od myslenia.",0,0,1000,left)
  dialog.sciezka = 2
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+2 end--11
end
  if dialogi_krok==10 then
   love.graphics.setColor(255,255,255,xxxx)
  if xxxx>0 then xxxx=xxxx-1 end
  
   love.graphics.draw(stan_lilii(liczba_platkow_stara),150,0)
  love.graphics.setColor(255,255,255,255)
  
   love.graphics.draw(stan_lilii(liczba_platkow),150,0)
   if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 end
  end--10
  
  if dialogi_krok==11 then  ---todo
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(liczba_platkow_stara),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(liczba_platkow),150,0)
    if love.keyboard.isDown("n") then love.graphics.setColor(reset) walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 end
    end--11
 -- if love.keyboard.isDown("t") then stan="level" end
end--cinematic 1

function cinematic_02()
  liczba_platkow_stara=liczba_platkow
love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[j]Stoj!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==1 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] ...",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==2 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[j] Jesteś aresztowana!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+1 end
    elseif dialogi_krok==3 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] Za co?",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
    elseif dialogi_krok==4 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Bo tak powiedział komandor. Poza tym ty już dobrze wiesz za co!",0,0,1000,left)
  love.graphics.printf("[r] Choćby za to, ze stawialas opor.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->5
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+2 liczba_platkow=liczba_platkow-1 end -->6
   elseif dialogi_krok==5 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j] Nie wiem. Za to, ze chce zyc? Za to, ze czuje? Za to, ze jestem czlowiekiem jak ty?",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+2 end -->7
   elseif dialogi_krok==6 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] Trudno zeby nie skoro mnie zaatakowales!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+2 end -->9
     elseif dialogi_krok==7 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Zadasz te pytania komandorowi, nie mnie.",0,0,1000,left)
  love.graphics.printf("[r] Za...",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->8
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 end -->8
    elseif dialogi_krok==8 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] No słucham za co?!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end -->9
    elseif dialogi_krok==9 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Nie truj mi głowy! Idziemy.",0,0,1000,left)
  love.graphics.printf("[r] Podaj mi choć jeden powod, zeby cie nie aresztowac.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->10
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 end -->10
    elseif dialogi_krok==10 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] Cos ci powiem. Kazdy nosi w sercu Kwiat Wiary. Kwiat zaleznie od naszych decyzji traci platki lub je rodzi. Jak straci wszystkie to wiednie, a jak zwiednie, wyrosnie nowy, inny. Robie to co robie, bo w to wierze. A ty? Wierzysz w to co robisz? W slusznosc swoich decyzji? W pelni zgadzasz sie z rozkazami?",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end -->11
    elseif dialogi_krok==11 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Tak. Zawsze.",0,0,1000,left)
  love.graphics.printf("[r] Nie. Nie zawsze.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->10
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 end -->10
    elseif dialogi_krok==12 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] ...",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end -->9
    elseif dialogi_krok==13 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Ale tak jak mowilem. Jestes aresztowana i to nie ulega dyskusji",0,0,1000,left)
  love.graphics.printf("[r] Masz 10 minut, zeby mi wykazac, ze twoja wiara jest na tyle silna, zeby mi uciec. Potem wznowie poscig i jak cie zlapie, to cie aresztuje.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 liczba_platkow_rebel= liczba_platkow_rebel+1 end -->10
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 liczba_platkow_rebel= liczba_platkow_rebel-1 end -->10
    
 elseif dialogi_krok==14 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(stan_lilii(liczba_platkow)),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(stan_lilii(liczba_platkow-1)),150,0)
  if love.keyboard.isDown("n") then love.graphics.setColor(reset) walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_2_load()  end
  end--if
    if love.keyboard.isDown("t") then stan="level" end
end--cinematic2

function cinematic_03()
  liczba_platkow_stara=liczba_platkow
love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[j]Stoj!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==1 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] ...",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
  elseif dialogi_krok==2 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[j] Jesteś aresztowana!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+1 end
    elseif dialogi_krok==3 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] Za co?",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end
    elseif dialogi_krok==4 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Bo tak powiedział komandor. Poza tym ty już dobrze wiesz za co!",0,0,1000,left)
  love.graphics.printf("[r] Choćby za to, ze stawialas opor.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->5
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+2 liczba_platkow=liczba_platkow-1 end -->6
   elseif dialogi_krok==5 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j] Nie wiem. Za to, ze chce zyc? Za to, ze czuje? Za to, ze jestem czlowiekiem jak ty?",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=dialogi_krok+2 end -->7
   elseif dialogi_krok==6 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] Trudno zeby nie skoro mnie zaatakowales!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+2 end -->9
     elseif dialogi_krok==7 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Zadasz te pytania komandorowi, nie mnie.",0,0,1000,left)
  love.graphics.printf("[r] Za...",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->8
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 end -->8
    elseif dialogi_krok==8 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] No słucham za co?!",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end -->9
    elseif dialogi_krok==9 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Nie truj mi głowy! Idziemy.",0,0,1000,left)
  love.graphics.printf("[r] Podaj mi choć jeden powod, zeby cie nie aresztowac.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->10
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 end -->10
    elseif dialogi_krok==10 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] Cos ci powiem. Kazdy nosi w sercu Kwiat Wiary. Kwiat zaleznie od naszych decyzji traci platki lub je rodzi. Jak straci wszystkie to wiednie, a jak zwiednie, wyrosnie nowy, inny. Robie to co robie, bo w to wierze. A ty? Wierzysz w to co robisz? W slusznosc swoich decyzji? W pelni zgadzasz sie z rozkazami?",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end -->11
    elseif dialogi_krok==11 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Tak. Zawsze.",0,0,1000,left)
  love.graphics.printf("[r] Nie. Nie zawsze.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 end -->10
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 end -->10
    elseif dialogi_krok==12 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[n] ...",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("n") then dialogi_krok=dialogi_krok+1 end -->9
    elseif dialogi_krok==13 then
  love.graphics.draw(pilot,200,0)
  love.graphics.printf("[p] Ale tak jak mowilem. Jestes aresztowana i to nie ulega dyskusji",0,0,1000,left)
  love.graphics.printf("[r] Masz 10 minut, zeby mi wykazac, ze twoja wiara jest na tyle silna, zeby mi uciec. Potem wznowie poscig i jak cie zlapie, to cie aresztuje.",0,20,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("p") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow+1 liczba_platkow_rebel= liczba_platkow_rebel+1 end -->10
  if love.keyboard.isDown("r") then dialogi_krok=dialogi_krok+1 liczba_platkow=liczba_platkow-1 liczba_platkow_rebel= liczba_platkow_rebel-1 end -->10
    
 elseif dialogi_krok==14 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(stan_lilii(liczba_platkow)),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(stan_lilii(liczba_platkow-1)),150,0)
  if love.keyboard.isDown("n") then love.graphics.setColor(reset) walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_2_load()  end
  end--if
    if love.keyboard.isDown("t") then stan="level" end
end--cinematic3

function cinematic_04()
  liczba_platkow_stara=liczba_platkow
  love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]cinematic4",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_4_load()  end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic4

function cinematic_05()
  liczba_platkow_stara=liczba_platkow
  love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]cinematic5",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_5_load()  end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic5

function cinematic_06()
  liczba_platkow_stara=liczba_platkow
  love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]cinematic6",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_6_load()  end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic6

function cinematic_07()
  liczba_platkow_stara=liczba_platkow
  love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]cinematic7",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_7_load()  end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic7

function cinematic_08()
  liczba_platkow_stara=liczba_platkow
  love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]cinematic8",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_8_load()  end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic8

function cinematic_09()
  liczba_platkow_stara=liczba_platkow
love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]cinematic9",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_9_load()  end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic9

function cinematic_10()
  liczba_platkow_stara=liczba_platkow
  love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]cinematic10",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="level" xxxx=255 level_10_load()  end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic10

function cinematic_11()
  liczba_platkow_stara=liczba_platkow
  love.graphics.setColor(reset)
if dialogi_krok==0 then
  love.graphics.draw(rebeliantka,200,0)
  love.graphics.printf("[j]epilog",0,0,1000,left)
  sciezka = 0 
  if love.keyboard.isDown("j") then dialogi_krok=1 end
 elseif dialogi_krok==1 then
      love.graphics.setColor(255,255,255,xxxx)
    if xxxx>0 then  xxxx=xxxx-1 end
   love.graphics.draw(stan_lilii(9),150,0)
  love.graphics.setColor(255,255,255,255)
   love.graphics.draw(stan_lilii(7),150,0)
  if love.keyboard.isDown("n") then walki_zajely=0 dialogi_krok=0 stan="title_menu" xxxx=255 end
  end--if
   if love.keyboard.isDown("t") then walki_zajely=0 dialogi_krok=0 stan="level" end
end--cinematic11

----------------------------------

function load_cinematic_1() -- przed misjami
  
  for i,v in ipairs(dialogi) do --reset
    table.remove(dialogi,i)
  end --for
  
  
  
  -----------------------------
  dialogi={}
  
  dialog.kto = "rebeliantka"
  dialog.tekst = "Wasze ultimatum jest nie do przyjecia!"
  dialog.sciezka = 0
  table.insert(dialogi,dialog)
  
  dialog.kto = "komandor"
  dialog.tekst = "Bo to jest ultimatum. Albo przestaniecie stawiac opor, albo zrownamy was z ziemia."
  dialog.sciezka = 0
  table.insert(dialogi,dialog)
  
  dialog.kto = "rebeliantka"
  dialog.tekst = "Nie ugne sie!"
  dialog.sciezka = 0
  table.insert(dialogi,dialog)
  
  dialog.kto = "Nie dajesz mi wyjscia..."
  dialog.tekst = "Bo to jest ultimatum. Albo przestaniecie stawiac opor, albo zrownamy was z ziemia."
  dialog.sciezka = 0
  table.insert(dialogi,dialog)
  
  dialog.kto = "rebeliantka"
  dialog.tekst = "..."
  dialog.sciezka = 0
  table.insert(dialogi,dialog)
  
  dialog.kto = "rebeliantka"
  dialog.tekst = "[koniec transmisji]"
  dialog.sciezka = 0
  table.insert(dialogi,dialog)
  
  dialog.kto = "komandor"
  dialog.tekst = "Polecisz tam i przyprowadzisz mi ja tu zywa. Moze przemowie jej do rozumu."
  dialog.sciezka = 0
  table.insert(dialogi,dialog)
  
  dialog.kto = "pilot"
  dialog.tekst = "tak jest"
  dialog.sciezka = 0 -->1
  table.insert(dialogi,dialog)
  
  
  dialog.kto = "pilot"
  dialog.tekst = "czemu jej nie zabic?"
  dialog.sciezka = 0 -->2
  table.insert(dialogi,dialog)
  
  dialog.kto = "komandor"
  dialog.tekst = "Do roboty."
  dialog.sciezka = 1
  table.insert(dialogi,dialog)
  
    dialog.kto = "komandor"
  dialog.tekst = "Bo ja tak mowie! Jestes od roboty, nie od myslenia."
  dialog.sciezka = 2
  table.insert(dialogi,dialog)
  
end

function load_cinematic_2()
  
end

function load_cinematic_3()
  
end
function load_cinematic_4()
  
end

function load_cinematic_5()
  
end

function load_cinematic_6()
  
end

function load_cinematic_7()
  
end

function load_cinematic_8()
  
end

function load_cinematic_9()
  
end
function load_cinematic_10()
  
end
function load_epilog()
  continue=false
  stan="credits"
end