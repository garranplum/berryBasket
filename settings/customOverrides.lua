-- MODULE CUSTOM OVERRIDES.LUA
-- by Garran Plum
--
-- Custom overrides for the entire mod.
-- IMPORT GP OBJECT
local myMod, GP = ...

-- BUILDING Berry Basket
-- GP:register({
-- 	DataType = "BUILDING", 
-- 	Id = "BUILDING_BERRY_BASKET",
-- 	Name = "BERRY_BUILDING",
-- 	Description = "BUILDING_BERRY_BASKET_DESC",
-- 	BuildingType = "FOOD_PRODUCTION",
--     AssetCoreBuildingPart = "BUILDING_PART_PREFAB_BASKET_BERRIES_PART",
--     AssetBuildingFunction = "BERRY_PRODUCER",
-- })

-- local berryPartReg = {
-- 	DataType = "BUILDING_PART",
-- 	Id = "BUILDING_PART_PREFAB_BASKET_BERRIES_PART",
-- 	Name = "BUILDING_PART_BERRIES_NAME",
--     AssetBuildingFunction = "BERRY_PRODUCER",  
-- 	ConstructorData = {
-- 		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
-- 		CoreObjectPrefab =  "PREFAB_BASKET_BERRIES_PART"
-- 	}
-- }

-- GP:register(berryPartReg)

-- BUILDING FUNCTION Berry Producer
-- GP:register({
--     DataType = "BUILDING_FUNCTION_WORKPLACE",
--     Id = "BERRY_PRODUCER",
--     Name = "BUILDING_BERRY_BASKET_DESC",
--     WorkerCapacity = 2,
--     RelatedJob = { 
--         Job = "BERRY_PICKER", 
--         Behavior = "BEHAVIOR_PRODUCE_TREE_COLLECTOR"
-- 	},
--     ResourceListNeeded = {
-- 		{ Resource = "BERRIES", Quantity = 1 },
-- 	},
-- 	ResourceProduced = {
-- 		{ Resource = "BERRIES", Quantity = 1 },
-- 	}
-- })

-- -- RESOURCE CONTAINER Berries
-- myMod:registerPrefabComponent( "PREFAB_BASKET_BERRIES_PART", {
--     DataType = "COMP_RESOURCE_CONTAINER",
--     ResourceData = "BERRIES",
--     IsReplenishable = true,
--     ReplenishDurationInDays = 7,
--     ReplenishQuantity = 10,
--     ResourceValue = 5.0, -- How many to pick each time?
--     AvailableQuantity = 50, -- Maximum storage.
--     Radius = .55, -- Villager stands this far away to pick.
--     IsDestroyWhenEmpty = false
-- })


