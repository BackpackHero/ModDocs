# Publishing your Modpack

## Checklist

Here's a little checklist to make sure your modpack works properly before publishing

- **Check Logs.** Make sure your modpack loads correctly. No items should throw an error. You can access the logs from the Debug Menu (CTRL-D)
- **Check Descriptions.** Make sure the effect descriptions of your item cards are correct. The game has a limited amount of built-in descriptions, but does not have text for every possible scenario. There is a "text generator" that attempts to generate a description. This is meant as a helping tool while developing, and can result in missing or incorrect descriptions. Logs will show a Warning message when this text generator is used. You can create override descriptions using the `description` and `trigger_description` properties. See Custom Descriptions for more info.
- **Add an `internal_name` to your modpack.** The internal name is used to identify your modpack. No two modpacks can have the same internal_name, so make sure it is descriptive and unique. This internal name can be used by you or other mod authors to reference your content in their mods (e.g in create effects). If you do not set an internal_name, the name of the folder is used (which is your modpack's workshop id once published).
- **Add a workshop thumbnail.** You can add a thumbnail/icon for the Workshop Interface by adding a file called `workshop_thumbnail.png` to the root folder of your modpack. The file should have square dimensions and be below 1MB in size. 512x512px is recommended. Make it pretty, the first impression counts!


## Publishing

- In-game, navigate to the Mod Selection Menu, either through the title screen or the CTRL-M shortcut (while in debugging mode).
- Press and hold ALT on your keyboard
- A new button labeled "Publish to workshop" should appear alongside your modpack. Press it, while still holding ALT.
- A new menu pops up, asking you if you want to publish your modpack. You may need to accept the [Steam Workshop Legal Agreement](https://steamcommunity.com/workshop/workshoplegalagreement/)
- Set any apropriate tags, add some release notes if you want (They will show up alongside updates you make to your mod), and click "Publish Modpack"
- Afterwards, you will be able to press the little Steam Icon alongside your modpack. This will open your modpack's workshop page where you can edit title, description and add screenshots if you wish.

 **Note:** Your modpack is public by default, you can change this on your workshop page.

**Updating** is done much in the same way as publishing. Just follow the same steps, and make sure to include some Release Notes, so that people know about all the cool stuff you added!




