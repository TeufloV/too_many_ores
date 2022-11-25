-- mods/osmium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("osmium")

-- Lapis Lazuli Ore
minetest.register_node("osmium:stone_with_osmium", {
	description = S("osmium Ore"),
	tiles = {"default_stone.png^osmium_mineral_osmium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'osmium:osmium 2'},  --The first and second drops ever
			},
			{
				items = {'osmium:osmium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'osmium:osmium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'osmium:osmium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("osmium:osmium", {
	description = S("osmium"),
	inventory_image = "osmium.png",
})

-- Lapis Block
minetest.register_node("osmium:osmiumblock", {
	description = S("osmium Block"),
	tiles = {"osmium_osmiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Block Crafting
minetest.register_craft({
	output = 'osmium:osmium',
	recipe = {
		{'osmium:osmium', 'osmium:osmium', 'osmium:osmium'},
		{'osmium:osmium', 'osmium:osmium', 'osmium:osmium'},
		{'osmium:osmium', 'osmium:osmium', 'osmium:osmium'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'osmium:osmium 9',
	recipe = {
		{'osmium:osmium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "osmium:stone_with_osmium",
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
	ore            = "osmium:stone_with_osmium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


