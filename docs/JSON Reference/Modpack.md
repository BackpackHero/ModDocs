# Modpack Metadata

This is the JSON structure of `modpack.json`. Place this file in the root of your modpack folder.

|  Field Name |    Optional?   |                                                                           Description                                                                           |                           Data Type                          |
|-------------|----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|    `name`   |                |                                         Name of Modpack. This gets displayed in the modpack menu and on the item cards.                                         |`string`<br>**or**<br>[`MultiLanguage`](Misc/MultiLanguage.md)|
|`description`|:material-check:|                                                     Custom description to be displayed in the modpack menu.                                                     |`string`<br>**or**<br>[`MultiLanguage`](Misc/MultiLanguage.md)|
|   `author`  |:material-check:|                                                    Author of the modpack. Gets displayed in the modpack menu.                                                   |`string`<br>**or**<br>[`MultiLanguage`](Misc/MultiLanguage.md)|
|  `version`  |:material-check:|                         Version number of the modpack. Gets displayed in the modpack menu. Format should be something like this: `1.0.0`                        |                  `string` (Modpack Version)                  |
|  `website`  |:material-check:|A website, forum, discord server associated with the modpack. If set, modpack gets a 'Website' button on its entry in the modpack menu. Must be valid HTTP(S) URL|                        `string` (URL)                        |