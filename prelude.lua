local composer = require( "composer" )
local scene = composer.newScene()
preludeFlag = 0
Load:removeSelf()


preludeSkipBu = widget.newButton
{
	x = W/2,
	y = H/2,
	labelColor = { default = {1,1,1} , over = {0,0,0}},
	label = " ",
	fontSize = "2500",
	onRelease = function(event)
	if(preludeFlag==1 or preludeFlag==2)then
	if(temp < 1)then
	temp = 1
	else
	if(preludeFlag==2)then
	temp = 10
	end
	end
	end
	end
}
preludeSkipBu:setFillColor( 1, 1, 1, 0)

function logoFunction(event)
print("check")
logo = display.newImage("logo.png",W/2,H/2)
logo.alpha = 0
function logo_In(event)
if(logo.alpha ~= nil) then
logo.alpha = logo.alpha + 0.01
end
print(logo.alpha)
if(logo.alpha == 1) then
function logo_Out(event)
if(logo.alpha ~= nil) then
logo.alpha = logo.alpha - 0.01
end
print(logo.alpha)
if(logo.alpha == 0) then
logo:removeSelf()
backgroundimage = display.newImage("start1_position.png",W/2,H/2)
temp = 0

timer.cancel(logotimer)

end
end
logotimer = timer.performWithDelay(0.7,logo_Out,200)
end
end
logotimer = timer.performWithDelay(0.7,logo_In,200)
end
timer.performWithDelay(1,logoFunction,1)



function preludeFunction(event)

if(temp==0)then
if(preludeFlag==0)then
prelude = display.newText("Touch to Start",W/2,H*6/7,native.systemFont,50)
-----------------------版本號 每次都要改喔鳩咪-----------------------------
version = display.newText("v0.4.8.7",W*94/100,H*97/100,native.systemFont,20)
version:setFillColor( 0 ,0 ,0 , 1)
end
prelude:setFillColor( 0, 0, 0, 0.1)
temp=0.1
elseif(temp==0.1)then
preludeFlag=1
prelude:setFillColor( 0, 0, 0, 0.2)
temp=0.15
elseif(temp==0.15)then
prelude:setFillColor( 0, 0, 0, 0.3)
temp = 0.2
elseif(temp==0.2)then
prelude:setFillColor( 0, 0, 0, 0.4)
temp=0.25
elseif(temp==0.25)then
prelude:setFillColor( 0, 0, 0, 0.5)
temp = 0.3
elseif(temp==0.3)then
prelude:setFillColor( 0, 0, 0, 0.6)
temp=0.35
elseif(temp==0.35)then
prelude:setFillColor( 0, 0, 0, 0.7)
temp=0.4
elseif(temp==0.4)then
prelude:setFillColor( 0, 0, 0, 0.8)
temp=0.45
elseif(temp==0.45)then
prelude:setFillColor( 0, 0, 0, 0.9)
temp=0.5
elseif(temp==0.5)then
prelude:setFillColor( 0, 0, 0, 1)
temp=0.55
elseif(temp==0.55)then
prelude:setFillColor( 0, 0, 0, 0.9)
temp=0.6
elseif(temp==0.6)then
prelude:setFillColor( 0, 0, 0, 0.8)
temp=0.65
elseif(temp==0.65)then
prelude:setFillColor( 0, 0, 0, 0.7)
temp=0.7
elseif(temp==0.7)then
prelude:setFillColor( 0, 0, 0, 0.6)
temp=0.75
elseif(temp==0.75)then
prelude:setFillColor( 0, 0, 0, 0.5)
temp=0.8
elseif(temp==0.8)then
prelude:setFillColor( 0, 0, 0, 0.4)
temp=0.85
elseif(temp==0.85)then
prelude:setFillColor( 0, 0, 0, 0.3)
temp=0.9
elseif(temp==0.9)then
prelude:setFillColor( 0, 0, 0, 0.2)
temp=0

elseif(temp==1)then
audio.stop(2)
prelude:removeSelf()
backgroundimage:removeSelf()
preludeSkipBu:removeSelf()
audio.dispose(preludeMusic)
timer.cancel(preludetimer)
composer.removeScene("prelude")

		composer.gotoScene("home",{effect="fade",time=1000})
		temp=11

end
end
preludetimer = timer.performWithDelay(100,preludeFunction,0)
return scene