import 'dart:io';

import 'fhir_generate_extension.dart';

Future<void> writeEnums(Map<String, Map<String, dynamic>> valueSets) async {
  // Iterate through each entry in the valueSets map
  for (final String valueSetUrl in valueSets.keys) {
    final Map<String, dynamic> valueSet = valueSets[valueSetUrl]!;
    final String enumName = _getEnumNameFromValueSet(valueSetUrl, valueSet);

    // Extract enum values
    final List<String> enumValues = _extractEnumValues(valueSet);

    if (enumValues.isEmpty) {
      // ignore: avoid_print
      print('No enum values found for ValueSet: $valueSetUrl');
      continue;
    }

    // Generate enum string
    final String enumString = _buildEnumString(enumName, enumValues);

    // Write the enum string to a file
    await _writeEnumToFile(enumName, enumString);
  }
}

// Generate the enum name from the ValueSet URL or ValueSet metadata
String _getEnumNameFromValueSet(
    String valueSetUrl, Map<String, dynamic> valueSet) {
  // Try to use the ValueSet name if available, otherwise use the URL
  final String? valueSetName = valueSet['name'] as String?;
  if (valueSetName != null && valueSetName.isNotEmpty) {
    return valueSetName.camelCase.capitalize;
  }

  // Fallback to creating enum name from the ValueSet URL (use the last part)
  final String namePart = valueSetUrl.split('/').last.split('|').first;
  return namePart
      .camelCase.capitalize; // Custom function to capitalize and camel case
}

// Extract enum values from the ValueSet JSON
List<String> _extractEnumValues(Map<String, dynamic> valueSet) {
  final List<String> enumValues = <String>[];

  // Check if the ValueSet has 'expansion' or 'compose' to extract concepts
  if (valueSet.containsKey('expansion')) {
    final List<dynamic> contains = (valueSet['expansion']
        as Map<String, dynamic>)['contains'] as List<dynamic>;
    for (final dynamic concept in contains) {
      enumValues.add((concept as Map<String, dynamic>)['code'] as String);
    }
  } else if (valueSet.containsKey('compose')) {
    final List<dynamic> include = (valueSet['compose']
        as Map<String, dynamic>)['include'] as List<dynamic>;
    for (final dynamic inclusion in include) {
      final List<dynamic>? concepts =
          (inclusion as Map<String, dynamic>)['concept'] as List<dynamic>?;
      if (concepts != null) {
        for (final dynamic concept in concepts) {
          enumValues.add((concept as Map<String, dynamic>)['code'] as String);
        }
      }
    }
  }

  return enumValues;
}

// Build the enum string with fromJson/toJson and fromString/toString
String _buildEnumString(String enumName, List<String> enumValues) {
  final StringBuffer buffer = StringBuffer();
  enumName = enumName.camelCase.capitalize;
  buffer.writeln('enum $enumName {');

  for (final String value in enumValues) {
    buffer.writeln('  ${_toEnumValue(value)},');
  }

  buffer.writeln(';\n');

  buffer.writeln("  String toJson() => toString().split('.').last;");
  buffer.writeln('  static $enumName fromJson(String jsonString) => '
      "$enumName.values.firstWhere((e) => e.toString().split('.').last == jsonString);");
  buffer.writeln('  @override');
  buffer.writeln("  String toString() => super.toString().split('.').last;");
  buffer.writeln('  static $enumName fromString(String str) => fromJson(str);');
  buffer.writeln('}\n');

  return buffer.toString();
}

// Convert enum value format
String _toEnumValue(String value) {
  return value.replaceAll('-', '_').replaceAll(' ', '_').camelCase;
}

// Write each enum into its own file
Future<void> _writeEnumToFile(String enumName, String enumString) async {
  // Use snake_case for the file name (e.g., account_status.dart)
  final String enumFileName = '${enumName.snakeCase}.dart';
  final String filePath = '../lib/src/fhir/enums/$enumFileName';

  // Write the enum string to the file
  final File enumFile = File(filePath);

  if (!enumFile.existsSync()) {
    enumFile.createSync(recursive: true);
  }

  await enumFile.writeAsString(enumString);
}
