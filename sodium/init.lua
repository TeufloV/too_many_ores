-- mods/sodium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("sodium")

-- Lapis Lazuli Ore
minetest.register_node("sodium:stone_with_sodium", {
	description = S("sodium Ore"),
	tiles = {"default_stone.png^sodium_mineral_sodium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'sodium:sodium 2'},  --The first and second drops ever
			},
			{
				items = {'sodium:sodium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'sodium:sodium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'sodium:sodium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("sodium:sodium", {
	description = S("sodium"),
	inventory_image = "sodium.png",
})


minetest.register_node("sodium:sodiumblock", {
	description = S("sodium Block"),
	tiles = {"sodium_sodiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'sodium:sodium',
	recipe = {
		{'sodium:sodium', 'sodium:sodium', 'sodium:sodium'},
		{'sodium:sodium', 'sodium:sodium', 'sodium:sodium'},
		{'sodium:sodium', 'sodium:sodium', 'sodium:sodium'},
	}
})


minetest.register_craft({
	output = 'sodium:sodium 9',
	recipe = {
		{'sodium:sodium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sodium:stone_with_sodium",
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
	ore            = "sodium:stone_with_sodium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


