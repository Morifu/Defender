require("ship")
require("shoot")
require("enemy")

function love.load(args)
  --if arg[#arg] == "-debug" then require("mobdebug").start() end
  background = love.graphics.newImage("MarioBackground2.png")
  width = background:getWidth()
  height = background:getHeight()  
  
  imageRight = love.graphics.newImage("ShipRight2.png")
  imageLeft = love.graphics.newImage("ShipLeft2.png")
  shipHeight= imageLeft:getHeight()
  
  
  shootImageFireball = love.graphics.newImage("Fireball.png");
  allShoots = {}  
  
  enemyImage = love.graphics.newImage("EnemyShip.png")
  allEnemies = {}
  
  allObjects = {}
  
  ship = Ship.create( 0, 600/2 )
  ship:setName("Lem")
  ship:setImage(imageRight)
  
  spawnDelay = 1
  colisionCounter = 3
  
end

function love.draw()     
  
  if ship:getX() < -200 then
    love.graphics.translate(width - math.abs(ship:getX()), 0)
    ship:setX(width - math.abs(ship:getX()))
  elseif ship:getX() > 900 then
    love.graphics.translate(width + ship:getX(), 0)
    ship:setX(ship:getX() - width)
  else   
    love.graphics.translate(-ship:getX() + ship:getTransition(), 0)    
  end
  
  love.graphics.draw(background, 0, 0)  
  love.graphics.draw(background, -width, 0)
  love.graphics.draw(background, width, 0)  
  love.graphics.draw(ship:getImage(), ship:getX(), ship:getY())    

  drawEnemy()
  
  for index,shoot in ipairs(allShoots) do    
    love.graphics.draw( shoot:getImage(), shoot:getX(), shoot:getY())
  end    
end

function love.update(dt)
  colisionCounter = colisionCounter - 1
  respawnEnemy(dt)
  updateEnemyPosition(dt)
  
  if ship:getImage() == imageLeft and ship:getTransition() < 550 then
     ship.transition = ship.transition + 10
     ship:setX(ship:getX() + 10)
  end
  
  if ship:getImage() == imageRight and ship:getTransition() > 50 then
    ship.transition = ship.transition - 10
    ship:setX(ship:getX() - 10)
  end
  
  if love.keyboard.isDown(" ") and ship:getDelay() <= 0 then    
    shoot = Shoot.create(ship:getX(), ship:getY())
    if ship:getImage() == imageRight then
      shoot:setDirection("Right")
    else
      shoot:setDirection("Left")
    end    
    shoot:setImage(shootImageFireball)
    table.insert(allShoots, shoot)    
    ship:setDelay(shoot:getDelay())
  end
    
  if love.keyboard.isDown("left") then
    ship:setImage(imageLeft)
    x = ship:getX() - (ship:getSpeed() * dt)
    ship:setX(x)
  end
  
  if love.keyboard.isDown("right") then
    ship:setImage(imageRight)
    x = ship:getX() + (ship:getSpeed() * dt)
    ship:setX(x)
  end
  
  if love.keyboard.isDown("up") and ship:getY() > 0 then    
    y = ship:getY() - (ship:getSpeed() * dt)
    ship:setY(y)
  end
  
  if love.keyboard.isDown("down") and ship:getY() < (600 - shipHeight) then
    y = ship:getY() +(ship:getSpeed() * dt)
    ship:setY(y)
  end
  
  for index, shoot in ipairs(allShoots) do
    if shoot:getDirection() == "Right" then
      x = shoot:getX() + (shoot:getSpeed() * dt)
      shoot:setX(x)
    else
      x = shoot:getX() - (shoot:getSpeed() * dt)
      shoot:setX(x)
    end
    
    shoot:setRange(shoot:getRange() - 5)
    if 0 > shoot:getRange() then
      table.remove(allShoots, index)
    end
    
  end
  
  for i, object in ipairs(allShoots) do
    for j, object2 in ipairs(allEnemies) do    
      x = math.abs(object:findCenter()[1] - object2:findCenter()[1])
      y = math.abs(object:findCenter()[2] - object2:findCenter()[2])
      distance = math.sqrt( x^2 + y^2)     
      if(object:getRadius() + object2:getRadius() > distance) then
        table.remove(allShoots, i)
        table.remove(allEnemies, j)  
      end
    end
  end
    
  ship:setDelay(ship:getDelay() - dt)
  
end

function respawnEnemy(dt)
  spawnDelay = spawnDelay - dt
  
  if spawnDelay <= 0 then    
    randomPosX = math.random(ship:getX() - 600, ship:getX() + 600)    
    enemy = Enemy.create( randomPosX,300 )
    enemy:setSpeed(math.random(200, 300))
    enemy:setImage(enemyImage)
    table.insert(allEnemies, enemy)
    table.insert(allObjects, enemy)
    spawnDelay = 4
  end
end

function updateEnemyPosition(dt)
  
  for index, enemy in ipairs(allEnemies) do
    
    
     if enemy:getMovementDelay() <= 0 then
       enemy:setMoveDirection()
       enemy:setMovementDelay(1)
       enemy:setMoveFunction()
       enemy:setStartingX(enemy:getX())
       enemy:setStartingY(enemy:getY())
       --print ("Direction = ", enemy:getMoveDirection())
       --print ("Enemy Index = ", index)
       --print ("Starting X = ", enemy:getStartingX(), " Normal X = ", enemy:getX())
       --print ("Starting Y = ", enemy:getStartingY(), " Normal Y = ", enemy:getY())
     end   

    enemy:countSinusFunction(dt, enemy:getMoveDirection()) 
    --enemy:countSquareFunction(dt, enemy:getMoveDirection())   
    enemy:setMovementDelay(enemy:getMovementDelay() - dt)
     
  end
end

function drawEnemy()
  for index, enemy in ipairs(allEnemies) do
    love.graphics.draw( enemy:getImage(), enemy:getX(), enemy:getY())
  end
end

  
  

    