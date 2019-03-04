-- Title: TouchAndDrag
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program When I click and drag on each image, it moves with my finger.

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect("Images/blueGirl.png", 150, 150)



