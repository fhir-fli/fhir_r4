import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'cql_test_helpers.dart';

/// Loads a FHIR Bundle JSON file and converts it to a CQL execution context.
Map<String, dynamic> loadBundle(String path) {
  final content = File(path).readAsStringSync();
  return BundleDataProvider.fromBundleJson(content);
}

/// Loads all ValueSet JSON files from a directory into a `_valueSets` map.
Map<String, dynamic> loadValueSets(String dirPath) {
  return ValueSetLoader.loadFromDirectory(dirPath);
}

/// Merges bundle resources and ValueSet expansions into a single context map
/// suitable for CQL execution.
///
/// If [evaluationDate] is provided, sets the evaluation timestamp to that date
/// (used by `Today()` and `Now()` in CQL). This is needed for test bundles
/// with date-sensitive logic (e.g., age thresholds).
Map<String, dynamic> buildContext(
  Map<String, dynamic> bundleContext,
  Map<String, dynamic> valueSets, {
  String? evaluationDate,
}) {
  final context = Map<String, dynamic>.from(bundleContext);
  context['_valueSets'] = valueSets;
  if (evaluationDate != null) {
    context['startTimestamp'] = CqlDateTime.fromString(evaluationDate);
  }
  return context;
}

/// Creates a [LibraryManager] configured for the WHO CQL directory.
LibraryManager createWhoLibraryManager() {
  return LibraryManager(
    sourceProvider: FileSystemLibrarySourceProvider(basePath: 'cql/who'),
    parseLibrary: parseAndBuildLibrary,
  );
}

/// Parses and builds a CQL library from a file in the WHO CQL directory,
/// wiring up the provided [LibraryManager] for include resolution.
CqlLibrary loadWhoLibrary(String filename, LibraryManager libraryManager) {
  final cql = File('cql/who/$filename').readAsStringSync();
  return parseAndBuildLibrary(cql, libraryManager: libraryManager);
}

/// Reads a bundle JSON file and pretty-prints its structure for debugging.
void debugBundle(String path) {
  final content = File(path).readAsStringSync();
  final bundle = jsonDecode(content) as Map<String, dynamic>;
  final entries = bundle['entry'] as List? ?? [];
  print('Bundle: ${bundle['id']} (${entries.length} entries)');
  for (final entry in entries) {
    final resource = (entry as Map)['resource'] as Map?;
    if (resource != null) {
      print('  ${resource['resourceType']}/${resource['id']}');
    }
  }
}
