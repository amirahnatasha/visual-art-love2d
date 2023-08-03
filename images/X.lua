X = Object:extend()

function X:new(x, y)
  
  self.x = x
  self.y = y
  self.width = 0.01
  self.height = 0.01
  self.speed = 50
  X_image = love.graphics.newImage("images/X.png")
  
end

function X:draw()
  
  love.graphics.draw(X_image, self.x, self.y, 0, self.width, self.height)
  
end