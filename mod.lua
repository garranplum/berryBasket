-- BERRY BASKET
-- by Garran Plum
--
-- Provides a basket which quickly produces berries.
-- Creates a Berry Picker job to fill the basket. 
-- Transporters take produced berries to the Granary.
--
-- Get more GP mods at mod.io:
-- https://mod.io/members/garranplum
--
-- Join The Orchard, a GP modding Discord:
-- https://discord.gg/aeehVjMtzB
--
--


-- BUG NOTICE
--
-- I fix all bugs! Please report them at The Orchard link above.
-- Or leave a comment at: https://foundation.mod.io/berry-basket
-- Thank you. :-)
--
--

-- BASIC CONFIGURATION
-- Berry Basket is made with GPS 3, the low-code modding system for Foundation.
-- GPS mods can be configured and remixed to make them your own.
-- See the documentation for Remixer! and Barrel O'Fish, the reference GPS mods.


-- MY CONFIG File
local configFile = "config.lua"

-- MODULE MOD.LUA
-- Main Entrypoint & Loader

-- CREATE: GP Object 
    local GP = {
        mod = foundation.createMod()
    }

-- EXECUTE FILE: Loader
-- Sets up GPS.
GP.mod:dofile("gp/loader.lua", GP, configFile)

-- local berryBasket = foundation.createMod();
-- berryBasket:dofile("berryBasket.lua")