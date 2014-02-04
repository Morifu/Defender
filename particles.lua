require "datas"
require "colors"
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
   
--	p:setEmissionRate          (20  )
 p:setParticleLifetime              (1) -- -1 == forever

  p:setPosition              (50, 50)
 -- p:setDirection             (0)
--  p:setSpread                (0.1)
 -- p:setSpeed                 (100, 300)
 -- p:setRadialAcceleration    (10)
--  p:setTangentialAcceleration(0)
--  p:setSizeVariation         (0.5)
 -- p:setRotation              (0)
--  p:setSpin                  (0)
 -- p:setSpinVariation         (0)
 
   p:setSpread(2*math.pi)
   p:setSpeed(100, 200)

   -- Colors as tables with optional alpha.
   pink = {255, 0, 200}
   blue = {0, 200, 255, 0}
   white = {255,255,255}
   black = {0,0,0}
   green = {0,100,0}
   sea_green = {0,255,255}
   x=kolor_rozprysku
   p:setColors(pink,blue)

   -- Name changes ahead.
   p:setEmitterLifetime(-1)
   p:setParticleLifetime(2)
