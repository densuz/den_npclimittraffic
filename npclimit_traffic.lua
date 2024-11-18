local config = {
    pedFrequency = 0.4,           -- Default pedestrian density
    trafficFrequency = 0.4,       -- Default traffic density
}

-- Function to validate density values (0.0 to 1.0)
local function validateDensity(value)
    return math.min(math.max(value, 0.0), 1.0)
end

-- Ensure the config values are valid
config.pedFrequency = validateDensity(config.pedFrequency)
config.trafficFrequency = validateDensity(config.trafficFrequency)

-- Function to apply density settings
local function applyDensity()
    SetPedDensityMultiplierThisFrame(config.pedFrequency)
    SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)
    SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
end

-- Dynamic adjustment of density based on time
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000) -- Check every 60 seconds
        local hour = GetClockHours()
        if hour >= 0 and hour <= 6 then
            -- Night: Fewer peds and vehicles
            config.pedFrequency = 0.1
            config.trafficFrequency = 0.2
        elseif hour >= 7 and hour <= 18 then
            -- Daytime: Normal density
            config.pedFrequency = 0.6
            config.trafficFrequency = 0.8
        else
            -- Evening: Moderate density
            config.pedFrequency = 0.4
            config.trafficFrequency = 0.5
        end
    end
end)

-- Main loop to apply density settings
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Apply settings every frame
        applyDensity()
    end
end)

-- Command to dynamically change density
RegisterCommand("setdensity", function(source, args, rawCommand)
    local type = args[1]
    local value = tonumber(args[2])

    if type == "ped" then
        config.pedFrequency = validateDensity(value)
        print("Pedestrian density updated to: " .. config.pedFrequency)
    elseif type == "traffic" then
        config.trafficFrequency = validateDensity(value)
        print("Traffic density updated to: " .. config.trafficFrequency)
    else
        print("Invalid type. Use 'ped' or 'traffic'.")
    end
end, false)

-- Debugging log to monitor density changes
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000) -- Log every minute
        print(("[DEBUG] Pedestrian Density: %s | Traffic Density: %s"):format(
            config.pedFrequency, config.trafficFrequency
        ))
    end
end)
