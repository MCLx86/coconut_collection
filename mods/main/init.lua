local modpath = minetest.get_modpath("main")

dofile(modpath.."/nodes.lua")
dofile(modpath.."/craftitems.lua")
dofile(modpath.."/mapgen.lua")
dofile(modpath.."/tools.lua")

minetest.register_on_joinplayer(function(player)
	player:hud_set_hotbar_image("gui_hotbar.png")
	player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
end)
