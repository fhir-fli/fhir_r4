import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

bool equalsDeepWithNull(FhirBase? obj1, FhirBase? obj2) {
  if (obj1 == null && obj2 == null) {
    return true;
  } else if (obj1 == null || obj2 == null) {
    return false;
  } else {
    return obj1.equalsDeep(obj2);
  }
}

/// Compares two lists for equality.
bool listEquals<T>(List<FhirBase>? list1, List<FhirBase>? list2) {
  if (list1 == null && list2 == null) return true;
  if (list1 == null || list2 == null) return false;
  if (list1.length != list2.length) return false;
  for (var i = 0; i < list1.length; i++) {
    if (!list1[i].equalsDeep(list2[i])) return false;
  }
  return true;
}

/// Compares two [dynamic] objects deeply.
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
