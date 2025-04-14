import 'dart:math';

import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:uuid/uuid.dart';

/// Change a DateTime into a versionId
extension DateTimeToVersionId on DateTime {
  /// Converts a [DateTime] into a versionId string
  String toVersionId() => toIso8601String().replaceAll(':', '.');
}

/// Generates a new UUID string
String generateNewUuidString() => const Uuid().v4();

/// Generates a new [FhirId] from a new UUID string
FhirStringBuilder generateNewUuidFhirString() =>
    generateNewUuidString().toFhirStringBuilder;

/// Generates a random ID string
String generateRandomId({
  int length = 16,
  bool includeLetters = true,
  bool includeNumbers = true,
  bool includeLowercase = true,
  bool includeUppercase = true,
  bool includeSpecialCharacters = false,
}) {
  final random = Random();
  const lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
  const uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const numbers = '0123456789';
  const specialCharacters = '!@#\$%^&*()_+-=[]{}|;:\'",.<>?/';

  var characterPool = '';

  if (includeLetters) {
    if (includeLowercase) {
      characterPool += lowercaseLetters;
    }
    if (includeUppercase) {
      characterPool += uppercaseLetters;
    }
  }

  if (includeNumbers) {
    characterPool += numbers;
  }

  if (includeSpecialCharacters) {
    characterPool += specialCharacters;
  }

  if (characterPool.isEmpty) {
    throw ArgumentError('No characters selected for random ID generation.');
  }

  return List<String>.generate(
    length,
    (_) => characterPool[random.nextInt(characterPool.length)],
  ).join();
}
