-- Load Rayfield UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Load Modules
local AutoFarmCoin = require(script.modules.autofarmcoin)
local AutoFarmFish = require(script.modules.autofarmfish)
local AutoRoll = require(script.modules.autoroll)
local FastRoll = require(script.modules.fastroll)

-- Create Main Window
local Window = Rayfield:CreateWindow({
   Name = "🔥 SpaceXenosHub | PetGO 🐾",
   LoadingTitle = "🐾 PetGO Exploit Hub",
   LoadingSubtitle = "by SpaceXenosHub"
})

local MainTab = Window:CreateTab("🏠 Main Features", nil)

-- Auto Farm Coins
MainTab:CreateToggle({
    Name = "Auto Farm Coins 💰",
    CurrentValue = false,
    Flag = "AutoFarmCoins",
    Callback = function(Value)
        AutoFarmCoin:Toggle(Value)
    end,
})

-- Auto Farm Fish
MainTab:CreateToggle({
    Name = "Auto Farm Fish 🎣",
    CurrentValue = false,
    Flag = "AutoFarmFish",
    Callback = function(Value)
        AutoFarmFish:Toggle(Value)
    end,
})

-- Auto Roll
MainTab:CreateToggle({
    Name = "Auto Roll 🌀",
    CurrentValue = false,
    Flag = "AutoRoll",
    Callback = function(Value)
        AutoRoll:Toggle(Value)
    end,
})

-- Fast Roll
MainTab:CreateToggle({
    Name = "Fast Roll ⚡",
    CurrentValue = false,
    Flag = "FastRoll",
    Callback = function(Value)
        FastRoll:Toggle(Value)
    end,
})

-- Notification on Load
Rayfield:Notify({
   Title = "SpaceXenosHub Loaded ✅",
   Content = "All Features Ready!",
   Duration = 5,
   Image = 13047715178,
})
