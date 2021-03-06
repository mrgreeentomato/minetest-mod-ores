-- CANDY!!!!!!!!!
minetest.register_node("ores:chocolatebar", {
	description = "chocolate bar",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles ={"cbar.png"},
	inventory_image = "cbar.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3,},
	sounds = default.node_sound_defaults(),
	on_use = minetest.item_eat(5),
})

minetest.register_craft({
	output = "ores:chocolatebar",
	recipe = {
	        {'ores:sugar', 'farming:ricemilk', 'ores:sugar'},
		{'ores:sugar', 'ores:chocolate_bean', 'ores:sugar'},
		{'ores:sugar', 'ores:chocolate_bean', 'ores:sugar'},
	}
})

-- why is this in an ore mod?!?!
-- but it is delicious!        \/   CUPCAKES!
minetest.register_node("ores:cupcake", {
	description = "cupcake (yum!)",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles ={"cupcake.png"},
	inventory_image = "cupcake.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3,dig_immediate=3},
	on_use = minetest.item_eat(20),
	sounds = default.node_sound_defaults(),
})

minetest.register_craft({
	output = "ores:cupcake",
	recipe = {
	        {'', 'dye:red', ''},
		{'default:blueberries', 'default:water_source', 'default:blueberries'},
		{'farming:flour', 'farming:flour', 'farming:flour'},
	}
})


-- why is this in an ore mod?!?!
-- but it is delicious!        \/   CUPCAKES!
minetest.register_node("ores:cupcake", {
	description = "cupcake (yum!)",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles ={"cupcake.png"},
	inventory_image = "cupcake.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3,dig_immediate=3},
	on_use = minetest.item_eat(20),
	sounds = default.node_sound_defaults(),
})

minetest.register_craft({
	output = "ores:cupcake",
	recipe = {
	        {'', 'dye:red', ''},
		{'default:blueberries', 'default:water_source', 'default:blueberries'},
		{'farming:flour', 'farming:flour', 'farming:flour'},
	}
})

