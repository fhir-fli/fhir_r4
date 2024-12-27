import 'dart:convert';

import 'package:collection/collection.dart';

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

class CustomBaseEquality extends DefaultEquality<Object?> {
  const CustomBaseEquality();

  @override
  bool equals(Object? o1, Object? o2) {
    if (o1 is String && o2 is String) {
      return const CustomStringEquality().equals(o1, o2);
    }
    return super.equals(o1, o2);
  }

  @override
  int hash(Object? o) {
    if (o is String) {
      return const CustomStringEquality().hash(o);
    }
    return super.hash(o);
  }
}

class CustomStringEquality implements Equality<String> {
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
