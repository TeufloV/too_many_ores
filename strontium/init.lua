-- mods/strontium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("strontium")

-- Lapis Lazuli Ore
minetest.register_node("strontium:stone_with_strontium", {
	description = S("strontium Ore"),
	tiles = {"default_stone.png^strontium_mineral_strontium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'strontium:strontium 2'},  --The first and second drops ever
			},
			{
				items = {'strontium:strontium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'strontium:strontium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'strontium:strontium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("strontium:strontium", {
	description = S("strontium"),
	inventory_image = "strontium.png",
})

-- Lapis Block
minetest.register_node("strontium:strontiumblock", {
	description = S("strontium Block"),
	tiles = {"strontium_strontiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Block Crafting
minetest.register_craft({
	output = 'strontium:strontium',
	recipe = {
		{'strontium:strontium', 'strontium:strontium', 'strontium:strontium'},
		{'strontium:strontium', 'strontium:strontium', 'strontium:strontium'},
		{'strontium:strontium', 'strontium:strontium', 'strontium:strontium'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'strontium:strontium 9',
	recipe = {
		{'strontium:strontium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "strontium:stone_with_strontium",
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
	ore            = "strontium:stone_with_strontium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


