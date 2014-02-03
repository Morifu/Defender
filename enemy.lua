Enemy = {}
Enemy.__index = Enemy

local directionTable = {'left', 'right', 'down', 'up'}

function Enemy.create(x, y)
  local enemy = {}
  setmetatable(enemy, Enemy)
  
  enemy.name = "Enemy"
  enemy.imageWidth = 0
  enemy.imageHeight = 0
  enemy.x = x
  enemy.y = y
  enemy.startingX = 0
  enemy.startingY = 0
  enemy.speed = 200
  enemy.image = nil
  enemy.centre = {0, 0}
  enemy.type = "Attacker"
  enemy.shootDelay = 2
  enemy.radius = 0
  enemy.moveDirection = 1
  enemy.movementDelay = 0
  enemy.moveFunction = 1
    
  return enemy
end

function Enemy:setMoveFunction()
  self.moveFunction = math.random(4)
end

function Enemy:setMovementDelay(delay)
  self.movementDelay = delay
end

function Enemy:setMoveDirection()
  self.moveDirection = directionTable[math.random(#directionTable)]
end

function Enemy:setRadius(radius)
  self.radius = radius
end

function Enemy:setDelay(delay)
  self.shootDelay = delay
end

function Enemy:setName(name)
  self.name = name
end

function Enemy:setSpeed(speed)
  self.speed = speed
end

function Enemy:setX(x)
 self.x = x
end

function Enemy:setY(y)
  self.y = y
end

function Enemy:setStartingX(x)
  self.startingX = x
end

function Enemy:setStartingY(y)
  self.startingY = y
end

function Enemy:setCoordinates(x, y)
  self.x = x
  self.y = y
end

function Enemy:setImage(image)
  self.image = image
  self.imageWidth = self.image:getWidth()
  self.imageHeight = self.image:getHeight()
end

function Enemy:getName()
  return self.name
end

function Enemy:getSpeed()
  return self.speed 
end

function Enemy:getX()
  return self.x
end

function Enemy:getY()
  return self.y
end

function Enemy:getCoordinates()
  return self.x, self.y
end

function Enemy:getImage()
  return self.image
end

function Enemy:getDelay()
  return self.shootDelay
end

function Enemy:getRadius()
  return self.imageWidth/2
end

function Enemy:getMoveDirection()
  return self.moveDirection
end

function Enemy:getMovementDelay()
  return self.movementDelay
end

function Enemy:getMoveFunction()
  return self.moveFunction
end

function Enemy:getStartingX()
  return self.startingX
end

function Enemy:getStartingY()
  return self.startingY
end

function Enemy:findCenter()  
  self.centre[1] = self:getX() + self.imageWidth/2
  self.centre[2] = self:getY() + self.imageHeight/2
  
  return self.centre  
end

function Enemy:countSinusFunction(dt, moveDirection)
  
  if moveDirection == "left" then 
    x = self:getX() - (self:getSpeed() * dt)
    y = self:getStartingY() + 50 * math.sin( x * (math.pi/180 ))
    self:setCoordinates(x, y)
  elseif moveDirection == "right" then
    x = self:getX() + (self:getSpeed() * dt)
    y = self:getStartingY() + 50 * math.sin( x * (math.pi/180 ))
    self:setCoordinates(x, y)  
  elseif moveDirection == "down" then 
    y = self:getY() - (self:getSpeed() * dt)
    x = self:getStartingX() + 50 * math.sin( y * (math.pi/180 ))
    self:setCoordinates(x, y)
  else
    y = self:getY() + (self:getSpeed() * dt)
    x = self:getStartingX() + 50 * math.sin( y * (math.pi/180 ))
    self:setCoordinates(x, y) 
  end

end

function Enemy:countSquareFunction(dt, moveDirection)
  
  if moveDirection == "left" then 
    x = self:getX() - (self:getSpeed() * dt)
    y = math.pow((x/20),1/2)
    self:setCoordinates(x, y)
  elseif moveDirection == "right" then
    x = self:getX() + (self:getSpeed() * dt)
    y = math.pow((x/20),1/2)
    self:setCoordinates(x, y)  
  elseif moveDirection == "down" then 
    y = self:getY() - (self:getSpeed() * dt)
    x = math.pow((y/20),1/2)
    self:setCoordinates(x, y)
  else
    y = self:getY() + (self:getSpeed() * dt)
    x = math.pow((y/20),1/2)
    self:setCoordinates(x, y) 
  end

end

