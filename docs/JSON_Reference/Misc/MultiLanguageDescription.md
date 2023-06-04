# MultiLanguageDescription

This is a JSON object that replaces a `string` to allow for localization.
It is similar to [MultiLanguage](MultiLanguage.md) but instead of just defining a string, it defines Trigger/Description pair.

The field key is the language name, and the field value is an object, where the field key is the trigger text and the field value is an array of strings.
Any languages that do not have a translation default to the English text.

*Please note that this is only used for extra custom descriptions. Custom Descriptions that replace combat effects, modifiers or similar define their triggers and descriptions seperately.*

**Example usage in an item (Custom description text):**

```json
"description":
    {
        "english":
        {
            "On Use":["Pats the enemy on the head","Drinks some tea"]
        },
        "german":
        {
            "Wenn Benutzt":["Klopft dem Gegner auf dem Kopf","Trinkt etwas Tee"]
        }
    }
```