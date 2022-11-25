-- mods/palladium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("palladium")


minetest.register_node("palladium:stone_with_palladium", {
	description = S("palladium Ore"),
	tiles = {"default_stone.png^palladium_mineral_palladium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'palladium:palladium 2'},  --The first and second drops ever
			},
			{
				items = {'palladium:palladium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'palladium:palladium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'palladium:palladium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("palladium:palladium", {
	description = S("palladium"),
	inventory_image = "palladium.png",
})


minetest.register_node("palladium:palladiumblock", {
	description = S("palladium Block"),
	tiles = {"palladium_palladiumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	output = 'palladium:palladium',
	recipe = {
		{'palladium:palladium', 'palladium:palladium', 'palladium:palladium'},
		{'palladium:palladium', 'palladium:palladium', 'palladium:palladium'},
		{'palladium:palladium', 'palladium:palladium', 'palladium:palladium'},
	}
})

minetest.register_craft({
	output = 'palladium:palladium 9',
	recipe = {
		{'palladium:palladium'},
	}
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "palladium:stone_with_palladium",
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
	ore            = "palladium:stone_with_palladium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


