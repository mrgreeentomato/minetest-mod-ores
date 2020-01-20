-- chess!
minetest.register_node("ores:pawn", {
	description = "pawn",
	drawtype = "mesh",
	mesh = "pawn.obj",
	visual_scale = 1.0,
	tiles ={"lightchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:rook", {
	description = "rook",
	drawtype = "mesh",
	mesh = "rook.obj",
	visual_scale = 1.0,
	tiles ={"lightchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:bishop", {
	description = "bishop",
	drawtype = "mesh",
	mesh = "bishop.obj",
	visual_scale = 1.0,
	tiles ={"lightchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:knight", {
	description = "knight",
	drawtype = "mesh",
	mesh = "knight.obj",
	visual_scale = 1.0,
	tiles ={"lightchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:king", {
	description = "king",
	drawtype = "mesh",
	mesh = "king.obj",
	visual_scale = 1.0,
	tiles ={"lightchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:queen", {
	description = "queen",
	drawtype = "mesh",
	mesh = "queen.obj",
	visual_scale = 1.0,
	tiles ={"lightchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})

-- darks
minetest.register_node("ores:pawnd", {
	description = "pawn",
	drawtype = "mesh",
	mesh = "pawn.obj",
	visual_scale = 1.0,
	tiles ={"darkchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:rookd", {
	description = "rook",
	drawtype = "mesh",
	mesh = "rook.obj",
	visual_scale = 1.0,
	tiles ={"darkchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:bishopd", {
	description = "bishop",
	drawtype = "mesh",
	mesh = "bishop.obj",
	visual_scale = 1.0,
	tiles ={"darkchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:knightd", {
	description = "knight",
	drawtype = "mesh",
	mesh = "knight.obj",
	visual_scale = 1.0,
	tiles ={"darkchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:kingd", {
	description = "king",
	drawtype = "mesh",
	mesh = "king.obj",
	visual_scale = 1.0,
	tiles ={"darkchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:queend", {
	description = "queen",
	drawtype = "mesh",
	mesh = "queen.obj",
	visual_scale = 1.0,
	tiles ={"darkchess.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


-- checkers!
minetest.register_node("ores:checker", {
	description = "red checker",
	drawtype = "mesh",
	mesh = "checker.obj",
	visual_scale = 1.0,
	tiles ={"checker.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:checkerking", {
	description = "kinged red checker",
	drawtype = "mesh",
	mesh = "checkerking.obj",
	visual_scale = 1.0,
	tiles ={"checker.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})

-- black checkers!
minetest.register_node("ores:checkerb", {
	description = "black checker",
	drawtype = "mesh",
	mesh = "checker.obj",
	visual_scale = 1.0,
	tiles ={"checkerb.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})


minetest.register_node("ores:checkerkingb", {
	description = "kinged black checker",
	drawtype = "mesh",
	mesh = "checkerking.obj",
	visual_scale = 1.0,
	tiles ={"checkerb.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3},
	sounds = default.node_sound_defaults(),
})
