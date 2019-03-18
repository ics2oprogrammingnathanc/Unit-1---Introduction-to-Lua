-----------------------------------------------------------------------------------------
-- Title: Numeric Textfield
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays a math question and asks the user to answer in a
-- numeric textfield terminal.
-----------------------------------------------------------------------------------------

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 0.5, 0.7, 0.2)

-----------------------------------------------------------
-- Local Variables
----------------------------------------------------------

-- create local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

------------------------------------------------------------
-- Local Functions
-----------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	-- create question in text object
	questionObject.text = randomNumber1 .. " + " .. " = "
end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	-- user begins editing "numericField"
	if ( event.phase == "began" ) then

		--clear text field
		event.target.text = ""

	elseif event.phase 


