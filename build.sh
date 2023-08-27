# Enums
python schema2md.py enum schemas/Enum/ schema_md_templates/enum.md "docs/JSON_Reference/Enums/"

# Misc Components
python schema2md.py schemas/ValueChanger.schema.json schema_md_templates/ValueChanger.md "docs/JSON_Reference/Misc/ValueChanger.md"

# Item Components
python schema2md.py schemas/Costs.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Costs.md"
python schema2md.py schemas/LimitedUses.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/LimitedUses.md"
python schema2md.py schemas/Trigger.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Trigger.md"
python schema2md.py schemas/Effect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Effect.md"
python schema2md.py schemas/CombatEffect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/CombatEffect.md"
python schema2md.py schemas/CreateEffect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/CreateEffect.md"
python schema2md.py schemas/ItemStatusEffect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/ItemStatusEffect.md"
python schema2md.py schemas/Modifier.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Modifier.md"
python schema2md.py schemas/AddModifier.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/AddModifier.md"
python schema2md.py schemas/MovementEffect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/MovementEffect.md"
python schema2md.py schemas/ItemDefinition.schema.json schema_md_templates/ItemDefinition.md "docs/JSON_Reference/Items/ItemDefinition.md"

python schema2md.py schemas/Modules/Movable.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Modules/Movable.md"
python schema2md.py schemas/Modules/Manastone.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Modules/Manastone.md"
python schema2md.py schemas/Modules/Carving.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Modules/Carving.md"

python schema2md.py schemas/Item.schema.json schema_md_templates/item.md "docs/JSON_Reference/Items/Item.md"
python schema2md.py schemas/Item.schema.json schema_md_templates/item.md "docs/JSON_Reference/Items/index.md"
python schema2md.py schemas/modpack.schema.json schema_md_templates/modpack.md "docs/JSON_Reference/Modpack.md"

mkdocs build