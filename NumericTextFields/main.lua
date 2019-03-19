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
display.setDefault("background", 0.4, 0.7, 0.5)

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
local incorrectObject
local correctAnswers1 
local answerCounter = 0
local numberOfCorrect

------------------------------------------------------------
-- Local Functions
-----------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(10, 20)
	randomNumber2 = math.random(10, 20)

	correctAnswer = randomNumber1 + randomNumber2

	-- create question in text object
	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " =  "
end

local function HideCorrect()
	correctObject.isVisible = false
	incorrectObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	-- user begins editing "numericField"
	if ( event.phase == "began" ) then

		--clear text field
		event.target.text = ""

	elseif (event.phase == "submitted" ) then

		-- when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if the users answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			answerCounter = answerCounter + 1
			correctObject.isVisible = true
			timer.performWithDelay(2500, HideCorrect)
			numberOfCorrect.text = answerCounter 
		else incorrectObject.isVisible = true
			timer.performWithDelay(2500, HideCorrect)
		end 
	end
end

--------------------------------------------------------------
-- Object Creation
--------------------------------------------------------------

-- dislays a question and sets the colour
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(1, 0.2, 0.4)

-- create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 65 )
correctObject:setTextColor( 0.8, 0.7, 1)
correctObject.isVisible = false

-- create the incorrect text object and make it invisible
incorrectObject = display.newText( "Incorrect :(", display.contentWidth/2, display.contentHeight*2/3, nil, 65 )
incorrectObject:setTextColor( 0.8, 0.7, 1)
incorrectObject.isVisible = false

--create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add text to count number of correct answers
correctAnswers1 = display.newText( "Correct Answers!", display.contentWidth/2, display.contentHeight/7, nil, 55 )
correctAnswers1:setTextColor( 0.8, 0.7, 1)

-- add the count of correct answers
numberOfCorrect = display.newText( "", display.contentWidth/2, display.contentHeight/4.5, nil, 55 )
numberOfCorrect:setTextColor( 0.3, 0.3, 1)

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)

--------------------------------------------------------------------
-- Function Calls
--------------------------------------------------------------------

-- call the function to ask the question
AskQuestion()
