import 'dart:math';
import 'package:uuid/uuid.dart';

import '../r4.dart';

String generateNewUuidString() => const Uuid().v4();

FhirString generateNewUuidFhirString() => generateNewUuidString().toFhirString;

String generateRandomId({
  int length = 16,
  bool includeLetters = true,
  bool includeNumbers = true,
  bool includeLowercase = true,
  bool includeUppercase = true,
  bool includeSpecialCharacters = false,
}) {
  final Random random = Random();
  const String lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numbers = '0123456789';
  const String specialCharacters = '!@#\$%^&*()_+-=[]{}|;:\'",.<>?/';

  String characterPool = '';

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
          length, (_) => characterPool[random.nextInt(characterPool.length)])
      .join();
}
