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

local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib['bxor'];
local obf_OR = obf_bitlib['bor'];
local obf_AND = obf_bitlib['band'];
local obf_stringchar = string['char'];
local obf_stringbyte = string['byte'];
local obf_stringsub = string['sub'];
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib['bxor'];
local obf_tableconcat = table['concat'];
local obf_tableinsert = table['insert'];
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	_G['Cs'] = {UQSDDAA=3,YASDMRXA=1,YASa0AVV=(5 - 3)};
	for i = 2 - 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, obf_AND(i + #Cs, 1) + obf_OR(i + #Cs, 1 - 0))), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), obf_AND(1 + (i % #LUAOBFUSACTOR_KEY), 2 - 1) + obf_OR((620 - (555 + 64)) + (i % #LUAOBFUSACTOR_KEY), 932 - (857 + 74))))) % 256));
	end
	return obf_tableconcat(result);
end
local TABLE_TableIndirection = {};
bit32 = {};
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\255\134\139", "\126\177\163\187\69\134\219\167")] = 32;
TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\19\136\122", "\156\67\173\74\165")] = (570 - (367 + 201)) ^ TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\26\242\25", "\38\84\215\41\118\220\70")];
bit32.bnot = function(x)
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\96\83\114", "\158\48\118\66\114")];
	return (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\97\64", "\155\203\68\112\86\19\197")] - (928 - (214 + 713))) - x;
end;
bit32.band = function(x, y)
	if (y == (64 + 191)) then
		return x % 256;
	end
	if (y == (10307 + 55228)) then
		return x % (66413 - (282 + 595));
	end
	if (y == 4294967295) then
		return x % (4294968933 - (1523 + 114));
	end
	x, y = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\118\152\102", "\152\38\189\86\156\32\24\133")], y % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\204\18\247", "\38\156\55\199")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\186\56\44", "\35\200\29\28\72\115\20\154")] = 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\9\250\129", "\84\121\223\177\191\237\76")] = 1;
	for i = 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\149\19\153", "\161\219\54\169\192\90\48\80")] do
		local a, b = x % (2 + 0), y % (2 - 0);
		x, y = math.floor(x / (1067 - (68 + 997))), math.floor(y / (1272 - (226 + 1044)));
		if ((obf_AND(a, b) + obf_OR(a, b)) == (8 - 6)) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\91\7\80", "\69\41\34\96")] = obf_AND(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\134\135", "\75\220\163\183\106\98")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\255\219", "\185\98\218\235\87")]) + obf_OR(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\174\134\135", "\75\220\163\183\106\98")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\18\255\219", "\185\98\218\235\87")]);
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\219\121\119", "\202\171\92\71\134\190")] = (119 - (32 + 85)) * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\57\132\124", "\232\73\161\76")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\169\156\18", "\126\219\185\34\61")];
end;
bit32.bor = function(x, y)
	if (y == (250 + 5)) then
		return obf_AND(x - (x % 256), 57 + 198) + obf_OR(x - (x % (1213 - (892 + 65))), 608 - 353);
	end
	if (y == 65535) then
		return obf_AND(x - (x % 65536), 65535) + obf_OR(x - (x % 65536), 65535);
	end
	if (y == (4665355510 - 370388215)) then
		return 4111318557 - -183648738;
	end
	x, y = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\60\139\14", "\135\108\174\62\18\30\23\147")], y % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\134\172\122", "\167\214\137\74\171\120\206\83")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\153\181\98", "\199\235\144\82\61\152")] = 350 - (87 + 263);
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\23\83\233", "\75\103\118\217")] = 181 - (67 + 113);
	for i = 1 + 0, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\233\17\32", "\126\167\52\16\116\217")] do
		local a, b = x % (4 - 2), y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((obf_AND(a, b) + obf_OR(a, b)) >= 1) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\107\112", "\156\168\78\64\224\212\121")] = obf_AND(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\171\245", "\174\103\142\197")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\109\15", "\152\54\72\63\88\69\62")]) + obf_OR(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\21\171\245", "\174\103\142\197")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\70\109\15", "\152\54\72\63\88\69\62")]);
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\129\190", "\60\180\164\142")] = (2 + 0) * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\72\27\85", "\114\56\62\101\73\71\141")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\170\172\139", "\164\216\137\187")];
end;
bit32.bxor = function(x, y)
	x, y = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\226\163\97", "\107\178\134\81\210\198\158")], y % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\75\210", "\202\88\110\226\166")];
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\209\74\210", "\170\163\111\226\151")] = 0 - 0;
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\1\117\226", "\73\113\80\210\88\46\87")] = 953 - (802 + 150);
	for i = 2 - 1, TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\105\157", "\135\225\76\173\114")] do
		local a, b = x % 2, y % (3 - 1);
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((obf_AND(a, b) + obf_OR(a, b)) == 1) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\168\232", "\199\122\141\216\208\204\221")] = obf_AND(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\152\64", "\150\205\189\112\144\24")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\193\239", "\112\69\228\223\44\100\232\113")]) + obf_OR(TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\191\152\64", "\150\205\189\112\144\24")], TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\53\193\239", "\112\69\228\223\44\100\232\113")]);
		end
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\196\90\87", "\230\180\127\103\179\214\28")] = 2 * TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\156\64\15", "\128\236\101\63\38\132\33")];
	end
	return TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\190\236\65", "\175\204\201\113\36\214\139")];
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\137\101", "\100\39\172\85\188")]) then
		return 0;
	end
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\157\61\233", "\83\205\24\217\224")];
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\214\128\157", "\93\134\165\173")];
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\183\145", "\30\222\146\161\162\90\174\210")]) then
		return 0 + 0;
	end
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\213\11\32", "\106\133\46\16")];
	if (s_amount > (997 - (915 + 82))) then
		return math.floor(x * ((5 - 3) ^ -s_amount));
	else
		return (x * ((2 + 0) ^ -s_amount)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\104\101\35", "\32\56\64\19\156\58")];
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\116\141\181", "\224\58\168\133\54\58\146")]) then
		return 0;
	end
	x = x % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\105\19\27", "\107\57\54\43\157\21\230\231")];
	if (s_amount > 0) then
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\218\143\21\176\233", "\175\187\235\113\149\217\188")] = 0;
		if (x >= (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\12\234\209", "\24\92\207\225\44\131\25")] / 2)) then
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\74\215\188\9\75", "\29\43\179\216\44\123")] = TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\141\156\112", "\44\221\185\64")] - ((2 - 0) ^ (TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\47\162\24", "\19\97\135\40\63")] - s_amount));
		end
		return obf_AND(math.floor(x * (2 ^ -s_amount)), TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\88\55\126\127", "\81\206\60\83\91\79")]) + obf_OR(math.floor(x * ((1189 - (1069 + 118)) ^ -s_amount)), TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\175\88\55\126\127", "\81\206\60\83\91\79")]);
	else
		return (x * (2 ^ -s_amount)) % TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\126\238\128", "\196\46\203\176\18\79\163\45")];
	end
end;
run(function()
	TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\155\48\127\13\44\254\253\253\114", "\143\216\66\30\126\68\155")] = nil;
	Crasher = vape['Categories']['Utility']:CreateModule({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\201\0\206", "\129\202\168\109\171\165\195\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\74\54\203\214\17\244", "\134\66\56\87\184\190\116"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\62\6\183\13\226\49", "\85\92\81\105\219\121\139\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\161\85\64\102\218\238\243\85\83\121\205\228\188\94\64", "\191\157\211\48\37\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\17\241\47\50\208\11", "\90\191\127\148\124")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\94\146\32\20\108\142\33\25", "\119\24\231\78")]=function()
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\144\40\168\69\200\69\84\210", "\113\226\77\197\42\188\32")] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\8\19\228\185\51\21\245\161\63\18\199\161\53\4\245\178\63", "\213\90\118\148")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\105\43\185\89\89\94\61", "\45\59\78\212\54")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\52\89\141\138\146\39\162\254", "\144\112\54\227\235\230\78\205"));
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\160\60\14\238\196\30\227", "\59\211\72\111\156\176")] = tick();
		TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\109\149\226\62\70\130\241\104\30", "\77\46\231\131")]['Enabled'] = true;
		task.spawn(function()
			repeat
				pcall(function()
					TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\168\81\187\79\174\81\243\16", "\32\218\52\214")]:FireServer(9999841475726 - -158524274);
				end);
				task.wait(0.001 - 0);
			until (tick() - TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\93\3\48\186\229\245\21", "\58\46\119\81\200\145\208\37")]) >= (1 + 4) 
			TABLE_TableIndirection[LUAOBFUSACTOR_DECRYPT_STR_0("\8\158\49\191\161\184\36\110\220", "\86\75\236\80\204\201\221")]:Toggle();
		end);
	end});
end);
