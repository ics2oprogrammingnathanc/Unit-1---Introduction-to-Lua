-- Title: WhackAMole
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program has moles pop up at random locations on the
-- screen and requires the user to click them. 

-- Hide Status Bar
display.setStatusBar(display.HiddenStatusBar)

-------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS AND OBJECT CREATION
---------------------------------------------------------------------------------------------

-- creating Background 
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )

	-- set background colour 
	bkg:setFillColor(1, 0.4, 0.3)

	-- setting position
	bkg.anchorX = 0
	bkg.anchorY = 0
	bkg.x = 0 
	bkg.y = 0

-- creating Mole
local mole = display.newImage( "Images/videoHeart.png", 0, 0 )

	--Setting position
	mole.x = display.contentCenterX
	mole.y = display.contentCenterY

	--Make the mole and third of its size
	mole:scale(1/3,1/3)

	-- Make mole invisible
	mole.isVisible = false

-- Score variable
local score = 0

-- Score text
local scoreText = display.newText( "score", display.contentWidth/2, display.contentHeight/4, nil, 55 )

-- write text on screen
local byText = display.newText( "By: Nathan Cook", display.contentWidth/2, display.contentHeight/1.2, nil, 45 )
	
-- write how to play on screen
local howTo = display.newText( "Click on the hearts to gain points", display.contentWidth/2, display.contentHeight/2, nil, 45 )
howTo:setTextColor(0.5, 0.1, 0.5)

------------------------------------------------------------------
--SOUNDS
---------------------------------------------------------------------------------
local touchSound = audio.loadSound( "SoundEffects/Cash Register Cha Ching.mp3")
local touchSoundChannel
local backGroundMusic = audio.loadSound( "SoundEffects/backGround.mp3")
local backGroundChannel
---------------------------------------------------------------------------
--FUNCTIONS
----------------------------------------------------------------------

-- Makes the mole appear randomly in a random (x,y) position
function PopUp( )

	--choosing random x and y position on the screen
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )

	-- make mole visible
	mole.isVisible = true

	timer.performWithDelay( 475, Hide )
end 

-- Function calls the popup function after 3 seconds
function PopUpDelay( )
	timer.performWithDelay( 2000, PopUp )
end

-- Function makes the mole invisible and then calls the PopUpDelay
function Hide( )

	--Chaning Visibility
	mole.isVisible = false

	-- call PopUpDelay
	PopUpDelay( )
end

-- Function starts the game
function GameStart ( )
	PopUpDelay()
	backGroundChannel = audio.play(backGroundMusic)
end

-- This function increments the score only if the mole is clicked. 
--Then it displays the new score
function Whacked( event )

	--if touch phase just started
	if (event.phase == "began") then
		score = score + 1
		scoreText.text = "Score = " .. score .. ""
		touchSoundChannel = audio.play(touchSound)
	end
end 

--------------------------------------------------------------------------------------
--EVENT LISTENERS
--------------------------------------------------------------------------------------

-- is mole touched call whacked
mole:addEventListener( "touch", Whacked )

----------------------------------------------------------------------------------
--START THE GAME
-------------------------------------------------------------------------------------

-- call function
GameStart( )

