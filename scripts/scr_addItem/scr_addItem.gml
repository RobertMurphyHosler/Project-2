/*
//function addItem
//description add an item to a grid
//argument0 DSGrid Grid_To_Add
//argument1 String Item_Name
//argument2 Int Item_Amount
//argument3 String Item_Description
//argument4 Sprite Item_Sprite
//argument5 Script Item_Script

gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5; 

//case 1, item is already in the inventory
for (i = 0; i < ds_grid_height(gridToAddTo); ++i)  //++i is the same as i+1
{
	//0 = item name and i is item slot
	if(ds_grid_get(gridToAddTo, 0, i) == newItemName)// code here
	{
		ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) +newItemAmount)
		//meant to return false so we know somehting went wrong
		return true;
	}
}

//case 2, item is not already in the inventory
	//meant to check if the grids not empty
if (ds_grid_get(gridToAddTo, 0, 0) != 0) 
{
	ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1);
}
newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);

return true;

/*
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_addItem(){

}