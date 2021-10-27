-- MODULE CONFIG.LUA
-- by Garran Plum
--
-- GP Configuration for this individual mod.
-- IMPORT GP OBJECT
local myMod, GP = ...

-- MY CONFIG Mod Name
local modName = "BERRY_BASKET"

-- MY CONFIG Remix
local remix = {}

-- MY CONFIG Paths
local pathList = {"Worker_1", "Worker_2", "Transport", "Visitor"}

-- MY CONFIG Categories
local categories = {
    FRUIT = {
        Berry_Basket = {
            Function = "BERRY_PRODUCER",
            -- Produces = {BERRIES = 10},
            PathNodes = pathList,
            PathTypes = {DEFAULT = "Worker_1", PICKUP = "Transport"}
        }
    }
}

-- MY CONFIG Model Files
local modelFiles = {berryBasket = {"FRUIT"}}

-- MY CONFIG Jobs
local jobs = {
    BERRY_PICKER = {
        Work = "GATHER",
        Walk = "WALKING",
        Back = "PREFAB_TOOL_FARMER_SEED_BAG",
        Delay = 7
    }
}

-- MY CONFIG Workplaces
local workplaces = {
    BERRY_PRODUCER = {
        Job = "BERRY_PICKER",
        Behavior = "BEHAVIOR_WORK",
        Positions = 1,
        Produces = {BERRIES = 1},
        Requires = {BERRIES = 0}
    }
}

-- MY CONFIG Buildings
local buildings = {BERRY_BASKET = "Berry_Basket"}

-- MY CONFIG Monuments
-- local monuments = {[modName] = {Categories = {FRUIT = {}}}}

-- 
--
--
--
--

-- WARNING!
--
-- MY CONFIG Ends Here. Changing code below this line will change *GPS*, not just your mod!
-- As an alternative to the code above, you may supply your own config table to GP.loaded.
--
--
-- Create the config table.
local config = {
    version = GP:gpsVersion(),
    remix = remix or {},
    modName = modName,
    modelFiles = modelFiles or {},
    categories = categories or {},
    nodeTypes = nodeTypes or {},
    jobs = jobs or {},
    workplaces = workplaces or {},
    monuments = monuments or {},
    buildings = buildings or {}
}

-- Use global to return config to loader :-(.
GP.loaded = config
