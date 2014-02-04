require "colors"
  strzal_factor=1
continue=true

kier="dekrementuj"

  ilosc_kosmitow_max=-1
  
  typ_kosmitow=-1
 
  wrog="ludzie"
 walki_zajely=-1
  pomocnicy=nil
lvl=-1
ilosc_kosmitow=7--fala
ilosc_cywili=7
y_max=450
x_max=750
y_min=50
x_min=0
collision_margin = 30
eyesight_margin = 100
civil_level_y=450
map_size_x=800
map_size_y=600
skala_mini=5 --przesuniecie wspolrzednych (jak jeden to sa w polowie mapy, trzeba je przeskalowac zeby sie rozlozyly na caly, tak jak i mape
  player_max_x = 760
  player_max_y = 536 
  player_min_x = 0
  player_min_y = 0
  zmiejszenie_do_mapy = 0.2
  kolor_rozprysku={  sea_green,black }
  xxx=254
  xxx_start=true
  
  xxxx=255
  
  c=0 --ilosc o ktora skacze sie w kroku, potrzebne do cheatow zeby cofac sie w dialogach
  function cofnij()
  
  cof=false
  end
  
  liczba_platkow=9
  liczba_platkow_rebel=9
  function stan_lilii(liczba_platkow) 
    if liczba_platkow<0 then return stan0 end
    if liczba_platkow==0 then return stan0 end
    if liczba_platkow==1 then return stan1 end
    if liczba_platkow==2 then return stan2 end
    if liczba_platkow==3 then return stan3 end
    if liczba_platkow==4 then return stan4 end
    if liczba_platkow==5 then return stan5 end
    if liczba_platkow==6 then return stan6 end
    if liczba_platkow==7 then return stan7 end
    if liczba_platkow==8 then return stan8 end
    if liczba_platkow==9 then return stan9 end
    if liczba_platkow>9 then return stan9 end
  end
  
  logo1_x=150
  logo1_y=0
  
  logo2_x=150
  logo2_y=0
  
  logo1_x_max1 = 350
  logo1_x_max2 = 250
  logo1_x_min1 =50
  logo1_x_min2 = 20
  logo1_stage=1
  
  rotacja=0
  
  platek1=true
  platek2=false
  
  platek_x=150
  platek_y=300
  
  dialogi_krok=0
  
  dialogi={}
  dialog={}
    
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