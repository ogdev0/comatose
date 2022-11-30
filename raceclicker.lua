-- https://v3rmillion.net/showthread.php?tid=1023761


getgenv().AutoFarm = false
getgenv().AutoTap = false
getgenv().AutoRebirths = false


function DoFarm()
    spawn (function()
        while getgenv().AutoFarm == true do
            --Script start
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos))
            wait(0.1)
            local CFrameEnd = CFrame.new(-649062, -8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- Place your coords in here
            local Time = 2 -- Time in seconds
            local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
            tween:Play()
            tween.Completed:Wait()
            --Script end
            wait(0)
        end
    end)
end
function DoTap()
    spawn (function()
        while getgenv().AutoTap == true do
            --Script start
            game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
            --Script end
            wait(0)
        end
    end)
end
function DoRebirth()
    spawn (function()
        while getgenv().AutoRebirths == true do
            --Script start
            game:GetService("ReplicatedStorage").Packages.Knit.Services.RebirthService.RF.Rebirth:InvokeServer()
            --Script end
            wait(0)
        end
    end)
end

loadstring(game:HttpGet("https://pastebin.com/raw/C2vZT38V"))()
local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()
local MainUI = UILibrary.Load("Comatose - Race Clicker")
local Main = MainUI.AddPage("Main")

local FirstLabel = Main.AddLabel(DiscordTag)
local FirstLabel = Main.AddLabel(Discord)



local FirstToggle = Main.AddToggle("AutoFarm", false, function(bool)
    getgenv().AutoFarm = bool
   if bool then 
    DoFarm();
    end
end)
local FirstToggle = Main.AddToggle("AutoClicker", false, function(bool)
    getgenv().AutoTap = bool
   if bool then 
    doTap();
    end
end)
local FirstToggle = Main.AddToggle("AutoRebirth", false, function(bool)
    getgenv().AutoRebirths = bool
   if bool then 
    DoRebirth();
    end
end)










