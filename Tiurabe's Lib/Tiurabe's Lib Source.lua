if not game:IsLoaded() then
	game.Loaded:Wait()
end
task.wait(0.2)

local printconsole = printconsole or print;

if (getgenv().TiurabeDuplicatePrevention ~= nil) then
	printconsole("It seems like you tried to run the script again, i stopped it for you.");
	return;
elseif (getgenv().TiurabeDuplicatePrevention == false) then
	printconsole("It seems like the script has not been executed correctly. Attempting to run it again...")
end

if (identifyexecutor():sub(1, 9) == "Synapse X") then
	warn("--Warning: Unsupported exploit detected.\nThe script currently only supports SynapseX.\n I dont plan to add compatibility to any other exploit, and \n therefore there might be issues with the script.");
end


getgenv().TiurabeDuplicatePrevention = false;
getgenv().Constant = math.random(1, 100) .. os.clock() .. math.random(1, 100);

getgenv().LocalPlayer = game:GetService("Players").LocalPlayer;
getgenv().Players = game:GetService("Players");
getgenv().CoreGui = game:GetService("CoreGui");
getgenv().CurrentESPs = {};



getgenv().isPlayer = function(inputText, partialName)
	local newInputText = tostring(inputText):lower();
	local players = game:GetService("Players"):GetPlayers();
	for i, plr in pairs(players) do
		if plr.Name:lower() == newInputText then
			return true;
		end
		if string.match(plr.Name:lower(), newInputText) and partialName == true then
			return true;
		end
	end
	return false;
end

getgenv().isPartOfPlayer = function(thing)
	if (typeof(thing) ~= "Instance") then
		warn("Error while calling isPartOfPlayer Function. Input must be a Instance.");
		return nil;
	end
	local Players = Players:GetPlayers();
	for _, plr in pairs(Players) do
		if (thing:IsDescendantOf(plr.Character)) then
			return true;
		end
	end
	return false;
end

getgenv().CreateESP = function(part)
	for _, object in pairs(CoreGui:GetChildren()) do
		if (object.Name == Constant) and object.Adornee == part then
			return 0;
		end
	end
    
	local BillboardGui = Instance.new("BillboardGui", CoreGui);
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Adornee = part
	BillboardGui.LightInfluence = 1
	BillboardGui.Size = UDim2.new(0, 100, 0, 25)
	BillboardGui.Name = Constant

	local TextLabel = Instance.new("TextLabel", BillboardGui);
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = BillboardGui.Size
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = part.Name
	TextLabel.TextScaled = true
	TextLabel.TextSize = 13
	TextLabel.TextWrapped = true
	TextLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
	TextLabel.Name = Constant * 3.1415
    
	table.insert(CurrentESPs, BillboardGui);
end

getgenv().ClearESPs = function()
	for _, object in pairs(CurrentESPs) do
		object:Destroy();
	end
	getgenv().CurrentESPs = {};
end

getgenv().TiurabeDuplicatePrevention = true;
printconsole("The script have been loaded successfully.");
printconsole("Funções: ");
printconsole("CreateESP\(part\), isPlayer\(inputText, \(true/false\)\), isPartOfPlayer\(obj\)");
printconsole("Constants: ");
printconsole("LocalPlayer, Players");
