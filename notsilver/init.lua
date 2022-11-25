-- mods/notsilver/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("notsilver")

-- Lapis Lazuli Ore
minetest.register_node("notsilver:stone_with_notsilver", {
	description = S("notsilver Ore"),
	tiles = {"default_stone.png^notsilver_mineral_notsilver.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'notsilver:notsilver 2'},  --The first and second drops ever
			},
			{
				items = {'notsilver:notsilver'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'notsilver:notsilver'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'notsilver:notsilver'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("notsilver:notsilver", {
	description = S("notsilver"),
	inventory_image = "notsilver.png",
})


minetest.register_node("notsilver:notsilverblock", {
	description = S("notsilver Block"),
	tiles = {"notsilver_notsilverblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'notsilver:notsilver',
	recipe = {
		{'notsilver:notsilver', 'notsilver:notsilver', 'notsilver:notsilver'},
		{'notsilver:notsilver', 'notsilver:notsilver', 'notsilver:notsilver'},
		{'notsilver:notsilver', 'notsilver:notsilver', 'norsilver:notsilver'},
	}
})


minetest.register_craft({
	output = 'notsilver:notsilver 9',
	recipe = {
		{'notsilver:notsilver'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "notsilver:stone_with_notsilver",
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
	ore            = "notsilver:stone_with_notsilver",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


