-- mods/zirconium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("zirconium")

-- Lapis Lazuli Ore
minetest.register_node("zirconium:stone_with_zirconium", {
	description = S("zirconium Ore"),
	tiles = {"default_stone.png^zirconium_mineral_zirconium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'zirconium:zirconium 2'},  --The first and second drops ever
			},
			{
				items = {'zirconium:zirconium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'zirconium:zirconium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'zirconium:zirconium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("zirconium:zirconium", {
	description = S("zirconium"),
	inventory_image = "zirconium.png",
})


minetest.register_node("zirconium:zirconiumblock", {
	description = S("zirconium Block"),
	tiles = {"zirconium_zirconiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'zirconium:zirconium',
	recipe = {
		{'zirconium:zirconium', 'zirconium:zirconium', 'zirconium:zirconium'},
		{'zirconium:zirconium', 'zirconium:zirconium', 'zirconium:zirconium'},
		{'zirconium:zirconium', 'zirconium:zirconium', 'zirconium:zirconium'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'zirconium:zirconium 9',
	recipe = {
		{'zirconium:zirconium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "zirconium:stone_with_zirconium",
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
	ore            = "zirconium:stone_with_zirconium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


