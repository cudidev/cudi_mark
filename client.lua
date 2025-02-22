local QBCore = exports['qb-core']:GetCoreObject()
print("cloud@cudidev.com")
local function RemoveWaypoint()
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
            RemoveWaypoint()
        end
    end
end)