Square = Object:extend()

function Square:new(x, y)
  
  self.x = x
  self.y = y
  self.width = 0.02
  self.height = 0.02
  self.speed = 150
  Square_image = love.graphics.newImage("images/square.png")
  
end

function Square:draw()
  
  love.graphics.draw(Square_image, self.x, self.y, 0, self.width, self.height)
  
end