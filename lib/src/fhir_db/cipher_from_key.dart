import 'dart:convert';

import 'package:hive/hive.dart';

export 'package:hive/hive.dart' show HiveCipher;

const String nonRandomSalt = '±¾³½÷×¼ƒ¢ª¤®£°¥º';

/// Generates the cipher directly from a key (password)
HiveAesCipher? cipherFromKey({String? key}) {
  if (key == null) {
    return null;
  } else {
    List<int> encoded = utf8.encode(key);
    if (encoded.length == 32) {
      return HiveAesCipher(encoded);
    } else if (encoded.length > 32) {
      return HiveAesCipher(encoded.sublist(0, 32));
    } else {
      encoded =
          encoded + utf8.encode(nonRandomSalt).sublist(0, 32 - encoded.length);
      return HiveAesCipher(encoded);
    }
  }
}
