import 'dart:convert';
import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlParsersAndErrors {
  final ElmErrorListener errorListener;
  final cqlParser parser;

  CqlParsersAndErrors(this.parser, this.errorListener);
}

CqlParsersAndErrors parseCql(String pathExpression) {
  final input = InputStream.fromString(pathExpression);
  final lexer = cqlLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = cqlParser(tokens);
  final errorListener = ElmErrorListener();
  parser.addErrorListener(errorListener);
  parser.buildParseTree = true;
  return CqlParsersAndErrors(parser, errorListener);
}

String loadCqlFile(String filename) {
  return File('cql/$filename').readAsStringSync();
}

Map<String, dynamic> loadJsonFile(String filename) {
  final content = File('json/$filename').readAsStringSync();
  return jsonDecode(content) as Map<String, dynamic>;
}

CqlLibrary parseAndBuildLibrary(String cqlSource,
    {LibraryManager? libraryManager}) {
  final parserAndErrors = parseCql(cqlSource);
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

  if (libraryManager != null) {
    visitor.library.libraryManager = libraryManager;
  }

  return visitor.library;
}

Map<String, dynamic> libraryToElm(CqlLibrary library) {
  final visitor = CqlBaseVisitor(library);
  return visitor.result;
}

bool compareElm(Map<String, dynamic> expected, Map<String, dynamic> actual) {
  final expectedLib = Map<String, dynamic>.from(expected['library'] as Map);
  final actualLib = Map<String, dynamic>.from(actual['library'] as Map);
  expectedLib.remove('annotation');
  actualLib.remove('annotation');
  return const DeepCollectionEquality().equals(expectedLib, actualLib);
}

bool areValuesEqual(dynamic result, dynamic answer) {
  if (result is List && answer is List) {
    return const DeepCollectionEquality().equals(result, answer);
  } else if (result is Map && answer is Map) {
    return _areMapsEqual(result, answer);
  } else if (result is FhirDateTimeBase && answer is FhirDateTimeBase) {
    // Allow a 1-minute tolerance for time-sensitive expressions like Now()
    final resultDt = result.valueDateTime;
    final answerDt = answer.valueDateTime;
    if (resultDt != null && answerDt != null) {
      return resultDt.difference(answerDt).inSeconds.abs() < 60;
    }
    return result == answer;
  } else if (result is FhirTime && answer is FhirTime) {
    // Allow a 1-minute tolerance for time-sensitive expressions like TimeOfDay()
    return (_calculateSeconds(result) - _calculateSeconds(answer)).abs() < 60;
  } else if (result is FhirBase && answer is FhirBase) {
    return result.equalsDeep(answer);
  }
  return result == answer;
}

bool _areMapsEqual(Map result, Map answer) {
  final equal = const DeepCollectionEquality().equals(result, Map.from(answer));
  if (!equal) {
    if (!const DeepCollectionEquality()
        .equals(result.keys.toSet(), Map.from(answer).keys.toSet())) {
      return false;
    }
    for (final key in result.keys) {
      if (!areValuesEqual(result[key], Map.from(answer)[key])) {
        return false;
      }
    }
    return true;
  }
  return equal;
}

int _calculateSeconds(FhirTime time) {
  return (time.hour ?? 0) * 3600 + (time.minute ?? 0) * 60 + (time.second ?? 0);
}
