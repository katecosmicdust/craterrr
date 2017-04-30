-----------------------------------------------------------------------------------------
--
-- craft
--
-----------------------------------------------------------------------------------------
-----Bug紀錄 10/30 離線合成時介面異常-----------------

local composer = require( "composer" )
local scene = composer.newScene()
print("craft innovated")
--------------------------------------------------------------------------------
---------------------------------create
--------------------------------------------------------------------------------
function scene:create(event)
	local sceneGroup = self.view


---------------------------------------------------------
ofT = 1
ofD = 1
ofO = 1
ofH = 1
dangerous = 0

function top()
	if(Timage ~= nil) then
	Timage:removeSelf()
	end
	if(ofT == 1) then
Timage = display.newImage("tshirt.png",30*W/100,38*H/100)
end
if(ofT == 2) then
Timage = display.newImage("tank.png",30*W/100,38*H/100)
end
sceneGroup:insert(Timage)
end


function down()
if(Dimage ~= nil) then
	Dimage:removeSelf()
end
if(ofD == 1) then
Dimage = display.newImage("pants.png",70*W/100,38*H/100)
end
if(ofD == 2) then
Dimage = display.newImage("shorts.png",70*W/100,38*H/100)
end
if(ofD == 3) then
Dimage = display.newImage("skirt.png",70*W/100,38*H/100)
end
sceneGroup:insert(Dimage)
end

function out()
if(ofO == 1)then
Oimage = display.newImage("jacket.png",30*W/100,60*H/100)
end
if(ofO == 2)then
Oimage = display.newImage("none.png",30*W/100,60*H/100)
end
sceneGroup:insert(Oimage)
end

function hat()
if(ofH == 1) then
Himage = display.newImage("hat.png",70*W/100,60*H/100)
end
if(ofH == 2)then
Himage = display.newImage("none.png",70*W/100,60*H/100)
end
sceneGroup:insert(Himage)
end
---------------------------------------------------------------------------------------------------

top()
down()
out()
hat()

topB = widget.newButton
{
	x = 30*W/100,
	y = 38*H/100,
	labelColor = { default = {1,1,1} , over = {0,0,0}},
	label = "  ",
	fontSize =  200,
    onRelease = function()
	Timage:removeSelf()
	print(ofT)
    if(ofT == 1) then
    ofT = 2
    
    else if(ofT == 2)then
    ofT = 1
    --Timage:removeSelf()
    end
	end
	    top()
    end
	
}
sceneGroup:insert(topB)

downB = widget.newButton
{
	x = 70*W/100,
	y = 38*H/100,
	labelColor = { default = {1,1,1} , over = {0,0,0}},
	label = "  ",
	fontSize =  200,
    onRelease = function()
	Dimage:removeSelf()
	print(ofT)
    if(ofD == 1) then
    ofD = 2
    
    else if(ofD == 2)then
    ofD = 3
	
	else if (ofD == 3) then
	ofD = 1
    --Timage:removeSelf()
    end
	end
	end
	    down()
    end
	
}
sceneGroup:insert(downB)

outB = widget.newButton
{
	x = 30*W/100,
	y = 60*H/100,
	labelColor = { default = {1,1,1} , over = {0,0,0}},
	label = "  ",
	fontSize =  200,
    onRelease = function()
	Oimage:removeSelf()
	print(ofO)
    if(ofO == 1) then
    ofO = 2
    
    else if(ofO == 2)then
    ofO = 1
    --Timage:removeSelf()
    end
	end
	    out()
    end
	
}
sceneGroup:insert(outB)

hatB = widget.newButton
{
	x = 70*W/100,
	y = 60*H/100,
	labelColor = { default = {1,1,1} , over = {0,0,0}},
	label = "  ",
	fontSize =  200,
    onRelease = function()
	Himage:removeSelf()
	print(oh)
    if(ofH == 1) then
    ofH = 2
    
    else if(ofH == 2)then
    ofH = 1
    --Timage:removeSelf()
    end
	end
	    hat()
    end
	
}
sceneGroup:insert(hatB)

okB = widget.newButton
{
	x = 50*W/100,
	y = 80*H/100,
	labelColor = { default = {1,1,1} , over = {0,0,0}},
	label = "  ",
	fontSize =  200,
	onRelease = function()
	okB:setEnabled()
	if(ofT == 2 or ofD == 2 or ofO == 2 or ofH == 2) then
	safe = display.newImage("out_1.png",W/2,H/2)
	else
	safe = display.newImage("safe1.png",W/2,H/2)
	end
	function delay_can()
	okB:setEnabled(true)
	safe:removeSelf()
	end
	timer.performWithDelay(2000,delay_can,1)
	end
}
sceneGroup:insert(okB)
CrBGi = display.newImage("outfit_bg.png",W/2,H/2)
sceneGroup:insert(CrBGi)
CrBGi:toBack()

end

--------------------------------------------------------------------------------
---------------------------------show
--------------------------------------------------------------------------------

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
	elseif phase == "did" then
	end	
end
--------------------------------------------------------------------------------
---------------------------------hide
--------------------------------------------------------------------------------

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase

	if event.phase == "will" then
	elseif phase == "did" then
	end	
end
--------------------------------------------------------------------------------
---------------------------------destroy
--------------------------------------------------------------------------------

function scene:destroy( event )
	local sceneGroup = self.view
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------


return scene