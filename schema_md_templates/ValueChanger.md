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

#TABLE#