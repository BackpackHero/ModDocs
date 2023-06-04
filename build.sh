# Enums
python schema2md.py enum schemas/Enum/ schema_md_templates/enum.md "docs/JSON_Reference/Enums/"

# Item Components
python schema2md.py schemas/Costs.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Costs.md"
python schema2md.py schemas/LimitedUses.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/LimitedUses.md"
python schema2md.py schemas/Trigger.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Trigger.md"
python schema2md.py schemas/ItemStatusEffect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/ItemStatusEffect.md"
python schema2md.py schemas/Effect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Effect.md"
python schema2md.py schemas/Modifier.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/Modifier.md"
python schema2md.py schemas/MovementEffect.schema.json schema_md_templates/generic.md "docs/JSON_Reference/Items/MovementEffect.md"


python schema2md.py schemas/Item.schema.json schema_md_templates/item.md "docs/JSON_Reference/Items/Item.md"
python schema2md.py schemas/modpack.schema.json schema_md_templates/modpack.md "docs/JSON_Reference/Modpack.md"

mkdocs build