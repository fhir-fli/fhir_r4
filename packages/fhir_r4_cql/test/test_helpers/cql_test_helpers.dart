import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:cql/src/internal.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

String loadCqlFile(String filename) {
  return File('cql/$filename').readAsStringSync();
}

Map<String, dynamic> loadJsonFile(String filename) {
  final content = File('json/$filename').readAsStringSync();
  return jsonDecode(content) as Map<String, dynamic>;
}

/// The translator's single entry point (the suite's own parser plumbing
/// predated `libraryFromCql`, restored 2026-10-06).
CqlLibrary parseAndBuildLibrary(
  String cqlSource, {
  LibraryManager? libraryManager,
}) =>
    libraryFromCql(cqlSource, libraryManager: libraryManager);

Map<String, dynamic> libraryToElm(CqlLibrary library) => library.toJson();

bool compareElm(Map<String, dynamic> expected, Map<String, dynamic> actual) {
  final expectedLib = Map<String, dynamic>.from(expected['library'] as Map);
  final actualLib = Map<String, dynamic>.from(actual['library'] as Map);
  expectedLib.remove('annotation');
  actualLib.remove('annotation');
  return const DeepCollectionEquality().equals(expectedLib, actualLib);
}

bool areValuesEqual(dynamic result, dynamic answer) {
  // The expected values in test_data are written as plain Dart values
  // where the engine answers with a CQL System value (CqlBoolean for a
  // bool, CqlInteger for an int, CqlString for a String); the comparison
  // is by value. A list is compared element by element the same way.
  if (result is CqlBoolean && answer is bool) {
    return result.valueBoolean == answer;
  }
  if (result is CqlInteger && answer is int) return result.valueInt == answer;
  if (result is CqlString && answer is String) {
    return result.valueString == answer;
  }
  if (result is String && answer is CqlString) {
    return result == answer.valueString;
  }
  if (result is List && answer is List) {
    if (result.length != answer.length) return false;
    for (var i = 0; i < result.length; i++) {
      if (!areValuesEqual(result[i], answer[i])) return false;
    }
    return true;
  } else if (result is Map && answer is Map) {
    return _areMapsEqual(result, answer);
  } else if (result is CqlDateTimeBase && answer is CqlDateTimeBase) {
    // Allow a 1-minute tolerance for time-sensitive expressions like Now()
    final resultDt = result.valueDateTime;
    final answerDt = answer.valueDateTime;
    if (resultDt != null && answerDt != null) {
      return resultDt.difference(answerDt).inSeconds.abs() < 60;
    }
    return result == answer;
  } else if (result is CqlTime && answer is CqlTime) {
    // Allow a 1-minute tolerance for time-sensitive expressions like TimeOfDay()
    return (_calculateSeconds(result) - _calculateSeconds(answer)).abs() < 60;
  } else if (result is FhirBase && answer is FhirBase) {
    return result.equalsDeep(answer);
  }
  return result == answer;
}

bool _areMapsEqual(Map<dynamic, dynamic> result, Map<dynamic, dynamic> answer) {
  final equal = const DeepCollectionEquality()
      .equals(result, Map<dynamic, dynamic>.from(answer));
  if (!equal) {
    if (!const DeepCollectionEquality().equals(
        result.keys.toSet(), Map<dynamic, dynamic>.from(answer).keys.toSet())) {
      return false;
    }
    for (final key in result.keys) {
      if (!areValuesEqual(
          result[key], Map<dynamic, dynamic>.from(answer)[key])) {
        return false;
      }
    }
    return true;
  }
  return equal;
}

int _calculateSeconds(CqlTime time) {
  return (time.hour ?? 0) * 3600 + (time.minute ?? 0) * 60 + (time.second ?? 0);
}
