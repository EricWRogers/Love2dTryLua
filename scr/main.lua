


function love.load()
    x, y, w, h = 64, 64, 64, 64
end

function love.update(dt)
    move()
    
end

function love.draw()
    love.graphics.setColor(0, 100, 100)
    love.graphics.rectangle("fill", x, y, w, h )
end

function move()
    if love.keyboard.isDown("up") then
        y = y - 1
    end
    if love.keyboard.isDown("down") then
        y = y + 1
    end
    if love.keyboard.isDown("left") then
        x = x - 1
    end
    if love.keyboard.isDown("right") then
        x = x + 1
    end
end