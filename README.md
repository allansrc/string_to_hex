# string_to_hex [![pub package](https://img.shields.io/badge/pub-0.2.2_null_safety-blue)](https://pub.dev/packages/string_to_hex)

A powerful conversion of [String] or/and Hash to HEX.
It returns a unique HEX, or a unique int of [Color()] per provided String/hash.
It's provided two methods [toHexString] and [toColor], which return a Hex-String, or integer of Color() respectively.

## Default:

This package return hex-string or hex-int-color, check bellow:

#### toColor()

Return a [int] of 'bit hex':
Its return is proper to use as hex [color int] in a Color()
For example: `... color: Color(StringToHex.toColor('a nice String')) ...`
then it'll generate and fill a hex-color int in it.

    return a hex-color.
    i.e: 0xFF353535
    or: 8787451701

##### how to:

you can use as:

```
  var myNiceColor = StringToHex.toColor('your nice string');
    ...
    color: Color(myNiceColor);
    ...
```

or:

```
...
color: Color(StringToHex.toColor('your nice string'));
...
```

#### toHexString()

Return a [String] of 'bit hex':
Its return is proper to your custom manipulating (as you lik better 🧑‍💻).

    Returns a String HEX with prefix '0xFF'
    i.e: '0xFF343434'

## Example:

[This example app shows all implementations](https://github.com/allansrc/string_to_hex/tree/master/example)

| App shot                                                                                                     |
| ------------------------------------------------------------------------------------------------------------ |
| <img src="https://github.com/allansrc/string_to_hex/blob/master/image/ezgif-4-ad8ddb7cb25a.gif" width="250"> |

![App Shots](https://github.com/allansrc/string_to_hex/blob/master/image/ezgif-4-ad8ddb7cb25a.gif)

Have a Nice Code!
