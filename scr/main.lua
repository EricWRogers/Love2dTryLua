


function love.load()
    g = 3
    graIsOn = true
    isJumping = false
    x, y, w, h, speed, jf, ji, jSpeed = 64, 64, 64, 64, 5, 400, 500, 10
end

function love.update(dt)
    move()
    gravity()
    
end

function love.draw()
    love.graphics.setColor(0, 100, 100)
    love.graphics.rectangle("fill", x, y, w, h )
end

function move()
    if love.keyboard.isDown("up") then
        jump()
    end
    if love.keyboard.isDown("down") then
        y = y + 1 * speed
    end
    if love.keyboard.isDown("left") then
        x = x - 1 * speed
    end
    if love.keyboard.isDown("right") then
        x = x + 1 * speed
    end
end

function gravity()
    if(graIsOn) then
        if(y < 500) then
            y = y + g   
        end
        if(y > 500) then
            y = 500
        end
    end
end

function jump()
    if(isJumping==false) then
        if( y==ji) then
            isJumping=true
        end
    end
    if(isJumping) then
        if(y <= jf) then
            isJumping = false
        end
        if (y > jf) then
            y = y - 1 * jSpeed
        end
    end
end

function love.keyreleased(key)
    if key == "up" then
        isJumping=false
    end
    if key == "escape" then
        love.event.quit()
     end
 end