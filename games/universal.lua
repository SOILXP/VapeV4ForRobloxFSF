local loadstring = function(...)
	local res, err = loadstring(...)
	if err and vape then
		vape:CreateNotification('Vape', 'Failed to load : '..err, 30, 'alert')
	end
	return res
end

local isfile = isfile or function(file)
	local suc, res = pcall(function()
		return readfile(file)
	end)
	return suc and res ~= nil and res ~= ''
end

local function downloadFile(path, func)
	if not isfile(path) then
		local suc, res = pcall(function()
			return game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/'..readfile('newvape/profiles/commit.txt')..'/'..select(1, path:gsub('newvape/', '')), true)
		end)
		if not suc or res == '404: Not Found' then error(res) end
		if path:find('.lua') then
			res = '--This watermark is used to delete the file if its cached, remove it to make the file persist after vape updates.\n'..res
		end
		writefile(path, res)
	end
	return (func or readfile)(path)
end

local run = function(func) func() end

local cloneref = cloneref or function(obj) return obj end
local playersService = cloneref(game:GetService('Players'))
local replicatedStorage = cloneref(game:GetService('ReplicatedStorage'))
local runService = cloneref(game:GetService('RunService'))
local inputService = cloneref(game:GetService('UserInputService'))
local tweenService = cloneref(game:GetService('TweenService'))
local lightingService = cloneref(game:GetService('Lighting'))
local marketplaceService = cloneref(game:GetService('MarketplaceService'))
local teleportService = cloneref(game:GetService('TeleportService'))
local httpService = cloneref(game:GetService('HttpService'))
local guiService = cloneref(game:GetService('GuiService'))
local groupService = cloneref(game:GetService('GroupService'))
local textChatService = cloneref(game:GetService('TextChatService'))
local contextService = cloneref(game:GetService('ContextActionService'))
local coreGui = cloneref(game:GetService('CoreGui'))

local isnetworkowner = identifyexecutor and table.find({'AWP', 'Nihon'}, ({identifyexecutor()})[1]) and isnetworkowner or function()
	return true
end

local gameCamera = workspace.CurrentCamera or workspace:FindFirstChildWhichIsA('Camera')
local lplr = playersService.LocalPlayer
local assetfunction = getcustomasset
local vape = shared.vape

vape:CreateNotification('Vape', 'Universal base loaded without modules.', 5, 'info')

run(function()
    vape.Categories.Utility:CreateModule({
        Name = "BecomeBombHead",
        Description = "fires the bbuybombhead remote once",
        Enabled = false,
        Default = false,
        Function = function(callback)
            if callback then
                local success, err = pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("buyBombHead"):InvokeServer()
                end)

                if not success then
                    vape.Notify("BuyBombHead Error", tostring(err), 5)
                end

                task.delay(0.1, function()
                    shared.vapeExecutor.UnToggle("BuyBombHead")
                end)
            end
        end
    })
end)

run(function()
    local connection

    vape.Categories.Blatant:CreateModule({
        Name = "AntiRagdoll",
        Description = "Spams Ragdoll 'off' while active",
        Enabled = false,
        Default = false,
        Function = function(state)
            if state then
                connection = task.spawn(function()
                    local args = { "off" }
                    while vape.Categories.Blatant:GetModule("RagdollSpam").Enabled do
                        pcall(function()
                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Ragdoll"):FireServer(unpack(args))
                        end)
                        task.wait(0.1) -- spam speed (adjust as needed)
                    end
                end)
            else
                if connection then
                    task.cancel(connection)
                    connection = nil
                end
            end
        end
    })
end)
