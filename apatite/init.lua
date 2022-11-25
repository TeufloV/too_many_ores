-- mods/apatite/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("apatite")

-- Lapis Lazuli Ore
minetest.register_node("apatite:stone_with_apatite", {
	description = S("apatite Ore"),
	tiles = {"default_stone.png^apatite_mineral_apatite.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'apatite:apatite 2'},  --The first and second drops ever
			},
			{
				items = {'apatite:apatite'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'apatite:apatite'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'apatite:apatite'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("apatite:apatite", {
	description = S("apatite"),
	inventory_image = "apatite.png",
})


-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "apatite:stone_with_apatite",
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
	ore            = "apatite:stone_with_apatite",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


