Star = Object:extend()

function Star:new(x, y)
  
  self.x = x
  self.y = y
  self.width = 0.025
  self.height = 0.025
  self.speed = 75
  Star_image = love.graphics.newImage("images/star.png")
  
end

function Star:draw()
  
  love.graphics.draw(Star_image, self.x, self.y, 0, self.width, self.height)
  
end