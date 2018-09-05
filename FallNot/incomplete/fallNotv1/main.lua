-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require("physics")
physics.start()

local score = 0

-- Your code here

local background = display.newImageRect("assets/space5.png", display.contentWidth, display.contentHeight)
background.anchorX = 0
background.anchorY = 0

background.x = 0
background.y = 0

local star  = display.newImageRect("assets/star.png", 100, 100)
star.x = display.contentCenterX
star.y = display.contentCenterY

local scoreText = display.newText(score, 20, 30, native.systemFont, 25)

physics.addBody(star, "dynamic", {
    bounce = 1,
    radius = 100,
})

function pushStar()
    star:applyLinearImpulse(0, -5, star.x, star.y)
    score = score + 1
    scoreText.text = score
end

star:addEventListener("tap", pushStar)



