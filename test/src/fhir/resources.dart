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
    final contents = File(file.path).readAsStringSync();
    try {
      final contentJson = jsonDecode(contents) as Map<String, dynamic>;
      final resource = Resource.fromJson(contentJson);

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
      print(file.path);
      rethrow;
    }
  }
  return string;
}

bool _compare(dynamic left, dynamic right) {
  if (left is Map && right is Map) {
    // Check if both Maps have the same keys
    if (left.keys.toSet() != right.keys.toSet()) {
      return false;
    }
    // Recursively compare each key-value pair
    for (final key in left.keys) {
      if (!_compare(left[key], right[key])) {
        return false;
      }
    }
    return true;
  } else if (left is Iterable && right is Iterable) {
    // Ensure both Iterables have the same content
    final leftList = left.toList();
    final rightList = right.toList();

    // Check if they have the same length
    if (leftList.length != rightList.length) {
      return false;
    }

    // Sort both lists for unordered comparison, then compare each element
    leftList.sort((a, b) => a.hashCode.compareTo(b.hashCode));
    rightList.sort((a, b) => a.hashCode.compareTo(b.hashCode));

    for (var i = 0; i < leftList.length; i++) {
      if (!_compare(leftList[i], rightList[i])) {
        return false;
      }
    }
    return true;
  } else {
    // Compare other values by JSON serialization for deep comparison
    return jsonEncode(left) == jsonEncode(right);
  }
}

// bool _compare(dynamic left, dynamic right) {
//   if (left is Map && right is Map) {
//     if (left.keys.length != right.keys.length) {
//       // print('keys different length');
//       return false;
//     }
//     final leftKeys = left.keys.toList();
//     final rightKeys = right.keys.toList();
//     for (final key in leftKeys) {
//       if (!rightKeys.contains(key)) {
//         // print('right does not contain key $key');
//         return false;
//       } else {
//         rightKeys.remove(key);
//       }
//     }
//     if (rightKeys.isNotEmpty) {
//       // print('right contains keys not in left: $rightKeys');
//       return false;
//     }
//     for (final key in left.keys) {
//       if (!_compare(left[key], right[key])) {
//         // print('Value for key $key is unequal');
//         return false;
//       }
//     }
//     return true;
//   } else if (left is Iterable && right is Iterable) {
//     if (left.any((e) => e is Map) || right.any((e) => e is Map)) {
//       if (left.any((e) => e is! Map) || right.any((e) => e is! Map)) {
//         // print('There are some objects that are Maps and others are not');
//         return false;
//       }
//     }
//     if (left.any((e) => e is Iterable) || right.any((e) => e is Iterable)) {
//       if (left.any((e) => e is! Iterable) || right.any((e) => e is! Iterable)) {
//         // print('There are some entries that are Iterables, others are not');
//         return false;
//       }
//     }

//     final tempRight = right.toList();
//     for (final leftEntry in left) {
//       var found = false;
//       for (final rightEntry in right) {
//         if (_compare(leftEntry, rightEntry)) {
//           tempRight.remove(rightEntry);
//           found = true;
//           break;
//         }
//       }
//       if(!found){
//         // print('error in list');
//         return false;
//       }
//     }
//     return true;
//   } else {
//     final result =
//         jsonDecode(jsonEncode(left)) == jsonDecode(jsonEncode(right));
//     if(!result){
//       print('left: $left != right $right');
//     }
//     return result;
//   }
// }

/// Returns a pretty printed JSON string.
const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

/// Returns a pretty printed JSON string.
String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);

/// Returns a pretty printed JSON string.
String prettyPrintJson(Map<String, dynamic> map) => jsonEncoder.convert(map);

/// Returns a pretty printed JSON string.
String prettyPrintAnything(dynamic anything) => jsonEncoder.convert(anything);
