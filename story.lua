-----------------------------------------------------------------------------------------
--
-- story
--
-----------------------------------------------------------------------------------------
local composer = require( "composer" )
local scene = composer.newScene()
print("story innovated")
--------------------------------------------------------------------------------
---------------------------------create
--------------------------------------------------------------------------------
function scene:create(event)
	local sceneGroup = self.view

--------------------------------------------------------------------------------
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

	if phase == "will" then
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
