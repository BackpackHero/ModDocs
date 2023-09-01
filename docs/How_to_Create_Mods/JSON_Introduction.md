# Quick Introduction To JSON

Items consist of JSON files with the `.item.json` file extension and sprites in PNG format, both inside the `Items` folder of your modpack. 
This page describes basic JSON Syntax that is used for making items (and other content in the future).


## Objects
All item properties are set within the `.item.json` file, within a `JSON Object` (using curly brackets), like so:
```json
{
    "a_property": "value",
    "another_setting": "another value",
    "a_yes_or_no_question": true,
    "my_favorite_number": 1337
}
```
## Arrays
Sometimes, it is nessesary to attach more than one value to a property. For this you should use a `JSON Array` (Square brackets).
Multiple values are seperated by values, Like so:
```json
    "shopping_list": ["Eggs","Milk","Bread","Apples"]
```
## Enums
While not formally a part of the JSON Standard, Backpack Hero heavily relies on special values called `Enums`. 
Enums are basically text values, picked from a limited list of possible values.
Imagine there was a `weather` property of type `WeatherType`, which allows for `Sunny`,`Overcast`,`Rain`,`Storm`. You could only use those four texts as the value of this property.
```json
    "weather_today": "Sunny",
    "weather_tomorrow": "Overcast",
    "weather_next_week": ["Sunny","Rain","Overcast","Sunny","Storm","Overcast","Sunny"]
```
`Enums` are **case in-sensitive**. It is however strongly recommended to maintain cases, in case this changes. 
## Nesting Objects and Arrays
In JSON, values can't just contain text, numbers or true/false, but also more objects.<br>
Objects, and Arrays can be nested many levels deep. This concept is heavily used for item effects. Notice the curly brackets inside the property:
```json
    "my_car": {
        "color": "red",
        "max_speed": 160,
        "passengers" : ["Binary","Jas","Gangs"]
    }
```
This also applies to values in Arrays. Notice the curly brackets seperated by commas inside the square brackets:
```json
    "fruits": [
        {
            "name":"Apple",
            "yummy":true,
        },
        {
            "name":"Cherry",
            "yummy":true,
        },
        {
            "name":"Watermelon",
            "yummy":false,
        },
    ]
```


