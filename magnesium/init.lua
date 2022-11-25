-- mods/magnesium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("magnesium")

-- Lapis Lazuli Ore
minetest.register_node("magnesium:stone_with_magnesium", {
	description = S("magnesium Ore"),
	tiles = {"default_stone.png^magnesium_mineral_magnesium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'magnesium:magnesium 2'},  --The first and second drops ever
			},
			{
				items = {'magnesium:magnesium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'magnesium:magnesium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'magnesium:magnesium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("magnesium:magnesium", {
	description = S("magnesium"),
	inventory_image = "magnesium.png",
})

-- Lapis Block
minetest.register_node("magnesium:magnesiumblock", {
	description = S("magnesium Block"),
	tiles = {"magnesium_magnesiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'magnesium:magnesium',
	recipe = {
		{'magnesium:magnesium', 'magnesium:magnesium', 'magnesium:magnesium'},
		{'magnesium:magnesium', 'magnesium:magnesium', 'magnesium:magnesium'},
		{'magnesium:magnesium', 'magnesium:magnesium', 'magnesium:magnesium'},
	}
})


minetest.register_craft({
	output = 'magnesium:magnesium 9',
	recipe = {
		{'magnesium:magnesium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "magnesium:stone_with_magnesium",
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
	ore            = "magnesium:stone_with_magnesium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


