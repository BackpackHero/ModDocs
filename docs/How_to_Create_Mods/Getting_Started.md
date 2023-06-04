# Getting Started


## Prerequisites

To start modding Backpack Hero, you only need the following things:

- The Steam or Paid itch.io Version of Backpack Hero
- A text editor (Preferably one that supports syntax highlighting for JSON)
    - *Visual Studio Code or Nodepad++ are popular free choices*
- **(Optional)** A graphics editor that supports transparency
    - *Aseprite, Paint.NET or GIMP work very well*
- **(Optional)** An audio editor of your choice to edit sound effects and music

## Setting up your Modpack

**Step 1:** Find the Mods folder in your game folder

The folder is normally here: `<Your Steam Library Path>\steamapps\common\Backpack Hero\Backpack Hero_Data\StreamingAssets\Mods`

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



