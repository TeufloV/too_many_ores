-- mods/tellurium/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

-- load support for intllib
local modpath = minetest.get_modpath(minetest.get_current_modname())
local S = minetest.get_translator("tellurium")

-- Lapis Lazuli Ore
minetest.register_node("tellurium:stone_with_tellurium", {
	description = S("tellurium Ore"),
	tiles = {"default_stone.png^tellurium_mineral_tellurium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'tellurium:tellurium 2'},  --The first and second drops ever
			},
			{
				items = {'tellurium:tellurium'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'tellurium:tellurium'},    --The 4th drops with a 1/3 chance
				rarity = 2,
			},
			{
				items = {'tellurium:tellurium'},    --The 5th drops with a 1/8 chance
				rarity = 2,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("tellurium:tellurium", {
	description = S("tellurium"),
	inventory_image = "tellurium.png",
})



-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "tellurium:stone_with_tellurium",
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
	ore            = "tellurium:stone_with_tellurium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})


