# ValueChanger

This is a special JSON object that replaces any numeric value on an item.
This allows you to replace the value of that property with a number of different variables concerning the item, inventory, combat, enemies, player stats and more.
These `ValueSources` can be multiplied and/or offset by either constants, or more ValueChangers. The formula this follows is `value = base_value + (source * multiplier)`.
Chaining multiple ValueChangers allows you to add more than one to a single property or create complex effect arrangements.

**Example usage:**
=== "Simple Example"
    This demonstrates using a ValueChanger in a `CombatEffect`. This creates an item that adds 5 block for every enemy that's currently alive.
    ```json
    "combat_effects": [
            {
                "trigger": "onTurnStart",
                "type": "Block",
                "value": {
                    "replace_with": "numOfEnemies",
                    "multiplier": 5
                }
            }
        ]
    ```

=== "Advanced Example"
    ValueChangers can be chained together, either using the base_value (to sum two ValueChangers) or using the multiplier (to multiply two ValueChangers with eachother).
    This demonstrates an item that adjusts its damage, based on how many Shields and Armor items are around it, and how many turns have passed this combat.
    ```json
    "combat_effects": [
            {
                "trigger": "onUse",
                "type": "Damage",
                "value": {
                    "replace_with": "numOfItemTypes",
                    "check_types": ["Shield","Armor"],
                    "check_area": ["adjacent","diagonal"],
                    "base_value": {
                        "replace_with": "numOfTurns"
                    }
                }
            }
        ]
    ```
    
|   Field Name  |    Optional?   |                                                                                                              Description                                                                                                              |                                        Data Type                                        |
|---------------|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| `replace_with`|                |  This sets where the value that replaces this should originate from. Some of them require further configuration with `check_items`, `check_types` and `check_area`. See the descriptions of the concerning `ValueSource` for details. |                         [`ValueSource`](../Enums/ValueSource.md)                        |
|  `baseValue`  |:material-check:| This value is added to the calulations **after** the source value has been multiplied by `multiplier`. This can either be a constant, or another `ValueChanger` (This allows you to chain multiple ValueChangers onto a single value) |                 `number`<br>**or**<br>[`ValueChanger`](ValueChanger.md)                 |
|  `mulitplier` |:material-check:|                     The `ValueSource` gets multiplied by this value. Negative and decimal constants are supported. Like with `baseValue`, you can also insert another `ValueChanger` here to chain them together.                     |                 `number`<br>**or**<br>[`ValueChanger`](ValueChanger.md)                 |
| `check_items` |:material-check:|                                                                 Use with ValueSource `numOfItems`, which counts instances of the items in this array in `check_area`.                                                                 |Array of `string` (item name)<br>**or**<br>[`ItemDefinition`](../Items/ItemDefinition.md)|
| `check_types` |:material-check:|                                                   Use with ValueSource `numOfItemTypes`, which counts instances of items, that have an `ItemType` from this array, in `check_area`.                                                   |                       Array of [`ItemType`](../Enums/ItemType.md)                       |
|  `check_area` |:material-check:|                               Use with ValueSources `numOfItems`, `numOfItemTypes`, `numOfPocketsInArea`, `sizeOfItem`. This is the area that these sources search in.<br>**Default value**: `['board']`                              |                       Array of [`ItemType`](../Enums/ItemType.md)                       |
|`area_distance`|:material-check:|Defines the distance the check_area checks. E.g. if your area is `column` and your distance is `closest`, it would only search in this column that's closest to the item this ValueChanger originates from.<br>**Default value**: `all`|                        [`AreaDistance`](../Enums/AreaDistance.md)                       |
