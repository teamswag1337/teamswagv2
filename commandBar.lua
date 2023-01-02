

local commandBar = Instance.new("ScreenGui")
local title = Instance.new("Frame")
local example = Instance.new("TextButton")
local cmdBar = Instance.new("TextBox")
local whitelistTab = Instance.new("Frame")
local contentw = Instance.new("Frame")
local peoplew = Instance.new("ScrollingFrame")
local listw = Instance.new("UIListLayout")
local titlew = Instance.new("TextLabel")
local loopkillTab = Instance.new("Frame")
local content = Instance.new("Frame")
local people = Instance.new("ScrollingFrame")
local list = Instance.new("UIListLayout")
local title_2 = Instance.new("TextLabel")
local loopTaze = Instance.new("Frame")
local contentt = Instance.new("Frame")
local peoplet = Instance.new("ScrollingFrame")
local listt = Instance.new("UIListLayout")
local titlet = Instance.new("TextLabel")
commandBar.Name = "commandBar"
commandBar.Parent = game.CoreGui
commandBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
commandBar.ResetOnSpawn = false

title.Name = "title"
title.Parent = commandBar
title.Active = true
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.BorderColor3 = Color3.fromRGB(50, 50, 50)
title.Draggable = true
title.Position = UDim2.new(0.0396202207, 0, 0.781318724, 0)
title.Selectable = true
title.Size = UDim2.new(0, 302, 0, 14)

cmdBar.Name = "cmdBar"
cmdBar.Parent = title
cmdBar.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
cmdBar.BorderColor3 = Color3.fromRGB(40, 40, 40)
cmdBar.Position = UDim2.new(0, 0, 1, 0)
cmdBar.Size = UDim2.new(0, 302, 0, 50)
cmdBar.Font = Enum.Font.SourceSansLight
cmdBar.PlaceholderText = "Command"
cmdBar.Text = ""
cmdBar.TextColor3 = Color3.fromRGB(255, 255, 255)
cmdBar.TextSize = 22.000
cmdBar.TextWrapped = true

whitelistTab.Name = "whitelistTab"
whitelistTab.Parent = commandBar
whitelistTab.Active = true
whitelistTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
whitelistTab.BorderColor3 = Color3.fromRGB(50, 50, 50)
whitelistTab.Draggable = true
whitelistTab.Position = UDim2.new(0.039185822, 0, 0.374725282, 0)
whitelistTab.Selectable = true
whitelistTab.Size = UDim2.new(0, 302, 0, 21)
whitelistTab.Visible = false

contentw.Name = "contentw"
contentw.Parent = whitelistTab
contentw.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
contentw.BorderColor3 = Color3.fromRGB(40, 40, 40)
contentw.Position = UDim2.new(0, 0, 1, 0)
contentw.Size = UDim2.new(0, 302, 0, 316)

peoplew.Name = "peoplew"
peoplew.Parent = contentw
peoplew.Active = true
peoplew.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
peoplew.BackgroundTransparency = 1.000
peoplew.BorderSizePixel = 0
peoplew.Position = UDim2.new(0.0496688746, 0, 0.0664556995, 0)
peoplew.Size = UDim2.new(0, 276, 0, 264)
peoplew.BottomImage = "rbxassetid://158362221"
peoplew.MidImage = "rbxassetid://158362264"
peoplew.TopImage = "rbxassetid://158362307"

listw.Name = "listw"
listw.Parent = peoplew
listw.SortOrder = Enum.SortOrder.LayoutOrder
listw.Padding = UDim.new(0, 5)

example.Name = "example"
example.Parent = people
example.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
example.BackgroundTransparency = 1.000
example.BorderColor3 = Color3.fromRGB(27, 42, 53)
example.Size = UDim2.new(0, 259, 0, 21)
example.Visible = false
example.Font = Enum.Font.SourceSansLight
example.Text = "OnlyTwentyCharacters"
example.TextColor3 = Color3.fromRGB(255, 255, 255)
example.TextSize = 23.000
example.TextXAlignment = Enum.TextXAlignment.Left

titlew.Name = "titlew"
titlew.Parent = whitelistTab
titlew.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlew.BackgroundTransparency = 1.000
titlew.BorderColor3 = Color3.fromRGB(27, 42, 53)
titlew.Position = UDim2.new(0.0496688746, 0, 0, 0)
titlew.Size = UDim2.new(0, 59, 0, 21)
titlew.Font = Enum.Font.SourceSansLight
titlew.Text = "WL Tab"
titlew.TextColor3 = Color3.fromRGB(255, 255, 255)
titlew.TextSize = 14.000

loopkillTab.Name = "loopkillTab"
loopkillTab.Parent = commandBar
loopkillTab.Active = true
loopkillTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
loopkillTab.BorderColor3 = Color3.fromRGB(50, 50, 50)
loopkillTab.Draggable = true
loopkillTab.Position = UDim2.new(0.244321465, 0, 0.374725282, 0)
loopkillTab.Selectable = true
loopkillTab.Size = UDim2.new(0, 302, 0, 21)
loopkillTab.Visible = false

content.Name = "content"
content.Parent = loopkillTab
content.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
content.BorderColor3 = Color3.fromRGB(40, 40, 40)
content.Position = UDim2.new(0, 0, 1, 0)
content.Size = UDim2.new(0, 302, 0, 316)

people.Name = "people"
people.Parent = content
people.Active = true
people.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
people.BackgroundTransparency = 1.000
people.BorderSizePixel = 0
people.Position = UDim2.new(0.0496688746, 0, 0.0664556995, 0)
people.Size = UDim2.new(0, 276, 0, 264)
people.BottomImage = "rbxassetid://158362221"
people.MidImage = "rbxassetid://158362264"
people.TopImage = "rbxassetid://158362307"

list.Name = "list"
list.Parent = people
list.SortOrder = Enum.SortOrder.LayoutOrder
list.Padding = UDim.new(0, 5)

title_2.Name = "title"
title_2.Parent = loopkillTab
title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_2.BackgroundTransparency = 1.000
title_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
title_2.Position = UDim2.new(0.0496688746, 0, 0, 0)
title_2.Size = UDim2.new(0, 59, 0, 21)
title_2.Font = Enum.Font.SourceSansLight
title_2.Text = "LK Tab"
title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
title_2.TextSize = 14.000

loopTaze.Name = "looptazeTab"
loopTaze.Parent = commandBar
loopTaze.Active = true
loopTaze.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
loopTaze.BorderColor3 = Color3.fromRGB(50, 50, 50)
loopTaze.Draggable = true
loopTaze.Position = UDim2.new(0.448044121, 0, 0.373901099, 0)
loopTaze.Selectable = true
loopTaze.Size = UDim2.new(0, 302, 0, 21)
loopTaze.Visible = false

contentt.Name = "contentt"
contentt.Parent = loopTaze
contentt.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
contentt.BorderColor3 = Color3.fromRGB(40, 40, 40)
contentt.Position = UDim2.new(0, 0, 1, 0)
contentt.Size = UDim2.new(0, 302, 0, 316)

peoplet.Name = "peoplet"
peoplet.Parent = contentt
peoplet.Active = true
peoplet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
peoplet.BackgroundTransparency = 1.000
peoplet.BorderSizePixel = 0
peoplet.Position = UDim2.new(0.0496688746, 0, 0.0664556995, 0)
peoplet.Size = UDim2.new(0, 276, 0, 264)
peoplet.BottomImage = "rbxassetid://158362221"
peoplet.MidImage = "rbxassetid://158362264"
peoplet.TopImage = "rbxassetid://158362307"

listt.Name = "listt"
listt.Parent = peoplet
listt.SortOrder = Enum.SortOrder.LayoutOrder
listt.Padding = UDim.new(0, 5)

titlet.Name = "titlet"
titlet.Parent = loopTaze
titlet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
titlet.BackgroundTransparency = 1.000
titlet.BorderColor3 = Color3.fromRGB(27, 42, 53)
titlet.Position = UDim2.new(0.0496688746, 0, 0, 0)
titlet.Size = UDim2.new(0, 59, 0, 21)
titlet.Font = Enum.Font.SourceSansLight
titlet.Text = "LT Tab"
titlet.TextColor3 = Color3.fromRGB(255, 255, 255)
titlet.TextSize = 14.000
local t = {}

for i, v in pairs(commandBar:GetDescendants()) do
	t[v.Name] = v
end


example.Parent = nil

return t
