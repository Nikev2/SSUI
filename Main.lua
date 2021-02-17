local Players = game:GetService("Players")
local HTTPService = game:GetService("HttpService")
local TestService = game:GetService("TestService")

local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

local function Import(Asset)
	if (type(Asset) == "number") then
		return game:GetObjects("rbxassetid://" .. Asset)[1]
	else
		local Link = string.format("https://raw.githubusercontent.com/Nikev2/SSUI/main/Modules/%s", Asset)
		local Response = game:HttpGetAsync(Link)

		local Function = loadstring(Response)
		local Success, Return = pcall(Function)

		if (Success) then
			return Return
		else
			TestService:Error("[Infusa] (" .. Asset .. ")\n" .. Return)
		end
	end
end
		local GUI = Import(6405786351)
		local Main = GUI.Frame
		local Exebutton = Main.Exebutton
		local Input = Main.Input
		local remote = Instance.new("RemoteEvent", GUI)
		
