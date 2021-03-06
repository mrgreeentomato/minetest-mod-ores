minetest.register_node("ores:rainbowore", {
	description = "rainbow ore",
	paramtype = "light",	
	tiles = {
		{
			name = "rainbowore_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "rainbowore_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	groups = {cracky = 3, stone = 3},
	drop = 'ores:rainbow_ore',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	light_source = 3,
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:rainbowore",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 12,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:rainbowore",
		wherein        = "default:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:rainbowore",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = -64,
		y_min          = -31000,
})


-- wood ore
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:wood_ore",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 9,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:wood_ore",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_max          = 64,
		y_min          = -31000,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:wood_ore",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})

minetest.register_node("ores:wood_ore", {
	description = "wood ore",	
	tiles = {"woodore.png"},
	groups = {cracky = 3, stone = 3},
	drop = 'default:stick',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("ores:lead", {
	description = "lead lump",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles ={"lead.png"},
	inventory_image = "lead.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3,dig_immediate=3},
	on_use = minetest.item_eat(-2),
	sounds = default.node_sound_defaults(),
})

minetest.register_node("ores:lead_ore", {
	description = "lead ore",	
	tiles = {"leadore.png"},
	groups = {cracky = 3, stone = 3, oddly_breakable_by_hand = 1},
	drop = 'ores:lead 2',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:lead_ore",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 9,
		clust_size     = 6,
		y_max          = 31000,
		y_min          = 1025,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:lead_ore",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 6,
		y_max          = 64,
		y_min          = -31000,
	})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ores:lead_ore",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_max          = 0,
		y_min          = -31000,
	})

-- tar!


minetest.register_node("ores:tar_block", {
	description = "tar block",	
	groups = {cracky = 3, stone = 3, oddly_breakable_by_hand = 1, disable_jump = 1, fall_damage_add_percent = -75, falling_node = 1},
	drop = 'ores:tar_block',
	legacy_mineral = true,
	tiles = {"tarblock.png"},
	drawtype = "liquid",
	waving = 3,
})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "ores:tar_block",
		wherein         = {"default:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
})

-- salt!
minetest.register_node("ores:saltore", {
	description = "salt ore",	
	tiles = {"saltore.png"},
	groups = {cracky = 3, stone = 3},
	drop = 'ores:salt 5',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("ores:salt", {
	description = "salt",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"salt.png"},
	inventory_image = "salt.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3,},
	sounds = default.node_sound_defaults(),
	on_use = minetest.item_eat(-1),	
})

