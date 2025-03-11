local QBCore = exports['qb-core']:GetCoreObject()
print("cloud@cudidev.com")
local function cudi_waypoint()
    if IsWaypointActive() then
        SetWaypointOff()
        QBCore.Functions.Notify("Waypoint Removed", "success")
    else
        QBCore.Functions.Notify("Waypoint Not Found", "error")
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(0, 44) then
            cudi_waypoint()
        end
    end
end)