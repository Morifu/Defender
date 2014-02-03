Ship = {}
Ship.__index = Ship

function Ship.create(x, y)
  local ship = {}
  setmetatable(ship, Ship)
  
  ship.name = "Noname"
  ship.imageWidth = 0
  ship.imageHeight = 0
  ship.x = x
  ship.y = y
  ship.speed = 500
  ship.image = nil
  ship.centre = {0, 0}
  ship.particle_image = nil
  ship.transition = 0
  ship.shootType = "Normal"
  ship.shootDelay = 0
  ship.radius = 0
  
  return ship
end

function Ship:setDelay(delay)
  self.shootDelay = delay
end

function Ship:setShootType(shootType)
  self.shootType = shootType
end

function Ship:setName(name)
  self.name = name
end

function Ship:setTransition(transition)
  self.transition = transition
end

function Ship:setSpeed(speed)
  self.speed = speed
end

function Ship:setX(x)
 self.x = x
end

function Ship:setY(y)
  self.y = y
end

function Ship:setCoordinates(x, y)
  self.x = x
  self.y = y
end

function Ship:setImage(image)
  self.image = image
  self.imageWidth = self.image:getWidth()
  self.imageHeight = self.image:getHeight()
end

function Ship:setParticleImage(particle_image)
  self.particle_image = particle_image
end

function Ship:getTransition()
  return self.transition
end

function Ship:getName()
  return self.name
end

function Ship:getSpeed()
  return self.speed 
end

function Ship:getX()
  return self.x
end

function Ship:getY()
  return self.y
end

function Ship:getCoordinates()
  return self.x, self.y
end

function Ship:getImage()
  return self.image
end

function Ship:getParticleImage()
  return self.particle_image
end

function Ship:getDelay()
  return self.shootDelay
end

function Ship:setShootType()
  return self.shootType
end

function Ship:getRadius()
  return self.imageWidth/2
end

function Ship:findCenter()  
  self.centre[1] = self:getX() + self.imageWidth/2
  self.centre[2] = self:getY() + self.imageHeight/2
  
  return self.centre  
end

