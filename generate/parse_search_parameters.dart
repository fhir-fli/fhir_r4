// ignore_for_file: missing_whitespace_between_adjacent_strings

import 'dart:convert';
import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';

void parseSearchParameters() {
  final file = File(searchParametersPath); // Use the constant from consts.dart
  final jsonString = file.readAsStringSync();
  final data = jsonDecode(jsonString) as Map<String, dynamic>;

  final resourceParameters = _extractSearchParameters(data);

  // Create the searches directory if it doesn't exist
  final dir = Directory(searchesPath); // Use constant
  if (!dir.existsSync()) {
    dir.createSync();
  }

  // Generate Dart files for each resource type
  _generateSearchFiles(resourceParameters);

  // Update exports for searches.dart
  _updateSearchExports();
}

// Extracts search parameters from the JSON data
Map<String, List<Map<String, String>>> _extractSearchParameters(
  Map<String, dynamic> data,
) {
  final resourceParameters = <String, List<Map<String, String>>>{};

  for (final dynamic entry in data['entry'] as List<dynamic>) {
    final resource =
        (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>;
    final baseList = resource['base'] as List<dynamic>;
    final code = resource['code'] as String;
    final type = resource['type'] as String;
    final components = resource['component'] as List<dynamic>?;

    for (final base in baseList) {
      final resourceType = base as String;

      resourceParameters.putIfAbsent(
        resourceType,
        () => <Map<String, String>>[],
      );

      if (components != null && components.isNotEmpty) {
        _addCompositeParameters(
          resourceType,
          code,
          components,
          resourceParameters,
        );
      } else {
        resourceParameters[resourceType]!.add(
          <String, String>{'code': code, 'type': type},
        );
      }
    }
  }
  return resourceParameters;
}

// Adds composite search parameters to the resource parameters
void _addCompositeParameters(
  String resourceType,
  String code,
  List<dynamic> components,
  Map<String, List<Map<String, String>>> resourceParameters,
) {
  for (final component in components) {
    final componentDetails = component as Map<String, dynamic>;
    final componentCode = componentDetails['code'] as String? ?? '';
    final componentType = componentDetails['type'] as String?;

    if (componentCode.isNotEmpty) {
      resourceParameters[resourceType]!.add(
        <String, String>{
          'code': '$code-$componentCode',
          if (componentType != null && componentType.isNotEmpty)
            'type': componentType,
        },
      );
    }
  }
}

// Generates search files for each resource type
void _generateSearchFiles(
  Map<String, List<Map<String, String>>> resourceParameters,
) {
  for (final entry in resourceParameters.entries) {
    final resourceType = entry.key;
    if (resourceType != 'DomainResource') {
      final className = 'Search$resourceType';
      final parameters = entry.value;

      final buffer = StringBuffer()
        ..writeln('// This file is auto-generated. Do not edit directly.\n\n')
        ..writeln('// ignore_for_file: avoid_returning_this\n')
        ..writeln("import 'package:$fhirVersion/$fhirVersion.dart';");

      final extendClause = resourceType == 'Resource'
          ? 'extends RestfulParameters '
          : 'extends SearchResource ';

      buffer
        ..writeln('/// A class to build query parameters for RESTful '
            'requests for the ${className.replaceFirst('Search', '')} '
            'resource.')
        ..writeln('class $className $extendClause{');

      // Write methods for each parameter
      for (final param in parameters) {
        _writeSearchParameterMethod(buffer, param, resourceType);
      }

      buffer.writeln('}\n');

      // Write to individual file in the searches directory
      File(
        '$searchesPath/search_${resourceType.toLowerCase()}.dart',
      ).writeAsStringSync(buffer.toString());
    }
  }
}

// Writes a search parameter method for the given parameter
void _writeSearchParameterMethod(
  StringBuffer buffer,
  Map<String, String> param,
  String resourceType,
) {
  final paramCode = param['code']!.replaceAll('-', '_');
  final paramType = param['type']!;
  final methodName = _toPascalCase(paramCode);
  final functionName =
      _methodName(methodName).resourceTypeIfResource(resourceType);
  final methodSignature = '  Search$resourceType $functionName';

  switch (paramType) {
    case 'date':
      buffer
        ..writeln(
          '/// a date search for [$functionName] in the reosurce $resourceType',
        )
        ..writeln('$methodSignature(FhirDateTime value, '
            '{SearchModifier? modifier,}) {')
        ..writeln(r"    parameters['${modifier != null ? '$modifier' : ''}"
            "$paramCode'] = value.toString();")
        ..writeln('    return this;')
        ..writeln('  }\n');
    case 'token':
      buffer
        ..writeln(
          '/// a token search for [$functionName] in the reosurce $resourceType',
        )
        ..writeln('$methodSignature(FhirString value, '
            '{FhirUri? system, SearchModifier? modifier,}) {')
        ..writeln(r"    parameters['${modifier != null ? '$modifier' : ''}"
            "$paramCode'] = system != null ? '\$system|\$value' : '\$value';")
        ..writeln('    return this;')
        ..writeln('  }\n');
    case 'string':
      buffer
        ..writeln(
          '/// a string search for [$functionName] in the reosurce $resourceType',
        )
        ..writeln('$methodSignature(FhirString value, '
            '{SearchModifier? modifier,}) {')
        ..writeln('    if (modifier != null && '
            "!['eq', 'ne'].contains(modifier.toString())) {")
        ..writeln(r"      throw ArgumentError('Modifier $modifier not allowed"
            " for string type');")
        ..writeln('    }')
        ..writeln(r"    parameters['${modifier != null ? '$modifier' : ''}"
            "$paramCode'] = value.toString();")
        ..writeln('    return this;')
        ..writeln('  }\n');
    case 'number':
      buffer
        ..writeln(
          '/// a numerical search for [$functionName] in the reosurce $resourceType',
        )
        ..writeln('$methodSignature(FhirDecimal value, '
            '{FhirString? unit, FhirUri? system, SearchModifier? modifier,}) {')
        ..writeln('    if (modifier != null && '
            "!['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {")
        ..writeln(r"      throw ArgumentError('Modifier $modifier not allowed "
            "for $paramType type');")
        ..writeln('    }')
        ..writeln(r"    parameters['${modifier != null ? '$modifier' : ''}"
            "$paramCode'] = '\$value|\${system?.toString() ?? ''}"
            r"|${unit?.toString() ?? ''}';")
        ..writeln('    return this;')
        ..writeln('  }\n');

    case 'quantity':
      buffer
        ..writeln(
          '/// a quantity search for [$functionName] in the reosurce $resourceType',
        )
        ..writeln('$methodSignature(FhirDecimal value, '
            '{FhirString? unit, FhirUri? system, SearchModifier? modifier,}) {')
        ..writeln('    if (modifier != null && '
            "!['gt', 'lt', 'ge', 'le', 'ap'].contains(modifier.toString())) {")
        ..writeln(r"      throw ArgumentError('Modifier $modifier not allowed "
            "for $paramType type');")
        ..writeln('    }')
        ..writeln(r"    parameters['${modifier != null ? '$modifier' : ''}"
            "$paramCode'] = '\$value|\${system?.toString() ?? ''}"
            r"|${unit?.toString() ?? ''}';")
        ..writeln('    return this;')
        ..writeln('  }\n');
    case 'uri':
      buffer
        ..writeln(
          '/// a uri search for [$functionName] in the reosurce $resourceType',
        )
        ..writeln('$methodSignature(FhirUri value, '
            '{SearchModifier? modifier}) {')
        ..writeln(r"    parameters['${modifier != null ? '$modifier' : ''}"
            "$paramCode'] = value.toString();")
        ..writeln('    return this;')
        ..writeln('  }\n');
  }
}

// Updates the export file (searches.dart)
void _updateSearchExports() {
  final searchDir = Directory(searchesPath);
  final files = searchDir
      .listSync()
      .whereType<File>()
      .where((File file) => file.path.endsWith('.dart'))
      .map((File file) => file.path.split('/').last)
      .toList()
    ..sort();

  File('$searchesPath/searches.dart').writeAsStringSync(
    files.map((String file) => "export '$file';").join('\n'),
  );
}

String _methodName(String name) {
  final reservedWords = <String>['class', 'case'];
  final newName = name.substring(0, 1).toLowerCase() + name.substring(1);
  return reservedWords.contains(newName) ? '${newName}_' : newName;
}

// Helper function to convert snake_case to PascalCase
String _toPascalCase(String text) {
  return text
      .split('_')
      .map(
        (String word) =>
            word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1),
      )
      .join();
}
