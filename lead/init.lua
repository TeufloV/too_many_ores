-- mods/lead/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("lead")

-- Lapis Lazuli Ore
minetest.register_node("lead:stone_with_lead", {
	description = S("gallium Ore"),
	tiles = {"default_stone.png^lead_mineral_lead.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'lead:lead 2'},  --The first and second drops ever
			},
			{
				items = {'lead:lead'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'lead:lead'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'lead:lead'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("lead:lead", {
	description = S("lead"),
	inventory_image = "lead.png",
})


minetest.register_node("lead:leadblock", {
	description = S("lead Block"),
	tiles = {"lead_leadblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'lead:lead',
	recipe = {
		{'lead:lead', 'lead:lead', 'lead:lead'},
		{'lead:lead', 'lead:lead', 'lead:lead'},
		{'lead:lead', 'lead:lead', 'lead:lead'},
	}
})

minetest.register_craft({
	output = 'lead:lead 9',
	recipe = {
		{'lead:lead'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lead:stone_with_lead",
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
	ore            = "lead:stone_with_lead",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


