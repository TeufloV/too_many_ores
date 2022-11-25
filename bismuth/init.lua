-- mods/bismuth/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("bismuth")


minetest.register_node("bismuth:stone_with_bismuth", {
	description = S("bismuth Ore"),
	tiles = {"default_stone.png^bismuth_mineral_bismuth.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'bismuth:bismuth 2'},  --The first and second drops ever
			},
			{
				items = {'bismuth:bismuth'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'bismuth:bismuth'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'bismuth:bismuth'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("bismuth:bismuth", {
	description = S("bismuth"),
	inventory_image = "bismuth.png",
})


minetest.register_node("bismuth:bismuthblock", {
	description = S("bismuth Block"),
	tiles = {"bismuth_bismuthblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'bismuth:bismuth',
	recipe = {
		{'bismuth:bismuth', 'nickel:nickel', 'bismuth:bismuth'},
		{'bismuth:bismuth', 'nickel:nickel', 'bismuth:bismuth'},
		{'bismuth:bismuth', 'nickel:nickel', 'bismuth:bismuth'},
	}
})

minetest.register_craft({
	output = 'bismuth:bismuth 9',
	recipe = {
		{'bismuth:bismuth'},
	}
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "bismuth:stone_with_bismuth",
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
	ore            = "bismuth:stone_with_bismuth",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


