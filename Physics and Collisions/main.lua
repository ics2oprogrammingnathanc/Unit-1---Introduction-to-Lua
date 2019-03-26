-- Title: PhysicsAndCollisions
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays images with actual physics and gravity

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

--set backgorund
local backgorundImage = display.newImageRect("Images/bkg.png", 2048, 1535)
-- load physics
local physics = require("physics")

-- start physics 
physics.start()
---------------------------------------------------------------------
--Objects
-------------------------------------------------------------------
-- Ground
local ground = display.newImageRect("Images/ground.png", 1030, 60)
	-- set grounds x and y coordinates
	ground.x = display.contentWidth/2
	ground.y = display.contentHeight*100/101

	--change the width to be the same as the screen
	ground.width = display.contentWidth

	-- Add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

----------------------------------------------------------------------------

local beam = display.newImageRect("Images/beam.png", 0, 0)

	-- set the x and y position
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	--set beam width and height on iPad
	beam:scale(0.5, 1/10)