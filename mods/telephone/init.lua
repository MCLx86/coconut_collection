dofile(minetest.get_modpath('telephone')..'/api.lua')

minetest.register_chatcommand("call", {
	description = "Displays the calling formspec",
	
	func = function(name, param)
		minetest.show_formspec(name, "telephone:call",
		"size[10,10]" ..
        "real_coordinates[true]" ..
		"field[0.3,1;5,0.8;caller;Caller #;]" ..
        "field[0.3,2;5,0.8;target;Target #;]" ..
        "button[0.3,5;5,1;call;Call]")
	end,
})

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname ~= "telephone:call" then
		
		return false
	end
	
	
	minetest.chat_send_player(player:get_player_name(), minetest.get_node(fields.target))
	--if minetest.get_node(fields.target).name == "telephone:neusonic_kxt2378mxwd" then
	--minetest.chat_send_player(player:get_player_name(), "Calling the number " .. fields.target .. ". Your number is " .. fields.caller .. ".")
	--end
	return true
end)

minetest.register_node("telephone:neusonic_kxt2378", {
	description = "Neusonic KX-T2378",
	tiles = {
		"telephone_neusonic_kxt2378.png",
		"telephone_neusonic_kxt2378_bottom.png",
		"telephone_neusonic_kxt2378_side.png",
		"telephone_neusonic_kxt2378_side.png",
		"telephone_neusonic_kxt2378_front.png",
		"telephone_neusonic_kxt2378_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	on_punch = function(pos, node, puncher, pointed_thing)
		node.name = "telephone:neusonic_kxt2378_offhook"
		minetest.set_node(pos, node)
	end,
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.4375, 0.3125, -0.25, 0.4375},
		}
	}
})

minetest.register_node("telephone:neusonic_kxt2378_offhook", {
	description = "Neusonic KX-T2378 (Off Hook)",
	tiles = {
		"telephone_neusonic_kxt2378_offhook.png",
		"telephone_neusonic_kxt2378_bottom.png",
		"telephone_neusonic_kxt2378_side.png",
		"telephone_neusonic_kxt2378_side.png",
		"telephone_neusonic_kxt2378_front.png",
		"telephone_neusonic_kxt2378_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	on_punch = function(pos, node, puncher, pointed_thing)
		node.name = "telephone:neusonic_kxt2378"
		minetest.set_node(pos, node)
	end,
	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.4375, 0.3125, -0.25, 0.4375},
		}
	}
})

--minetest.register_node("telephone:neusonic_kxt2378mxwd_ringing", {
--	description = "Neusonic KXT-2378MXWD (Ringing)",
	--tiles = {"telephone_neusonic_kxt2378mxwd_ringing.png"},
	--groups = {cracky = 2},
	--on_punch = function(pos, node, puncher, pointed_thing)
	--	minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "telephone:neusonic_kxt2378mxwd_conversation"})
		
		
	--end,
--})

--Saxom exKanto
minetest.register_node("telephone:saxom_exkanto", {
	description = "Saxom eXkanto",
	groups = {cracky = 2},
	
	on_punch = function(pos, node, puncher, pointed_thing)
		node.name = "telephone:saxom_exkanto_offhook"
		minetest.set_node(pos, node)
	end,
	
	tiles = {
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_bottom.png",
		"telephone_saxom_exkanto.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.4375, 0.0625, 0.375, 0.4375, 0.5},
		}
	}
})

minetest.register_node("telephone:saxom_exkanto_offhook", {
	description = "Saxom eXkanto (Off Hook)",
	groups = {cracky = 2},
	
	on_punch = function(pos, node, puncher, pointed_thing)
		node.name = "telephone:saxom_exkanto"
		minetest.set_node(pos, node)
	end,
	
	tiles = {
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_side.png",
		"telephone_saxom_exkanto_bottom.png",
		"telephone_saxom_exkanto_offhook.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.4375, 0.0625, 0.375, 0.4375, 0.5},
		}
	}
})


minetest.register_craftitem("telephone:coin_2", {
	description = "2-Golden Coin",
	inventory_image = "telephone_coin_2.png",
})

minetest.register_craftitem("telephone:card_magnetic", {
	description = "Magnetic Payphone Card",
	inventory_image = "telephone_card_magnetic.png",
})

minetest.register_craftitem("telephone:card_electronic", {
	description = "Electronic Payphone Card",
	inventory_image = "telephone_card_electronic.png",
})

