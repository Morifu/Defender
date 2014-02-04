 require "datas"
 
 function title_menu_animation(dt)
 ---animacje
  
  platek_x=platek_x-50*dt
   platek_y=platek_y+80*dt
   
  -- if logo1_x_max1>=logo1_x then
 
 ---------------
 ---animacja platka 1
 ---------------
   --platek2=false
    if platek1 then
   logo1_x=logo1_x-10*dt
   logo1_y=logo1_y+20*dt
   
  
   if logo1_y>600 or logo1_x<0 then
    platek1=false
    platek2=true
    logo2_x=150
    logo2_y=0
    rotacja=0
    xxx=255
    end--if
  
  
--end
if rotacja<=math.pi/2 then
  rotacja=rotacja+0.002*(-1)
end--if math pi
end
---------------
--animacja platka 1 koniec
---------------



 ---------------
 ---animacja platka 2 - bezposr polaczona z ta druga
 ---------------
 if platek2 then
   logo2_x=logo2_x+10*dt
   logo2_y=logo2_y+30*dt
  
  if logo2_y>350 or logo2_x>350 then
     platek1=true
     platek2=false
    logo1_x=150
    logo1_y=0
    rotacja=0
    xxx=255
  end--if
 
if rotacja<=math.pi/2 then
  rotacja=rotacja+0.002
end--if math pi

end--platek1
---------------
--animacja platka 2 koniec
---------------
end --title menu animation