game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BGS Infinity", Text = "Loading script, please wait..", Duration = 5})

local v126 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v127 = v126:CreateWindow({
    ["Title"] = "BGS Infinity",
    ["SubTitle"] = "1.0.0",
    ["TabWidth"] = 588 - 428,
    ["Size"] = UDim2.fromOffset(580, 280 + 180),
    ["Acrylic"] = true,
    ["Theme"] = "Dark",
    ["MinimizeKey"] = Enum.KeyCode.LeftControl
})

local v128 = {
    ["Home"] = v127:AddTab({["Title"] = "Home", ["Icon"] = "rbxassetid://7733960981"}),
    ["AutoFarm"] = v127:AddTab({["Title"] = "Auto Farm", ["Icon"] = "rbxassetid://94890807905992"}),
    ["Eggs"] = v127:AddTab({["Title"] = "Eggs", ["Icon"] = "rbxassetid://111252145412943"}), 
    ["Race"] = v127:AddTab({["Title"] = "Race", ["Icon"] = "rbxassetid://112318332168449"}), 
    ["Sell"] = v127:AddTab({["Title"] = "Sell", ["Icon"] = "rbxassetid://117261545997503"}),
    ["Teleport"] = v127:AddTab({["Title"] = "Teleport", ["Icon"] = "rbxassetid://101935059230281"}),
    ["Misc"] = v127:AddTab({["Title"] = "Misc", ["Icon"] = "rbxassetid://7733789088"}),
    ["LP"] = v127:AddTab({["Title"] = "LocalPlayer", ["Icon"] = "rbxassetid://130807059017012"}),
    ["Settings"] = v127:AddTab({["Title"] = "Settings", ["Icon"] = "settings"})
}

local v129 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local v130 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
v129:SetLibrary(v126)
v130:SetLibrary(v126)
v130:BuildInterfaceSection(v128.Settings)
v129:BuildConfigSection(v128.Settings)
v127:SelectTab(1)

v128.Home:AddButton({
    ["Title"] = "Bugs or questions?",
    ["Description"] = "Dm @emilispy for help or information.",
    ["Callback"] = function() end
})
v128.Home:AddParagraph({
    ["Title"] = "Supported Game Version",
    ["Content"] = "v0.0a"
})


v128.Main:AutoFarm("AutoBlowToggle", {
    ["Title"] = "Auto Blow",
    ["Description"] = "Automatically blows bubbles for you.",
    ["Default"] = false,
    ["Callback"] = function(state)
       
    end
})

v128.AutoFarm:AddToggle("AutoPickupToggle", {
    ["Title"] = "Auto Pickup",
    ["Description"] = "Automatically picks up Coins, Gems, etc.",
    ["Default"] = false,
    ["Callback"] = function(state)
        
    end
})

v128.AutoFarm:AddToggle("AutoLevels", {
    Title = "Auto Levels",
    Description = "Automatically levels up for you.",
    Default = false,
    Callback = function(state)
        -- Insert auto level upgrade functionality here
    end
})


v128.Main:AddButton({
    ["Title"] = "Unlock All",
    ["Description"] = "Unlocks all islands for you.",
    ["Callback"] = function()
        -- Insert code to unlock all islands here
    end
})

v128.Eggs:AddToggle("AutoHatchToggle", {
    ["Title"] = "Auto Hatch",
    ["Description"] = "Automatically hatches eggs for you.",
    ["Default"] = false,
    ["Callback"] = function(state)
        -- Insert auto hatch functionality here
    end
})

v128.Eggs:AddToggle("AutoSkipToggle", {
    ["Title"] = "Auto Skip",
    ["Description"] = "Automatically skips eggs when you hatch.",
    ["Default"] = false,
    ["Callback"] = function(state)
        -- Insert auto skip functionality here
    end
})

v128.Eggs:AddDropdown("SelectEggDropdown", {
    ["Title"] = "Select Egg",
    ["Description"] = "Select an egg to auto hatch.",
    ["Values"] = {"Common Egg", "Sparkle Egg"},
    ["Default"] = "Common Egg",
    ["Callback"] = function(value)
        -- Handle egg selection here
    end
})

v128.Eggs:AddDropdown("HatchTypeDropdown", {
    ["Title"] = "Hatch Type",
    ["Description"] = "Select a way to auto hatch.",
    ["Values"] = {"Single", "Multi"},
    ["Default"] = "Single",
    ["Callback"] = function(value)
        -- Handle hatch type selection here
    end
})

v128.Sell:AddToggle("AutoSellToggle", {
    ["Title"] = "Auto Sell",
    ["Description"] = "Automatically sells your bubbles.",
    ["Default"] = false,
    ["Callback"] = function(state)
        -- Insert auto sell functionality here
    end
})

v128.Sell:AddDropdown("SellTypeDropdown", {
    ["Title"] = "Sell Type",
    ["Description"] = "Select how to sell your bubbles.",
    ["Values"] = {"Coins", "Gems"},
    ["Default"] = "Coins",
    ["Callback"] = function(value)
        -- Handle sell type selection here
    end
})

v128.Misc:AddToggle("AntiStaff", {
    ["Title"] = "Anti Staff",
    ["Description"] = "Kicks you when a Mod/Dev/Staff joins your game (avoid bans)",
    ["Default"] = false,
    ["Callback"] = function(state) end
})

v128.Misc:AddToggle("AntiAFK", {
    ["Title"] = "Anti AFK",
    ["Description"] = "Prevents you from disconnecting every 20 minutes.",
    ["Default"] = false,
    ["Callback"] = function(state) end
})

v128.Misc:AddButton({
    Title = "GFX Mode",
    Description = "Removes lag after time.",
    Callback = function()
        -- Insert GFX mode functionality here
    end
})

v128.Misc:AddButton({
    Title = "Hide Events",
    Description = "Hides event labels.",
    Callback = function()
        -- Insert code to hide events here
    end
})

v128.Race:AddToggle("RaceToggle", {
    Title = "Auto Race",
    Description = "Automatically wins the races.",
    Default = false,
    Callback = function(state)
        -- Insert auto race functionality here
    end
})

v128.LP:AddSlider("SpeedSlider", {
    Title = "Walk Speed",
    Description = "Increase Walk Speed",
    Default = 16,
    Min = 16,
    Max = 500,
    Rounding = 1,
    Callback = function(newSpeed)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = newSpeed
    end
})

v128.Misc:AddButton({
    ["Title"] = "Redeem Codes",
    ["Description"] = "Redeems all codes instantly.",
    ["Callback"] = function()
        -- Insert code to instantly redeem all codes here
    end
})

v128.Misc:AddButton({
    ["Title"] = "Unlock All",
    ["Description"] = "Unlocks all islands for you.",
    ["Callback"] = function()
        -- Insert code to unlock all islands here
    end
})
