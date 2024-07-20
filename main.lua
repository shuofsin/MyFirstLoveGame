function love.load()
    player = {}
    player.x = 400
    player.y = 300
    player.speed = 200
    player.sprite = love.graphics.newImage('Assets/character.png')

    background = love.graphics.newImage('Assets/background.png')
end



function love.update(dt)
    if love.keyboard.isDown("right") or love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end
    if love.keyboard.isDown("left") or love.keyboard.isDown("a") then 
        player.x = player.x - player.speed * dt
    end 
    if love.keyboard.isDown("down") or love.keyboard.isDown("s") then 
        player.y = player.y + player.speed * dt
    end 
    if love.keyboard.isDown("up") or love.keyboard.isDown("w") then 
        player.y = player.y - player.speed * dt
    end 
end

function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.draw(player.sprite, player.x, player.y)
end 