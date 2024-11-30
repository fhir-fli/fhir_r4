// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

void main() {
  group(
    'Validation',
    () {
      test(
        '\n****R4 JSON is being Validated****',
        () {
          final tested = <String>[...r4Validation()];
          expect(tested.isEmpty, true);
        },
        timeout: const Timeout(Duration(minutes: 15)),
      );
    },
  );
}

String filePath = '';

List<String> r4Validation() {
  final dir = Directory('./test/src/fhir/assets');
  final string = <String>[];
  for (final file in dir.listSync()) {
    print(file.path);
    filePath = file.path;
    final contents = File(file.path).readAsStringSync();
    final contentJson = jsonDecode(contents) as Map<String, dynamic>;
    final resource = Resource.fromJson(contentJson);
    try {
      if (!const DeepCollectionEquality()
          .equals(contentJson, resource.toJson())) {
        if (!_deepCompare(
          contentJson,
          resource.toJson(),
        )) {
          File(file.path
                  .replaceAll('assets/', '')
                  .replaceAll('.json', '1.json'))
              .writeAsStringSync(prettyPrintJson(contentJson));
          File(file.path
                  .replaceAll('assets/', '')
                  .replaceAll('.json', '2.json'))
              .writeAsStringSync(prettyPrintJson(resource.toJson()));
          throw Exception('Unequal');
        }
      }
    } catch (e) {
      File(file.path.replaceAll('assets/', '').replaceAll('.json', '1.json'))
          .writeAsStringSync(prettyPrintJson(contentJson));
      File(file.path.replaceAll('assets/', '').replaceAll('.json', '2.json'))
          .writeAsStringSync(prettyPrintJson(resource.toJson()));

      print(file.path);
      rethrow;
    }
  }
  return string;
}

bool _deepCompare(dynamic json1, dynamic json2) {
  return const DeepCollectionEquality.unordered(CustomBaseEquality())
      .equals(_normalizeJson(json1), _normalizeJson(json2));
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

const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

String prettyPrintJson(Map<String, dynamic> map) => jsonEncoder.convert(map);

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
