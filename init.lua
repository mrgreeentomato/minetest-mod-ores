minetest.register_biome({
		name = "chicken_land",
		node_dust = "default:snow",
		node_top = "chicken_block:chicken_block",
		depth_top = 2,
		node_filler = "chicken_block:chicken_block",
		depth_filler = 1,
		node_riverbed = "default:wood",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 4,
		heat_point = 20,
		humidity_point = 35,
	})


minetest.register_biome({
		name = "chicken_block_ocean",
		node_top = "chicken_block:chicken_block",
		depth_top = 1,
		node_filler = "chicken_block:chicken_block",
		depth_filler = 3,
		node_stone = "default:wood",
		node_riverbed = "default:tree",
		depth_riverbed = 2,
		y_max = 3,
		y_min = -112,
		heat_point = 60,
		humidity_point = 0,
	})

minetest.register_craftitem("ores:rainbow_ore", {
	description = "rainbow ore lump",
	inventory_image = "rainbowlump.png",
	groups = {stick = 1, flammable = 2},
})



minetest.register_craftitem("ores:rainbow_ore_ingot", {
	description = "rainbow ingot",
	inventory_image = "rainbowingot.png",
	groups = {stick = 1, flammable = 2},
})



minetest.register_craft( {
	type = "cooking",
	output = "ores:rainbow_ore_ingot",
	recipe = "ores:rainbow_ore",
})

minetest.register_craft({
	output = 'ores:rainbow_ore',
	recipe = {
		{'', '', ''},
		{'', 'ores:rainbow_ore_ingot', ''},
		{'', '', ''},
	}
})
-- THE WOOD RECIPIE!

minetest.register_craft({
	output = 'default:wood',
	recipe = {
		{'default:stick', 'default:stick', ''},
		{'default:stick', 'default:stick', ''},
		{'', '', ''},
	}
})


-- the chicken biome

minetest.register_biome({
		name = "chicken_forest",
		node_top = "chicken_block:chicken_block",
		depth_top = 1,
		node_filler = "chicken_block:chicken_block",
		depth_filler = 3,
		node_riverbed = "default:wood",
		depth_riverbed = 2,
		y_max = upper_limit,
		y_min = 1,
		heat_point = 60,
		humidity_point = 68,
	})



minetest.register_biome({
		name = "chickenous_forest_shore",
		node_top = "chicken_block:chicken_block",
		depth_top = 1,
		node_filler = "chicken_block:chicken_block",
		depth_filler = 3,
		node_riverbed = "default:wood",
		depth_riverbed = 2,
		y_max = 0,
		y_min = -1,
		heat_point = 60,
		humidity_point = 68,
	})

minetest.register_biome({
		name = "chickenous_forest_ocean",
		node_top = "chicken_block:chicken_block",
		depth_top = 1,
		node_filler = "chicken_block:chicken_block",
		depth_filler = 3,
		node_riverbed = "default:wood",
		depth_riverbed = 2,
		vertical_blend = 1,
		y_max = -2,
		y_min = -112,
		heat_point = 60,
		humidity_point = 68,
	})







-- water recipe!


minetest.register_craft({
	output = "default:water_source",
	recipe = {
	        {'', '', ''},
		{'', 'default:ice', ''},
		{'', '', ''},
	}
})




-- *gasp* school. *shudder*
minetest.register_node("ores:math", {
	description = "the worst school subject of all time: math.",
	drawtype = "torchlike",
	mesh = "math.obj",
	visual_scale = 1.0,
	tiles ={"terrible.png"},
	inventory_image = "terrible.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3,},
	sounds = default.node_sound_defaults(),
	on_use = minetest.item_eat(-20),
	
})

local load_time_start = os.clock()
local RANGE = 0.6
 
minetest.register_node("ores:trashcan", {
	description = "Trash can",
	tiles = {"default_steel_block.png","default_steel_block.png","trashcan.png"},
	groups = {snappy=1,bendy=2,cracky=1},
	sounds = default_stone_sounds,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
				{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375},
				{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
				{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	on_punch = function(pos, node, puncher)
		if node.name == "ores:trashcan" then --why should this be checked???
			local objs = minetest.env:get_objects_inside_radius({x=pos.x, y=pos.y+0.3, z=pos.z}, RANGE)
			minetest.chat_send_player(puncher:get_player_name(), 'Garbage removed!')
			for _, obj in pairs(objs) do
				obj:remove()
				minetest.sound_play("trashcan", {pos = pos, gain = 1.0, max_hear_distance = 10})
			end
			print("[trashcan] someone used a trashcan at ("..pos.x..", "..pos.y..", "..pos.z..")")
		end
	end,
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("infotext","Trash can")
	end,
})
 
minetest.register_craft({
	output = 'ores:trashcan',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})
 
print(string.format("[trashcan] loaded after ca. %.2fs", os.clock() - load_time_start))


-- cavelands!!!
minetest.register_biome({
		name = "cave_land",
		node_top = "ores:mosstopcobble",
		depth_top = 2,
		node_filler = "default:cobble",
		depth_filler = 1,
		node_riverbed = "default:wood",
		depth_riverbed = 2,
		y_max = -31000,
		y_min = -500,
		heat_point = 20,
		humidity_point = 35,
})

minetest.register_decoration({
		name = "ores:glomushroom",
		deco_type = "simple",
		place_on = {"ores:mosstopcobble", "ores:purpletopcobble"},
		sidelen = 16,
		noise_params = {
			offset = -0.02,
			scale = 0.04,
			spread = {x = 200, y = 200, z = 200},
			seed = seed,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"cave_land", "purple_cave_land"},
		y_max = -31000,
		y_min = -500,
		decoration = "ores:glomushroom",
})

minetest.register_biome({
		name = "purple_cave_land",
		node_top = "ores:purplemosstopcobble",
		depth_top = 2,
		node_filler = "default:cobble",
		depth_filler = 1,
		node_riverbed = "default:wood",
		depth_riverbed = 2,
		y_max = -31000,
		y_min = -500,
		heat_point = 20,
		humidity_point = 35,
})

minetest.register_node("ores:mosstopcobble", {
	description = "moss top cobble",	
	tiles = {"mosstop.png", "default_cobble.png",
		{name = "default_cobble.png^mossside.png",
			tileable_vertical = false}},
	groups = {cracky = 3, stone = 3},
	drop = 'default:cobble',
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("ores:3d", {
	description = "monkey",
	drawtype = "mesh",
	mesh = "mesh.obj",
	visual_scale = 1.0,
	tiles ={"3d.png"},
	paramtype = "light",
	inventory_image = "monkey.png",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=2},
	sounds = default.node_sound_defaults(),
})

minetest.register_craft({
	output = "ores:3d",
	recipe = {
	        {'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'group:wood', ''},
	}
})



-- plastic stuff
minetest.register_craft({
	output = 'ores:oil 6',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'', '', ''},
	}
})

minetest.register_node("ores:oil", {
	description = "oil",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles ={"oil.png"},
	inventory_image = "oil.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3,},
	sounds = default.node_sound_defaults(),
	on_use = minetest.item_eat(1),
	
})

minetest.register_craft( {
	type = "cooking",
	output = "ores:paraffin",
	recipe = "ores:oil",
})


minetest.register_craftitem("ores:paraffin", {
	description = "paraffin lump",
	inventory_image = "paraffin.png",
	groups =  {flammable = 2},
})


minetest.register_craft({
	output = 'ores:plastic 3',
	recipe = {
		{'ores:paraffin', 'ores:paraffin', 'ores:paraffin'},
		{'', '', ''},
		{'', '', ''},
	}
})


minetest.register_craftitem("ores:plastic", {
	description = "plastic sheet",
	inventory_image = "plastic.png",
	groups =  {flammable = 2},
})




minetest.register_entity("ores:chicken_thing", {
    hp_max = 5,
    physical = true,
    weight = 5,
    collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
    visual = "mesh",
    visual_size = {x=1, y=1},
    mesh = "model.obj",
    textures = {"chicken.png"}, -- number of required textures depends on visual
    colors = {"255, 255, 255"}, -- number of required colors depends on visual
    is_visible = true,
    makes_footstep_sound = true,
    automatic_rotate = true,
})


minetest.register_node("ores:flag", {
	description = "flag",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles ={"flag.png"},
	inventory_image = "flag.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3,},
	sounds = default.node_sound_defaults(),
	
})


minetest.register_node("ores:flagb", {
	description = "blue flag",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles ={"flagb.png"},
	inventory_image = "flagb.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3,},
	sounds = default.node_sound_defaults(),
	
})







minetest.register_node("ores:spiky", {
	description = "moss top cobble",	
	tiles = {"mosstop.png", "default_cobble.png",
		{name = "default_cobble.png^mossside.png",
			tileable_vertical = false}},
	groups = {cracky = 3, stone = 3, fall_damage_add_percent = 900},
	drop = 'default:cobble',
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("ores:bouncy", {
	description = "bunce moss top cobble",	
	tiles = {"mosstop.png", "default_cobble.png",
		{name = "default_cobble.png^mossside.png",
			tileable_vertical = false}},
	groups = {cracky = 3, stone = 3, bouncy = 100, fall_damage_add_percent = -100},
	drop = 'default:cobble',
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("ores:cushion", {
	description = "cushion",	
	tiles = {"cushiont.png", "cushion.png"},
	groups = {snappy = 1, bouncy = 3, fall_damage_add_percent = -100},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_craft({
	output = "ores:bouncy",
	recipe = {
	        {'', 'dye:green', ''},
		{'', 'default:water_source', ''},
		{'', 'default:cobble', ''},
	}
})

minetest.register_craft({
	output = "ores:cushion",
	recipe = {
	        {'ores:cloth', 'ores:cloth', 'ores:cloth'},
		{'wool:red', 'wool:red', 'wool:red'},
		{'wool:red', 'dye:red', 'wool:red'},
	}
})


minetest.register_craftitem("ores:cloth", {
	description = "cloth sheet",
	inventory_image = "cloth.png",
	groups =  {flammable = 2},
})


minetest.register_craft({
	output = "ores:cloth",
	recipe = {
	        {'', '', ''},
		{'farming:string', 'farming:string', ''},
		{'', '', ''},
	}
})

minetest.register_abm({
    nodenames = {"ores:grape_juice"},
    neighbors = {"default:wood"},
    interval = 50.0, -- Run every 50 seconds
    chance = 100, -- Select every 1 in 100 nodes
    action = function(pos, node, active_object_count,
            active_object_count_wider)
        local pos = {x = pos.x, y = pos.y, z = pos.z}
        minetest.set_node(pos, {name = "ores:wine"})
    end
})


minetest.register_node("ores:grape_juice", {
	description = "grape juice (how are you holding this?!?)",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "grape_juice_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "grape_juice_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "ores:grape_flowing",
	liquid_alternative_source = "ores:grape_juice",
	liquid_viscosity = 2,
	post_effect_color = {a = 235, r = 80, g = 40, b = 100},
	groups = {liquid = 3, cools_lava = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_water_defaults(),
	on_use = minetest.item_eat(2),
})

minetest.register_node("ores:grape_flowing", {
	description = "flowing grape juice (this is even more immpossible to hold!)",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"grapej.png"},
	special_tiles = {
		{
			name = "grape_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "grape_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ores:grape_flowing",
	liquid_alternative_source = "ores:grape_juice",
	liquid_viscosity = 1,
	post_effect_color = {a = 235, r = 80, g = 40, b = 100},
	groups = {liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})


minetest.register_node("ores:wine", {
	description = "grape juice (how are you holding this?!?)",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "grape_juicew_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "grape_juicew_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "ores:wine_flowing",
	liquid_alternative_source = "ores:wine",
	liquid_viscosity = 2,
	post_effect_color = {a = 235, r = 150, g = 40, b = 100},
	groups = {liquid = 3, cools_lava = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_water_defaults(),
	on_use = minetest.item_eat(4),
})

minetest.register_node("ores:wine_flowing", {
	description = "flowing grape juice (this is even more immpossible to hold!)",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"grapej.png"},
	special_tiles = {
		{
			name = "grape_flowingw_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "grape_flowingw_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ores:wine_flowing",
	liquid_alternative_source = "ores:wine",
	liquid_viscosity = 1,
	post_effect_color = {a = 235, r = 150, g = 40, b = 100},
	groups = {liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("ores:charred_stick", {
	description = "charred stick",
	drawtype = "mesh",
	mesh = "torch_floor2.obj",
	inventory_image = "default_torch_on_floor2.png",
	wield_image = "default_torch_on_floor2.png",
	tiles = {"default_torch_on_floor2.png"},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	liquids_pointable = false,
	light_source = 0,
	groups = {choppy=2, dig_immediate=3, flammable=1, attached_node=1, torch=1},
	selection_box = {
		type = "wallmounted",
		wall_bottom = {-1/8, -1/2, -1/8, 1/8, 2/16, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		local under = pointed_thing.under
		local node = minetest.get_node(under)
		local def = minetest.registered_nodes[node.name]
		if def and def.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
			return def.on_rightclick(under, node, placer, itemstack,
				pointed_thing) or itemstack
		end

		local above = pointed_thing.above
		local wdir = minetest.dir_to_wallmounted(vector.subtract(under, above))
		local fakestack = itemstack
		if wdir == 0 then
			fakestack:set_name("ores:charred_stick_ceiling")
		elseif wdir == 1 then
			fakestack:set_name("ores:charred_stick")
		else
			fakestack:set_name("ores:charred_stick_wall")
		end

		itemstack = minetest.item_place(fakestack, placer, pointed_thing, wdir)
		itemstack:set_name("ores:torch")

		return itemstack
	end,
	floodable = true,
	on_flood = on_flood,
})

minetest.register_node("ores:charred_stick_wall", {
	drawtype = "mesh",
	mesh = "torch_wall2.obj",
	tiles = {"default_torch_on_floor2.png"},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 0,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "ores:charred_stick",
	selection_box = {
		type = "wallmounted",
		wall_side = {-1/2, -1/2, -1/8, -1/8, 1/8, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
})

minetest.register_node("ores:charred_stick_ceiling", {
	drawtype = "mesh",
	mesh = "torch_ceiling2.obj",
	tiles = {"default_torch_on_floor2.png"},
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 0,
	groups = {choppy=2, dig_immediate=3, flammable=1, not_in_creative_inventory=1, attached_node=1, torch=1},
	drop = "ores:charred_stick",
	selection_box = {
		type = "wallmounted",
		wall_top = {-1/8, -1/16, -5/16, 1/8, 1/2, 1/8},
	},
	sounds = default.node_sound_wood_defaults(),
	floodable = true,
	on_flood = on_flood,
})





minetest.add_particlespawner({
	amount = 10,
	time = 0,
	minpos = {x=0, y=0, z=0},
	maxpos = {x=0, y=0, z=0},
	minvel = {x=0, y=0, z=0},
	maxvel = {x=0, y=0, z=0},
	minacc = {x=0, y=0, z=0},
	maxacc = {x=0, y=0, z=0},
	minexptime = 1,
	maxexptime = 1,
	minsize = 1,
	maxsize = 1,
	collisiondetection = false,
	vertical = false,
	texture = "poop.png",
	playername = "mrtomato"
})


minetest.add_particle({
	pos = {x=0, y=0, z=0},
	velocity = {x=0, y=0, z=0},
	acceleration = {x=0, y=0, z=0},
	expirationtime = 100,
	size = 1,
	collisiondetection = false,
	vertical = false,
	texture = "default_wood.png",
})

minetest.register_craft( {
	type = "cooking",
	output = "ores:charcoal 3",
	recipe = "group:tree",
})

minetest.register_craftitem("ores:charcoal", {
	description = "charcoal lump",
	inventory_image = "charcoal.png",
	groups =  {coal = 1, flammable = 2},
})

minetest.register_craft( {
      type = "fuel",
      recipe = "ores:charcoal",
      burntime = 40,
})



local ores_path = minetest.get_modpath("ores")

dofile(ores_path.."/tools.lua")
dofile(ores_path.."/ores.lua")
dofile(ores_path.."/chesscheckers.lua")
dofile(ores_path.."/food.lua")
