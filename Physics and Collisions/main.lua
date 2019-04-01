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

local beam = display.newImage("Images/beam.png", 0, 0)

	-- set the x and y position
	beam.x = display.contentCenterX/6
	beam.y = display.contentCenterY*1.65

	--set beam width and height on iPad
	beam:scale(1.8, 4)

	-- rotate the beam so its on an angle
	beam:rotate(-30)

	--add to physics 
	physics.addBody(beam, "static", {friction=0.3, bounce=0.9})

local beam2 = display.newImage("Images/beam.png", 0, 0)

	-- set the x and y position
	beam2.x = display.contentCenterX*1.80
	beam2.y = display.contentCenterY/.60

	--set beam width and height on iPad
	beam2:scale(1.8, 4)

	-- rotate the beam so its on an angle
	beam2:rotate(45)

	--add to physics 
	physics.addBody(beam2, "static", {friction=0.2, bounce=0.9})

----------------------------------------------------------------------------------
--BackGround Music
--------------------------------------------------------------------------------------------------
-- Sounds
local music = audio.loadSound( "SoundEffects/backGround.mp3" )
local correctSoundChannel

------------------------------------------------------------------------------------
--FUNCTIONS
---------------------------------------------------------------------------------------------

-- create the first ball 
local function firstBall()
	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 950, 0)

	correctSoundChannel = audio.play(music)

	-- add physics
	physics.addBody(ball1, {density=0.3, friction=0, bounce=0.9, radius=25})
end

-------------------------------------------------------------------------------

-- create the second ball
local function secondBall()
	-- create second ball
	local ball2 = display.newImage("Images/super_ball.png", 960, 0)

	ball2:scale(0.5, 0.5)

	-- add physics
	physics.addBody(ball2, {density=0.9, friction=0.1, bounce=0.9, radius=25})
end

------------------------------------------------------------------------------
--TIMER DELAYS - call each function after the given millisecond
------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)