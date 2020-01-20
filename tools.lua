-- rainbow tools
minetest.register_tool("ores:rainbow_pick", {
	description = "Rainbow Pickaxe",
	inventory_image = "ranbowpick.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=3.00, [2]=1.20, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	groups = {flammable = 2},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	output = "ores:rainbow_pick",
	recipe = {
	        {'ores:rainbow_ore', 'ores:rainbow_ore', 'ores:rainbow_ore'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})


minetest.register_tool("ores:rainbow_shovel", {
	description = "rainbow shovel",
	inventory_image = "rainbowshovel.png",
	wield_image = "rainbowshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.00, [2]=0.40, [3]=0.20}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	groups = {shovel = 1},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	output = 'ores:rainbow_shovel',
	recipe = {
		{'', 'ores:rainbow_ore', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_tool("ores:rainbow_sword", {
	description = "rainbow sword",
	inventory_image = "rainbowsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.20, [2]=1.00, [3]=0.5}, uses=50, maxlevel=2},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
})



minetest.register_craft({
	output = 'ores:rainbow_sword',
	recipe = {
		{'', 'ores:rainbow_ore', ''},
		{'', 'ores:rainbow_ore', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_tool("ores:rainbow_axe", {
	description = "rainbow axe",
	inventory_image = "rainbowaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=.5, [2]=0.80, [3]=1.00}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	output = 'ores:rainbow_axe',
	recipe = {
		{'ores:rainbow_ore', 'ores:rainbow_ore', ''},
		{'ores:rainbow_ore', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})


minetest.register_craft({
	output = "ores:tarpick",
	recipe = {
	        {'ores:tar_block', 'ores:tar_block', 'ores:tar_block'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_tool("ores:tarpick", {
	description = "tar pickaxe",
	inventory_image = "tarpick.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=15.00, [2]=13.20, [3]=10.40}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	groups = {flammable = 2},
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_tool("ores:health_sword", {
	description = "healing sword",
	inventory_image = "healsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.20, [2]=1.00, [3]=0.5}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=-4},
	},
	sound = {breaks = "default_tool_breaks"},
})


minetest.register_craft({
	output = "ores:health_sword",
	recipe = {
	        {'', 'default:apple', ''},
		{'', 'farming:bread', ''},
		{'', 'default:stick', ''},
	}
})


farming.register_hoe("ores:rainbow_hoe",{
		description = "rainbow hoe",                      -- Description for tooltip
		inventory_image = "rainbowhoe.png",  -- Image to be used as wield- and inventory image
		max_uses = 550,                         -- Uses until destroyed
		material = "ores:rainbow_ore",

})





minetest.register_craft({
	output = "default:rainbow_chest_locked",
	recipe = {
	        {'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'ores:rainbow_ore', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = "default:rainbow_chest_locked",
	recipe = {
	        {'', '', ''},
		{'default:chest', 'ores:rainbow_ore', ''},
		{'', '', ''},
	}
})


doors.register_door("ores:stone_door",
		    {
		    description = "stone door (for secret rooms underground)",
		    inventory_image = "stonedoor.png",
		    groups = {cracky = 2},
		    tiles = {"stone_door.png"}, -- UV map.
		    sounds = default.node_sound_wood_defaults(), -- optional
		    protected = false, -- If true, only placer can open the door (locked for others)
})


minetest.register_craft({
	output = "ores:stone_door",
	recipe = {
	        {'default:stone', 'default:stone', ''},
		{'default:stone', 'default:stone', ''},
		{'default:stone', 'default:stone', ''},
	}
})


if not minetest.is_yes(minetest.setting_get("torches_wieldlight_enable") or true) then
	return
end
local torchlight_update_interval = minetest.setting_get("torches_wieldlight_interval") or 0.25

minetest.register_node("ores:torchlight", {
	drawtype = "airlike",
	groups = {not_in_creative_inventory = 1},
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 8,
	pointable = false,
	buildable_to = true,
	drops = {},
})


local torchlight = {}
local playerlist = {}

local function wields_torch(player)
	if not player then
		return false
	end
	local item = player:get_wielded_item()
	if not item then
		return false
	end
	return item:get_name() == "default:torch"
end

local function wielded_torch(name)
	if not torchlight[name] then
		return false
	end
	return true
end

local function is_torchlight(pos)
	local node = minetest.get_node(pos)
	return node.name == "ores:torchlight"
end

local function remove_torchlight(pos)
	if is_torchlight(pos) then
		minetest.swap_node(pos, {name = "air"})
	end
end

local function place_torchlight(pos)
	local name = minetest.get_node(pos).name
	if name == "ores:torchlight" then
		return true
	end
	if (minetest.get_node_light(pos) or 0) > 11 then
		-- no reason to place torch here, so save a bunch
		-- of node updates this way
		return false
	end
	if name == "air" then
		minetest.swap_node(pos, {name = "ores:torchlight"})
		return true
	end
	return false
end

local function get_torchpos(player)
	return vector.add({x = 0, y = 1, z = 0}, vector.round(player:getpos()))
end

minetest.register_on_joinplayer(function(player)
	local name = player:get_player_name()
	playerlist[name] = true
end)

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	-- don't look at wielded() here, it's likely invalid
	if torchlight[name] then
		remove_torchlight(torchlight[name])
		torchlight[name] = nil
	end
	playerlist[name] = nil
end)

minetest.register_on_shutdown(function()
	for i, _ in pairs(torchlight) do
		remove_torchlight(torchlight[i])
	end
end)

local function update_torchlight(dtime)
	for name, _ in pairs(playerlist) do
		local player = minetest.get_player_by_name(name)
		local wielded = wielded_torch(name)
		local wields = wields_torch(player)

		if not wielded and wields then
			local torchpos = get_torchpos(player)
			if place_torchlight(torchpos) then
				torchlight[name] = vector.new(torchpos)
			end
		elseif wielded and not wields then
			remove_torchlight(torchlight[name])
			torchlight[name] = nil
		elseif wielded and wields then
			local torchpos = get_torchpos(player)
			if not vector.equals(torchpos, torchlight[name]) or
					not is_torchlight(torchpos) then
				if place_torchlight(torchpos) then
					remove_torchlight(torchlight[name])
					torchlight[name] = vector.new(torchpos)
				elseif vector.distance(torchlight[name], torchpos) > 2 then
					-- player went into some node
					remove_torchlight(torchlight[name])
					torchlight[name] = nil
				end
			end
		end
	end
	minetest.after(torchlight_update_interval, update_torchlight)
end

minetest.after(torchlight_update_interval, update_torchlight)


doors.register_door("ores:rainbow_door",
		    {
		    description = "rainbow locked door",
		    inventory_image = "rainbowdoor.png",
		    groups = {cracky = 2},
		    tiles = {"rainbowdoor.png"}, -- UV map.
		    sounds = default.node_sound_wood_defaults(), -- optional
		    protected = true, -- If true, only placer can open the door (locked for others)
})


minetest.register_craft({
	output = "ores:rainbow_door",
	recipe = {
	        {'ores:rainbow_ore', 'ores:rainbow_ore', ''},
		{'ores:rainbow_ore', 'ores:rainbow_ore', ''},
		{'ores:rainbow_ore', 'ores:rainbow_ore', ''},
	}
})

minetest.register_node("ores:chocolate_plant",{
			  drawtype = "airlike",
			  paramtype1 = "light",

})
