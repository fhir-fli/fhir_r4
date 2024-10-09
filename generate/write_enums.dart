// ignore_for_file: avoid_print

import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'file_io.dart';

void writeEnums(Set<String> valueSets,
    Map<String, Map<String, dynamic>> codesAndVS, Map<String, String> nameMap) {
  for (final String valueSetUrl in valueSets) {
    if (!codesAndVS.containsKey(valueSetUrl)) {
      print('ValueSetUrl not Found: $valueSetUrl');
    } else {
      final Map<String, dynamic> valueSet = codesAndVS[valueSetUrl]!;
      final String enumName =
          getEnumNameFromValueSet(valueSetUrl, valueSet, nameMap);

      final List<Map<String, String>> enumValuesWithComments =
          _extractEnumValuesWithComments(valueSet, codesAndVS);
      if (enumValuesWithComments.isEmpty) {
        print('No enum values found for ValueSet: $valueSetUrl');
      } else {
        final String enumString = _buildEnumStringWithComments(
            enumName, enumValuesWithComments, valueSet);
        writeEnumToFile(enumName, enumString);
      }
    }
  }
  final List<String> exportEnums = <String>[];
  final Directory enumDirectory = Directory('$fhirDirectory/enums');
  if (enumDirectory.existsSync()) {
    final List<FileSystemEntity> files = enumDirectory.listSync();
    for (final FileSystemEntity file in files) {
      if (file is File) {
        final String fileName = file.path.split('/').last;
        if (!fileName.endsWith('enums.dart')) {
          exportEnums.add("export '$fileName';\n");
        }
      }
    }
  }
  exportEnums.sort();
  writeEnumToFile('enums', exportEnums.join());
}

String getEnumNameFromValueSet(String valueSetUrl,
    Map<String, dynamic> valueSet, Map<String, String> nameMap) {
  final String valueSetName = valueSet['name'] as String? ??
      valueSet['title'] as String? ??
      valueSetUrl.split('/').last.split('|').first;

  final String enumName = valueSetName.upperCamelCase;
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
    Map<String, Map<String, dynamic>> codesAndVS) {
  final List<Map<String, String>> enumValuesWithComments =
      <Map<String, String>>[];

  // Handle ValueSet
  if (resource['resourceType'] == 'ValueSet') {
    // Process ValueSet `compose`
    if (resource.containsKey('compose')) {
      final List<dynamic> include = (resource['compose']
          as Map<String, dynamic>)['include'] as List<dynamic>;

      for (final dynamic inclusion in include) {
        // Handle system reference in include
        final String? systemUrl =
            (inclusion as Map<String, dynamic>)['system'] as String?;
        if (systemUrl != null) {
          final Map<String, dynamic>? newCodings = codesAndVS[systemUrl];

          // Check if we have the referenced CodeSystem locally
          if (newCodings != null) {
            // Process CodeSystem directly if referenced
            if (newCodings['resourceType'] == 'CodeSystem') {
              final List<Map<String, String>> newEnumValues =
                  _extractEnumValuesFromCodeSystemWithComments(newCodings);
              enumValuesWithComments.addAll(newEnumValues);
            }
            // Handle recursive ValueSet references if necessary
            else if (newCodings['resourceType'] == 'ValueSet') {
              final List<Map<String, String>> newEnumValues =
                  _extractEnumValuesWithComments(newCodings, codesAndVS);
              enumValuesWithComments.addAll(newEnumValues);
            }
          } else {
            // Log missing CodeSystem or ValueSet
            print('System URL $systemUrl not found in local data.');
            // Optionally, handle fetching the missing CodeSystem externally
          }
        }

        // Handle any concepts explicitly defined (though this ValueSet does not define any)
        final List<dynamic>? concepts = inclusion['concept'] as List<dynamic>?;
        if (concepts != null) {
          for (final dynamic concept in concepts) {
            final Map<String, String> conceptDetails = <String, String>{
              'code': (concept as Map<String, dynamic>)['code'] as String,
              'display': concept['display'] as String? ?? '',
              'definition': concept['definition'] as String? ?? ''
            };
            enumValuesWithComments.add(conceptDetails);
          }
        }
      }
    }

    // Process ValueSet `expansion` if available
    else if (resource.containsKey('expansion')) {
      final List<dynamic> contains = (resource['expansion']
          as Map<String, dynamic>)['contains'] as List<dynamic>;
      for (final dynamic concept in contains) {
        final Map<String, String> conceptDetails = <String, String>{
          'code': (concept as Map<String, dynamic>)['code'] as String,
          'display': concept['display'] as String? ?? '',
          'definition': concept['definition'] as String? ?? ''
        };
        enumValuesWithComments.add(conceptDetails);
      }
    }
  } else if (resource['resourceType'] == 'CodeSystem') {
    // Extract concepts directly from CodeSystem
    final List<Map<String, String>> newEnumValues =
        _extractEnumValuesFromCodeSystemWithComments(resource);
    enumValuesWithComments.addAll(newEnumValues);
  }

  return enumValuesWithComments;
}

List<Map<String, String>> _extractEnumValuesFromCodeSystemWithComments(
    Map<String, dynamic> codeSystem) {
  final List<Map<String, String>> enumValuesWithComments =
      <Map<String, String>>[];

  void processConcepts(List<dynamic> concepts) {
    for (final dynamic concept in concepts) {
      final Map<String, String> conceptDetails = <String, String>{
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
    Map<String, dynamic> valueSet) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import 'package:json_annotation/json_annotation.dart';\n");

  // Add enum description at the top
  if (valueSet.containsKey('description')) {
    final String description = valueSet['description']
        .toString()
        .replaceAll('\n', ' ')
        .replaceAll('\r', ' '); // Handling newlines in comments
    buffer.writeln('/// $description');
  }

  buffer.writeln('enum $enumName {');

  final Map<String, String> enumValueMap = <String, String>{};

  for (final Map<String, String> value in enumValuesWithComments) {
    final String validEnumValue =
        _toValidEnumValue(value['code']!).fhirFieldToDartName;

    // Avoid duplicate enum values
    if (!enumValueMap.keys.contains(value['code'])) {
      if (value['display']!.isNotEmpty) {
        buffer.writeln('  /// Display: ${value['display']}');
      }
      if (value['definition']!.isNotEmpty) {
        final String definition = value['definition']!
            .replaceAll('\n', ' ')
            .replaceAll('\r', ' '); // Handling newlines in comments
        buffer.writeln('  /// Definition: $definition');
      }
      buffer.writeln("  @JsonValue('${value['code']}')");
      buffer.writeln('  $validEnumValue,');
      enumValueMap[value['code']!] = validEnumValue;
    }
  }

  buffer.writeln(';\n');

  buffer.writeln('@override');
  buffer.writeln('  String toString() {');
  buffer.writeln('      switch(this) {');
  for (final String key in enumValueMap.keys) {
    final String validEnumValue = enumValueMap[key]!;
    buffer.writeln("        case $validEnumValue: return '$key';");
  }
  buffer.writeln('      }');
  buffer.writeln('      }');

  buffer.writeln('String toJson() => toString();');

  buffer.writeln('  $enumName fromString(String str) {');
  buffer.writeln('    switch(str) {');
  for (final String key in enumValueMap.keys) {
    buffer.writeln("      case '$key': return $enumName.${enumValueMap[key]};");
  }
  buffer.writeln(
      r"    default: throw ArgumentError('Unknown enum value: $str');");
  buffer.writeln('    }');
  buffer.writeln('      }');

  buffer.writeln(' $enumName fromJson(dynamic jsonValue) {');
  buffer.writeln('    if (jsonValue is String) {');
  buffer.writeln('      return fromString(jsonValue);');
  buffer.writeln('    } else {');
  buffer.writeln(r" throw ArgumentError('Unknown enum value: $jsonValue');");
  buffer.writeln('}');
  buffer.writeln('}');

  buffer.writeln('}\n');

  return buffer.toString();
}

// Convert enum value to valid Dart enum value (lowerCamelCase)
String _toValidEnumValue(String value) {
  // Convert to camelCase and handle numeric starting cases by prefixing with "value"
  switch (value) {
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

  value = value.startsWith('http://')
      ? value.substring(7)
      : value.startsWith('https://')
          ? value.substring(8)
          : value;

  value = value
      .replaceAll('-', '_')
      .replaceAll(' ', '_')
      .replaceAll('/', '_')
      .replaceAll('.', '_')
      .replaceAll('+', '_')
      .replaceAll(':', '_');

  value = RegExp(r'^[0-9]').hasMatch(value) ? 'value$value' : value;
  return value.fhirFieldToDartName;
}
