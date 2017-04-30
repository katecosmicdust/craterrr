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
		function QuestionFunction(event)
	case = math.random(10)
	
	if(case == 1) then
	question = "哪個區域是能安全戲水的？"
	answerA =  "A.港口"
	answerB =  "B.海水浴場"
	answerC =  "C.礁岩區"
	answerD =  "D.航道區"
	realanswer = 2
	end
	
	if(case == 2) then 
	question = "            不幸溺水時\n何者不是水上自救的方法？"
	answerA =  "A.水母漂"
	answerB =  "B.仰漂"
	answerC =  "C.踩水"
	answerD =  "D.游泳返回"
	realanswer = 4
	end
	
	if(case == 3) then
	question = "什麼時候適合去海邊游泳？"
	answerA =  "A.中午12點"
	answerB =  "B.晚間8點"
	answerC =  "C.飯後兩小時後"
	answerD =  "D.飯後一小時後"
	realanswer = 3
	end
	
	if(case == 4) then
	question = "哪個是正確的戲水認知？"
	answerA =  "A.穿牛仔褲到海邊玩"
	answerB =  "B.看見有人溺水\n  先救人就對了"
	answerC =  "C.下水前先做\n   暖身運動"
	answerD =  "D.  全台海域\n都可以下水游泳"
	realanswer = 3
	end
	
	if(case == 5) then
	question = "  海嘯來臨前\n可以怎麼預知？"
	answerA =  "A.遠方海面\n有白色浪花來襲"
	answerB =  "B.海水快速後退"
	answerC =  "C.氣象局海嘯預報"
	answerD =  "D.以上皆是"
	realanswer = 4
	end
	
	if(case == 6) then
	question = "下列何者是常見的\n    海灘危險因子？"
	answerA =  "A.比基尼辣妹"
	answerB =  "B.寄居蟹"
	answerC =  "C.漁民"
	answerD =  "D.裂流"
	realanswer = 4
	
	end
	if(case == 7) then
	question = "控制海灘安全的因素\n沒有以下何者？"
	answerA =  "A.水流"
	answerB =  "B.潮汐"
	answerC =  "C.沙灘區"
	answerD =  "D.以上皆是"
	realanswer = 3
	end
	
	if(case == 8) then
	question = "在哪個水域\n較容易發生意外？"
	answerA =  "A.深水區"
	answerB =  "B.淺水區"
	answerC =  "C.沙灘區"
	answerD =  "D.以上皆是"
	realanswer = 4
	end
	
	
	if(case == 9) then
	question = "瘋狗浪會發生在什麼時機？"
	answerA =  "A.隨時都有可能"
	answerB =  "B.風平浪靜時"
	answerC =  "C.漲退潮時"
	answerD =  "D.颱風天"
	realanswer = 1
	end
	
	if(case == 10) then
	question = "裂流的產生和哪個水流有關係？"
	answerA =  "A.洋流"
	answerB =  "B.離岸流"
	answerC =  "C.溫鹽環流"
	answerD =  "D.雙刀流"
	realanswer = 2
	
	end

	 Qtext = display.newText(question ,53*W/100,45*H/100,"LANENAR",60)
	sceneGroup:insert(Qtext)
		Qtext:setFillColor(0,0,0)
--	local aAtext = display.newText(answerA,	28*W/100,73.56*H/100,"LANENAR",45)
--			aAtext:setFillColor(0,0,0)
	 Abu = widget.newButton
{
	x = 28*W/100,
	y = 73.56*H/100,
	labelColor = { default = {0,0,0} , over = {1,1,1}},
	label = answerA,
	fontSize = "45",
	onRelease = function()
	if(realanswer == 1) then
	correct()
	else
	wrong()
	end
	end
}
sceneGroup:insert(Abu)
--Abu:setFillColor( 1, 1, 1, 0)

--	local aBtext = display.newText(answerB,	73*W/100,73.56*H/100,"LANENAR",45)
--			aBtext:setFillColor(0,0,0)
	 Bbu = widget.newButton
{
	x = 73*W/100,
	y = 73.56*H/100,
	labelColor = { default = {0,0,0} , over = {1,1,1}},
	label = answerB,
	fontSize = "45",
	onRelease = function()
	if(realanswer == 2) then
	correct()
	else
	wrong()
	end
	end
}
sceneGroup:insert(Bbu)
--Bbu:setFillColor( 1, 1, 1, 0)

--	local aCtext = display.newText(answerC,	28*W/100,87.12*H/100,"LANENAR",45)
--			aCtext:setFillColor(0,0,0)
	 Cbu = widget.newButton
{
	x = 28*W/100,
	y = 87.12*H/100,
	labelColor = { default = {0,0,0} , over = {1,1,1}},
	label = answerC,
	fontSize = "45",
	onRelease = function()
	if(realanswer == 3) then
	correct()
	else
	wrong()
	end
	end
}
sceneGroup:insert(Cbu)
--Cbu:setFillColor( 1, 1, 1, 0)

	--local aDtext = display.newText(answerD,	73*W/100,87.12*H/100,"LANENAR",45)
	--		aDtext:setFillColor(0,0,0)
	
	 Dbu = widget.newButton
{
	x = 73*W/100,
	y = 87.12*H/100,
	labelColor = { default = {0,0,0} , over = {1,1,1}},
	label = answerD,
	fontSize = "45",
	onRelease = function()
	if(realanswer == 4) then
	correct()
	else
	wrong()
	end
	end
}
sceneGroup:insert(Dbu)
--Dbu:setFillColor( 1, 1, 1, 0)
	
	end
	timer.performWithDelay(1,QuestionFunction,1)
	
	function correct()
	right_flag = 1
	local right = display.newImage("right.png",-1*W/2,2*H/3)
	function weeee(event)
	right.x = right.x + 110
	right.y = right.y - 45
	if(right.x > W/2 and right_flag == 1)then
	timer.pause(righttimer)
	right_flag = 0
		Rb = widget.newButton
{
	x = W/2,
	y = H/2,
	labelColor = { default = {0,0,0} , over = {1,1,1}},
	label = '  ',
	fontSize = "2000",
	onRelease = function()
	timer.resume(righttimer)
	
	Qtext:removeSelf()
	Abu:removeSelf()
	Bbu:removeSelf()
	Cbu:removeSelf()
	Dbu:removeSelf()
	--Qbg:removeSelf()
	Rb:setEnabled()
	local function delay()
	timer.cancel(righttimer)
	right:removeSelf()
	p = p + 1
	Point.text = p
	if (p == 5 )then
		Rb:removeSelf()
    screenFlag = 2   
	composer.gotoScene("home",{effect="fade",time=1000})
	QuestionFunction()
	p = 0
	Point.text = p
	--QKbu:setEnabled(true)
	else
		Rb:removeSelf()
	QuestionFunction()
	end
	end
	timer.performWithDelay(500,delay,1)
	end
	
}



	
	end
	
	end
	righttimer = timer.performWithDelay(0.1,weeee,0)
	end
	
	function wrong()
	
	local notright = display.newImage("hazure.png",50*W/100,80.34*H/100)
	local function delay()
	notright:removeSelf()
	end
	timer.performWithDelay(200,delay,1)
	
	end
	Qbg = display.newImage("QA_BGI.png",W/2,H/2)
	sceneGroup:insert(Qbg)
	p = 0
	Point = display.newText(p,50*W/100,58*H/100,"DEBONAIR", 70)
	sceneGroup:insert(Point)
	Point:setFillColor( 0, 0, 0 )
	Exit = widget.newButton
	{
	x = 50*W/100,
	y = 95*H/100,
	label = "   ",
	fontSize = 50,
	onRelease = function()
	composer.gotoScene("home",{effect="fade",time=1000})
	screenFlag = 2   
	p = 0
	Point.text = p
	end
	}
---------------------------------------------------------





---------------------------------------------------------------------------------------------------

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