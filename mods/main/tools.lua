minetest.register_item(":",
{
	type = "none",
	wield_image = "hand.png",
	wield_scale = {x=1,y=1,z=3.5},
	tool_capabilities =
	{
		max_drop_level = 0,
		full_punch_interval = 0.4,
		
		groupcaps =
		{
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0},
			cracky = {times={[1]=12.00}, uses=0, maxlevel=1},
			crumbly = {times={[2]=4.50, [3]=1.80}, uses=0, maxlevel=1},
		},
		damage_groups = {cracky = 1},
	}
})

minetest.register_item("main:drill",
{
	type = "none",
	wield_image = "main_drill.png",
	inventory_image = "main_drill.png",
	tool_capabilities =
	{
		max_drop_level = 1,
		full_punch_interval = 0.8,
		
		groupcaps =
		{
			cracky = {times={[1]=1, [2]=2.00,[3]=1.50}, uses=0, maxlevel=1},
		},
		damage_groups = {cracky = 8},
	}
})

minetest.register_item("main:pickaxe_tier2",
{
	type = "none",
	wield_image = "main_pickaxe_tier2.png",
	inventory_image = "main_pickaxe_tier2.png",
	tool_capabilities =
	{
		max_drop_level = 1,
		full_punch_interval = 0.8,
		
		groupcaps =
		{
			cracky = {times={[1]=2, [2]=2.00,[3]=1.50}, uses=0, maxlevel=1},
		},
		damage_groups = {cracky = 8},
	}
})

minetest.register_item("main:pickaxe_steel",
{
	type = "none",
	wield_image = "main_pickaxe_steel.png",
	inventory_image = "main_pickaxe_steel.png",
	tool_capabilities =
	{
		max_drop_level = 1,
		full_punch_interval = 0.8,
		
		groupcaps =
		{
			cracky = {times={[1]=4, [2]=2.00,[3]=1.50}, uses=0, maxlevel=1},
		},
		damage_groups = {cracky = 8},
	}
})

minetest.register_item("main:pickaxe_stone",
{
	type = "none",
	wield_image = "main_pickaxe_stone.png",
	inventory_image = "main_pickaxe_stone.png",
	tool_capabilities =
	{
		max_drop_level = 1,
		full_punch_interval = 0.8,
		
		groupcaps =
		{
			cracky = {times={[1]=6, [2]=2.00,[3]=1.50}, uses=0, maxlevel=1},
		},
		damage_groups = {cracky = 5},
	}
})

minetest.register_item("main:hatchet",
{
	type = "none",
	wield_image = "main_hatchet.png",
	inventory_image = "main_hatchet.png",
	tool_capabilities =
	{
		max_drop_level = 1,
		full_punch_interval = 0.8,
		
		groupcaps =
		{
			cracky = {times={[1]=8, [2]=2.00,[3]=1.50}, uses=0, maxlevel=1},
		},
		damage_groups = {cracky = 5},
	}
})


