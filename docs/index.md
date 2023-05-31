# Welcome to Backpack Hero Modding

This website provides information on how to create and install mods for the game "Backpack Hero".

```json
{
    "name": "Apple",
    "sprite": "sprite@Apple_0.png",
    "type": [
        "Consumable"
    ],
    "rarity": "Common",
    "animation": "UseItem",
    "shape": [
        "X"
    ],
    "use_limits": [
        {
            "type": "total",
            "value": 3
        }
    ],
    "combat_effects": [
        {
            "trigger": "onUse",
            "type": "HP",
            "value": 1,
            "target": "player"
        },
        {
            "trigger": "onUse",
            "type": "Regen",
            "value": 1,
            "target": "player"
        }
    ],
    "create_effects": [
        {
            "trigger": "onDestroy",
            "create_type": "replace",
            "create_areas": [
                "self"
            ],
            "create_items": [
                "Apple Core"
            ]
        }
    ],
    "modifiers": [
        {
            "mod_length": "permanent",
            "trigger": "onOutOfUses",
            "effects": [
                {
                    "type": "Destroy"
                }
            ]
        }
    ]
}
```


