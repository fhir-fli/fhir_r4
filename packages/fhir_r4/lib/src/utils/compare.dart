import 'dart:convert';

import 'package:collection/collection.dart';

/// Compares two [dynamic] JSON objects deeply.
/// This is primarily used for testing to compare JSON structures
/// that may have different ordering.
bool deepCompare(dynamic json1, dynamic json2) {
  if (const DeepCollectionEquality().equals(json1, json2)) {
    return true;
  } else {
    return const DeepCollectionEquality.unordered(CustomBaseEquality())
        .equals(_normalizeJson(json1), _normalizeJson(json2));
  }
}

dynamic _normalizeJson(dynamic json) {
  if (json is List) {
    return json.map(_normalizeJson).toList()..sort(_listSort);
  } else if (json is Map) {
    return json.map((key, value) => MapEntry(key, _normalizeJson(value)));
  }
  return json;
}

int _listSort(dynamic a, dynamic b) {
  final strA = jsonEncode(a);
  final strB = jsonEncode(b);
  return strA.compareTo(strB);
}

/// Custom equality for [Object]s, mostly used in testing.
class CustomBaseEquality extends DefaultEquality<Object?> {
  /// Default constructor.
  const CustomBaseEquality();

  @override
  bool equals(Object? e1, Object? e2) {
    if (e1 is String && e2 is String) {
      return const CustomStringEquality().equals(e1, e2);
    }
    return super.equals(e1, e2);
  }

  @override
  int hash(Object? e) {
    if (e is String) {
      return const CustomStringEquality().hash(e);
    }
    return super.hash(e);
  }
}

/// Custom equality for [String]s, mostly used in testing.
/// This handles URL-encoded strings specially.
class CustomStringEquality implements Equality<String> {
  /// Default constructor.
  const CustomStringEquality();

  @override
  bool equals(String str1, String str2) {
    try {
      return Uri.decodeFull(str1) == Uri.decodeFull(str2);
    } catch (e) {
      return str1 == str2;
    }
  }

  @override
  int hash(String str) {
    try {
      return Uri.decodeFull(str).hashCode;
    } catch (e) {
      return str.hashCode;
    }
  }

  @override
  bool isValidKey(Object? o) => o is String;
}
