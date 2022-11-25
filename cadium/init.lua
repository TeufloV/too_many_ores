-- mods/cadium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("cadium")

-- Lapis Lazuli Ore
minetest.register_node("cadium:stone_with_cadium", {
	description = S("cadium Ore"),
	tiles = {"default_stone.png^cadium_mineral_cadium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'cadium:cadium 2'},  --The first and second drops ever
			},
			{
				items = {'cadium:cadium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'cadium:cadium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'cadium:cadium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("cadium:cadium", {
	description = S("cadium"),
	inventory_image = "cadium.png",
})

-- Lapis Block
minetest.register_node("cadium:cadiumblock", {
	description = S("cadium Block"),
	tiles = {"cadium_cadiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'cadium:cadium',
	recipe = {
		{'cadium:cadium', 'cadium:cadium', 'cadium:cadium'},
		{'cadium:cadium', 'cadium:cadium', 'cadium:cadium'},
		{'cadium:cadium', 'cadium:cadium', 'cadium:cadium'},
	}
})

minetest.register_craft({
	output = 'cadium:cadium 9',
	recipe = {
		{'cadium:cadium'},
	}
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "cadium:stone_with_cadium",
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
	ore            = "cadium:stone_with_cadium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


