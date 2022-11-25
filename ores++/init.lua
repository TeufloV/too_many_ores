
minetest.override_item("", {
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

--
-- Picks
--


minetest.register_tool("orespremium:pick_germanium", {
	description = ("Germanium Pickaxe"),
	inventory_image = "germanium_tool_germaniumpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("orespremium:pick_zinc", {
	description = ("Zinc Pickaxe"),
	inventory_image = "zinc_tool_zincpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=3.50, [2]=1.50, [3]=0.70}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("orespremium:pick_mycelium", {
	description = ("Mycelium Pickaxe"),
	inventory_image = "mycelium_tool_myceliumpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=3.10, [2]=1.30, [3]=0.60}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("orespremium:pick_nickel", {
	description = ("Nickel Pickaxe"),
	inventory_image = "nickel_tool_nickelpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.50, [2]=1.20, [3]=0.60}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("orespremium:pick_coblat", {
	description = ("Cobalt Pickaxe"),
	inventory_image = "cobalt_tool_cobaltpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

--
-- Shovels
--


minetest.register_tool("orespremium:shovel_germanium", {
	description = ("Germanium Shovel"),
	inventory_image = "germanium_tool_germaniumshovel.png",
	wield_image = "germanium_tool_germaniumshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("orespremium:shovel_zinc", {
	description = ("Zinc Shovel"),
	inventory_image = "zinc_tool_zincshovel.png",
	wield_image = "zinc_tool_zincshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.30, [2]=0.80, [3]=0.30}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("orespremium:shovel_mycelium", {
	description = ("Mycelium Shovel"),
	inventory_image = "mycelium_tool_myceliumshovel.png",
	wield_image = "mycelium_tool_myceliumshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.30, [2]=0.70, [3]=0.20}, uses=35, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("orespremium:shovel_nickel", {
	description = ("Nickel Shovel"),
	inventory_image = "nickel_tool_nickelshovel.png",
	wield_image = "nickel_tool_nickelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.60, [3]=0.20}, uses=35, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_tool("orespremium:shovel_cobalt", {
	description = ("Cobalt Shovel"),
	inventory_image = "cobalt_tool_cobaltshovel.png",
	wield_image = "cobalt_tool_cobaltshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.20}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

--
-- Axes
--


minetest.register_tool("orespremium:axe_germanium", {
	description = ("Germanium Axe"),
	inventory_image = "germanium_tool_germaniumaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.30, [2]=1.30, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("orespremium:axe_zinc", {
	description = ("Zinc Axe"),
	inventory_image = "zinc_tool_zincaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=1.20, [3]=0.80}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("orespremium:axe_mycelium", {
	description = ("Mycelium Axe"),
	inventory_image = "mycelium_tool_myceliumaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=1.20, [3]=0.70}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("orespremium:axe_nickel", {
	description = ("Nickel Axe"),
	inventory_image = "nickel_tool_nickelaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=1.00, [3]=0.60}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("orespremium:axe_cobalt", {
	description = ("Cobalt Axe"),
	inventory_image = "cobalt_tool_cobaltaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.90, [2]=0.90, [3]=0.50}, uses=35, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

--
-- Swords
--


minetest.register_tool("orespremium:sword_germanium", {
	description = ("Germanium Sword"),
	inventory_image = "germanium_tool_germaniumsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("orespremium:sword_zinc", {
	description = ("Zinc Sword"),
	inventory_image = "zinc_tool_zincsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("orespremium:sword_mycelium", {
	description = ("Mycelium Sword"),
	inventory_image = "mycelium_tool_myceliumsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("orespremium:sword_nickel", {
	description = ("Nickel Sword"),
	inventory_image = "nickel_tool_nickelsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("orespremium:sword_cobalt", {
	description = ("Cobalt Sword"),
	inventory_image = "cobalt_tool_cobaltsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

--
-- Register Craft Recipies
--

local craft_ingreds = {
	germanium = "orespremium:germanium",
	nickel = "orespremium:nickel",
	cobalt = "orespremium:cobalt",
	zinc = "orespremium:zinc",
	mycelium = "orespremium:mycelium"
}

for name, mat in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "orespremium:pick_".. name,
		recipe = {
			{mat, mat, mat},
			{"", "group:stick", ""},
			{"", "group:stick", ""}
		}
	})

	minetest.register_craft({
		output = "orespremium:shovel_".. name,
		recipe = {
			{mat},
			{"group:stick"},
			{"group:stick"}
		}
	})

	minetest.register_craft({
		output = "orespremium:axe_".. name,
		recipe = {
			{mat, mat},
			{mat, "group:stick"},
			{"", "group:stick"}
		}
	})

	minetest.register_craft({
		output = "orespremium:sword_".. name,
		recipe = {
			{mat},
			{mat},
			{"group:stick"}
		}
	})
end
-- germanium
minetest.register_node("orespremium:stone_with_germanium", {
	description = ("Germanium Ore"),
	tiles = {"default_stone.png^germanium_mineral_germanium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'orespremium:germanium 2'},  
			},
			{
				items = {'orespremium:germanium'},    
				rarity = 2,
			},
			{
				items = {'orespremium:germanium'},   
				rarity = 2,
			},
			{
				items = {'orespremium:germanium'},    
				rarity = 1,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- germanium Item
minetest.register_craftitem("orespremium:germanium", {
	description = ("Germanium"),
	inventory_image = "germanium_germanium.png",
})

-- germanium Block
minetest.register_node("orespremium:germaniumblock", {
	description = ("Germanium Block"),
	tiles = {"germanium_germaniumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-- germanium Block Crafting
minetest.register_craft({
	output = 'orespremium:germaniumblock',
	recipe = {
		{'orespremium:germanium', 'orespremium:germanium', 'orespremium:germanium'},
		{'orespremium:germanium', 'orespremium:germanium', 'orespremium:germanium'},
		{'orespremium:germanium', 'orespremium:germanium', 'orespremium:germanium'},
	}
})

-- germanium Items from germanium Block Crafting
minetest.register_craft({
	output = 'orespremium:germanium 9',
	recipe = {
		{'orespremium:germaniumblock'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_germanium",
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
	ore            = "orespremium:stone_with_germanium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = 31000,
})

-- nickel
minetest.register_node("orespremium:stone_with_nickel", {
	description = ("Nickel Ore"),
	tiles = {"default_stone.png^nickel_mineral_nickel.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'orespremium:nickel 2'},  
			},
			{
				items = {'orespremium:nickel'},    
				rarity = 2,
			},
			{
				items = {'orespremium:nickel'},   
				rarity = 2,
			},
			{
				items = {'orespremium:nickel'},    
				rarity = 1,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- germanium Item
minetest.register_craftitem("orespremium:nickel", {
	description = ("Nickel"),
	inventory_image = "nickel_nickel.png",
})

-- germanium Block
minetest.register_node("orespremium:nickelblock", {
	description = ("Nickel Block"),
	tiles = {"nickel_nickelblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-- germanium Block Crafting
minetest.register_craft({
	output = 'orespremium:nickelblock',
	recipe = {
		{'orespremium:nickel', 'orespremium:nickel', 'orespremium:nickel'},
		{'orespremium:nickel', 'orespremium:nickel', 'orespremium:nickel'},
		{'orespremium:nickel', 'orespremium:nickel', 'orespremium:nickel'},
	}
})

-- germanium Items from germanium Block Crafting
minetest.register_craft({
	output = 'orespremium:nickel 9',
	recipe = {
		{'orespremium:nickelblock'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_nickel",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -100,
})

-- -256 <-> -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_nickel",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -200,
})

-- cobalt
minetest.register_node("orespremium:stone_with_cobalt", {
	description = ("Cobalt Ore"),
	tiles = {"default_stone.png^cobalt_mineral_cobalt.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'orespremium:cobalt 2'},  
			},
			{
				items = {'orespremium:cobalt'},    
				rarity = 2,
			},
			{
				items = {'orespremium:cobalt'},   
				rarity = 2,
			},
			{
				items = {'orespremium:cobalt'},    
				rarity = 1,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

-- germanium Item
minetest.register_craftitem("orespremium:cobalt", {
	description = ("Cobalt"),
	inventory_image = "cobalt_cobalt.png",
})

-- germanium Block
minetest.register_node("orespremium:cobaltblock", {
	description = ("Cobalt Block"),
	tiles = {"cobalt_cobaltblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

-- germanium Block Crafting
minetest.register_craft({
	output = 'orespremium:cobaltblock',
	recipe = {
		{'orespremium:cobalt', 'orespremium:cobalt', 'orespremium:cobalt'},
		{'orespremium:cobalt', 'orespremium:cobalt', 'orespremium:cobalt'},
		{'orespremium:cobalt', 'orespremium:cobalt', 'orespremium:cobalt'},
	}
})

-- germanium Items from germanium Block Crafting
minetest.register_craft({
	output = 'orespremium:cobalt 9',
	recipe = {
		{'orespremium:cobaltblock'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_cobalt",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -300,
})

-- -256 <-> -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_cobalt",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -500,
})

--zinc
minetest.register_node("orespremium:stone_with_zinc", {
	description = ("Zinc Ore"),
	tiles = {"default_stone.png^zinc_mineral_zinc.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'orespremium:zinc 2'},  
			},
			{
				items = {'orespremium:zinc'},    
				rarity = 2,
			},
			{
				items = {'orespremium:zinc'},   
				rarity = 2,
			},
			{
				items = {'orespremium:zinc'},    
				rarity = 1,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("orespremium:zinc", {
	description = ("Zinc"),
	inventory_image = "zinc_zinc.png",
})

minetest.register_node("orespremium:zincblock", {
	description = ("Zinc Block"),
	tiles = {"zinc_zincblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'orespremium:zincblock',
	recipe = {
		{'orespremium:zinc', 'orespremium:zinc', 'orespremium:zinc'},
		{'orespremium:zinc', 'orespremium:zinc', 'orespremium:zinc'},
		{'orespremium:zinc', 'orespremium:zinc', 'orespremium:zinc'},
	}
})


minetest.register_craft({
	output = 'orespremium:zinc 9',
	recipe = {
		{'orespremium:zincblock'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_zinc",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -200,
})

-- -256 <-> -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_zinc",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -100,
})



--mycelium
minetest.register_node("orespremium:stone_with_mycelium", {
	description = ("Mycelium Ore"),
	tiles = {"default_stone.png^mycelium_mineral_mycelium.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 25,
		items = {
			{
				items = {'orespremium:mycelium 2'},  
			},
			{
				items = {'orespremium:mycelium'},    
				rarity = 1,
			},
			{
				items = {'orespremium:mycelium'},   
				rarity = 1,
			},
			{
				items = {'orespremium:mycelium'},    
				rarity = 1,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craftitem("orespremium:mycelium", {
	description = ("Mycelium"),
	inventory_image = "mycelium_mycelium.png",
})


minetest.register_node("orespremium:myceliumblock", {
	description = ("Mycelium Block"),
	tiles = {"mycelium_myceliumblock.png"},
	is_ground_content = true,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'orespremium:myceliumblock',
	recipe = {
		{'', '', ''},
		{'', 'orespremium:mycelium', ''},
		{'', '', ''},
	}
})

-- germanium Items from germanium Block Crafting
minetest.register_craft({
	output = 'orespremium:mycelium 1',
	recipe = {
		{'orespremium:myceliumblock'},
	}
})

-- Ore generation
-- -128 <-> -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_mycelium",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -200,
})

-- -256 <-> -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "orespremium:stone_with_mycelium",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -300,
})