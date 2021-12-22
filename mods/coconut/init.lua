coconut = {}

minetest.register_node("coconut:nut", {
	tiles =
	{
		"coconut_nut.png",
		"coconut_nut.png",
		"coconut_nut_side.png",
		"coconut_nut_side.png",
		"coconut_nut_side.png",
		"coconut_nut_side.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box =
	{
		type = "fixed",
		fixed =
		{
			{-0.25, -0.5, -0.25, 0.25, 0, 0.25},
		}
	},
	groups = {falling_node = 1, cracky = 1}
})



minetest.register_on_joinplayer(function(player)
skybox.set(player, 5)
local wielditem = player:get_wielded_item()
wielditem:set_name("main:pickaxe_steel")
player:set_wielded_item(wielditem)
end)

function coconut.init()
	local players = minetest.get_connected_players()
    for i=1, #players do
        coconut.add_huds(players[i])
		minetest.chat_send_all(players[i])
    end

end

function coconut.add_hud(player)


local meta = player:get_meta()
local digs_text = "You: " .. meta:get_int("score:digs")
local places_text = "Ami: " .. meta:get_int("score:places")

player:hud_add({
    hud_elem_type = "text",
    position  = {x = 1, y = 0.5},
    offset    = {x = -120, y = -25},
    text      = "Stats",
    alignment = 0,
    scale     = { x = 100, y = 30},
    number    = 0xFFFFFF,
})

player:hud_add({
    hud_elem_type = "text",
    position  = {x = 1, y = 0.5},
    offset    = {x = -180, y = 0},
    text      = digs_text,
    alignment = -1,
    scale     = { x = 50, y = 10},
    number    = 0xFFFFFF,
})
end
