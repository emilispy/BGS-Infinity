game:GetService("StarterGui"):SetCore("SendNotification", {Title = "BGS Infinity", Text = "Loading script, please wait..", Icon = "rbxassetid://5107182114", Duration = 5})

local v126 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v127 = v126:CreateWindow({
    ["Title"] = "BGS Infinity | Release",
    ["SubTitle"] = "By @emilispy on discord",
    ["TabWidth"] = 588 - 428,
    ["Size"] = UDim2.fromOffset(580, 280 + 180),
    ["Acrylic"] = true,
    ["Theme"] = "Dark",
    ["MinimizeKey"] = Enum.KeyCode.LeftControl
})

local v128 = {
    ["Home"] = v127:AddTab({["Title"] = "Home", ["Icon"] = "rbxassetid://7733960981"}),
    ["Main"] = v127:AddTab({["Title"] = "Main", ["Icon"] = "rbxassetid://7733749837"}),
    ["Eggs"] = v127:AddTab({["Title"] = "Eggs", ["Icon"] = "rbxassetid://111252145412943"}), 
    ["Sell"] = v127:AddTab({["Title"] = "Sell", ["Icon"] = "rbxassetid://124695759365831"}),
    ["Teleport"] = v127:AddTab({["Title"] = "Teleport", ["Icon"] = "rbxassetid://92463114770964"}),
    ["Misc"] = v127:AddTab({["Title"] = "Misc", ["Icon"] = "rbxassetid://7733789088"}),
    ["Performance"] = v127:AddTab({["Title"] = "Performance", ["Icon"] = "rbxassetid://7733955511"}),
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
    ["Title"] = "Join our discord",
    ["Description"] = "Click on this button to copy the invite link!",
    ["Callback"] = function() end
})
v128.Home:AddParagraph({
    ["Title"] = "Script Version",
    ["Content"] = "1.0.0"
})
v128.Home:AddParagraph({
    ["Title"] = "Supported Game Version",
    ["Content"] = "v0.0a"
})


v128.Main:AddToggle("AutoBlowToggle", {
    ["Title"] = "Auto Blow",
    ["Description"] = "Automatically blows bubbles for you.",
    ["Default"] = false,
    ["Callback"] = function(state)
       
    end
})

v128.Main:AddToggle("AutoPickupToggle", {
    ["Title"] = "Auto Pickup",
    ["Description"] = "Automatically picks up Coins, Gems, etc.",
    ["Default"] = false,
    ["Callback"] = function(state)
        
    end
})

v128.Main:AddToggle("AutoLevels", {
    ["Title"] = "Auto Levels",
    ["Description"] = "Automatically levels up for you.",
    ["Default"] = false,
    ["Callback"] = function(state)
        -- Insert auto upgrade functionality here
    end
})

v128.Main:AddButton({
    ["Title"] = "Redeem Codes",
    ["Description"] = "Redeems all codes instantly.",
    ["Callback"] = function()
        -- Insert code to instantly redeem all codes here
    end
})

v128.Main:AddButton({
    ["Title"] = "Unlock All",
    ["Description"] = "Unlocks all islands for you.",
    ["Callback"] = function()
        -- Insert code to unlock all islands here
    end
})
--------------------------------------------------
-- Eggs Tab: Egg Hatching Features
--------------------------------------------------
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

--------------------------------------------------
-- Sell Tab: Auto Sell Features
--------------------------------------------------
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

v128.Misc:AddButton({
    ["Title"] = "GFX Mode",
    ["Description"] = "Removes lag after time.",
    ["Callback"] = function()
        -- Insert code to unlock all islands here
    end
})

v128.Misc:AddButton({
    ["Title"] = "Hide Events",
    ["Description"] = "Hides event labels.",
    ["Callback"] = function()
        -- Insert code to unlock all islands here
    end
})

v128.Misc:AddToggle("FreezeToggle", {
    ["Title"] = "Freeze",
    ["Description"] = "Freeze your player in place.",
    ["Default"] = false,
    ["Callback"] = function(state) end
})

v128.Misc:AddButton({
    ["Title"] = "Anti AFK", 
    ["Description"] = "Prevents AFK kick for uninterrupted farming.", 
    ["Callback"] = function() end
})
