local modname = minetest.get_current_modname()
local path = minetest.get_modpath(modname)

minetest.log("action","[mcl_chests] Loading")
if minetest.get_modpath("default") then
	dofile(path .. "/mt_game.lua")
	minetest.log("action","[mcl_chests] Loaded `minetest_game` support!")
elseif minetest.get_modpath("mcl_init") then
	dofile(path .. "/mineclone2.lua")
	minetest.log("action","[mcl_chests] Loaded `mineclone2` support!")
else
	minetest.log("error","[mcl_chests] This `mcl_chests` fork is just for `minetest_game` and `mineclone2`!")
	minetest.log("error","[mcl_chests] You can contact *Emojiminetest* to ask him to add more support for your game.")
	minetest.log("error","[mcl_chests] Contact E-mail: `yiufamily.hh@gmail.com`")
end
