minetest.register_alias("mapgen_stone", "main:stone")
minetest.register_alias("mapgen_dirt", "main:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "main:grass")
minetest.register_alias("mapgen_sand", "main:sand")
minetest.register_alias("mapgen_water_source", "main:water_source")




--Beach
minetest.register_biome(
   {
      name = "Beach",

      node_top = "main:sand",
      node_filler = "main:sand",

	  depth_top = 1,
      depth_filler = 3,

      y_min = -20,
      y_max = 32000,

      heat_point = 70,
      humidity_point = 55,
})


--Small Rock
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:grass", "main:sand"},
      rotation = "random",
      sidelen = 16,
      fill_ratio = 0.004,
      biomes = {"Beach"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_rock_cobble_small.mts",
      y_min = -32000,
      y_max = 32000,
})

--Tree
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:sand"},
      rotation = "random",
      sidelen = 32,
      fill_ratio = 0.003,
      biomes = {"Beach"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_tree.mts",
      y_min = 7,
      y_max = 32000,
})

--Payphone
minetest.register_decoration(
   {
      deco_type = "schematic",
      place_on = {"main:sand"},
      rotation = "random",
      sidelen = 256,
      fill_ratio = 0.001,
      biomes = {"Beach"},
      flags = "place_center_x, place_center_z",
      schematic = minetest.get_modpath("main")
         .. "/schematics/main_payphone.mts",
      y_min = 3,
      y_max = 32000,
})
