# ItemDefinition

This is a special JSON object that is used by [`CreateEffect`](../Items/CreateEffect.md) and [`ValueChanger`](../Misc/ValueChanger.md) to target specific items from other modpacks.

- When used with `CreateEffect`, it allows you to spawn items that originate from other modpacks.
- When used with `ValueChanger`, you can create dynamic values based upon the number of these specific items in your backpack.

**Note:** In order to target items from another modpack, the player must have both your modpack and the other (target) modpack installed at the same time.

The `ItemDefinition` object should consist of a single key:value pair, where the field name should match the `internal_name` of the target modpack which contains the item, and the value should match the `name` of the target item within that modpack.

|Field Name|Optional?|            Description            |Data Type|
|----------|---------|-----------------------------------|---------|
|`<any .*>`|         |Item name within the target modpack| `string`|

**Example usage:**

The following examples are based around the "Strength Cleaver" from the "Farlands Dwelling" modpack (which has the `internal_name` of "Farlands"):

=== "Example with CreateEffect"
    This example shows how you might use a CreateEffect to spawn a Farlands Dwelling "Strength Cleaver".
    ```json
        "create_effects": [
            {
                "trigger": "onUse",
                "create_items": [
                    {
                        "Farlands": "Strength Cleaver"
                    }
                ],
                "create_areas": [
                    "board"
                ]
            }
        ]
    ```

=== "Example with ValueChanger"
    This example shows how you might use a CombatEffect to add a Block amount equal to 5 times the number of "Strength Cleaver" in your backpack.
    ```json
        "combat_effects": [
            {
                "trigger": "onUse",
                "type": "Block",
                "target": "player",
                "value": {
                    "replace_with": "numOfItems",
                    "multiplier": 5,
                    "check_items": [
                        {
                            "Farlands": "Strength Cleaver"
                        }
                    ]
                }
            }
        ]
    ```

**Finding a Modpack's internal_name**

The `internal_name` of a modpack will often differ from its published name. Here's a quick and easy way to identify the `internal_name` of a modpack without having access to its source files:

1. Subscribe to the modpack and install it (by checking the corresponding box in the Ctrl+M menu)
2. During a run, open the debug menu (Ctrl+D) and press "Show Logs"
3. Search the logs for a line such as: `Debug Farlands - Strength Cleaver: Loading item Strength Cleaver`
4. This log has revealed that the modpack containing the "Strength Cleaver" has an `internal_name` of "Farlands".
