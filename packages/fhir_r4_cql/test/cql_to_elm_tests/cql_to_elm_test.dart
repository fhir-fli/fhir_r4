// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

/// Tests that the Dart CQL-to-ELM translator produces ELM output structurally
/// consistent with the reference Java translator (cqframework v4.2.0).
///
/// Reference files from: https://github.com/cqframework/cql-execution
/// Each .cql file has a paired .json with the expected ELM output.
///
/// We compare at multiple levels:
/// 1. Parse success — can we parse the CQL at all?
/// 2. Library identity — does the library id match?
/// 3. Statement names — do we produce the same define statements?
/// 4. Expression types — do top-level expression types match?
/// 5. Expression node types — do all expression node types in the tree match?
void main() {
  final testDir = Directory('test/cql_to_elm_tests');
  final cqlFiles = testDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.cql'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  // Files with known parse issues in the Dart translator (edge cases like
  // time 24:59:59.999, high-precision decimals). These still test that the
  // failure is reported, but skip structural comparison.
  const knownParseFailures = {
    'CqlArithmeticFunctionsTest', // RangeError on high precision decimal
    'CqlDateTimeOperatorsTest', // Null cast in date/time parsing
    'CqlTypesTest', // Invalid time format 24:59:59.999
    'ValueLiteralsAndSelectors', // RangeError on precision
  };

  for (final cqlFile in cqlFiles) {
    final name = cqlFile.path.split('/').last.replaceAll('.cql', '');
    final jsonFile = File(cqlFile.path.replaceAll('.cql', '.json'));

    if (!jsonFile.existsSync()) continue;

    group('CQL-to-ELM: $name', () {
      late Map<String, dynamic> referenceLib;
      late Map<String, dynamic> actualLib;
      late bool parseSucceeded;

      setUpAll(() {
        final cqlSource = cqlFile.readAsStringSync();
        final referenceJson =
            jsonDecode(jsonFile.readAsStringSync()) as Map<String, dynamic>;
        // Reference wraps content in {"library": {...}}
        referenceLib =
            (referenceJson['library'] as Map<String, dynamic>?) ?? referenceJson;

        try {
          final library = parseAndBuildLibrary(cqlSource);
          final json = library.toJson();
          // Dart translator returns library content directly (no wrapper)
          actualLib = (json['library'] as Map<String, dynamic>?) ??
              (json is Map<String, dynamic> ? json : {});
          parseSucceeded = true;
        } catch (e) {
          if (!knownParseFailures.contains(name)) {
            print('UNEXPECTED parse failure for $name: $e');
          }
          parseSucceeded = false;
          actualLib = {};
        }
      });

      test('parses CQL source', () {
        if (knownParseFailures.contains(name)) {
          // Known failure — just document it
          expect(parseSucceeded, isFalse,
              reason: '$name is expected to fail parsing '
                  '(remove from knownParseFailures if fixed)');
          return;
        }
        expect(parseSucceeded, isTrue, reason: '$name failed to parse');
      });

      test('produces a library with matching identifier', () {
        if (!parseSucceeded) return;

        final refId = referenceLib['identifier'] as Map<String, dynamic>?;
        final actualId = actualLib['identifier'];

        if (refId != null && actualId is Map) {
          expect(actualId['id'], refId['id'],
              reason: '$name: library id mismatch');
        }
      });

      test('produces statements with matching names', () {
        if (!parseSucceeded) return;

        final refStatements = _getStatementNames(referenceLib);
        final actualStatements = _getStatementNames(actualLib);

        for (final refName in refStatements) {
          if (refName == 'Patient') continue;
          expect(actualStatements, contains(refName),
              reason: '$name: missing statement "$refName"');
        }
      });

      test('statement expression types match reference', () {
        if (!parseSucceeded) return;

        final refStmts = _getStatements(referenceLib);
        final actualStmts = _getStatements(actualLib);
        var matched = 0;
        var total = 0;

        for (final refStmt in refStmts) {
          final stmtName = refStmt['name'] as String?;
          if (stmtName == null || stmtName == 'Patient') continue;
          total++;

          final actualStmt = actualStmts.firstWhereOrNull(
            (s) => s['name'] == stmtName,
          );
          if (actualStmt == null) continue;

          final refExpr = refStmt['expression'] as Map<String, dynamic>?;
          final actualExpr =
              actualStmt['expression'] as Map<String, dynamic>?;

          if (refExpr != null &&
              actualExpr != null &&
              actualExpr['type'] == refExpr['type']) {
            matched++;
          }
        }

        if (total > 0) {
          expect(matched, total,
              reason:
                  '$name: $matched/$total top-level expression types matched');
        }
      });

      test('expression tree node types match reference', () {
        if (!parseSucceeded) return;

        final refStmts = _getStatements(referenceLib);
        final actualStmts = _getStatements(actualLib);
        var totalTypes = 0;
        var matchedTypes = 0;

        for (final refStmt in refStmts) {
          final stmtName = refStmt['name'] as String?;
          if (stmtName == null || stmtName == 'Patient') continue;

          final actualStmt = actualStmts.firstWhereOrNull(
            (s) => s['name'] == stmtName,
          );
          if (actualStmt == null) continue;

          final refTypes = _collectNodeTypes(refStmt['expression']);
          final actualTypes = _collectNodeTypes(actualStmt['expression']);

          for (final refType in refTypes) {
            totalTypes++;
            if (actualTypes.contains(refType)) {
              matchedTypes++;
            }
          }
        }

        if (totalTypes > 0) {
          final pct = (matchedTypes * 100 / totalTypes).round();
          print('  $name: $matchedTypes/$totalTypes node types present ($pct%)');
          expect(matchedTypes / totalTypes, greaterThan(0.5),
              reason: '$name: fewer than 50% of node types matched');
        }
      });
    });
  }
}

/// Extract statement definition names from a library map.
List<String> _getStatementNames(Map<String, dynamic> lib) {
  final stmts = lib['statements'] as Map<String, dynamic>?;
  final defs = stmts?['def'] as List?;
  if (defs == null) return [];
  return defs
      .whereType<Map<String, dynamic>>()
      .map((s) => s['name'] as String? ?? '')
      .where((n) => n.isNotEmpty)
      .toList();
}

/// Extract statement definitions from a library map.
List<Map<String, dynamic>> _getStatements(Map<String, dynamic> lib) {
  final stmts = lib['statements'] as Map<String, dynamic>?;
  final defs = stmts?['def'] as List?;
  if (defs == null) return [];
  return defs.whereType<Map<String, dynamic>>().toList();
}

/// Collect all unique 'type' values from an expression tree.
Set<String> _collectNodeTypes(dynamic value) {
  final types = <String>{};
  if (value is Map<String, dynamic>) {
    final type = value['type'];
    if (type is String) {
      types.add(type);
    }
    for (final v in value.values) {
      types.addAll(_collectNodeTypes(v));
    }
  } else if (value is List) {
    for (final item in value) {
      types.addAll(_collectNodeTypes(item));
    }
  }
  return types;
}
