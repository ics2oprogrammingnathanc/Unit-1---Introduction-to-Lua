
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and then makes it fade out. I added another object that moves in a different direction as well 
--as fading in an out. 

-- hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--global variables 
scrollSpeed = 3

--background image with width and height 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

--character image with width and height 
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent 
beetleship.x = 0 
beetleship.y = display.contentHeight/3 

-- Function: Moveship 
-- Input: this function accepts an event listener 
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ship
local function Moveship(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

--Moveship will be called over and over again 
Runtime:addEventListener("enterFrame", Moveship)