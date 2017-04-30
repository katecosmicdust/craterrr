-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
W = display.contentWidth
H = display.contentHeight
Load = display.newText("Loading.....",W/2,H/2,native.systemFont,40)
widget = require "widget"
local function Delay(event)

------------------------------save load-------------------------------------------------
local json = require("json")
function saveTable(myTable, filename)
    local path = system.pathForFile( filename, system.DocumentsDirectory)
    local file = io.open(path, "w")
    if file then
        local sTable = json.encode(myTable)--encode the table to string
        file:write( sTable )
        io.close( file )
        return true
    else
        return false
    end
end
 
function loadTable(filename)
    local path = system.pathForFile( filename, system.DocumentsDirectory)
    local contents = ""
    local myTable = {}
    local file = io.open( path, "r" )
    if file then        
         local sTable = file:read( "*a" )-- read the entire contents of the file
         myTable = json.decode(sTable)--decode the string back to table
         io.close( file )
         file = nil
         return myTable 
    end
    return nil
end
----------------------------------------------------------------------------------
-----------------------------table-----------------------------------------------
-----table.print------
table.print = function( t )  
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val)=="string") then
                        print(indent.."["..pos..'] => "'..val..'"')
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    if (type(t)=="table") then
        print(tostring(t).." {")
        sub_print_r(t,"  ")
        print("}")
    else
        sub_print_r(t,"  ")
    end
    print()
end


---table.push------
table.push = function(t,element)
table.insert(t,element)
end

---table.pop-------
table.pop = function(t)
return table.remove(t)
end

---table.unshift-----
table.unshift = function(t,element)
table.insert(t,1,element)
end

---table.shift-----
table.shift = function(t,element)
return table.remove(t,1,element)
end

---table.reverse----
table.reverse = function(t)
local _t = {}
while(#t > 0 )do
table.insert(temp_t,table.remove(t))
end
for k , v in pairs(temp_t)do
t[k] = v
end
temp_t = nil
end
----------------------------------getlevel--------------------------------------
getlevel = function(t,element)
local temp = table.remove(t,element)
table.insert(t,element,temp)
return temp
end
---------------------------------levelup----------------------------------------------
levelup = function(t,element)
flag = table.remove(t,element)
if(flag < 5) then
print(flag)
flag = flag + 1 
end
	table.insert(t,element,flag)
return flag
end
---------------------------------Time_Stop---------------------------------------

Time_Stop = function()
	timeStopRect = display.newRect(W/2,H/2,W,H)
	timeStopRect:setFillColor(0.1,0.1,0.1,0.95)
 VeryBigButton = widget.newButton
	{	
		x = W/2,
		y = H/2,
		labelColor = { default = {1,1,1} , over = {0,0,0}},
		label = " ",
		fontSize = "2500",
		onRelease = function()
		if(StopFlag == 1) then
		VeryBigButton:removeSelf()
		timeStopRect:removeSelf()
		end
		end
		}
		StopFlag = 0
VeryBigButton:setFillColor( 1, 1, 1, 0)
	end	

    
		
	
		
-----------------------------------------------------------------
-----------------------------------------------------------------

Mysave = loadTable("save.json")
if(Mysave == nil) then
Mysave = {}   
end

--------------------------

math.randomseed(os.time())



local autosave
function saveTimer(event)
--mysave.XX = XX
table.print(Mysave)
saveTable(Mysave,"save.json")
end
autosave = timer.performWithDelay(1000,saveTimer,0) 

local composer = require("composer")
composer.gotoScene("prelude")

end
timer.performWithDelay(1000,Delay,1) 