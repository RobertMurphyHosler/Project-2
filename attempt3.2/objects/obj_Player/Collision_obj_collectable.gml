//this allows for any of the children of this object to be collected instead of setting it up for every object
//other refers to the item you are colliding with
var key = other.object_index;

//set value to object picked up
var value = 1;

//checks if the item already exists in the inventory
if (ds_map_exists(inventory, key))
{
	//updates the value of the amount of the same items
	value += ds_map_find_value(inventory, key);
}
//add it to the inventory
ds_map_add(inventory, key, value);

//to destroy the object upon picking it up, to keep it from giving you an unlimitate amount
instance_destroy(other);

show_message("key" + string(key) +", value" + string(value));

