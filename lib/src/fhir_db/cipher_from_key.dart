import 'dart:convert';
import 'package:hive_ce/hive.dart';

// ignore: public_member_api_docs
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
