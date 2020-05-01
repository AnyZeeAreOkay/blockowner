minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack, pointed_thing)
        minetest.get_meta(pos):set_string("oldnode", oldnode.name)
        minetest.get_meta(pos):set_string("owner", placer:get_player_name())

end)

minetest.register_on_dignode(function(pos, oldnode, digger)
    if digger == nil then return end
    minetest.get_meta(pos):set_string("oldnode", oldnode.name)
    minetest.get_meta(pos):set_string("digger", digger:get_player_name())

end)
