local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Project Cry",
	Content = "Executed Successfully!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Window = OrionLib:MakeWindow({Name = "Project Cry", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})

--Player Tab--

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://10686489468",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player"
})


PlayerSection:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 400,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerSection:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 400,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jumppower",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

--Player Tab End--

--Teleport Tab--

local TeleportationTab = Window:MakeTab({
	Name = "Teleportation",
	Icon = "rbxassetid://12941020168",
	PremiumOnly = false
})

local TeleportationPlayerSection = TeleportationTab:AddSection({
	Name = "Teleport - Player"
})

local TPtarget = "None"

TeleportationPlayerSection:AddTextbox({
	Name = "Player",
	TextDisappear = true,
	Callback = function(Value)
        OrionLib:MakeNotification({
            Name = "Teleport",
            Content = "Target set to: " .. Value,
            Image = "rbxassetid://12941020168",
            Time = 3
        })
        TPtarget = "" .. Value
	end	  
})

TeleportationPlayerSection:AddButton({
	Name = "Teleport",
	Callback = function()
        if game.Players:FindFirstChild(TPtarget) then
            OrionLib:MakeNotification({
                Name = "Teleport",
                Content = "Teleported to: " .. TPtarget,
                Image = "rbxassetid://12941020168",
                Time = 4
            })
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(TPtarget).Character.HumanoidRootPart.CFrame
        else 
            OrionLib:MakeNotification({
                Name = "Teleport",
                Content = "Invalid target",
                Image = "rbxassetid://12941020168",
                Time = 4
            })
        end
  	end    
})

-- Tp loc

local TeleportationLocSection = TeleportationTab:AddSection({
	Name = "Teleport - Location"
})

local TPloc = CFrame.new(0, 0, 0)

TeleportationLocSection:AddTextbox({
	Name = "Location (0, 0, 0)",
	TextDisappear = true,
	Callback = function(Value)
        OrionLib:MakeNotification({
            Name = "Teleport",
            Content = "Target set to: " .. tostring(Value),
            Image = "rbxassetid://12941020168",
            Time = 3
        })

        TPloc = CFrame.new(table.unpack(Value:gsub(" ",""):split(",")))
	end	  
})

TeleportationLocSection:AddButton({
	Name = "Copy Location",
	Callback = function()
        local loc = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local x = math.floor(loc.X)
        local y = math.floor(loc.Y)
        local z = math.floor(loc.Z)
        local pos = x .. ", " .. y .. ", " .. z
        setclipboard(tostring(pos))
        OrionLib:MakeNotification({
            Name = "Teleport",
            Content = "Location: " .. tostring(pos),
            Image = "rbxassetid://12941020168",
            Time = 4
        })
  	end    
})

TeleportationLocSection:AddButton({
	Name = "Teleport",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TPloc
        local x = math.floor(TPloc.X)
        local y = math.floor(TPloc.Y)
        local z = math.floor(TPloc.Z)
        local pos = x .. ", " .. y .. ", " .. z
        OrionLib:MakeNotification({
            Name = "Teleport",
            Content = "Teleported to: " .. tostring(pos),
            Image = "rbxassetid://12941020168",
            Time = 4
        })
  	end    
})

--Teleport Tab End--

--Car Dealership Tycoon--

local CardealerTab = Window:MakeTab({
    Name = "Car Dealership",
	Icon = "rbxassetid://15351598320",
	PremiumOnly = false
})

local CardealerInfoSection = CardealerTab:AddSection({
    Name = "Info"
})

CardealerInfoSection:AddParagraph("🔎 BARN FIND! Car Dealership Tycoon","Access: Paid Only\nUpdated: 18/08/24")

local CardealerFarmSection = CardealerTab:AddSection({
    Name = "Auto Farm"
})

CardealerFarmSection:AddDropdown({
	Name = "Method",
	Default = "Map",
	Options = {"Map", "Race"},
	Callback = function(Value)
		print(Value)
	end    
})

CardealerFarmSection:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--Car Dealership Tycoon End--

--Script Hub--

local ScriptHubTab = Window:MakeTab({
	Name = "Script Hub",
	Icon = "rbxassetid://16781770844",
	PremiumOnly = false
})

local ScriptHubSection = ScriptHubTab:AddSection({
	Name = "Scripts - Developer"
})

ScriptHubSection:AddDropdown({
	Name = "Method",
	Options = {"Infinite Yield FE", "Dex Explorer"},
	Callback = function(Value)
        OrionLib:MakeNotification({
            Name = "Script Hub",
            Content = "Loaded Script: " .. Value,
            Image = "rbxassetid://12941020168",
            Time = 4
        })

        if Value == "Infinite Yield FE" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
	end    
})

--Script Hub End--

--Settings Tab--

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://6774409960",
	PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
	Name = "Settings"
})

SettingsSection:AddParagraph("System","Version: b1.0\nSubscription: DEV - PAID")

SettingsSection:AddParagraph("Contributers","soutt9 (Lead Dev)")

SettingsSection:AddButton({
	Name = "Discord",
	Callback = function()
        setclipboard("https://discord.gg/y6YJuejf9N")
        OrionLib:MakeNotification({
            Name = "Discord",
            Content = "Copied to clipboard",
            Image = "rbxassetid://14996947290",
            Time = 4
        })
  	end    
})

SettingsSection:AddButton({
	Name = "Uninject",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

--Settings End--

--Key System--

local KeyTab = Window:MakeTab({
    Name = "Key System",
	Icon = "rbxassetid://14565902150",
	PremiumOnly = false
})

local KeySection = KeyTab:AddSection({
    Name = "Key System"
})

KeySection:AddLabel("Key already entered!")

KeySection:AddTextbox({
	Name = "Key",
	TextDisappear = true,
	Callback = function(Value)
        OrionLib:MakeNotification({
            Name = "Key System",
            Content = "Key already entered!",
            Image = "rbxassetid://14565902150",
            Time = 3
        })
	end	  
})

--Key System End--

OrionLib:Init() --UI Lib End
