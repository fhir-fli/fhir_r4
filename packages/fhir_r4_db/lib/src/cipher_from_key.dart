import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:crypto/crypto.dart';

/// Number of iterations for PBKDF2 (adjust based on performance needs).
const int pbkdf2Iterations = 100000;

/// Generates a cryptographically secure random salt.
List<int> generateSalt() {
  return List<int>.generate(32, (i) => Random.secure().nextInt(256));
}

/// PBKDF2-HMAC-SHA256 implementation (RFC 2898).
List<int> pbkdf2({
  required String password,
  required List<int> salt,
  required int iterations,
  required int keyLength,
}) {
  final passwordBytes = utf8.encode(password);
  final hmac = Hmac(sha256, passwordBytes);
  const hashLength = 32;

  final blocksNeeded = (keyLength + hashLength - 1) ~/ hashLength;
  final result = <int>[];

  for (var blockNum = 1; blockNum <= blocksNeeded; blockNum++) {
    final blockSalt = <int>[
      ...salt,
      (blockNum >> 24) & 0xFF,
      (blockNum >> 16) & 0xFF,
      (blockNum >> 8) & 0xFF,
      blockNum & 0xFF,
    ];

    var u = hmac.convert(blockSalt).bytes;
    final blockResult = List<int>.from(u);

    for (var i = 1; i < iterations; i++) {
      u = hmac.convert(u).bytes;
      for (var j = 0; j < hashLength; j++) {
        blockResult[j] ^= u[j];
      }
    }

    result.addAll(blockResult);
  }

  return result.sublist(0, keyLength);
}

/// Gets or creates a salt file for this database instance.
Future<List<int>> getOrCreateSalt(String dbPath) async {
  final saltFile = File('$dbPath/.fhir_db_salt');

  if (saltFile.existsSync()) {
    final saltBytes = await saltFile.readAsBytes();
    if (saltBytes.length == 32) {
      return saltBytes;
    }
  }

  final salt = generateSalt();
  await saltFile.parent.create(recursive: true);
  await saltFile.writeAsBytes(salt);
  return salt;
}

/// Derives a passphrase from a password using PBKDF2 for use with SQLCipher.
///
/// Returns a hex-encoded key string suitable for `PRAGMA key = "x'...'";`
Future<String?> deriveDbKey({
  String? password,
  String? dbPath,
}) async {
  if (password == null || password.isEmpty) {
    return null;
  }

  final salt = await getOrCreateSalt(dbPath ?? '.');

  final derivedKey = pbkdf2(
    password: password,
    salt: salt,
    iterations: pbkdf2Iterations,
    keyLength: 32,
  );

  // Convert to hex string for PRAGMA key
  return derivedKey.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
}
