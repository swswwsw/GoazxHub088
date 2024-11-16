
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Goazx Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest",
    IntroEnabled = true,
    IntroText = "Goazx Hub",
})

-- Speed Tab
local SpeedTab = Window:MakeTab({
    Name = "Speed",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

SpeedTab:AddButton({
    Name = "Toggle Speed",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        
        if humanoid.WalkSpeed == 16 then
            humanoid.WalkSpeed = 2500
        else
            humanoid.WalkSpeed = 16
        end
    end
})

-- Jump Tab
local JumpTab = Window:MakeTab({
    Name = "Jump",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

JumpTab:AddButton({
    Name = "Toggle Jump",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        
        if humanoid.JumpPower == 50 then
            humanoid.JumpPower = 200
        else
            humanoid.JumpPower = 50
        end
    end
})

-- Custom Speed Tab
local CustomSpeedTab = Window:MakeTab({
    Name = "ปรับ Speed",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

CustomSpeedTab:AddTextbox({
    Name = "Enter Speed",
    Default = "16",
    TextDisappear = true,
    Callback = function(value)
        local speed = tonumber(value)
        if speed then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.WalkSpeed = speed
        end
    end
})

-- Custom Jump Tab
local CustomJumpTab = Window:MakeTab({
    Name = "ปรับ Jump",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

CustomJumpTab:AddTextbox({
    Name = "Enter Jump Height",
    Default = "50",
    TextDisappear = true,
    Callback = function(value)
        local jumpPower = tonumber(value)
        if jumpPower then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.JumpPower = jumpPower
        end
    end
})

-- Reset Tab
local ResetTab = Window:MakeTab({
    Name = "รีเซ็ตค่าเริ่มต้น",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

ResetTab:AddButton({
    Name = "Reset to Default",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = 16
        humanoid.JumpPower = 50
    end
})

OrionLib:Init()
