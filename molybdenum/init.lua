-- mods/molybdenum/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("molybdenum")

-- Lapis Lazuli Ore
minetest.register_node("molybdenum:stone_with_molybdenum", {
	description = S("molybdenum Ore"),
	tiles = {"default_stone.png^molybdenum_mineral_molybdenum.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'molybdenum:molybdenum 2'},  --The first and second drops ever
			},
			{
				items = {'molybdenum:molybdenum'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'molybdenum:molybdenum'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'molybdenum:molybdenum'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("molybdenum:molybdenum", {
	description = S("molybdenum"),
	inventory_image = "molybdenum.png",
})

-- Lapis Block
minetest.register_node("molybdenum:molybdenumblock", {
	description = S("molybdenum Block"),
	tiles = {"molybdenum_molybdenumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'molybdenum:molybdenum',
	recipe = {
		{'molybdenum:molybdenum', 'molybdenum:molybdenum', 'molybdenum:molybdenum'},
		{'molybdenum:molybdenum', 'molybdenum:molybdenum', 'molybdenum:molybdenum'},
		{'molybdenum:molybdenum', 'molybdenum:molybdenum', 'molybdenum:molybdenum'},
	}
})

minetest.register_craft({
	output = 'molybdenum:molybdenum 9',
	recipe = {
		{'molybdenum:molybdenum'},
	}
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "molybdenum:stone_with_molybdenum",
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
	ore            = "molybdenum:stone_with_molybdenum",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


