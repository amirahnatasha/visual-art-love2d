O = Object:extend()

function O:new(x, y)
  
  self.x = x
  self.y = y
  self.width = 0.01
  self.height = 0.01
  self.speed = 100
  O_image = love.graphics.newImage("images/O.png")
  
end

function O:draw()
  
  love.graphics.draw(O_image, self.x, self.y, 0, self.width, self.height)
  
end