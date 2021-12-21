--[[
Copyright 2018-2021 MCL

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

]]


minetest.register_node("industrial_decor:planks",{
		description = "Planks",
		drawtype = "signlike",
		tiles = {"industrial_decor_planks.png"},
		inventory_image = "industrial_decor_planks.png",
		wield_image = "industrial_decor_planks.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {choppy = 2},
		selection_box = {
			type = "wallmounted",
		},
		})
		
		minetest.register_node("industrial_decor:planks_destroyed",{
		description = "Destroyed Planks",
		drawtype = "signlike",
		tiles = {"industrial_decor_planks_destroyed.png"},
		inventory_image = "industrial_decor_planks_destroyed.png",
		wield_image = "industrial_decor_planks_destroyed.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = true,
		
		
		groups = {choppy = 3},
		selection_box = {
			type = "wallmounted",
		},
		})
		
--Lamps
minetest.register_node("industrial_decor:lamp",{
		description = "Industrial Lamp",
		drawtype = "plantlike",
		tiles = {"industrial_decor_lamp.png"},
		inventory_image = "industrial_decor_lamp.png",
		wield_image = "industrial_decor_lamp.png",
		light_source = 14,
		light_propagates = true,
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		
		groups = {cracky = 1},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
		},
		
		on_punch = function(pos, node, player, pointed_thing)
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "industrial_decor:lamp_damaged"})
		end
		})

--Damaged
minetest.register_node("industrial_decor:lamp_damaged",{
		description = "Damaged Industrial Lamp",
		drawtype = "plantlike",
		tiles = {"industrial_decor_lamp_damaged.png"},
		inventory_image = "industrial_decor_lamp_damaged.png",
		wield_image = "industrial_decor_lamp_damaged.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		is_ground_content = false,
		walkable = false,
		
		groups = {cracky = 2},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
		},
		
		on_rightclick = function(pos, node, player, pointed_thing)
			if player:get_wielded_item():get_name() == "electronics:light_bulb_incandescent" then
				minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "industrial_decor:lamp_bulb"})
			elseif player:get_wielded_item():get_name() == "tapes:ducttape_black" then
				minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "industrial_decor:lamp_tape"})
			end
			
		end
		})
		
--Light Bulb Only
minetest.register_node("industrial_decor:lamp_bulb",{
		description = "Damaged Industrial Lamp with Light Bulb",
		drawtype = "plantlike",
		tiles = {
		{
		name = "industrial_decor_lamp_bulb.png",
		animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		},
		inventory_image = "industrial_decor_lamp_bulb_single.png",
		wield_image = "industrial_decor_lamp_bulb_single.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		is_ground_content = false,
		walkable = false,
		
		groups = {cracky = 2},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
		},
		
		on_rightclick = function(pos, node, player, pointed_thing)
			if player:get_wielded_item():get_name() == "tapes:ducttape_black" then
				minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "industrial_decor:lamp_fixed"})
			end
			
		end
		})
		
--Taped
minetest.register_node("industrial_decor:lamp_tape",{
		description = "Industrial Lamp with Duct Tape",
		drawtype = "plantlike",
		tiles = {"industrial_decor_lamp_tape.png"},
		inventory_image = "industrial_decor_lamp_tape.png",
		wield_image = "industrial_decor_lamp_bulb_tape.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		is_ground_content = false,
		walkable = false,
		
		groups = {cracky = 2},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
		},
		
		on_rightclick = function(pos, node, player, pointed_thing)
			if player:get_wielded_item():get_name() == "electronics:light_bulb_incandescent" then
				minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "industrial_decor:lamp_fixed"})
			end
			
		end
		})
		
--Fixed
minetest.register_node("industrial_decor:lamp_fixed",{
		description = "Fixed Industrial Lamp",
		drawtype = "plantlike",
		tiles = {"industrial_decor_lamp_fixed.png"},
		inventory_image = "industrial_decor_lamp_fixed.png",
		wield_image = "industrial_decor_lamp_fixed.png",
		light_source = 10,
		light_propagates = true,
		sunlight_propagates = true,
		is_ground_content = false,
		walkable = false,
		
		groups = {cracky = 1},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
		},
		
		on_punch = function(pos, node, player, pointed_thing)
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "industrial_decor:lamp_damaged"})
		end
		})
--End of Lamps
		
minetest.register_node("industrial_decor:wires_hanging",{
		description = "Hanging Wires",
		drawtype = "plantlike",
		tiles = {"industrial_decor_wires_hanging.png"},
		inventory_image = "industrial_decor_wires_hanging.png",
		wield_image = "industrial_decor_wires_hanging.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		is_ground_content = false,
		walkable = false,
		
		groups = {snappy = 3},
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
		},
		})

minetest.register_node("industrial_decor:sheet_tin",{
		description = "Industrial Tin Sheet",
		tiles = {"industrial_decor_sheet_tin.png"},
		
		
		groups = {cracky = 1},
		})
		
		minetest.register_node("industrial_decor:shelf_empty",{
		paramtype = "light",
		description = "Empty Metal Shelf",
		tiles = {"industrial_decor_sheet_tin.png",
		"industrial_decor_sheet_tin.png",
		"industrial_decor_sheet_tin.png",
		"industrial_decor_sheet_tin.png",
		"industrial_decor_shelf_empty.png",},
		
		
		groups = {choppy = 2},
		})
		
		minetest.register_node("industrial_decor:crate_upsidedown",{
		drawtype = "allfaces_optional",
		paramtype = "light",
		description = "Food Crate",
		tiles = {"industrial_decor_crate_upsidedown.png"},
		
		
		groups = {choppy = 3},
		})
		
minetest.register_node("industrial_decor:hvdevice_pol",{
		description = "Polish High Voltage Device",
		drawtype = "signlike",
		tiles = {"industrial_decor_hvdevice_polish.png"},
		inventory_image = "industrial_decor_hvdevice_polish.png",
		wield_image = "industrial_decor_hvdevice_polish.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {cracky = 1},
		selection_box = {
			type = "wallmounted",
		},
		})
		
minetest.register_node("industrial_decor:hvdevice_usa",{
		description = "American High Voltage Device",
		drawtype = "signlike",
		tiles = {"industrial_decor_hvdevice_american.png"},
		inventory_image = "industrial_decor_hvdevice_american.png",
		wield_image = "industrial_decor_hvdevice_american.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {cracky = 1},
		selection_box = {
			type = "wallmounted",
		},
		})
		
		--Hazard signs
minetest.register_node("industrial_decor:hazardsign_generic",{
		description = "Generic Caution Hazard Sign",
		drawtype = "signlike",
		tiles = {"industrial_decor_hazardsign_generic.png"},
		inventory_image = "industrial_decor_hazardsign_generic.png",
		wield_image = "industrial_decor_hazardsign_generic.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {cracky = 1},
		selection_box = {
			type = "wallmounted",
		},
		})
		
minetest.register_node("industrial_decor:hazardsign_poison",{
		description = "Poison Hazard Sign",
		drawtype = "signlike",
		tiles = {"industrial_decor_hazardsign_poison.png"},
		inventory_image = "industrial_decor_hazardsign_poison.png",
		wield_image = "industrial_decor_hazardsign_poison.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {cracky = 1},
		selection_box = {
			type = "wallmounted",
		},
		})
		
minetest.register_node("industrial_decor:hazardsign_laser",{
		description = "Laser Hazard Sign",
		drawtype = "signlike",
		tiles = {"industrial_decor_hazardsign_laser.png"},
		inventory_image = "industrial_decor_hazardsign_laser.png",
		wield_image = "industrial_decor_hazardsign_laser.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {cracky = 1},
		selection_box = {
			type = "wallmounted",
		},
		})
		
minetest.register_node("industrial_decor:hazardsign_radiation_ion",{
		description = "Ionizing Radiation Hazard Sign",
		drawtype = "signlike",
		tiles = {"industrial_decor_hazardsign_ionradiation.png"},
		inventory_image = "industrial_decor_hazardsignion_ionradiation.png",
		wield_image = "industrial_decor_hazardsign_ionradiation.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {cracky = 1},
		selection_box = {
			type = "wallmounted",
		},
		})
		
minetest.register_node("industrial_decor:hazardsign_radiation_nonion",{
		description = "Non-Ionizing Radiation Hazard Sign",
		drawtype = "signlike",
		tiles = {"industrial_decor_hazardsign_nonionradiation.png"},
		inventory_image = "industrial_decor_hazardsign_nonionradiation.png",
		wield_image = "industrial_decor_hazardsign_nonionradiation.png",
		light_propagates = true,
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "wallmounted",
    
		walkable = false,
		
		
		groups = {cracky = 1},
		selection_box = {
			type = "wallmounted",
		},
		})
