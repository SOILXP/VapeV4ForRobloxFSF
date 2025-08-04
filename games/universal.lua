local run = function(func)
	func()
end
local cloneref = cloneref or function(obj)
	return obj
end
local vapeEvents = setmetatable({}, {
	__index = function(self, index)
		self[index] = Instance.new('BindableEvent')
		return self[index]
	end
})

" + `local playersService = cloneref(game:GetService('Players'))
local replicatedStorage = cloneref(game:GetService('ReplicatedStorage'))
local runService = cloneref(game:GetService('RunService'))
local inputService = cloneref(game:GetService('UserInputService'))
local tweenService = cloneref(game:GetService('TweenService'))
local httpService = cloneref(game:GetService('HttpService'))
local textChatService = cloneref(game:GetService('TextChatService'))
local collectionService = cloneref(game:GetService('CollectionService'))
local contextActionService = cloneref(game:GetService('ContextActionService'))
local guiService = cloneref(game:GetService('GuiService'))
local coreGui = cloneref(game:GetService('CoreGui'))
local starterGui = cloneref(game:GetService('StarterGui'))

local isnetworkowner = identifyexecutor and table.find({'AWP', 'Nihon'}, ({identifyexecutor()})[1]) and isnetworkowner or function()
	return true
end
local gameCamera = workspace.CurrentCamera
local lplr = playersService.LocalPlayer
local assetfunction = getcustomasset

local vape = shared.vape
local entitylib = vape.Libraries.entity
local targetinfo = vape.Libraries.targetinfo
local sessioninfo = vape.Libraries.sessioninfo
local uipallet = vape.Libraries.uipallet
local tween = vape.Libraries.tween
local color = vape.Libraries.color
local whitelist = vape.Libraries.whitelist
local prediction = vape.Libraries.prediction
local getfontsize = vape.Libraries.getfontsize
local getcustomasset = vape.Libraries.getcustomasset

run(function()
    local Module = vape.Categories.Utility:CreateModule({
        Name = "AlwaysPerfect",
        Description = "always perfect pan farm lel",
        Toggle = function(callback)
            if callback then
                local running = true
                Module.Connections["Loop"] = game:GetService("RunService").RenderStepped:Connect(function()
                    if not running then return end
                    local plr = game:GetService("Players").LocalPlayer
                    local tool = plr.Character and plr.Character:FindFirstChild("Plastic Pan")
                    if tool then
                        local scripts = tool:FindFirstChild("Scripts")
                        if scripts then
                            local remote = scripts:FindFirstChild("Collect")
                            if remote and typeof(remote) == "BindableFunction" or typeof(remote) == "RemoteFunction" then
                                pcall(function()
                                    remote:InvokeServer(1)
                                end)
                            end
                        end
                    end
                end)
            else
                if Module.Connections["Loop"] then
                    Module.Connections["Loop"]:Disconnect()
                    Module.Connections["Loop"] = nil
                end
            end
        end
    })
end)
