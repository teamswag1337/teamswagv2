--delete if any:
--update 15/10/2022 uis input
if game.CoreGui:FindFirstChild('uilib') then
  game.CoreGui.uilib:Destroy()
end
local player = game:GetService('Players').LocalPlayer
local gui = Instance.new('ScreenGui')
local self = {}
local ScreenGui = Instance.new('ScreenGui')
syn.protect_gui(ScreenGui)
ScreenGui.Name = "uilib"
ScreenGui.Parent = game:GetService('CoreGui')
local Window = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Inner = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local Input = Instance.new("TextBox")
local Button = Instance.new("TextButton")
local desc = Instance.new("TextLabel")
Window.Name = "Window"
Window.Parent = nil
Window.Active = true
Window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Window.BackgroundTransparency = 0.500
Window.BorderColor3 = Color3.fromRGB(0, 0, 255)
Window.BorderSizePixel = 5
Window.Position = UDim2.new(0.0554355644, 0, 0.0671067089, 0)
Window.Selectable = true
Window.Size = UDim2.new(0, 209, 0, 362)
Window.Draggable = true
Button.Name = "Button"
Button.Parent = nil
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Position = UDim2.new(0.00961538497, 0, 0, 0)
Button.Size = UDim2.new(0, 204, 0, 18)
Button.Font = Enum.Font.SciFi
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000
Button.TextWrapped = true
Toggle.Parent = nil
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.00961538497, 0, 0, 0)
Toggle.Size = UDim2.new(0, 204, 0, 18)
Toggle.Font = Enum.Font.SciFi
Toggle.Text = "Toggle <font color=\"rgb(255,0,0)\">OFF</font>"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextSize = 14.000
Toggle.TextWrapped = true
Toggle.RichText = true
Input.Name = "Input"
Input.Parent = nil
Input.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
Input.Position = UDim2.new(0.0192307699, 0, 0.0497237556, 0)
Input.Size = UDim2.new(0, 200, 0, 15)
Input.Font = Enum.Font.SciFi
Input.PlaceholderText = "Placeholder"
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 14.000
Input.TextWrapped = true
Input.TextXAlignment = Enum.TextXAlignment.Left
title.Name = "title"
title.Parent = Window
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BackgroundTransparency = 0.500
title.BorderColor3 = Color3.fromRGB(0, 0, 255)
title.BorderSizePixel = 5
title.Position = UDim2.new(-0.00453675212, 0, -0.127311826, 0)
title.Size = UDim2.new(0, 209, 0, 26)
title.Font = Enum.Font.Code
title.Text = "%s"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 21.000
title.TextWrapped = true
Inner.Name = "Inner"
Inner.Parent = Window
Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inner.BackgroundTransparency = 1.000
Inner.Size = UDim2.new(0, 208, 0, 362)
Toggle.Name = "Toggle"
UIListLayout.Parent = Inner
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0,1)
desc.Name = "desc"
desc.Parent = Window
desc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
desc.BackgroundTransparency = 0.500
desc.BorderColor3 = Color3.fromRGB(0, 0, 255)
desc.BorderSizePixel = 5
desc.Position = UDim2.new(-0.00453675212, 0, 1.0439589, 0)
desc.Size = UDim2.new(0, 209, 0, 26)
desc.Font = Enum.Font.Code
desc.Text = "%s"
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextScaled = true
desc.TextSize = 23.000
desc.TextWrapped = true


local PreviousWindow = nil

function self:AddWindow(Options: table)
    local WindowClone = Window:Clone()
    WindowClone.title.Text = Options.Title or "Title"
    WindowClone.desc.Text = Options.Desc or "No description."
    WindowClone.Parent = ScreenGui
    WindowClone.Name = Options.Title
    if PreviousWindow == nil then
      PreviousWindow = WindowClone
      WindowClone.Position = UDim2.new(WindowClone.Position.X.Scale + 0.15, WindowClone.Position.X.Offset, WindowClone.Position.Y.Scale, WindowClone.Position.Y.Offset)
    else
      WindowClone.Position = UDim2.new(PreviousWindow.Position.X.Scale + 0.15, PreviousWindow.Position.X.Offset, PreviousWindow.Position.Y.Scale, PreviousWindow.Position.Y.Offset)
      PreviousWindow = WindowClone
    end
    return WindowClone
end

function self:AddButton(Window, Options: table)
  local Text = Options.Text or "Button"
  local ButtonName = Options.ButtonName or "Button"
  local Function = Options.Function or function() print"You haven't given any function." end
  if Window then
      local ButtonClone = Button:Clone()
      ButtonClone.Name = ButtonName
      ButtonClone.Text = Text
      ButtonClone.MouseButton1Click:connect(function()
          if type(Function) == "function" then
              Function()
          else
              print("Given argument is not a function. Type: "..type(Function))
          end
      end)
      ButtonClone.Parent = Window.Inner
  end
end

function self:AddInput(Window, Options: table)
    local Text = Options.Text or ""
    local Placeholder = Options.Placeholder or "Placeholder"
    local EnterRequired = Options.Enter or false
    local Function = Options.Function

    if Window then
        local InputClone = Input:Clone()
        InputClone.PlaceholderText = Placeholder
        InputClone.Text = Text
        InputClone.Parent = Window.Inner
        InputClone.FocusLost:connect(function(enter)
            if EnterRequired then
              if enter == true then
                  Function(InputClone.Text)
              end
            else
                Function(InputClone.Text)
            end
        end)
    end
end

function self:AddToggle(Window, Options: table)
  local Text = Options.Text or "Toggle"
  local ToggleName = Options.ToggleName or "Toggle"
  local Function = Options.Function or function(val) print(val) end
  local Default = Options.Default or false
  if Window then
      local ToggleClone = Toggle:Clone()
      ToggleClone.Name = ToggleName
      ToggleClone.Text = Text.. " <font color=\"rgb(255,0,0)\">OFF</font>"
      if Default == true then
        ToggleClone.Text = Text.. " <font color=\"rgb(0,255,0)\">ON</font>"
      end
      local On = Default
      ToggleClone.MouseButton1Click:connect(function()
          On = not On
          if On == true then
            ToggleClone.Text = Text.. " <font color=\"rgb(0,255,0)\">ON</font>"
          elseif On == false then
            ToggleClone.Text = Text.. " <font color=\"rgb(255,0,0)\">OFF</font>"
          end
          Function(On)
      end)
      ToggleClone.Parent = Window.Inner
  end
end

game:GetService("UserInputService").InputBegan:connect(function(key, proc)
  if proc == false then
      if key.KeyCode == Enum.KeyCode.P then
        ScreenGui.Enabled = not ScreenGui.Enabled
      end
  end
end)

return self
