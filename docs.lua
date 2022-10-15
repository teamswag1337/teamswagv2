--usage:

--window:
local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/teamswag1337/teamswagv2/main/uilibmodified.lua'))()
local window = lib:AddWindow({Title="test", Desc="hi"})

--making a button:
lib:AddButton(window, {Text="hi", Name="test", Function=function()
      print("Hi")      
end})
--making a toggle:
lib:AddToggle(window, {Text="toggle", Default=false, Function=function(val)
          print(val)
end})
--making a input:
lib:AddInput(window, {Text="lol", Placeholder="hi", Enter=false, Function=function(a)
          print(a)
end})
  
