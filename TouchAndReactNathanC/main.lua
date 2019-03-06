-- Title: TouchAndReact
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program does something when I click on the button.

--set background colour
display.setDefault ("background", 0.3, 0.5, 0.2)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198, 96)
