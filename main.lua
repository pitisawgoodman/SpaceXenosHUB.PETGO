-- สร้าง GUI หลัก
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SpaceXenosHub"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- สร้าง Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0

-- เพิ่ม UI Corner เพื่อความโค้งมน
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

-- สร้างหัวข้อ
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.Text = "SpaceXenosHub"
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- สร้างปุ่ม Auto Farm Coins
local AutoFarmCoinsButton = Instance.new("TextButton")
AutoFarmCoinsButton.Parent = MainFrame
AutoFarmCoinsButton.Size = UDim2.new(0.8, 0, 0, 30)
AutoFarmCoinsButton.Position = UDim2.new(0.1, 0, 0.2, 0)
AutoFarmCoinsButton.Text = "Auto Farm Coins"
AutoFarmCoinsButton.Font = Enum.Font.Gotham
AutoFarmCoinsButton.TextSize = 14
AutoFarmCoinsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmCoinsButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

-- เพิ่ม Callback ให้ปุ่ม Auto Farm Coins
local isAutoFarmCoinsEnabled = false
AutoFarmCoinsButton.MouseButton1Click:Connect(function()
    isAutoFarmCoinsEnabled = not isAutoFarmCoinsEnabled
    if isAutoFarmCoinsEnabled then
        AutoFarmCoinsButton.Text = "Stop Auto Farm Coins"
        print("Auto Farm Coins Enabled")
        -- เพิ่มโค้ด Auto Farm Coins ที่นี่
    else
        AutoFarmCoinsButton.Text = "Auto Farm Coins"
        print("Auto Farm Coins Disabled")
        -- หยุด Auto Farm Coins ที่นี่
    end
end)

-- สร้างปุ่ม Auto Farm Fish
local AutoFarmFishButton = AutoFarmCoinsButton:Clone()
AutoFarmFishButton.Parent = MainFrame
AutoFarmFishButton.Position = UDim2.new(0.1, 0, 0.35, 0)
AutoFarmFishButton.Text = "Auto Farm Fish"
AutoFarmFishButton.MouseButton1Click:Connect(function()
    print("Auto Farm Fish Triggered")
    -- เพิ่มโค้ด Auto Farm Fish ที่นี่
end)

-- สร้างปุ่ม Auto Roll
local AutoRollButton = AutoFarmCoinsButton:Clone()
AutoRollButton.Parent = MainFrame
AutoRollButton.Position = UDim2.new(0.1, 0, 0.5, 0)
AutoRollButton.Text = "Auto Roll"
AutoRollButton.MouseButton1Click:Connect(function()
    print("Auto Roll Triggered")
    -- เพิ่มโค้ด Auto Roll ที่นี่
end)

-- สร้างปุ่ม Fast Roll
local FastRollButton = AutoFarmCoinsButton:Clone()
FastRollButton.Parent = MainFrame
FastRollButton.Position = UDim2.new(0.1, 0, 0.65, 0)
FastRollButton.Text = "Fast Roll"
FastRollButton.MouseButton1Click:Connect(function()
    print("Fast Roll Triggered")
    -- เพิ่มโค้ด Fast Roll ที่นี่
end)
