Shoot = {}
Shoot.__index = Shoot

function Shoot.create(x, y)
  local shoot = {}
  setmetatable(shoot, Shoot)
  
  shoot.name = "Fireball"
  shoot.imageWidth = 0
  shoot.imageHeight = 0
  shoot.x = x
  shoot.y = y
  shoot.direction = "Right"
  shoot.speed = 1500
  shoot.image = nil
  shoot.range = 300
  shoot.delay = 0.5
  shoot.centre = {0 , 0}
  shoot.radius = 0
  
  return shoot
end

function Shoot:setDirection(direction)
  self.direction = direction
end

function Shoot:setRange(range)
  self.range = range
end

function Shoot:setDelay(delay)
  self.delay = delay
end

function Shoot:setName(name)
  self.name = name
end

function Shoot:setTransition(transition)
  self.transition = transition
end

function Shoot:setSpeed(speed)
  self.speed = speed
end

function Shoot:setX(x)
 self.x = x
end

function Shoot:setY(y)
  self.y = y
end

function Shoot:setCoordinates(x, y)
  self.x = x
  self.y = y
end

function Shoot:setImage(image)
  self.image = image
  self.imageWidth = self.image:getWidth()
  self.imageHeight = self.image:getHeight()
end

function Shoot:getName()
  return self.name
end

function Shoot:getSpeed()
  return self.speed 
end

function Shoot:getX()
  return self.x
end

function Shoot:getY()
  return self.y
end

function Shoot:getCoordinates()
  return self.x, self.y
end

function Shoot:getImage()
  return self.image
end

function Shoot:getRange()
  return self.range
end

function Shoot:getDelay()
  return self.delay
end

function Shoot:getDirection()
  return self.direction
end

function Shoot:getRadius()
  return self.imageWidth/2
end

function Shoot:findCenter()  
  self.centre[1] = self:getX() + self.imageWidth/2
  self.centre[2] = self:getY() + self.imageHeight/2
  
  return self.centre  
end

  
  
