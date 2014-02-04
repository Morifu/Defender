require "kosmita"

level={}
level.ilosc_wrogow=-1
level.zakres_typow_wrogow=-1
level.z_kim_sie_bijesz="ludzie"
level.pomocnicy=nil


level_1_completed=false
level_2_completed=false
level_3_completed=false
level_4_completed=false
level_5_completed=false
level_6_completed=false
level_7_completed=false
level_8_completed=false
level_9_completed=false
level_10_completed=false

function progress_init()
  --  info.level_value=1
end


function load_level(x)
  if x==1 then level_1_load() end
  if x==2 then level_2_load() end
  if x==3 then level_3_load() end
  if x==4 then level_4_load() end
  if x==5 then level_5_load() end
  if x==6 then level_6_load() end
  if x==7 then level_7_load() end
  if x==8 then level_8_load() end
  if x==9 then level_9_load() end
  if x==10 then level_10_load() end
end--load lvl

function level_1_load()
  --nr poziomu
  lvl=1
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=20
  --zakres typow
  typ_kosmitow=0
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_2_load()
   --nr poziomu
  lvl=2
  info.level_value=lvl
 --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=50
  --zakres typow
  typ_kosmitow=2
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_3_load()
   --nr poziomu
  lvl=3
  info.level_value=lvl
 --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=10
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_4_load()
   --nr poziomu
  lvl=4
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=100
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_5_load()
   --nr poziomu
  lvl=5
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=33
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_6_load()
   --nr poziomu
  lvl=6
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=23
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_7_load()
   --nr poziomu
  lvl=7
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=45
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_8_load()
   --nr poziomu
  lvl=8
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=78
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_9_load()
   --nr poziomu
  lvl=9
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=19
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end

function level_10_load()
   --nr poziomu
  lvl=10
  info.level_value=lvl
  --zaladuj ilosc kosmitow
  ilosc_kosmitow_max=44
  --zakres typow
  typ_kosmitow=1
  --z kim sie bijesz
  wrog="ludzie"
  --pomocnicy
  pomocnicy=nil
  kosmita_init()
  cywil_init()
end