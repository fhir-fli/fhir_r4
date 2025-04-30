// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:antlr4/antlr4.dart';
import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'inputs/inputs.dart';

const bool shouldPrint = false;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    parseFile(context);
    return Container();
  }
}

void parseFile(BuildContext context) async {
  try {
    final assetsFile =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(assetsFile)
      ..removeWhere((key, value) => !key.contains('cql/'));

    for (int i = 1; i < 6; i++) {
      final file =
          manifestMap.keys.firstWhereOrNull((e) => e.contains('$i.cql'));
      if (file == null) break;

      print('FILE: $file');
      await _processFile(file);
    }
  } catch (e, s) {
    print('Error: $e\nStacktrace: $s');
  }
}

Future<void> _processFile(String file) async {
  try {
    final pathExpression = await rootBundle.loadString(file);
    final jsonString =
        await rootBundle.loadString(file.replaceAll('cql', 'json'));
    final json = jsonDecode(jsonString);
    final answers = results[file.split("/").last];
    final dynamic tempContext = contexts[file.split("/").last];
    final Map<String, dynamic>? context =
        tempContext is Map<String, dynamic> ? tempContext : null;

    final parserAndErrors = parse(pathExpression);
    final parser = parserAndErrors.parser;

    final visitor = CqlBaseVisitor(CqlLibrary());
    visitor.visit(parser.library_());

    final errors = parserAndErrors.errorListener.errors.map((e) {
      return e.copyWith(
        libraryId: visitor.library.identifier?.id,
        libraryVersion: visitor.library.identifier?.version,
      );
    }).toList();

    visitor.library.annotation ??= [];
    visitor.library.annotation!.addAll(errors);

    _compareLibraries(json['library'], visitor.result['library'], file);

    final executionResults = await visitor.library.execute(context);
    _compareResults(executionResults, answers, file);
  } catch (e, s) {
    print('Error processing file $file: $e\nStacktrace: $s');
  }
}

void _compareLibraries(
    dynamic jsonLibrary, dynamic resultLibrary, String file) {
  if (jsonLibrary is Map<String, dynamic> &&
      resultLibrary is Map<String, dynamic>) {
    jsonLibrary.remove('annotation');
    resultLibrary.remove('annotation');

    final areEqual =
        const DeepCollectionEquality().equals(jsonLibrary, resultLibrary);
    print('${file.split("/").last} Elm is equal: $areEqual');
    if (file.contains('05.cql')) {
      final results = {'library': resultLibrary};
      // print(jsonEncode(jsonLibrary));
      print(jsonEncode(results));
    }
  }
}

void _compareResults(dynamic results, dynamic answers, String file) {
  if (results is Map<String, dynamic>) {
    results.remove('startTimestamp');
    results.remove('library');

    bool areEqual = true;
    String equalReason = '';

    results.forEach((key, value) {
      final answer = answers?[key];
      if (!_areValuesEqual(value, answer)) {
        areEqual = false;
        equalReason += '$key: ${_formatDifference(value, answer)}\n';
      }
    });

    print('${file.split("/").last} Results are equal: $areEqual\n$equalReason');
  }
}

bool _areValuesEqual(dynamic result, dynamic answer) {
  if (result is List && answer is List) {
    return const DeepCollectionEquality().equals(result, answer);
  } else if (result is Map && answer is Map) {
    return _areMapsEqual(result, answer);
  } else if (result is FhirDateTimeBase && answer is FhirDateTimeBase) {
    return result == answer;
  } else if (result is FhirTime && answer is FhirTime) {
    return _calculateMilliseconds(result) == _calculateMilliseconds(answer);
  }

  return result == answer;
}

bool _areMapsEqual(Map result, Map answer) {
  // First, check equality using DeepCollectionEquality
  final equal = const DeepCollectionEquality().equals(result, Map.from(answer));
  if (!equal) {
    // If not equal, compare keys
    if (!const DeepCollectionEquality()
        .equals(result.keys.toSet(), Map.from(answer).keys.toSet())) {
      print('Key sets are different: '
          'result keys: ${result.keys}, answer keys: ${Map.from(answer).keys}');
      return false;
    }

    // Compare values for each key
    for (final key in result.keys) {
      if (!_areValuesEqual(result[key], Map.from(answer)[key])) {
        print(
            'Key mismatch at $key: result: ${result[key]} (${result[key]?.runtimeType}) '
            '!= answer: ${Map.from(answer)[key]} (${Map.from(answer)[key]?.runtimeType})');
        return false;
      }
    }
    // If all keys and values match, return true
    return true;
  }
  // If DeepCollectionEquality is true, return true
  return equal;
}

String _formatDifference(dynamic result, dynamic answer) {
  if (result.runtimeType == answer.runtimeType) {
    if (result is FhirDateTimeBase && answer is FhirDateTimeBase) {
      final diff = result.valueDateTime?.difference(answer.valueDateTime!);
      return 'differs by ${diff?.inMilliseconds ?? 0} ms';
    } else if (result is FhirTime && answer is FhirTime) {
      final diffMs =
          _calculateMilliseconds(result) - _calculateMilliseconds(answer);
      return 'differs by $diffMs ms';
    }
  }
  return '$result (${result.runtimeType}) != $answer (${answer.runtimeType})';
}

int _calculateMilliseconds(FhirTime time) {
  return (time.hour ?? 0) * 3600000 +
      (time.minute ?? 0) * 60000 +
      (time.second ?? 0) * 1000 +
      (time.millisecond ?? 0);
}

CqlParsersAndErrors parse(String pathExpression) {
  final input = InputStream.fromString(pathExpression);
  final lexer = cqlLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = cqlParser(tokens);
  final errorListener = ElmErrorListener();
  parser.addErrorListener(errorListener);
  parser.buildParseTree = true;
  return CqlParsersAndErrors(parser, errorListener);
}

class CqlParsersAndErrors {
  final ElmErrorListener errorListener;
  final cqlParser parser;

  CqlParsersAndErrors(this.parser, this.errorListener);
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
