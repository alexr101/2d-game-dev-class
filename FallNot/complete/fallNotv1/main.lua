-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- import Corona's physics library
local physics = require('physics')
physics.start()

-- Create the background 
local star = display.newImageRect( "assets/space5.png", display.actualContentWidth, display.actualContentHeight )
star.x = display.contentCenterX
star.y = display.contentCenterY

-- Create the star obj
local star = display.newImageRect( "assets/star.png", 100, 100 )
star.x = display.contentCenterX
star.y = display.contentCenterY

-- Add physics to the star object
physics.addBody( star, "dynamic", { 
    radius = 100,
    bounce = 5
} )

-- push the star upwards
function pushStar()
    star:applyLinearImpulse(0, -5, star.x, star.y);
end

-- add event listener to the star
star:addEventListener( "tap", pushStar )
