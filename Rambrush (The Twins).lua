local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Rambrush (The Twins)",

    -- Rambrush model
    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/RAMBRUSH-Rush-and-Ambush-Combined-/main/Rambruhs%20REAL.rbxm",

    Speed = 315,
    DelayTime = 3,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1.5,
    },

    Cycles = {
        Min = 1,
        Max = 5,
        WaitTime = 0.02,
    },

    CamShake = {
        true,
        {5.5, 30, 0.3, 1.2},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://6842825462",
            Image2 = "rbxassetid://10722835155",

            Shake = true,

            Sound1 = {
                109901368934060,
                {Volume = 0.5},
            },

            Sound2 = {
                18532501108,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 255, 255),
            },

            Tease = {
                true,
                Min = 2,
                Max = 5,
            },
        },
    },

    CustomDialog = {
        "You died to Rambrush...",
        "The Twins got you.",
        "They don't know when to stop."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Rambrush has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Rambrush has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Rambrush has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Rambrush has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Rambrush entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Rambrush:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Rambrush.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
