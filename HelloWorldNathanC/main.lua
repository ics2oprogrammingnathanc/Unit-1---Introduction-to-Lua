-- Title: HelloWorld
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays Hello, World on the simulator and "Helloooooo" to the command
---------------------------------------------------------------------------------------

--print "Hello, World" to the command terminal 
print ("***Hellooooo World!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour 
display.setDefault("background", 102/255, 55/255, 175/255)

--create a local variable 
local textObject 

--displays text on the screen at position x = 500 and y = 500 with 
-- a deafult font style and font size 75 
textObject = display.newText( "Hello, Ms Raffin! Good Morning!", 500, 400, nil, 60 )

--sets the colour of the text
textObject:setTextColor(67/255, 155/255, 125/255)

--create a local variable 
local textObjectSignature

--displays text on screen at postion x = 500 and y = 500 with 
--a Helvetica-Bold font style and font size 20 
textObjectSignature = display.newText("Created by: Nathan Cook", 500, 500, nil, 30)