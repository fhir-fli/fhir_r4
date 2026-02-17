import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';

void main() {
  final expected = jsonDecode(File('/tmp/expected_stmt_1.json').readAsStringSync());
  final actual = jsonDecode(File('/tmp/actual_stmt_1.json').readAsStringSync());
  
  // Deep diff
  _deepDiff(expected, actual, '');
}

void _deepDiff(dynamic expected, dynamic actual, String path) {
  if (expected is Map && actual is Map) {
    final allKeys = {...expected.keys, ...actual.keys};
    for (final key in allKeys) {
      if (!expected.containsKey(key)) {
        print('$path.$key: MISSING in expected');
      } else if (!actual.containsKey(key)) {
        print('$path.$key: MISSING in actual');
      } else if (!const DeepCollectionEquality().equals(expected[key], actual[key])) {
        _deepDiff(expected[key], actual[key], '$path.$key');
      }
    }
  } else if (expected is List && actual is List) {
    if (expected.length != actual.length) {
      print('$path: list length mismatch: ${expected.length} vs ${actual.length}');
    }
    for (int i = 0; i < expected.length && i < actual.length; i++) {
      if (!const DeepCollectionEquality().equals(expected[i], actual[i])) {
        _deepDiff(expected[i], actual[i], '$path[$i]');
      }
    }
  } else {
    print('$path: $expected != $actual');
  }
}
