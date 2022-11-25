-- mods/platinum/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("platinum")

-- Lapis Lazuli Ore
minetest.register_node("platinum:stone_with_platinum", {
	description = S("platinum Ore"),
	tiles = {"default_stone.png^platinum_mineral_platinum.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'platinum:platinum 2'},  --The first and second drops ever
			},
			{
				items = {'platinum:platinum'},    --The 3rd drops with a 1/2 chance
				rarity = 1,
			},
			{
				items = {'platinum:platinum'},    --The 4th drops with a 1/3 chance
				rarity = 1,
			},
			{
				items = {'platinum:platinum'},    --The 5th drops with a 1/8 chance
				rarity = 1,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("platinum:platinum", {
	description = S("platinum"),
	inventory_image = "platinum.png",
})


minetest.register_node("platinum:platinumblock", {
	description = S("platinum Block"),
	tiles = {"platinum_platinumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'platinum:platinum',
	recipe = {
		{'platinum:platinum', 'platinum:platinum', 'platinum:platinum'},
		{'platinum:platinum', 'platinum:platinum', 'platinum:platinum'},
		{'platinum:platinum', 'platinum:platinum', 'platinum:platinum'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'platinum:platinum 9',
	recipe = {
		{'platinum:platinum'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "platinum:stone_with_platinum",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = 31000,
})

-- -256 <-> -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "platinum:stone_with_platinum",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


