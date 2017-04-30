-----------------------------------------------------------------------------------------
--
-- home.lua
--
-----------------------------------------------------------------------------------------
local composer = require( "composer" )
local scene = composer.newScene()
print("home innovated")

if(musicChannelNum==1)then
audio.play(m1,{channel=1,loops=-1,fadein=2000})
elseif(musicChannelNum==2)then
audio.play(m2,{channel=2,loops=-1,fadein=2000})
end

screenFlag = 2            --10/18 SAI 左右滑介面所需要FLAG STORY=1 HOME=2 CRAFT=3 CHARACTER=4.1,4.2,4.3 SETTING,ELSE=0


--------------------------------------------------------------------------------
---------------------------------create
--------------------------------------------------------------------------------
-----------------------------點集系統的初版-----------------
function scene:create(event)
	local sceneGroup = self.view




function QK(event)
	--QKbu:removeSelf()
	print("check")
	composer.gotoScene("QuestionKing",{effect="fade",time=500})
	screenFlag=0
end
--Qicon = display.newImage("Q_icon.png",2.8*W/14,2*H/26)
--sceneGroup:insert(Qicon)

QKbu = widget.newButton
{
	x = 3*W/14,
	y = 3*H/26,
	--labelColor = { default = {0,0,0} , over = {1,1,1}},
	defaultFile = "Q_icon.png",
	--overFile = "Q_icon.png",
	--label = "    ",
	fontSize = "400",
	onRelease = QK,
}
--QKbu:setFillColor( 0, 0, 0, 0)
sceneGroup:insert(QKbu)   



local function touchScreen(event)              -------------10/18 SAI 總之滑來滑去 判定會滑去哪裡

	if  event.phase == "ended"  then   
		if (event.x - event.xStart) >= 30  then
			print("RIGHT")
			if(screenFlag==3)then
				composer.gotoScene("home",{effect="slideRight",time=500})
				screenFlag=2
			elseif(screenFlag==2)then
				composer.gotoScene("story",{effect="slideRight",time=500})
				screenFlag=1
			elseif(screenFlag==4.2)then
				composer.gotoScene("character",{effect="slideRight",time=500})
				screenFlag=4.1
			elseif(screenFlag==4.3)then
				composer.gotoScene("character-2",{effect="slideRight",time=500})
				screenFlag=4.2
			end
		elseif (event.xStart - event.x) >= 30  then
			print("LEFT")
			if(screenFlag==1)then
				composer.gotoScene("home",{effect="slideLeft",time=500})
				screenFlag=2
			elseif(screenFlag==2)then
				composer.gotoScene("craft",{effect="slideLeft",time=500})
				screenFlag=3
			elseif(screenFlag==4.1)then
				composer.gotoScene("character-2",{effect="slideLeft",time=500})
				screenFlag=4.2
			elseif(screenFlag==4.2)then
				composer.gotoScene("character-3",{effect="slideLeft",time=500})
				screenFlag=4.3
			end
		end
		if (event.y - event.yStart) >= 30  then
			print("DOWN")
		elseif (event.yStart - event.y) >= 30  then
			print("UP")
		end
	end

end
Runtime:addEventListener("touch", touchScreen)----------------------------10/18  SAI 到這裡得斯

--background--------------------------------------------------------------------



--statusbar------------------------------------------------------------------------
--home---

tmp = 1

function Intro(event) 
print(tmp)
if(tmp > 1) then
Ini:removeSelf()
end
if(tmp == 1) then
Ini = display.newImage("dia1.png",50*W/100,85*H/100)
sceneGroup:insert(Ini)
end
if(tmp == 2) then
Ini = display.newImage("dia2.png",50*W/100,85*H/100)
sceneGroup:insert(Ini)
end
if(tmp == 3) then
Ini = display.newImage("dia3.png",50*W/100,85*H/100)
sceneGroup:insert(Ini)
end
if(tmp == 4) then
Ini = display.newImage("dia4.png",50*W/100,85*H/100)
sceneGroup:insert(Ini)
end
if(tmp == 5) then
Ini = display.newImage("dia5.png",50*W/100,85*H/100)
sceneGroup:insert(Ini)
end
if(tmp == 6) then
Ini = display.newImage("dia6.png",50*W/100,85*H/100)
sceneGroup:insert(Ini)
end
if(tmp == 7) then
--Ini:removeSelf()
Ini = display.newImage("dia1.png",50*W/100,85*H/100)
sceneGroup:insert(Ini)
end
--if(tmp == 8) then
--Ini = display.newImage("dia1.png",50*W/100,90*W/100)
--end
tmp = tmp + 1
end
Intimer = timer.performWithDelay(1000,Intro,7)

Kanban = display.newImage("top_page.png",W/2,H*12/26)
sceneGroup:insert(Kanban)
Kanban:toBack()
----------------------------------------------------------------------------------
---------------------------------show
--------------------------------------------------------------------------------
end
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