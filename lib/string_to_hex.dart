library string_to_hex;

/// A powerful conversion of [String] or/and Hash to HEX.
/// It returns a unique HEX, or a unique int of [Color()] per provided String/hash.
/// It's provided two methods [toHexString] and [toColor], which return a Hex-String, or respectively.
class StringToHex {
  /// This class get RGB Color
  /// by doing bits shifts from color [0xFF0000], [0x00FF00], [0x0000FF]

  static int _getInt(str) {
    var hash = 5381;

    for (var i = 0; i < str.length; i++) {
      hash = ((hash << 4) + hash) + str.codeUnitAt(i);
    }

    return hash;
  }

  /// Return a [String] of 'bit hex':
  /// Its return is proper to your custom manipulating (as you lik better 🧑‍💻).

  /// Returns a String HEX with prefix '0xFF'
  /// i.e: '0xFF343434'
  static String toHexString(str) {
    try {
      var hash = _getInt(str);
      var r = (hash & 0xFF0000) >> 16;
      var g = (hash & 0x00FF00) >> 8;
      var b = hash & 0x0000FF;

      var rr = r.toString();
      var gg = g.toString();
      var bb = b.toString();

      return '0xFF' + rr.substring(rr.length - 2) + gg.substring(gg.length - 2) + bb.substring(bb.length - 2);
    } catch (err) {
      print('Error: String Must be greater than range 2\n'
          '=========== hash string to hex ===========\n'
          '            string length = ${str.length}');
      return err.toString();
    }
  }

  /// Return a [int] of 'bit hex':
  /// Its return is proper to use as hex [color int] in a Color()
  /// For example: ``` ... color: Color(StringToHex().toColor('a nice String')) ... ```
  /// then it'll generate and fill a hex-color int in it.

  /// return a hex-color.
  /// i.e: 0xFF353535
  /// or: 8787451701
  static int toColor(str) {
    try {
      var hash = _getInt(str);
      var r = (hash & 0xFF0000) >> 16;
      var g = (hash & 0x00FF00) >> 8;
      var b = hash & 0x0000FF;

      var rr = r.toString();
      var gg = g.toString();
      var bb = b.toString();

      return int.parse(
          '0xFF' + rr.substring(rr.length - 2) + gg.substring(gg.length - 2) + bb.substring(bb.length - 2));
    } catch (err) {
      print('Error: String Must be greater than range 2\n'
          '=========== hash string to hex ===========\n'
          '            string length = ${str.length}');
      rethrow;
    }
  }
}
