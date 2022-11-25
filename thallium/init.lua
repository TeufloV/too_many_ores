-- mods/thallium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("thallium")

-- Lapis Lazuli Ore
minetest.register_node("thallium:stone_with_thallium", {
	description = S("thallium Ore"),
	tiles = {"default_stone.png^thallium_mineral_thallium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'thallium:thallium 2'},  --The first and second drops ever
			},
			{
				items = {'thallium:thallium'},    --The 3rd drops with a 1/2 chance
				rarity = 1,
			},
			{
				items = {'thallium:thallium'},    --The 4th drops with a 1/3 chance
				rarity = 1,
			},
			{
				items = {'thallium:thallium'},    --The 5th drops with a 1/8 chance
				rarity = 1,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("thallium:thallium", {
	description = S("thallium"),
	inventory_image = "thallium.png",
})


-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "thallium:stone_with_thallium",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -35,
})

-- -256 <-> -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "thallium:stone_with_thallium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -15,
})


