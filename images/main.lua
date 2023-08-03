function love.load()
  
  Object = require "classic"
  require "X"
  require "O"
  require "Square"
  require "T"
  require "Star"
  
  xList = {}
  
  for i=1,10 do
    random = math.random(1, 4)
    x_random = love.math.random(1, 10)
    y = math.random(1, 10)
    x = X(x_random*10, y*50)
    x.speed = x.speed * random
    table.insert(xList, x)
  end

  oList = {}
  
  for i=1,10 do
    random = math.random(1, 2)
    x = love.math.random(1, 10)
    y = math.random(1, 10)
    o = O(x*10, y*50)
    o.speed = o.speed * random
    table.insert(oList, o)
  end
  
  squareList = {}
  
  for i=1,10 do
    random = love.math.random(1, 2)
    x = love.math.random(1, 10)
    y = love.math.random(1, 10)
    square = Square(x*10, y*50)
    square.speed = square.speed * random
    table.insert(squareList, square)
  end
  
  tList = {}
  for i=1,10 do
    random = love.math.random(1, 4)
    x = love.math.random(1, 10)
    y = love.math.random(1, 10)
    t = T(x*10, y*50)
    t.speed = t.speed * random
    table.insert(tList, t)
  end
  
  starList = {}
  for i=1,10 do
    random = love.math.random(1, 4)
    x = love.math.random(1, 10)
    y = love.math.random(1, 10)
    star = Star(x*10, y*50)
    star.speed = star.speed * random
    table.insert(starList, star)
  end
  
end

function love.update(dt)
  
  --speed
  for i,v in ipairs(xList) do
    v.x = v.x + v.speed * dt
  end
  
  for i,v in ipairs(oList) do
    v.x = v.x + v.speed * dt
  end
  
  for i,v in ipairs(squareList) do
    v.x = v.x + v.speed * dt
  end
  
  for i,v in ipairs(tList) do
    v.x = v.x + v.speed * dt
  end
  
  for i,v in ipairs(starList) do
    v.x = v.x + v.speed * dt
  end
  
  --loop movement
  for i,v in ipairs(xList) do
    if (v.x > 300) then
      v.x = 50
    end
  end
    
  for i,v in ipairs(oList) do
    if (v.x > 300) then
      v.x = 50
    end
  end
  
  for i,v in ipairs(squareList) do
    if (v.x > 300) then
      v.x = 50
    end
  end
  
  for i,v in ipairs(tList) do
    if (v.x > 300) then
      v.x = 50
    end
  end
  
  for i,v in ipairs(starList) do
    if (v.x > 300) then
      v.x = 50
    end
  end
  
end

function love.draw()
  for i,v in ipairs(xList) do
    v:draw()
  end
  
  for i,v in ipairs(oList) do
    v:draw()
  end
  
  for i,v in ipairs(squareList) do
    v:draw()
  end
  
  for i,v in ipairs(tList) do
    v:draw()
  end
  
  for i,v in ipairs(starList) do
    v:draw()
  end
  
end