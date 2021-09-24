// a java object for an inventory
// can be edited to better suit needs
// some of this is comments describing what will happen
// you will need to make judgement calls on how to implement them

//public class Item
//{
    // an item class which encapsulates item details

    // some nescessary info
    //private String name;
    //private String description;
    //private int stack;

    // there should be a set defined max stack checker for items somewhere
    // perhaps using a hashtables dictionary https://www.educative.io/edpresso/how-to-create-a-dictionary-in-java
    // this hashtable will be <String, Integer>, and defined by you


/*
Item(String name, string desription, int stack = 1)
{
// constructor
	this.name = name;
    this.desription = desription;
    this.stackable = stackable;
    this.stack = stack;
    this.maxStack = maxStack;
}

// getters
String getName()
{
	return this.name;
}
String getDescription()
{
	return this.description;
}
int getStack()
{
	return this.stack;
}

// specialized functions
Item merge(Item other)
{
	int maxStack = maxStackChecker.get(this.name); // getting our max stack now
		if (this.name.equals(other.getName()) && this.stack < maxStack)
		{
            // if the items have the same name
            // and this has  less than the max stack
            
            // our total # of items between the 2 stacks
            int total = this.stack + other.getStack();

            // the difference between total and max stack
            int remain = total - maxStack;

            if (remain<=0)
			{
                // if we are bellow or at the max stack
                this.stack = total;
                return null;
            }
            else
			{
                // otherwise, return the remainder back to the hand
                return new Item(this.name,this.description,remain);
                // this is done as a new item
            }
        }
        else
		{
            // if the objects will not stack
            // i.e. different objects, or the one in the inventory is full stack
            return other;
        }
}

// implementation: (in other places)

//{ // in the player object
int inventory_size = 20
Item[] inventory = new Item[20]
Hashtable<String,Integer> open_spots = new Hashable<String,Integer>();
// this hash table will keep track of where items with < full stack can be placed
int next_avail = 0;

item pickup(Item item)
{
	// handles on pickup
	// assuming items in the world are defined as stacks (1 to max)

	if(open_spots.containsKey(item.getName()))
	{
		// if we have an incomplete stack that needs filling
		// getting the position
		int pos = open_spots.get(item.getName());
		// merging the stacks
		item = inventory[pos].merge(item);
		// if we have a full stack in the spot
		if(inventory[pos].isFull())
		{
			// remove the listing in the dict
			open_spots.remove(inventory[pos].getName());
		}
		// if we have a remainder stack
		if (item != null)
		{
			return pickup(item);
		}
		}
		else
		{
			// when there is not a listing
			
			if(0 <= next_avail < inventory_size)
			{
				// if we still have an empty spot
				// just put the stack into this empty spot
				inventory[next_avail] = item;
				// then change the next available to reflect that
				findNextOpen();
				// then return nothing
				return null;
			}
			else
			{
				// in case we cannot pick it up
				return item
			}
		}
}
public void findNextOpen()
{
	boolean search = true;
	next_avail = 0;
	while(search)
	{
		if(inventory[next_avail] != none)
		{
			// if we are in a used spot
			// go to the next spot
			next_avail += 1;
		}
		else
		{
			// when we finally find an empty spot
			search = false;
		}
	}
}

{ // in the gui visual update code
	// define a function/object to open the inventory screen
    //  you can lay this out however

    // a private vairable for when moving items
    private Item mover;

    // iterate over the inventory list to find what to display
    // ex:
    for (int i = 0; i < player.inventory.size(); i++)
	{
        if (player.inventory[i] != null)
		{
            // this will check if there is an item at the spot
            // then you will need to find the correct item sprite for the item name
        }
    }
    // then see if there is an object in the player's hand
    if (mover != null)
	{
        // if the mover holder has something
        // first, get the correct sprite
        // next, get the mouse position
        // then put the image near the mouse
    }
}

// the onclick stuff (however and wherever this is defined)
onclick
{
    // do some math to determine which inventory spot is clicked
    int spot = locate();
    if(mover != null)
	{
        // if we have something in hand
        if(0 <= spot < player.inventory_size)
		{
            // if the spot is within the inventory
            if(player.inventory[spot] != null)
			{
                // if there is an item in the spot
                mover = player.inventory[spot].merge(mover);
                // see the merge code in Items
            }
            else
			{
                //when we have an item in hand and have clicked on an empty spot
                player.inventory[spot] = mover;
                mover = null;
            }
        }
        else
		{
            // otherwise, handle the cases of dropping/putting into equip slots
            // should give these cases unique numbers
            // the equip slots should be interracted with similarly to the inventory
            // but as individual item variables
            // and perhaps some logic for preventing equiping things into slots they do not belong
            if (spot == drop)
			{
                // in case we drop an item from the inventory
                // you will need to implement this part:
                // put the stack back into the world
                // after that, just call this function to recheck emptiness
                player.findNextOpen();
            }
        }
    }
    else
	{
        // when we have an empty hand
        if ((0 <= spot < player.inventory_size) && player.inventory[spot] != null)
		{
            // if we want to pick up the item
            holder = player.inventory[spot];
            player.inventory[spot] = null;
        }
        // and nothing happend with empty hand and slot, so no need to do anything
        // could maybe hide an easter egg by keeping track of how many clicks outside with empty hand
    }
}

