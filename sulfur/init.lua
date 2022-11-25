-- mods/sulfur/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("sulfur")

-- Lapis Lazuli Ore
minetest.register_node("sulfur:stone_with_sulfur", {
	description = S("sulfur Ore"),
	tiles = {"default_stone.png^sulfur_mineral_sulfur.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'sulfur:sulfur 2'},  --The first and second drops ever
			},
			{
				items = {'sulfur:sulfur'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'sulfur:sulfur'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'sulfur:sulfur'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("sulfur:sulfur", {
	description = S("sulfur"),
	inventory_image = "sulfur.png",
})

minetest.register_node("sulfur:sulfurblock", {
	description = S("sulfur Block"),
	tiles = {"sulfur_sulfurblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'sulfur:sulfur',
	recipe = {
		{'sulfur:sulfur', 'sulfur:sulfur', 'sulfur:sulfur'},
		{'sulfur:sulfur', 'sulfur:sulfur', 'sulfur:sulfur'},
		{'sulfur:sulfur', 'sulfur:sulfur', 'sulfur:sulfur'},
	}
})


minetest.register_craft({
	output = 'sulfur:sulfur 9',
	recipe = {
		{'sulfur:sulfur'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "sulfur:stone_with_sulfur",
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
	ore            = "sulfur:stone_with_sulfur",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


