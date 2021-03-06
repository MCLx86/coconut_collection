--Naturally generating nodes
minetest.register_node("main:stone", {
	description = "Stone",
	tiles = {"main_stone.png"},
	
	drop = 'main:cobble',
	legacy_mineral = true,
})

minetest.register_node("main:cobble", {
	description = "Cobble",
	tiles = {"main_cobble.png"},
	
	drop = 'main:cobble',
	legacy_mineral = true,
})

minetest.register_node("main:dirt", {
	description = "Dirt",
	tiles = {"main_dirt.png"},
	
})

minetest.register_node("main:grass", {
	description = "Grass",
	tiles = {"main_grass.png", "main_dirt.png",
		{name = "main_dirt.png^main_grass_side.png",
			tileable_vertical = false}},
	
	drop = 'main:dirt',
})


minetest.register_node("main:sand", {
	description = "Sand",
	tiles = {"main_sand.png"},
	
})

--Steel Block
minetest.register_node("main:block_steel", {
	description = "Steel Block",
	tiles = {"main_block_iron.png"},
	
	drop = 'main:block_iron',
})

--Gold Block
minetest.register_node("main:block_gold", {
	description = "Gold Block",
	tiles = {"main_block_gold.png"},
	
	drop = 'main:block_gold',
})

--Planks
minetest.register_node("main:planks_oak", {
	description = "Planks",
	tiles = {"main_planks_oak.png"},
	
})


--
-- Plants and Other Living Organisms
--


--Oak Log
minetest.register_node("main:log", {
	description = "Log",
	tiles = {"main_log.png"},
	
})

--Oak Leaves
minetest.register_node("main:leaves", {
	drawtype = "plantlike",
	paramtype = "light",
	light_propagates = true,
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	description = "Leaves",
	tiles = {"main_leaves.png"},

})


--
-- Liquids
--

--Fresh water
minetest.register_node("main:water_source", {
	description = "Fresh Water Source",
	drawtype = "liquid",
	paramtype = "light",
	
	tiles = {
		{
			name = "main_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 180,
	post_effect_color = {a = 50, r = 0, g = 50, b = 200},
	
	--Behavior
	walkable = false,
	pointable = false,
	buildable_to = true,
	diggable = false,
	is_ground_content = false,
	
	--Properties
	liquid_range = 14,
	liquid_viscosity = 0.1,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "main:water_flowing",
	liquid_alternative_source = "main:water_source",
	groups = {liquid = 3, water = 1},
})

minetest.register_node("main:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	paramtype = "light",
	
	tiles = {
		{
			name = "main_water_flowing_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	
	special_tiles = {
        {
            name = "main_water_flowing_animated.png",
            animation = {type = "vertical_frames", aspect_w = 16,
            aspect_h = 16, length = 2.0},
            backface_culling = true,
        },
        
        {
            name = "main_water_flowing_animated.png",
            animation = {type = "vertical_frames", aspect_w = 16,
            aspect_h = 16, length = 2.0},
            backface_culling = false,
        }
    },
	
	alpha = 180,
	post_effect_color = {a = 50, r = 0, g = 50, b = 200},
	
	--Behavior
	walkable = false,
	pointable = false,
	buildable_to = true,
	diggable = false,
	is_ground_content = false,
	
	--Properties
	liquid_range = 14,
	liquid_viscosity = 0.1,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "main:water_flowing",
	liquid_alternative_source = "main:water_source",
	groups = {liquid = 3, water = 1},
})
