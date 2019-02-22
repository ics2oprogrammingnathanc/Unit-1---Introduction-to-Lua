-----------------------------------------------------------------------------------------
--
--AreaOfRectangleAndCircle
-- Name: Nathan Cook
-- Course: ICS2O/3C
-- This program displays a rectangle and shows its area.

-- Create local variables
local areaText
local textSize = 45
local myRectangle 
local widthOfRectangle = 350
local heightOfRectangle = 200
local AreaOfRectangle

local myCircle
local AreaOfCircle 
local PI = 3.14 
local radiusOfCircle = 150
local areaTextCircle

--set the background colour of my screen.Remeber that colours are between 0 and 1. 
display.setDefault("background", 102/255, 255/255, 255/255)  

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left corner of the screen and set its (X,y) position\
myRectangle.anchorX = 0
myRectangle.anchorY = 0 
myRectangle.x = 20 
myRectangle.y = 20 

--set the width of the border 
myRectangle.strokeWidth = 20 

--set the colour of the rectangle 
myRectangle:setFillColor(0.4, 0.1, 0.3)

--set the color of the border 
myRectangle:setStrokeColor(0.8, 0.4, 0.4)

--calculate the area 
AreaOfRectangle = widthOfRectangle * heightOfRectangle

--write the area on the screen. Take into consideration the size of the font when positioning it on the screen. 
areaText = display.newText("The area of this rectangle with a width of \n" ..
    widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
    AreaOfRectangle .. "pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position 
areaText.anchorX = 0 
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

--set the colour of the newText
areaText:setTextColor(1, 1, 1)

--draw a circle that is half the width and height of the screen size. 
myCircle = display.newCircle(800, 120, 100)

--set the colour of the Circle
myCircle:setFillColor(0.4, 0.1, 0.3)

myCircle.strokeWidth = 20

--set the colour of the border
myCircle:setStrokeColor(0.8, 0.4, 0.4)

AreaOfCircle = PI * radiusOfCircle

areaTextCircle = display.newText("The area of this circle with a radius of \n" ..
	radiusOfCircle .. " is " .. AreaOfCircle .. "pixels².", 0, 0, Arial, textSize)

--anchor text and set its (x,y) position. 
areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.y = 600
areaTextCircle.x = display.contentHeight/19