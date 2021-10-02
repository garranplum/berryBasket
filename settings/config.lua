-- MODULE CONFIG.LUA
-- by Garran Plum
--
-- GP Configuration for this individual mod.
-- IMPORT GP OBJECT
local myMod, GP = ...

GP:log("config.lua", GP:version())

-- MY CONFIG Mod Name
local modName = "BERRY_REMIX"

-- MY CONFIG Remix
local remix = {}

-- MY CONFIG Categories
local categories = {
    FRUIT = {PREFAB_BASKET_BERRIES_PART = {AssetRegistered = true}}
}

local monuments = {[modName] = {Categories = {FRUIT = {}}}}

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
    version = GP:version(),
    remix = remix or {},
    modName = modName,
    modelFiles = modelFiles or {},
    categories = categories or {},
    nodeTypes = nodeTypes or {},
    jobs = jobs or {},
    workplaces = workplaces or {},
    monuments = monuments or {}
}

-- Use global to return config to loader :-(.
GP.loaded = config
