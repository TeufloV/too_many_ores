-- mods/potassium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("potassium")

-- Lapis Lazuli Ore
minetest.register_node("potassium:stone_with_potassium", {
	description = S("potassium Ore"),
	tiles = {"default_stone.png^potassium_mineral_potassium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'potassium:potassium 2'},  --The first and second drops ever
			},
			{
				items = {'potassium:potassium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'potassium:potassium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'potassium:potassium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("potassium:potassium", {
	description = S("potassium"),
	inventory_image = "potassium.png",
})

-- Lapis Block
minetest.register_node("potassium:potassiumblock", {
	description = S("potassium Block"),
	tiles = {"potassium_potassiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Block Crafting
minetest.register_craft({
	output = 'potassium:potassium',
	recipe = {
		{'potassium:potassium', 'potassium:potassium', 'potassium:potassium'},
		{'potassium:germanium', 'potassium:potassium', 'potassium:potassium'},
		{'potassium:germanium', 'potassium:potassium', 'potassium:potassium'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'potassium:potassium 9',
	recipe = {
		{'potassium:potassium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "potassium:stone_with_potassium",
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
	ore            = "potassium:stone_with_potassium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})

