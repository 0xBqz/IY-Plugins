
function getguns() --edit this as you want
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
end

local Plugin = {
    ["PluginName"] = "prision.iy",
    ["PluginDescription"] = "maded 0xBqz, Specially for gunfighting and playing competitive",
    ["Commands"] = {
        ["resp"] = {
            ["ListName"] = "resp",
            ["Description"] = "respawn for prision life",
            ["Aliases"] = {"respawnp","rep"},
            ["Function"] = function(args,speaker)
                saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                local A_1 = "\66\114\111\121\111\117\98\97\100\100"
                local Event = game:GetService("Workspace").Remote.loadchar
                Event:InvokeServer(A_1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
                notify("respawned player")
            end
        },
        ["guns"] = {
            ["ListName"] = "guns/gun/g",
            ["Description"] = "gives u guns, destroys taser and handcuffs for pvp cops, u can edit the order at the workspace/Prision infinity.iy in your executor",
            ["Aliases"] = {"gun","g"},
            ["Function"] = function(args,speaker)
                getguns()
            end
        }
    }
}

return Plugin
