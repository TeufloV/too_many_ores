-- mods/alu/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("alu")

-- Lapis Lazuli Ore
minetest.register_node("alu:stone_with_alu", {
	description = S("alu Ore"),
	tiles = {"default_stone.png^alu_mineral_alu.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'alu:alu 2'},  --The first and second drops ever
			},
			{
				items = {'alu:alu'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'alu:alu'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'alu:alu'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("alu:alu", {
	description = S("alu"),
	inventory_image = "alu.png",
})


minetest.register_node("alu:alublock", {
	description = S("alu Block"),
	tiles = {"alu_alublock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'alu:alu',
	recipe = {
		{'alu:alu', 'alu:alu', 'alu:alu'},
		{'alu:alu', 'alu:alu', 'alu:alu'},
		{'alu:alu', 'alu:alu', 'alu:alu'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'alum:alu 9',
	recipe = {
		{'alu:alu'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "alu:stone_with_alu",
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
	ore            = "alu:stone_with_alu",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


