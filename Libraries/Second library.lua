local SecondLib = {}

function SecondLib:AddScreenButton(size, position, color, test, test2, circletof, func)
local ScreenGui = Instance.new("ScreenGui")
local CircleMain = Instance.new("UICorner")
local Button = 
Instance.new("TextButton")

ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = test2

Button.Name = "Button"
Button.Parent = main
Button.BackgroundColor3 = color
Button.Position = position
Button.Size = size
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 40.000
Button.Draggable = test
Button.MouseButton1Down:connect(function()
	func()
end)

if circletof == true then
CircleMain.CornerRadius = UDim.new(0, 100)
CircleMain.Name = "CircleMain"
CircleMain.Parent = Button
end

end

return SecondLib
