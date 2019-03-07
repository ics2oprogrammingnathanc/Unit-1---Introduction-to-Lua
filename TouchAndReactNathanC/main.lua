-- Title: TouchAndReact
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program does something when I click on the button.

--set background colour
display.setDefault ("background", 0.3, 0.5, 0.2)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/BlueButton.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/RedButton.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 0.3, 0.4)
textObject.isVisible = false

--create image, set its position and make it invisible
local cursor = display.newImageRect("Images/Cursor.png", 198, 96)
cursor.x = display.contentWidth/2
cursor.y = display.contentHeight/1.5
cursor.isVisible = false

--Function: BlueButtonListener
--Input: touch listener
--Output: none
--Description: When blue button is clicked, it will make the text appear with the red
-- button, and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
	    blueButton.isVisible = true
	    redButton.isVisible = false
	    textObject.isVisible = false
	end
end

--Function: RedButtonListener
--Input: touch listener
--Output: none
--Description: When red button is clicked, it will make the text disappear with the return of
--the blue button
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
	    blueButton.isVisible = true
	    redButton.isVisible = false
	    textObject.isVisible = false
	end
end

--add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)
redButton:addEventListener("touch", RedButtonListener)
