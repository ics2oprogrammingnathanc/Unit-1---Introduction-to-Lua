-- Title: LivesAndTimers
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program...

-- variables for the timer 
local totalSeconds = 5
local secondsLeft = 5
local clockText
local countDownTimer

local lives = 3
local heart1
local heart2


---------------------------------------------------
-- LOCAL FUNCTIONS
----------------------------------------------------------

local function UpdateTime()

	-- decrement the number of seconds
	secondsLeft = secondsLeft - 1

	-- display the number of seconds left in the clock object 
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0 ) then
		--reset the number of seconds left
		secondsLeft = totalSeconds
		lives = lives - 1

		--** IF THERE ARE NO LIVES LEFT, PLAY A LOSE SOUND, SHOW A YOU LOSE
		-- IMAGE AND CANCEL THE TIMER REMOVE THE THIRD HEART BY MAKING IT INVISIBLE
		if(lives == 2) then
			heart2.isVisible = false
		elseif (lives == 1) then
			heart1.isVisible = false
		end

		-- *** CALL THE FUNCTION TO ASK A NEW QUESTION

	end
end

-- functon that calls the timer 
local function StartTimer()
	-- create a countdown timer that loops infinitely
	countDownTimer = timer.preformWithDelay( 1000, UpdateTime, 0)
end

------------------------------------------------------------
-- OBJECT CREATION
------------------------------------------------------------

-- create the lives to display on the screen 
heart1 = display.newImageRect("Images/GamingHeart.jpg", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7

heart2 = display.newImageRect("Images/GamingHeart.jpg", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7

clockText = display.newText( "" .. secondsLeft .. "", display.contentHeight*2/3, display.contentWidth*2/3)

Runtime:addEventListener("enterFrame", StartTimer)