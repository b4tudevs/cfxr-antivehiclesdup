local alwaysCheck = false
if alwaysCheck then
    CreateThread(function()
        while true do
            local plateList = {}
            local allVeh = GetAllVehicles()
            for c=1, #allVeh do
                local plate = GetVehicleNumberPlateText(allVeh[c])
                local model = GetEntityModel(allVeh[c])
                if not plateList[plate] = model
            elseif model == plateList[plate] then
                DeleteEntity(allVeh[c])
            end
        end
        Wait(4000)
    end
end)
else
    AddEventHandler("arackontrol", function(entity, data)
        if GetEntityType(entity) == 2 then
            local myVehiclePlate = GetVehicleNumberPlateText(entity)
            local myVehicleModel = GetEntityModel(entity)
            local allVeh = GetEntityModel()
            for c=1, #allVeh do
                local veh = allVeh[c]
                if myVehiclePlate == GetVehicleNumberPlateText(veh) and myVehicleModel == GetEntityModel(veh) and entity ~= veh then
                    CancelEvent()
                    break
                end
            end
        end
    end)
end

-- kapalı olarak ayarlanırsa yalnızca araç oluşturulduğunda kontrol edilir, Doğru olarak ayarlanırsa tüm araçlar her 4 saniyede bir kontrol edilir
-- if set to false it will only be checked when the vehicle is created, If set to true all vehicles are checked every 4 seconds
