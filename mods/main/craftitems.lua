---------------
---------------
--Craft Items--
---------------
---------------

--Stick
minetest.register_craftitem("main:stick", {
	description = "Stick",
	inventory_image = "main_stick.png",
})

--Twig
minetest.register_craftitem("main:twig", {
	description = "Twig",
	inventory_image = "main_twig.png",
})


----------
--Minerals
----------

--Salt Crystals
minetest.register_craftitem("main:salt_crystals", {
	description = "Salt Crystals",
	inventory_image = "main_salt_crystals.png",
})

--Sulfur Lump
minetest.register_craftitem("main:lump_sulfur", {
	description = "Sulfur Lump",
	inventory_image = "main_lump_sulfur.png",
})

--Coal
minetest.register_craftitem("main:coal", {
	description = "Coal",
	inventory_image = "main_lump_coal.png",
})

--Iron Lump
minetest.register_craftitem("main:lump_iron", {
	description = "Iron Lump",
	inventory_image = "main_lump_iron.png",
})

--Copper Lump
minetest.register_craftitem("main:lump_copper", {
	description = "Copper Lump",
	inventory_image = "main_lump_copper.png",
})

--Raw Diamond
minetest.register_craftitem("main:diamond_raw", {
	description = "Raw Diamond",
	inventory_image = "main_dirt.png", -- Dummy/placeholder texture, will be changed in the future
	--inventory_image = "main_diamond_raw.png",
})

--Polished Diamond
minetest.register_craftitem("main:diamond_polished", {
	description = "Polished Diamond",
	inventory_image = "main_dirt.png", -- Dummy/placeholder, will be changed in the future
	--inventory_image = "main_diamond_polished.png",
})
---------
--Edibles
---------

--Strawberry
minetest.register_craftitem("main:berry_straw", {
	description = "Strawberry",
	tiles = {"main_berry_straw.png"},
	on_use = minetest.item_eat(1),
})
