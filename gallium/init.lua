-- mods/gallium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("gallium")

-- Lapis Lazuli Ore
minetest.register_node("gallium:stone_with_gallium", {
	description = S("gallium Ore"),
	tiles = {"default_stone.png^gallium_mineral_gallium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'gallium:gallium 2'},  --The first and second drops ever
			},
			{
				items = {'gallium:gallium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'gallium:gallium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'gallium:gallium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("gallium:gallium", {
	description = S("gallium"),
	inventory_image = "gallium.png",
})


minetest.register_node("gallium:galliumblock", {
	description = S("gallium Block"),
	tiles = {"gallium_galliumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'gallium:gallium',
	recipe = {
		{'gallium:gallium', 'gallium:gallium', 'gallium:gallium'},
		{'gallium:gallium', 'gallium:gallium', 'gallium:gallium'},
		{'gallium:gallium', 'gallium:gallium', 'gallium:gallium'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'gallium:gallium 9',
	recipe = {
		{'gallium:gallium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "gallium:stone_with_gallium",
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
	ore            = "gallium:stone_with_gallium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


