import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:hive_ce/hive.dart';

/// Number of iterations for PBKDF2 (adjust based on performance needs)
/// 100,000 iterations is a good balance between security and performance
const int pbkdf2Iterations = 100000;

/// Generates a cryptographically secure random salt
List<int> _generateSalt() {
  return List<int>.generate(32, (i) => Random.secure().nextInt(256));
}

/// PBKDF2-HMAC-SHA256 implementation (RFC 2898)
/// Standard key derivation function that makes brute-force attacks
/// computationally expensive
List<int> _pbkdf2({
  required String password,
  required List<int> salt,
  required int iterations,
  required int keyLength,
}) {
  final passwordBytes = utf8.encode(password);
  final hmac = Hmac(sha256, passwordBytes);
  const hashLength = 32; // SHA-256 produces 32 bytes

  // Calculate number of blocks needed
  final blocksNeeded = (keyLength + hashLength - 1) ~/ hashLength;
  final result = <int>[];

  for (var blockNum = 1; blockNum <= blocksNeeded; blockNum++) {
    // Create salt || block_number (big-endian 4-byte integer)
    final blockSalt = <int>[
      ...salt,
      (blockNum >> 24) & 0xFF,
      (blockNum >> 16) & 0xFF,
      (blockNum >> 8) & 0xFF,
      blockNum & 0xFF,
    ];

    // U1 = HMAC(password, salt || block_number)
    var u = hmac.convert(blockSalt).bytes;
    final blockResult = List<int>.from(u);

    // U2 = HMAC(password, U1), U3 = HMAC(password, U2), etc.
    // T = U1 XOR U2 XOR U3 XOR ... XOR U_iterations
    for (var i = 1; i < iterations; i++) {
      u = hmac.convert(u).bytes;
      for (var j = 0; j < hashLength; j++) {
        blockResult[j] ^= u[j];
      }
    }

    result.addAll(blockResult);
  }

  // Return exactly keyLength bytes
  return result.sublist(0, keyLength);
}

/// Gets or creates a salt file for this database instance
/// The salt is stored in a file in the database directory
Future<List<int>> _getOrCreateSalt(String dbPath) async {
  final saltFile = File('$dbPath/.fhir_db_salt');

  if (saltFile.existsSync()) {
    // Read existing salt
    final saltBytes = await saltFile.readAsBytes();
    if (saltBytes.length == 32) {
      return saltBytes;
    }
    // If file is corrupted, generate new salt
  }

  // Generate and save new salt
  final salt = _generateSalt();
  await saltFile.writeAsBytes(salt);
  return salt;
}

/// Generates the cipher from a key (password) using PBKDF2 with per-instance
/// salt
///
/// This provides much stronger security than the previous static salt approach:
/// - Each database instance has a unique salt
/// - PBKDF2 makes brute-force attacks computationally expensive
/// - Even identical passwords produce different encryption keys
Future<HiveAesCipher?> cipherFromKey({
  String? key,
  String? dbPath,
}) async {
  if (key == null || key.isEmpty) {
    return null;
  }

  // Get or create salt for this database instance
  final salt = await _getOrCreateSalt(dbPath ?? '.');

  // Derive 32-byte key using PBKDF2
  final derivedKey = _pbkdf2(
    password: key,
    salt: salt,
    iterations: pbkdf2Iterations,
    keyLength: 32,
  );

  return HiveAesCipher(derivedKey);
}

/// Synchronous version for cases where we already have the salt
/// This is used internally after the salt has been retrieved
HiveAesCipher? cipherFromKeyWithSalt({
  required String key,
  required List<int> salt,
}) {
  if (key.isEmpty) {
    return null;
  }

  // Derive 32-byte key using PBKDF2
  final derivedKey = _pbkdf2(
    password: key,
    salt: salt,
    iterations: pbkdf2Iterations,
    keyLength: 32,
  );

  return HiveAesCipher(derivedKey);
}
