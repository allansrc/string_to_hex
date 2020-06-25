# string_to_hex

  /// A powerful conversion of [String] or/and Hash to HEX.
  /// It returns a unique HEX, or a unique int of [Color()] per provided String/hash.
  /// It's provided two methods [toHexString] and [toColor], which return a Hex-String, or respectively.

  /// This class get RGB Color
  /// by doing bits shifts from color [0xFF0000], [0x00FF00], [0x0000FF]

  /// Return a [String] of 'bit hex':
  /// Its return is proper to your custom manipulating (as you lik better 🧑‍💻).

  /// Return a [int] of 'bit hex':
  /// Its return is proper to use as hex [color int] in a Color()
  /// For example: ``` ... color: Color(StringToHex().toColor('a nice String')) ... ```
  /// then it'll generate and fill a hex-color int in it.

  /// return a hex-color.
  /// i.e: 0xFF353535
  /// or: 8787451701

  /// Returns a String HEX with prefix '0xFF'
  /// i.e: '0xFF343434'

  /// you can use as: [ 
  ///   var myNiceColor = StringToHex().toColor('your nice string');
  ///   ...
  ///   color: Color(myNiceColor);
  ///   ...
  /// ]
  /// or: [ 
  ///   ...
  ///   color: Color(StringToHex().toColor('your nice string'));
  ///   ...
  /// ]