-- Title: TouchAndDrag
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program When I click and drag on each image, it moves with my finger.

--Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/girl3.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect("Images/girl2.png", 150, 150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height

local pinkGirl = display.newImageRect("Images/girl1.png", 150, 150)
local pinkGirlWidth = pinkGirl.width
local pinkGirlHeight = pinkGirl.height

local touchedSound = audio.loadSound( "SoundEffects2/BoingSoundEffect.mp3")
local touchedSoundChannel

-- my boolean vaiables to keep track of which object I touched first
local alreadyTouchedYellowGirl = false
local alreadyTouchedBlueGirl = false
local alreadyTouchedPinkGirl = false

--set the initial x and y position of myImage
yellowGirl.x = 400
yellowGirl.y = 500

blueGirl.x = 300
blueGirl.y = 200

pinkGirl.x = 700
pinkGirl.y = 500

-- Function: BlueGirlListener
-- Input: touch listener
-- Output: none
-- Description: When blue girl is touched, move her
local function BlueGirlListener(touch)

	-- play sound
	touchedSoundChannel = audio.play(touchedSound)

	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) and (alreadyTouchedPinkGirl == false) then
			alreadyTouchedBlueGirl = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedBlueGirl == true) ) then
		blueGirl.x = touch.x
		blueGirl.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedBlueGirl = false
	    alreadyTouchedYellowGirl = false
	    alreadyTouchedPinkGirl = false
	end
end

-- add the respective listeners to each object
blueGirl:addEventListener("touch", BlueGirlListener)

-- Function: YellowGirlListener
-- Input: touch listener
-- Output: none
-- Description: When yellow girl is touched, move her
local function YellowGirlListener(touch)

	-- play boing sound
	touchedSoundChannel = audio.play(touchedSound)

	if (touch.phase == "began") then
		if (alreadyTouchedBlueGirl == false) and (alreadyTouchedPinkGirl == false) then
			alreadyTouchedYellowGirl = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedYellowGirl == true) ) then
		yellowGirl.x = touch.x
		yellowGirl.y = touch.y

	end

	if (touch.phase == "ended") then
	    alreadyTouchedYellowGirl = false
	    alreadyTouchedBlueGirl = false
	    alreadyTouchedPinkGirl = false
	end
end

-- add the respective listeners to each object
yellowGirl:addEventListener("touch", YellowGirlListener)

-- Function: PinkGirlListener
-- Input: touch listener
-- Output: none
-- Description: When pink girl is touched, move her
local function PinkGirlListener(touch)

	-- play boing sound 
	touchedSoundChannel = audio.play(touchedSound)

	if (touch.phase == "began") then
		if (alreadyTouchedBlueGirl == false) and (alreadyTouchedYellowGirl == false) then
			alreadyTouchedPinkGirl = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedPinkGirl == true) ) then
		pinkGirl.x = touch.x
		pinkGirl.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedpinkGirl = false
	    alreadyTouchedBlueGirl = false
	    alreadyTouchedyellowGirl = false
	end
end

pinkGirl:addEventListener("touch", PinkGirlListener)
