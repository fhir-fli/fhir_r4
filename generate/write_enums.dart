// ignore_for_file: avoid_print

import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'file_io.dart';

void writeEnums(
  Set<String> valueSets,
  Map<String, Map<String, dynamic>> codesAndVS,
  Map<String, String> nameMap,
) {
  for (final valueSetUrl in valueSets) {
    if (!codesAndVS.containsKey(valueSetUrl)) {
      print('ValueSetUrl not Found: $valueSetUrl');
    } else {
      final valueSet = codesAndVS[valueSetUrl]!;
      final enumName = getEnumNameFromValueSet(valueSetUrl, valueSet, nameMap);

      final enumValuesWithComments =
          _extractEnumValuesWithComments(valueSet, codesAndVS);
      if (enumValuesWithComments.isEmpty) {
        print('No enum values found for ValueSet: $valueSetUrl');
      } else {
        final enumString = _buildEnumStringWithComments(
          enumName,
          enumValuesWithComments,
          valueSet,
        );
        writeEnumToFile(enumName, enumString);
      }
    }
  }
  final exportEnums = <String>[];
  final enumDirectory = Directory('$fhirDirectory/enums');
  if (enumDirectory.existsSync()) {
    final files = enumDirectory.listSync();
    for (final file in files) {
      if (file is File) {
        final fileName = file.path.split('/').last;
        if (!fileName.endsWith('enums.dart')) {
          exportEnums.add("export '$fileName';\n");
        }
      }
    }
  }
  exportEnums.sort();
  writeEnumToFile('enums', exportEnums.join());
}

String getEnumNameFromValueSet(
  String valueSetUrl,
  Map<String, dynamic> valueSet,
  Map<String, String> nameMap,
) {
  final valueSetName = valueSet['name'] as String? ??
      valueSet['title'] as String? ??
      valueSetUrl.split('/').last.split('|').first;

  final enumName = valueSetName.upperCamelCase;
  if (enumName.isResource ||
      nameMap.keys.contains(enumName.toLowerCase()) ||
      nameMap.values.contains(enumName.toLowerCase()) ||
      enumNameOverlaps.contains(enumName.toLowerCase())) {
    return '${enumName}Enum';
  }

  return enumName;
}

// Extract enum values along with their display and definition as comments
List<Map<String, String>> _extractEnumValuesWithComments(
  Map<String, dynamic> resource,
  Map<String, Map<String, dynamic>> codesAndVS,
) {
  final enumValuesWithComments = <Map<String, String>>[];

  // Handle ValueSet
  if (resource['resourceType'] == 'ValueSet') {
    // Process ValueSet `compose`
    if (resource.containsKey('compose')) {
      final include = (resource['compose'] as Map<String, dynamic>)['include']
          as List<dynamic>;

      for (final dynamic inclusion in include) {
        // Handle system reference in include
        final systemUrl =
            (inclusion as Map<String, dynamic>)['system'] as String?;
        if (systemUrl != null) {
          final newCodings = codesAndVS[systemUrl];

          // Check if we have the referenced CodeSystem locally
          if (newCodings != null) {
            // Process CodeSystem directly if referenced
            if (newCodings['resourceType'] == 'CodeSystem') {
              final newEnumValues =
                  _extractEnumValuesFromCodeSystemWithComments(newCodings);
              enumValuesWithComments.addAll(newEnumValues);
            }
            // Handle recursive ValueSet references if necessary
            else if (newCodings['resourceType'] == 'ValueSet') {
              final newEnumValues =
                  _extractEnumValuesWithComments(newCodings, codesAndVS);
              enumValuesWithComments.addAll(newEnumValues);
            }
          } else {
            // Log missing CodeSystem or ValueSet
            print('System URL $systemUrl not found in local data.');
            // Optionally, handle fetching the missing CodeSystem externally
          }
        }

        // Handle any concepts explicitly defined (though this ValueSet does
        //not define any)
        final concepts = inclusion['concept'] as List<dynamic>?;
        if (concepts != null) {
          for (final dynamic concept in concepts) {
            final conceptDetails = <String, String>{
              'code': (concept as Map<String, dynamic>)['code'] as String,
              'display': concept['display'] as String? ?? '',
              'definition': concept['definition'] as String? ?? '',
            };
            enumValuesWithComments.add(conceptDetails);
          }
        }
      }
    }

    // Process ValueSet `expansion` if available
    else if (resource.containsKey('expansion')) {
      final contains = (resource['expansion']
          as Map<String, dynamic>)['contains'] as List<dynamic>;
      for (final dynamic concept in contains) {
        final conceptDetails = <String, String>{
          'code': (concept as Map<String, dynamic>)['code'] as String,
          'display': concept['display'] as String? ?? '',
          'definition': concept['definition'] as String? ?? '',
        };
        enumValuesWithComments.add(conceptDetails);
      }
    }
  } else if (resource['resourceType'] == 'CodeSystem') {
    // Extract concepts directly from CodeSystem
    final newEnumValues =
        _extractEnumValuesFromCodeSystemWithComments(resource);
    enumValuesWithComments.addAll(newEnumValues);
  }

  return enumValuesWithComments;
}

List<Map<String, String>> _extractEnumValuesFromCodeSystemWithComments(
  Map<String, dynamic> codeSystem,
) {
  final enumValuesWithComments = <Map<String, String>>[];

  void processConcepts(List<dynamic> concepts) {
    for (final dynamic concept in concepts) {
      final conceptDetails = <String, String>{
        'code': (concept as Map<String, dynamic>)['code'] as String,
        'display': concept['display'] as String? ?? '',
        'definition': concept['definition'] as String? ?? '',
      };
      enumValuesWithComments.add(conceptDetails);

      // Recursively process nested concepts
      if (concept.containsKey('concept')) {
        processConcepts(concept['concept'] as List<dynamic>);
      }
    }
  }

  if (codeSystem.containsKey('concept')) {
    processConcepts(codeSystem['concept'] as List<dynamic>);
  }

  return enumValuesWithComments;
}

// Build the enum string with comments and handle newlines
String _buildEnumStringWithComments(
  String enumName,
  List<Map<String, String>> enumValuesWithComments,
  Map<String, dynamic> valueSet,
) {
  final buffer = StringBuffer();

  // Add enum description at the top
  if (valueSet.containsKey('description')) {
    final description = valueSet['description']
        .toString()
        .replaceAll('\n', ' ')
        .replaceAll('\r', ' '); // Handling newlines in comments
    buffer.writeln('/// $description');
  }

  buffer.writeln('enum $enumName {');

  final enumValueMap = <String, String>{};

  for (final value in enumValuesWithComments) {
    final validEnumValue =
        _toValidEnumValue(value['code']!).fhirFieldToDartName;

    // Avoid duplicate enum values
    if (!enumValueMap.containsKey(value['code'])) {
      if (value['display']!.isNotEmpty) {
        buffer.writeln('  /// Display: ${value['display']}');
      }
      if (value['definition']!.isNotEmpty) {
        final definition = value['definition']!
            .replaceAll('\n', ' ')
            .replaceAll('\r', ' '); // Handling newlines in comments
        buffer.writeln('  /// Definition: $definition');
      }

      buffer.writeln('  $validEnumValue,');
      enumValueMap[value['code']!] = validEnumValue;
    }
  }

  buffer
    ..writeln(';\n')
    ..writeln('@override')
    ..writeln('  String toString() {')
    ..writeln('    switch(this) {');

  for (final key in enumValueMap.keys) {
    final validEnumValue = enumValueMap[key]!;
    buffer.writeln("      case $validEnumValue: return '$key';");
  }

  buffer
    ..writeln('    }')
    ..writeln('  }')
    ..writeln('String toJson() => toString();')
    ..writeln('static $enumName fromString(String str) {')
    ..writeln('    switch(str) {');

  for (final key in enumValueMap.keys) {
    buffer.writeln("      case '$key': return $enumName.${enumValueMap[key]};");
  }

  buffer
    ..writeln(r"    default: throw ArgumentError('Unknown enum value: $str');")
    ..writeln('    }')
    ..writeln('  }')
    ..writeln('static $enumName fromJson(dynamic jsonValue) {')
    ..writeln('    if (jsonValue is String) {')
    ..writeln('      return fromString(jsonValue);')
    ..writeln('    } else {')
    ..writeln(r"      throw ArgumentError('Unknown enum value: $jsonValue');")
    ..writeln('    }')
    ..writeln('  }')
    ..writeln('}\n');

  return buffer.toString();
}

// Convert enum value to valid Dart enum value (lowerCamelCase)
String _toValidEnumValue(String value) {
  // Use a local variable to avoid modifying the function parameter directly
  var modifiedValue = value;

  // Convert to camelCase and handle numeric starting cases by prefixing
  //with "value"
  switch (modifiedValue) {
    case '=':
      return 'equals';
    case '!=':
      return 'notEquals';
    case '>':
      return 'greaterThan';
    case '<':
      return 'lessThan';
    case '>=':
      return 'greaterThanOrEquals';
    case '<=':
      return 'lessThanOrEquals';
    case '+':
      return 'plus';
    case '-':
      return 'minus';
  }

  modifiedValue = modifiedValue.startsWith('http://')
      ? modifiedValue.substring(7)
      : modifiedValue.startsWith('https://')
          ? modifiedValue.substring(8)
          : modifiedValue;

  modifiedValue = modifiedValue
      .replaceAll('-', '_')
      .replaceAll(' ', '_')
      .replaceAll('/', '_')
      .replaceAll('.', '_')
      .replaceAll('+', '_')
      .replaceAll(':', '_');

  modifiedValue = RegExp('^[0-9]').hasMatch(modifiedValue)
      ? 'value$modifiedValue'
      : modifiedValue;

  return modifiedValue.fhirFieldToDartName;
}
