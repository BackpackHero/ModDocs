# Item Basics

## General Settings

This section describes general properties of your item, like the name, sprite, item type, rarity or shape. Some are required, some are optional.
Here's a highlight of the most important properties. For a full format description, see the [JSON Reference](../JSON_Reference/Items/).


### Name, Rarity, and Item Type

`name` defines the name of your item, as seen on the item card. You can either just set the name as a simple text, or, if you want to support multiple languages, you can set it as a [MultiLanguage object](../JSON_Reference/Misc/MultiLanguage.md)
```json
    "name":"A cool item",
```
Or as a MultiLanguage Object
```json
    "name": {
        "English":"A cool item",
        "German": "Ein Cooler Gegenstand"
    },
```

`rarity` is a `Enum` object, meaning it accepts text values, from a predetermined [list of values](../JSON_Reference/Enums/Rarity.md). This sets the rarity of your item. `Relic` is not a Rarity, but an Item Type and should be set to "Legendary".
```json
    "rarity":"Legendary",
```
`type` defines the list of Item Types of your item. It is an `Array` of `Enums` of [ItemTypes](../JSON_Reference/Enums/ItemType.md). Some Values are reserved for certain types of items and may require additional settings. Some other types may impact the spawn behavior of your items. For example items of type `Curse` will never show up in normal combat rewards, unless the player was cursed.
```json
    "type":["Melee","Weapon"]
```


**This page is work in progress. Please see [JSON Reference](../JSON_Reference/Items/) for more details.**