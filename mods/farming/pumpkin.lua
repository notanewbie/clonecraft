
--= Pumpkin (Big thanks to the PainterlyPack.net for Minecraft for allowing me to use these textures)

minetest.register_node("farming:pumpkin", {
	description = "Pumpkin",
	tiles = {"farming_pumpkin_top.png", "farming_pumpkin_top.png", "farming_pumpkin_side.png"},
	groups = {choppy=3,flammable=2,plant=1},
	drop = {
		items = {
			{items = {'farming:pumpkin_slice 9'},rarity=1},
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craftitem("farming:pumpkin_slice", {
	description = "Pumpkin Slice",
	inventory_image = "farming_pumpkin_slice.png",
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:pumpkin_1")
	end,
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	output = "farming:pumpkin",
	recipe = {
		{"farming:pumpkin_slice", "farming:pumpkin_slice", "farming:pumpkin_slice"},
		{"farming:pumpkin_slice", "farming:pumpkin_slice", "farming:pumpkin_slice"},
		{"farming:pumpkin_slice", "farming:pumpkin_slice", "farming:pumpkin_slice"},
	}
})

minetest.register_craft({
	output = "farming:pumpkin_slice 9",
	recipe = {
		{"", "farming:pumpkin", ""},
	}
})

-- Jack 'O Lantern
minetest.register_node("farming:jackolantern", {
	description = "Jack 'O Lantern",
	tiles = {"farming_pumpkin_top.png", "farming_pumpkin_top.png", "farming_pumpkin_side.png", "farming_pumpkin_side.png", "farming_pumpkin_side.png", "farming_pumpkin_face.png"},
	light_source = 14,
	paramtype2 = "facedir",
	groups = {choppy=3,flammable=2,plant=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = "farming:jackolantern",
	recipe = {
		{"", "", ""},
		{"", "default:torch", ""},
		{"", "farming:pumpkin", ""},
	}
})

-- Pumpkin Bread
minetest.register_craftitem("farming:pumpkin_bread", {
	description = ("Pumpkin Bread"),
	inventory_image = "farming_pumpkin_bread.png",
	on_use = minetest.item_eat(8)
})

minetest.register_craftitem("farming:pumpkin_dough", {
	description = "Pumpkin Dough",
	inventory_image = "farming_pumpkin_dough.png",
})

minetest.register_craft({
	output = "farming:pumpkin_dough",
	type = "shapeless",
	recipe = {"farming:flour", "farming:pumpkin_slice", "farming:pumpkin_slice"}
})

minetest.register_craft({
	type = "cooking",
	output = "farming:pumpkin_bread",
	recipe = "farming:pumpkin_dough",
	cooktime = 10
})

-- Define Pumpkin growth stages

minetest.register_node("farming:pumpkin_1", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1,attached_node=1,growing=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming:pumpkin_2", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_2.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1,attached_node=1,growing=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming:pumpkin_3", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_3.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1,attached_node=1,growing=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming:pumpkin_4", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_4.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1,attached_node=1,growing=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming:pumpkin_5", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_5.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1,attached_node=1,growing=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming:pumpkin_6", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_6.png"},
	paramtype = "light",
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1,attached_node=1,growing=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("farming:pumpkin_7", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_7.png"},
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1,attached_node=1,growing=1},
	sounds = default.node_sound_leaves_defaults(),
})

-- Last stage of Pumpkin growth does not have growing=1 so abm never has to check these

minetest.register_node("farming:pumpkin_8", {
	drawtype = "plantlike",
	tiles = {"farming_pumpkin_8.png"},
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	is_ground_content = true,
	drop = {
		items = {
			{items = {'farming:pumpkin_slice 9'},rarity=1},
		}
	},
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,not_in_creative_inventory=1},
	sounds = default.node_sound_defaults(),
})