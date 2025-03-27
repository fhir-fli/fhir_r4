import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:hive_ce/hive.dart';

/// Static salt for key padding
const String nonRandomSalt = '±¾³½÷×¼ƒ¢ª¤®£°¥º';

/// Generates the cipher directly from a key (password)
HiveAesCipher? cipherFromKey({String? key}) {
  if (key == null || key.isEmpty) {
    return null;
  }

  // Encode the key and apply padding using the non-random salt
  List<int> encoded = utf8.encode(key);
  if (encoded.length < 32) {
    encoded =
        encoded + utf8.encode(nonRandomSalt).sublist(0, 32 - encoded.length);
  } else if (encoded.length > 32) {
    // Use HMAC-SHA256 to derive a 32-byte key from longer passwords
    final hmac = Hmac(sha256, encoded); // HMAC-SHA256
    encoded = hmac.convert(utf8.encode(nonRandomSalt)).bytes.sublist(0, 32);
  }

  return HiveAesCipher(encoded);
}
