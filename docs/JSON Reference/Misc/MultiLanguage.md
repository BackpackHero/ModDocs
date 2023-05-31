# MultiLanguage

This is a JSON object that replaces a `string` to allow for localization.
The field key is the language name, and the field value is the text for that language.
Any languages that do not have a translation default to the English text.

**Example usage in an item (Flavor text):**

```json
"flavor":
    {
        "english":"This is a powerful weapon!",
        "german":"Das ist eine starke Waffe!"
    }
```