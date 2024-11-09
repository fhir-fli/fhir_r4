// ignore_for_file: avoid_print, avoid_dynamic_calls

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

void main() {
  /// Runs through all examples provided. Each example resource is a Json file,
  /// we read in that file as a String, convert it to a Map, then create the
  /// Resource. We then convert it back to Map, and perform a deep comparison
  /// of the input map with the output map to test for any inconsistencies.
  /// It then reverses them and and performs a deep comparison of the output
  /// to the input. Any files with errors are printed out in the debug console
  group(
    'Validation',
    () {
      test(
        '\n****R4 JSON is being Validated****',
        () async {
          final tested = <String>[...await r4Validation()];
          expect(tested.isEmpty, true);
        },
        timeout: const Timeout(Duration(minutes: 15)),
      );
    },
  );
}

Future<List<String>> r4Validation() async {
  final dir = Directory('./test/src/fhir/assets');
  final string = <String>[];
  for (final file in dir.listSync()) {
    print(file.path);
    final contents = File(file.path).readAsStringSync();
    final contentJson = jsonDecode(contents) as Map<String, dynamic>;
    final resource = Resource.fromJson(contentJson);
    try {
      if (!_compare(
        contentJson,
        resource.toJson(),
      )) {
        File(file.path.replaceAll('assets/', '').replaceAll('.json', '1.json'))
            .writeAsStringSync(prettyPrintJson(contentJson));
        File(file.path.replaceAll('assets/', '').replaceAll('.json', '2.json'))
            .writeAsStringSync(prettyPrintJson(resource.toJson()));
        throw Exception('Unequal');
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

dynamic decodeUrlIfString(dynamic value) {
  // Decode the value only if it's a string and a URL with encoded characters
  if (value is String) {
    return Uri.decodeFull(value);
  }
  return value;
}

bool _compare(dynamic oldLeft, dynamic oldRight) {
  const equality = DeepCollectionEquality.unordered(CustomBaseEquality());
  return equality.equals(
    oldLeft,
    oldRight,
  );
}

/// Returns a pretty printed JSON string.
const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

/// Returns a pretty printed JSON string.
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
      // Decode URLs if needed before comparison
      return Uri.decodeFull(str1) == Uri.decodeFull(str2);
    } catch (e) {
      // If decoding fails, fall back to direct comparison and log the error
      print('Invalid URL encoding detected: "$str1" or "$str2". Error: $e');
      return str1 == str2;
    }
  }

  @override
  int hash(String str) {
    try {
      // Use decoded value for hash calculation
      return Uri.decodeFull(str).hashCode;
    } catch (e) {
      // If decoding fails, log the error and return hash of original string
      print('Invalid URL encoding for hash calculation: "$str". Error: $e');
      return str.hashCode;
    }
  }

  @override
  bool isValidKey(Object? o) => o is String;
}
