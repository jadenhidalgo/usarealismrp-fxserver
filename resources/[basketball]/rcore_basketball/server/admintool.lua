RegisterCommand('basketadmintool', function(source, args)
    local group = exports["essentialmode"]:getPlayerFromId(source).getGroup()

    if source == 0 then
        source = args[1]
    end

    if group == "owner" or group == "superadmin" or group == "admin" then
        TriggerClientEvent('rcore_basketball:admintool', source)
    end
end, false)

RegisterNetEvent('rcore_basketball:printConfig', function(entPos, entQuat)
    print()
    print()
    print('Insert following to config\'s BasketballHoops table')
    print()
    print('	{')
    print(string.format('		pos = vector3(%f, %f, %f), ', entPos.x, entPos.y, entPos.z))
    print(string.format('		rot = vector4(%f, %f, %f, %f),', entQuat.x, entQuat.y, entQuat.z, entQuat.w))
    print('		State = nil,')
    print('		Model = `prop_basketball_net`,')
    print('		IsSubscribed = false,')
    print('		threePointFwdDist = 0.0,')
    print('		threePointSideDist = 0.0,')
    print('		threePointRadius = 30.0,')
    print('		hideBlip = true,')
    print('	},')
    print()
    print()
end)