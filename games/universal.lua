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

--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

bit32 = {};
local N = 127 - 95;
local P = (954 - (802 + 150)) ^ N;
bit32.bnot = function(x)
	x = x % P;
	return (P - (2 - 1)) - x;
end;
bit32.band = function(x, y)
	if ((y == 255) or (4593 <= 2672)) then
		return x % (800 - 544);
	end
	if ((y == (187549 - 122014)) or (1168 > 3156)) then
		return x % (126505 - 60969);
	end
	if (y ~= (4294967295 - 0)) then
	else
		return x % (4294967296 - 0);
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 2 - 1;
	for i = 620 - (555 + 64), N do
		local a, b = x % (933 - (857 + 74)), y % 2;
		x, y = math.floor(x / (570 - (367 + 201))), math.floor(y / (929 - (214 + 713)));
		if ((a + b) ~= (1 + 1)) then
		else
			r = r + p;
		end
		p = (1 + 1) * p;
	end
	return r;
end;
bit32.bor = function(x, y)
	if ((y == (45 + 210)) or (572 > 4486)) then
		return (x - (x % (454 - 198))) + 255;
	end
	if (y ~= (65011 + 524)) then
	else
		return (x - (x % (66327 - (368 + 423)))) + 65535;
	end
	if (y == (6067416176 - 1772448881)) then
		return 4294968202 - (821 + 86);
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 878 - (282 + 595), N do
		local a, b = x % (1639 - (1523 + 114)), y % (1885 - (1668 + 215));
		x, y = math.floor(x / (2 + 0)), math.floor(y / (6 - 4));
		if ((1404 == 1404) and ((a + b) >= 1)) then
			r = r + p;
		end
		p = (2 - 0) * p;
	end
	return r;
end;
bit32.bxor = function(x, y)
	x, y = x % P, y % P;
	local r = 1065 - (68 + 997);
	local p = 519 - (114 + 404);
	for i = 1271 - (226 + 1044), N do
		local a, b = x % (8 - 6), y % (4 - 2);
		x, y = math.floor(x / 2), math.floor(y / (119 - (32 + 85)));
		if (((a + b) == (1 + 0)) or (3748 < 2212)) then
			r = r + p;
		end
		p = (1 + 1) * p;
	end
	return r;
end;
bit32.lshift = function(x, s_amount)
	if ((math.abs(s_amount) >= N) or (1180 == 2180)) then
		return 0;
	end
	x = x % P;
	if ((4090 < 4653) and (s_amount < 0)) then
		return math.floor(x * ((959 - (892 + 65)) ^ s_amount));
	else
		return (x * ((4 - 2) ^ s_amount)) % P;
	end
end;
bit32.rshift = function(x, s_amount)
	if ((math.abs(s_amount) >= N) or (2652 < 196)) then
		return 0;
	end
	x = x % P;
	if ((4135 < 4817) and (s_amount > (0 - 0))) then
		return math.floor(x * ((2 + 0) ^ -s_amount));
	else
		return (x * ((7 - 5) ^ -s_amount)) % P;
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) < N) then
	else
		return 0 - 0;
	end
	x = x % P;
	if (s_amount > (859 - (814 + 45))) then
		local add = 0;
		if ((272 == 272) and (x >= (P / (4 - 2)))) then
			add = P - ((1 + 1) ^ (N - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + add;
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
local TABLE_TableIndirection = {};
TABLE_TableIndirection["obf_bitlib%0"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%0"] = TABLE_TableIndirection["obf_bitlib%0"].bxor;
TABLE_TableIndirection["obf_OR%0"] = TABLE_TableIndirection["obf_bitlib%0"].bor;
TABLE_TableIndirection["obf_AND%0"] = TABLE_TableIndirection["obf_bitlib%0"].band;
TABLE_TableIndirection["obf_stringchar%0"] = string.char;
TABLE_TableIndirection["obf_stringbyte%0"] = string.byte;
TABLE_TableIndirection["obf_stringsub%0"] = string.sub;
TABLE_TableIndirection["obf_bitlib%1"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%1"] = TABLE_TableIndirection["obf_bitlib%1"].bxor;
TABLE_TableIndirection["obf_tableconcat%0"] = table.concat;
TABLE_TableIndirection["obf_tableinsert%0"] = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	TABLE_TableIndirection["result%0"] = {};
	_G.Cs = {UQSDDAA=(2 + 1),YASDMRXA=(886 - (261 + 624)),YASa0AVV=(3 - 1)};
	for i = 1081 - (1020 + 60), #LUAOBFUSACTOR_STR do
		TABLE_TableIndirection["obf_tableinsert%0"](TABLE_TableIndirection["result%0"], TABLE_TableIndirection["obf_stringchar%0"](TABLE_TableIndirection["obf_XOR%1"](TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_STR, i, TABLE_TableIndirection["obf_AND%0"](i + #Cs, 1 - 0) + TABLE_TableIndirection["obf_OR%0"](i + #Cs, 1))), TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_KEY, TABLE_TableIndirection["obf_AND%0"](351 - (87 + 263), i % #LUAOBFUSACTOR_KEY) + TABLE_TableIndirection["obf_OR%0"](3 - 2, i % #LUAOBFUSACTOR_KEY), TABLE_TableIndirection["obf_AND%0"]((181 - (67 + 113)) + (i % #LUAOBFUSACTOR_KEY), 1 + 0) + TABLE_TableIndirection["obf_OR%0"](1 + 0 + (i % #LUAOBFUSACTOR_KEY), 3 - 2)))) % (2003 - (760 + 987))));
	end
	return TABLE_TableIndirection["obf_tableconcat%0"](TABLE_TableIndirection["result%0"]);
end
run(function()
	vape.Categories.Utility:CreateModule({[LUAOBFUSACTOR_DECRYPT_STR_0("\255\194\214\32", "\126\177\163\187\69\134\219\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\223\43\214\244\7\194\36\196\232\42\194\36", "\156\67\173\74\165"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\184\70\26\168\47\86", "\38\84\215\41\118\220\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\31\48\23\237\16\18\45\28\255\68\31\45\28\190\71\31\54\26\190\88\31\37\26\190\70\23\46\7\251\16\25\44\17\251", "\158\48\118\66\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\42\21\5\123\170\239", "\155\203\68\112\86\19\197")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\96\200\56\255\84\113\234\246", "\152\38\189\86\156\32\24\133")]=function()
		local success, err = pcall(function()
			TABLE_TableIndirection["remote%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\206\82\183\74\245\84\166\82\249\83\148\82\243\69\166\65\249", "\38\156\55\199")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\120\113\39\7\113\233", "\35\200\29\28\72\115\20\154")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\61\176\223\222\153\37\59\23", "\84\121\223\177\191\237\76"));
			TABLE_TableIndirection["remote%0"]:FireServer(10000871346375 - 871518407);
		end);
		if ((100 <= 3123) and not success and vape) then
			vape:CreateNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\152\68\200\179\50\116\63\207\186\66\192\175\52", "\161\219\54\169\192\90\48\80"), LUAOBFUSACTOR_DECRYPT_STR_0("\111\67\9\41\76\70\64\49\70\2\6\44\91\71\64\55\76\79\15\49\76\24\64", "\69\41\34\96") .. tostring(err), 4 + 1, LUAOBFUSACTOR_DECRYPT_STR_0("\171\194\197\4\11\37\187", "\75\220\163\183\106\98"));
		end
	end});
end);
