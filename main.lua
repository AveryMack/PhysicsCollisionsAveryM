-----------------------------------------------------------------------------------------
-- Title: PhysicsAndCollisions
-- Name: Avery Mack
-- Course: ICS2O/3C
-- This program...
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics 
local physics = require("physics")

-- start physics 
physics.start()
----------------------------------------------------------------------------------------------------------
-- Objects
----------------------------------------------------------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)

	-- set the x and y pos
	ground.x = display.contentCenterX
	ground.y = display.contentHeight

	-- Change the width to be the same as the screen 
	ground.width = display.contentWidth

	-- Add to physics 
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------------------------------------------------

-- create a verticle beam
local beam = display.newImage("Images/beam.png", 0, 0)

	-- set the x and y pos
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	-- set the beam size
	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10

	-- rotate the beam -60 degrees so its on an angle
	beam:rotate(45)

	-- send it to the back layer
	beam:toBack()

	-- add to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

-- create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)

	-- set the x and y pos
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY

	-- set the bkg size
	bkg.width = display.contentWidth
	bkg.height = display.contentHeight

	-- send to back
	bkg:toBack()

---------------------------------------------------------------------------------------------------------

-- create a wall beam
local wallBeam = display.newImage("Images/beam.png", 0, 0)

	-- set the x and y pos
	wallBeam.x = 1000
	wallBeam.y = display.contentCenterY*1.65

	-- rotate the beam -60 degrees so its on an angle
	wallBeam:rotate(90)

	-- set the beam size
	wallBeam.width = 1500
	wallBeam.height = display.contentHeight/10

	-- add to physics
	physics.addBody(wallBeam, "static", {friction=0.5, bounce=0.3})


-----------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------

-- create the first ball
local function firstBall()
	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics 
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

------------------------------------------------------------------------------------------------------------

local function secondBall()
	-- creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	-- make it smaller than the original size
	ball2:scale(0.5, 0.5)
end

-----------------------------------------------------------------------------------------------------------

local function thirdBall()
	-- creating third ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics 
	physics.addBody(ball3, {density=1.0, friction=0.5, bounce=0.3, radius=50})

	-- make it bigger than the original size
	ball3:scale(2.0, 2.0)
end

----------------------------------------------------------------------------------------------------------

local function fourthBall()
	-- creating fourth ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics 
	physics.addBody(ball4, {density=1.2, friction=0.6, bounce=0.4, radius=100})

	-- make it bigger than the original size
	ball4:scale(4.0, 4.0)
end

----------------------------------------------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
----------------------------------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 1000, thirdBall)
timer.performWithDelay( 1250, fourthBall)




