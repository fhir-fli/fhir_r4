// ignore_for_file: avoid_print

import 'dart:io';
import 'fhir_generate_extension.dart';

Future<void> writeEnums(
    Set<String> valueSets, Map<String, Map<String, dynamic>> codesAndVS) async {
  for (final String valueSetUrl in valueSets) {
    if (!codesAndVS.containsKey(valueSetUrl)) {
      print('ValueSetUrl not Found: $valueSetUrl');
    } else {
      final Map<String, dynamic> valueSet = codesAndVS[valueSetUrl]!;
      final String enumName = _getEnumNameFromValueSet(valueSetUrl, valueSet);

      final List<String> enumValues = _extractEnumValues(valueSet, codesAndVS);
      if (enumValues.isEmpty) {
        // print('No enum values found for ValueSet: $valueSetUrl'
        //     // '\n${jsonEncode(valueSet)}'
        //     );
      } else {
        // You can uncomment the following lines to continue generating and writing enums
        final String enumString = _buildEnumString(enumName, enumValues);
        await _writeEnumToFile(enumName, enumString);
      }
    }
  }
}

String _getEnumNameFromValueSet(
    String valueSetUrl, Map<String, dynamic> valueSet) {
  final String valueSetName = valueSet['name'] as String? ??
      valueSet['title'] as String? ??
      valueSetUrl.split('/').last.split('|').first;

  return valueSetName.upperCamelCase;
}

// Extract enum values from ValueSet or CodeSystem
List<String> _extractEnumValues(Map<String, dynamic> resource,
    Map<String, Map<String, dynamic>> codesAndVS) {
  final List<String> enumValues = <String>[];

  // Handle ValueSet first
  if (resource['resourceType'] == 'ValueSet') {
    // First check if there is an 'expansion' field
    if (resource.containsKey('expansion')) {
      final List<dynamic> contains = (resource['expansion']
          as Map<String, dynamic>)['contains'] as List<dynamic>;
      for (final dynamic concept in contains) {
        enumValues.add((concept as Map<String, dynamic>)['code'] as String);
      }
    }

    // If no expansion, check the 'compose' field for included concepts
    else if (resource.containsKey('compose')) {
      final List<dynamic> include = (resource['compose']
          as Map<String, dynamic>)['include'] as List<dynamic>;

      for (final dynamic inclusion in include) {
        final List<dynamic>? concepts =
            (inclusion as Map<String, dynamic>)['concept'] as List<dynamic>?;
        for (final dynamic concept in concepts ?? <dynamic>[]) {
          enumValues.add((concept as Map<String, dynamic>)['code'] as String);
        }

        // Handle cases where we only have a system and no explicit concepts
        if (concepts == null || concepts.isEmpty) {
          // Fetch codes from the system
          final String? systemUrl = inclusion['system'] as String?;
          if (systemUrl != null) {
            final Map<String, dynamic>? newCodings = codesAndVS[systemUrl];
            if (newCodings != null) {
              if (newCodings['resourceType'] == 'ValueSet') {
                final List<String> newEnumValues =
                    _extractEnumValues(newCodings, codesAndVS);
                enumValues.addAll(newEnumValues);
              } else if (newCodings['resourceType'] == 'CodeSystem') {
                final List<String> newEnumValues =
                    _extractEnumValuesFromCodeSystem(newCodings);
                enumValues.addAll(newEnumValues);
              }
            }
          }
        }
      }
    }
  }
  // Handle CodeSystem directly
  else if (resource['resourceType'] == 'CodeSystem') {
    final List<String> newEnumValues =
        _extractEnumValuesFromCodeSystem(resource);
    enumValues.addAll(newEnumValues);
  }

  return enumValues;
}

// Extract enum values directly from CodeSystem concepts
List<String> _extractEnumValuesFromCodeSystem(Map<String, dynamic> codeSystem) {
  final List<String> enumValues = <String>[];
  if (codeSystem.containsKey('concept')) {
    final List<dynamic> concepts = codeSystem['concept'] as List<dynamic>;
    for (final dynamic concept in concepts) {
      enumValues.add((concept as Map<String, dynamic>)['code'] as String);
    }
  }
  return enumValues;
}

String _buildEnumString(String enumName, List<String> enumValues) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln('enum $enumName {');

  for (final String value in enumValues) {
    buffer.writeln('  ${_toEnumValue(value)},');
  }

  buffer.writeln(';\n');

  buffer.writeln("  String toJson() => toString().split('.').last;");
  buffer.writeln('  static $enumName fromJson(String jsonString) => '
      "$enumName.values.firstWhere(($enumName e) => e.toString().split('.').last == jsonString);");
  buffer.writeln('  @override');
  buffer.writeln("  String toString() => super.toString().split('.').last;");
  buffer.writeln('  static $enumName fromString(String str) => fromJson(str);');
  buffer.writeln('}\n');

  return buffer.toString();
}

String _toEnumValue(String value) {
  return value.replaceAll('-', '_').replaceAll(' ', '_').camelCase;
}

Future<void> _writeEnumToFile(String enumName, String enumString) async {
  final String enumFileName = '${enumName.snakeCase}.dart';
  final String filePath = '../lib/src/fhir/enums/$enumFileName';

  final File enumFile = File(filePath);
  if (!enumFile.existsSync()) {
    enumFile.createSync(recursive: true);
  }

  await enumFile.writeAsString(enumString);
}
