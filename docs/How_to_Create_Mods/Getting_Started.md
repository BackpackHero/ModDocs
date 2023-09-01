# Getting Started


## Prerequisites

To start modding Backpack Hero, you only need the following things:

- The Steam or Paid itch.io Version of Backpack Hero
- A text editor (Preferably one that supports syntax highlighting for JSON)
    - *Visual Studio Code or Nodepad++ are popular free choices*
    - If you are using Visual Studio Code, it's highly recommended that you install the [Backpack Hero Modding Helper extension](https://marketplace.visualstudio.com/items?itemName=TeamBackpack.backpack-hero-modding)
        -  This extension adds auto-completion, useful templates, descriptions and validation for Mods to VSCode
- **(Optional)** A graphics editor that supports transparency
    - *Aseprite, Paint.NET or GIMP work very well*
- **(Optional)** The [BaseGameExports modpack](../assets/BaseGameExports_Version2.zip)
    - This modpack contains a lot of the items from the base game and can be used as a reference on how to implement more complex effects


## Setting up your Modpack

**Step 1:** Find the Mods folder in your game folder

The folder is normally here: `<Your Steam Library Path>\steamapps\common\Backpack Hero\Mods`

**Step 2:** Inside this folder, create a new folder for your modpack (e.g. `ReallyCoolMods`)

**Step 3:** Create a file called `modpack.json` in this folder, open it in your text editor and add the following JSON text:

```json
{
    "name": "Your Modpack Name", 
    "description": "A text describing your modpack",
    "author":"Your Name"
}

```
There are more options you can set in this file. See [Modpack Metadata](../JSON_Reference/Modpack.md) for more info.

**Step 4:** If you have a logo for your modpack, place it in the same folder as `logo.png`. The logo must be **exactly** 32 x 32px in size.

## Your First Item

Here's where it gets fun! Making simple items is not difficult if you know a bit of JSON syntax! 

**Step 1:** In the folder of your modpack, create a folder called `Items`. All your items and item sprites will be placed in this folder.

**Step 2:** Create a file with the file extension `.item.json` and open it up in your editor. If you have a sprite for your item, place it in the same folder. If you do not, a placeholder sprite will be used.

**Step 3:** Start making your item. For a rough overview of what's possible, check out [Item Basics](Item_Basics.md). If you're an advanced user, check out the [JSON Reference](../../JSON_Reference/Items/) for the full overview. <br>**You can also browse through the [BaseGameExports modpack](../assets/BaseGameExports_Version2.zip) to have a look at how we made some of your favorite base game items. A base game item or parts of it can make a great template for some cool modded items.**<br><br>
*Here's an example file for a basic sword to get you started:*
```json
{
  "name": "Example Sword",
  "sprite": "Example Sword.png",
  "shape": ["X",
            "X",
            "X"],
  "rarity": "Common",
  "type": ["Melee", "Weapon"],
  "use_costs": {"energy": 1},
  "animation": "Attack",
  "combat_effects": [
    {"trigger": "onUse", "type": "Damage", "value": 7, "target": "enemy" },
    {"trigger": "onUse", "type": "HP"    , "value": 1, "target": "player"}
  ],
  "flavor": "What a nice and simple sword!"
}
```
*This common 1x3 sword inflicts 7 damage to the enemy and heals the player for 1 HP, when the item is used. It takes 1 energy to use this item.*


## Seeing your Mod in Action (Debugging Mode)

Now it's time to test your creation! Open the game and select "Mods" from the main menu. Turn on debugging mode and your modpack, and start a run with the character of your choice.

With debugging mode you have the ability to spawn items, give yourself better stats and hot reload your modpack, to instantly see the changes you made without restarting.

To access the various debugging menus, there are 3 main shortcuts:

**CTRL-D** Opens the main debugging menu, which lets you spawn items, manipulate stats, attack enemies, switch floors, walk through walls and more!
It also lets you reload your items without restarting the game or the run. While working on an item, I'd recommend using "Reload and Respawn" which not only reloads your modded items, but also respawns existing items in your inventory, so that your changes are reflected instantly. 

**CTRL-S** Is a direct shortcut to the item spawn menu. This lets you really quickly set up your inventory just how you need it to test your items, or lets you quickly explore the content added by other modpacks.

**CTRL-M** Opens the Mod Selection menu from the title screen during a run. This is normally not possible as it can lead to instability, you can however use this to quickly toggle modpacks on and off for testing.





