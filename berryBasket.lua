-- BERRY BASKET
-- by Garran Plum
--
-- Provides a basket which quickly produces berries.
-- Creates a Berry Picker job to fill the basket. 
-- Transporters take produced berries to the Granary.
--
--

-- MOD Berry Basket
local berryBasket = ...

-- BUILDING Berry Basket
berryBasket:register({
	DataType = "BUILDING", 
	Id = "BUILDING_BERRY_BASKET",
	Name = "BUILDING_BERRY_BASKET_NAME",
	Description = "BUILDING_BERRY_BASKET_DESC",
	BuildingType = "FOOD_PRODUCTION",
    isEditable = true,
	AssetCoreBuildingPart = "BUILDING_PART_BERRIES"
})

-- BUILDING PART Berries
berryBasket:register({
	DataType = "BUILDING_PART",
	Id = "BUILDING_PART_BERRIES",
	Name = "BUILDING_PART_BERRIES_NAME",
    AssetBuildingFunction = "BUILDING_FUNCTION_BERRY_PRODUCER",  
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab =  "PREFAB_BASKET_BERRIES_PART"
	}
})

-- BUILDING FUNCTION Berry Producer
berryBasket:register({
    DataType = "BUILDING_FUNCTION_WORKPLACE",
    Id = "BUILDING_FUNCTION_BERRY_PRODUCER",
    Name = "BUILDING_BERRY_BASKET_DESC",
    WorkerCapacity = 2,
    RelatedJob = { 
        Job = "BERRY_PICKER", 
        Behavior = "BEHAVIOR_PRODUCE_TREE_COLLECTOR"
	},
    ResourceListNeeded = {
		{ Resource = "BERRIES", Quantity = 1 },
	},
	ResourceProduced = {
		{ Resource = "BERRIES", Quantity = 1 },
	}
})

-- RESOURCE CONTAINER Berries
berryBasket:registerPrefabComponent( "PREFAB_BASKET_BERRIES_PART", {
    DataType = "COMP_RESOURCE_CONTAINER",
    ResourceData = "BERRIES",
    IsReplenishable = true,
    ReplenishDurationInDays = 7,
    ReplenishQuantity = 10,
    ResourceValue = 5.0, -- How many to pick each time?
    AvailableQuantity = 50, -- Maximum storage.
    Radius = .55, -- Villager stands this far away to pick.
    IsDestroyWhenEmpty = false
})

-- JOB Berry Picker
berryBasket:register({
	DataType = "JOB",
	Id = "BERRY_PICKER",
	JobName = "JOB_BERRY_PICKER_NAME",
	JobDescription = "JOB_BERRY_PICKER_DESC",
	IsLockedByDefault = false,
    ProductionDelay = 7,
	AssetJobProgression = "DEFAULT_JOB_PROGRESSION",
	CharacterSetup = {
        DataType = "CHARACTER_SETUP",
        WalkAnimation = "WALKING",
		IdleAnimation = "GATHER",
		
	}
})

-- JOB Berry Picker: Allowed for Newcomers
berryBasket:override({
    Id = "NEWCOMER",
    CompatibleJobList = {
        Action = "APPEND",
        "BERRY_PICKER"
    }
})

-- JOB Berry Picker: Allowed for Serfs
berryBasket:override({
    Id = "SERF",
    CompatibleJobList = {
        Action = "APPEND",
        "BERRY_PICKER"
    }
})


