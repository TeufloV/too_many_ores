-- mods/yttrium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("yttrium")

-- Lapis Lazuli Ore
minetest.register_node("yttrium:stone_with_yttrium", {
	description = S("yttrium Ore"),
	tiles = {"default_stone.png^yttrium_mineral_yttrium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'yttrium:yttrium 2'},  --The first and second drops ever
			},
			{
				items = {'yttrium:yttrium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'yttrium:yttrium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'yttrium:yttrium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Item
minetest.register_craftitem("yttrium:yttrium", {
	description = S("yttrium"),
	inventory_image = "yttrium.png",
})

-- Lapis Block
minetest.register_node("yttrium:yttriumblock", {
	description = S("yttrium Block"),
	tiles = {"yttrium_yttriumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-- Lapis Block Crafting
minetest.register_craft({
	output = 'yttrium:yttrium',
	recipe = {
		{'yttrium:yttrium', 'yttrium:yttrium', 'yttrium:yttrium'},
		{'yttrium:yttrium', 'yttrium:yttrium', 'yttrium:yttrium'},
		{'yttrium:yttrium', 'yttrium:yttrium', 'yttrium:yttrium'},
	}
})

-- Lapis Items from Lapis Block Crafting
minetest.register_craft({
	output = 'yttrium:yttrium 9',
	recipe = {
		{'yttrium:yttrium'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "yttrium:stone_with_yttrium",
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
	ore            = "yttrium:stone_with_yttrium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


