T = Object:extend()

function T:new(x, y)
  
  self.x = x
  self.y = y
  self.width = 0.025
  self.height = 0.025
  self.speed = 30
  T_image = love.graphics.newImage("images/t.png")
  
end

function T:draw()
  
  love.graphics.draw(T_image, self.x, self.y, 0, self.width, self.height)
  
end