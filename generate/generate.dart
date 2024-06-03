import 'dart:convert';
import 'dart:io';

import 'fhir_maps.dart';

void main() {
  // Load the JSON schema
  final File schemaFile = File('path_to_your_schema_file.json');
  final String schemaContent = schemaFile.readAsStringSync();
  final Map<String, dynamic> schema =
      json.decode(schemaContent) as Map<String, dynamic>;

  // Generate Dart classes from the "definitions" section
  final Map<String, dynamic> definitions =
      schema['definitions'] as Map<String, dynamic>;

  final Map<String, String> parentDirectories = <String, String>{};
  final Map<String, StringBuffer> specialTypeBuffers = {
    'elementdefinition': StringBuffer(),
    'dosage': StringBuffer(),
  };

  definitions.forEach((String key, dynamic value) {
    // Skip abstract types and primitive types
    if (allTypes[key] == 'abstract_types' || allTypes[key] == 'primitive_types')
      return;

    final String directory = determineDirectory(key, parentDirectories);
    parentDirectories[key] = directory;

    // Handle special types
    if (key.toLowerCase().startsWith('elementdefinition')) {
      generateClassContent(key, value as Map<String, dynamic>,
          specialTypeBuffers['elementdefinition']!);
    } else if (key.toLowerCase().startsWith('dosage')) {
      generateClassContent(
          key, value as Map<String, dynamic>, specialTypeBuffers['dosage']!);
    } else {
      generateAndSaveClass(key, value as Map<String, dynamic>, directory);
    }
  });

  // Save special type buffers to their respective files
  saveSpecialTypeClasses(
      'elementdefinition', specialTypeBuffers['elementdefinition']!);
  saveSpecialTypeClasses('dosage', specialTypeBuffers['dosage']!);
}

void generateAndSaveClass(
    String key, Map<String, dynamic> definition, String directory) {
  String dartClass = generateClass(key, definition);

  // Special handling for FhirExtension
  if (key == 'Extension') {
    dartClass = dartClass.replaceFirst(
        '/// [FhirExtension] Optional Extension Element - found in all resources.\n',
        '');
    dartClass = dartClass.replaceAll('class Extension', 'class FhirExtension');
    dartClass = dartClass.replaceAll('const Extension', 'const FhirExtension');
    dartClass = dartClass.replaceAll('extension', 'fhirExtension');
  }

  dartClass = dartClass.replaceAll('/// ///', '///');

  // Determine the correct file name and directory
  final String fileName =
      key == 'Extension' ? 'fhir_extension.dart' : '${toSnakeCase(key)}.dart';
  final String outputPath =
      'path_to_your_output_directory/$directory/$fileName';
  final File outputFile = File(outputPath);
  outputFile.createSync(recursive: true);
  outputFile.writeAsStringSync(dartClass);
}

String generateClass(String className, Map<String, dynamic> definition) {
  final StringBuffer buffer = StringBuffer();

  final String description =
      definition['description']?.toString() ?? 'No description available';
  final Map<String, dynamic>? properties =
      definition['properties'] as Map<String, dynamic>?;

  // Rename Extension to FhirExtension
  className = className == 'Extension' ? 'FhirExtension' : className;

  // Add imports
  buffer.writeln("import 'package:fhir_primitives/fhir_primitives.dart';");
  buffer
      .writeln("import 'package:freezed_annotation/freezed_annotation.dart';");
  buffer.writeln("import '../../r4.dart';");

  buffer.writeln(formatComment('/// [$className] $description'));
  buffer.writeln('@freezed');
  buffer.writeln('class $className with _\$$className {');
  buffer.writeln('  const $className._();');
  buffer.writeln();
  buffer.writeln('  const factory $className({');

  if (properties != null) {
    properties.forEach((String key, dynamic value) {
      final String propertyDescription =
          value['description']?.toString() ?? 'No description available';
      final String? ref = value[r'$ref']?.toString().split('/').last;
      final String type = ref != null
          ? convertType(ref)
          : determineType(key, value as Map<String, dynamic>);
      final bool isArray = value['type'] == 'array';

      buffer.writeln(formatComment('/// [$key] $propertyDescription'));
      if (key.startsWith('_')) {
        buffer.writeln(
            "    @JsonKey(name: '$key') $type? ${key.substring(1)}Element,");
      } else if (isArray) {
        buffer.writeln("    @JsonKey(name: '$key') List<$type>? $key,");
      } else {
        buffer.writeln("    @JsonKey(name: '$key') $type? $key,");
      }
    });
  }

  buffer.writeln('  }) = _\$$className;');
  buffer.writeln();
  buffer.writeln('  @override');
  buffer.writeln("  String get fhirType => '$className';");
  buffer.writeln();
  buffer.writeln('  factory $className.fromJson(Map<String, dynamic> json) =>');
  buffer.writeln('      _\$${className}FromJson(json);');
  buffer.writeln();
  buffer
      .writeln('  factory $className.fromYaml(dynamic yaml) => yaml is String');
  buffer.writeln('      ? $className.fromJson(');
  buffer.writeln(
      '          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)');
  buffer.writeln('      : yaml is YamlMap');
  buffer.writeln(
      '          ? $className.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)');
  buffer.writeln('          : throw ArgumentError(');
  buffer.writeln(
      "              '$className cannot be constructed from input provided,'");
  buffer.writeln(
      "              ' it is neither a yaml string nor a yaml map.');");
  buffer.writeln();
  buffer.writeln('  factory $className.fromJsonString(String source) {');
  buffer.writeln('    final dynamic json = jsonDecode(source);');
  buffer.writeln('    if (json is Map<String, dynamic>) {');
  buffer.writeln('      return _\$${className}FromJson(json);');
  buffer.writeln('    } else {');
  buffer.writeln(
      r"      throw FormatException('FormatException:\nYou passed $json\n'");
  buffer.writeln(
      "          'This does not properly decode to a Map<String,dynamic>.');");
  buffer.writeln('    }');
  buffer.writeln('  }');
  buffer.writeln('  @override');
  buffer.writeln('  String toJsonString() => jsonEncode(toJson());');
  buffer.writeln('}');

  return buffer.toString();
}

void generateClassContent(
    String className, Map<String, dynamic> definition, StringBuffer buffer) {
  final String classContent =
      generateClass(className, definition).replaceAll('/// ///', '///');
  buffer.write(classContent);
  buffer.write('\n');
}

void saveSpecialTypeClasses(String typeName, StringBuffer buffer) {
  if (buffer.isEmpty) return;

  final String outputPath =
      'path_to_your_output_directory/special_types/${toSnakeCase(typeName)}.dart';
  final File outputFile = File(outputPath);
  outputFile.createSync(recursive: true);
  outputFile.writeAsStringSync(buffer.toString().replaceAll('/// ///', '///'));
}

String determineType(String key, Map<String, dynamic> value) {
  final String type = value['type'] as String? ?? 'dynamic';
  final String pattern = value['pattern'] as String? ?? '';
  final String? ref = value[r'$ref']?.toString().split('/').last;

  if (ref != null) {
    return convertType(ref);
  }

  if (type == 'string') {
    switch (pattern) {
      case r'^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}\u003d\u003d|[A-Za-z0-9+/]{3}\u003d)?$':
      case r'^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$':
        return 'FhirBase64Binary';
      case r'^\S*$':
        return key.endsWith('Uri')
            ? 'FhirUri'
            : key.endsWith('Url')
                ? 'FhirUrl'
                : 'FhirCanonical';
      case r'^[^\s]+( [^\s]+)*$':
        return 'FhirCode';
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$':
        return 'FhirDate';
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$':
        return 'FhirDateTime';
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]{1,9})?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$':
      case r'^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$':
        return 'FhirInstant';
      case r'^[A-Za-z0-9\-\.]{1,64}$':
        return 'FhirId';
      case r'^(urn:oid:[0-2](\.(0|[1-9][0-9]*))+$':
      case r'^urn:oid:[0-2](\.(0|[1-9][0-9]*))+$':
        return 'FhirOid';
      case r'^[0]|[-+]?[1-9][0-9]*$':
        return key.endsWith('Integer')
            ? 'FhirInteger'
            : key.endsWith('Integer64')
                ? 'FhirInteger64'
                : 'FhirInteger';
      case r'^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$':
        return 'FhirUuid';
      case r'^[0]|([1-9][0-9]*)$':
        return key.endsWith('UnsignedInt') ? 'FhirUnsignedInt' : 'int';
      case r'^([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?$':
        return 'FhirTime';
      default:
        return key.endsWith('Markdown')
            ? 'FhirMarkdown'
            : key.endsWith('String')
                ? 'String'
                : 'String';
    }
  } else if (type == 'boolean') {
    return 'FhirBoolean';
  } else if (type == 'number') {
    return key.endsWith('Decimal')
        ? 'FhirDecimal'
        : key.endsWith('Integer')
            ? 'FhirInteger'
            : key.endsWith('UnsignedInt')
                ? 'FhirUnsignedInt'
                : key.endsWith('PositiveInt')
                    ? 'FhirPositiveInt'
                    : 'double';
  } else if (type == 'integer') {
    return key.endsWith('Integer')
        ? 'FhirInteger'
        : key.endsWith('UnsignedInt')
            ? 'FhirUnsignedInt'
            : key.endsWith('PositiveInt')
                ? 'FhirPositiveInt'
                : 'int';
  } else if (type == 'decimal') {
    return key.endsWith('Decimal') ? 'FhirDecimal' : 'double';
  } else if (type == 'array') {
    final String itemType = value['items'][r'$ref'] != null
        ? convertType(value['items'][r'$ref'].toString().split('/').last)
        : determineType(key, value['items'] as Map<String, dynamic>);
    return 'List<$itemType>';
  } else {
    return 'dynamic';
  }
}

String convertType(String ref) {
  // Rename Extension to FhirExtension in type conversion
  return ref == 'Extension' ? 'FhirExtension' : primitiveTypes[ref] ?? ref;
}

String formatComment(String comment) {
  final StringBuffer buffer = StringBuffer();
  final List<String> lines = comment.split('\n');
  for (final String line in lines) {
    final List<String> words = line.split(' ');
    String commentLine = '/// ';
    for (final String word in words) {
      if ((commentLine.length + word.length + 1) > 80 || word.contains('\n')) {
        buffer.writeln(commentLine.trim());
        commentLine = '/// $word ';
      } else {
        commentLine += '$word ';
      }
    }
    buffer.writeln(commentLine.trim());
  }
  return buffer.toString().replaceAll('/// ///', '///');
}

String determineDirectory(
    String typeName, Map<String, String> parentDirectories) {
  // Check if it's a predefined type
  if (allTypes.containsKey(typeName)) {
    return allTypes[typeName]!;
  }

  // Ensure ElementDefinition is always written to special_types
  if (typeName.toLowerCase().startsWith('elementdefinition')) {
    return 'special_types';
  }

  // Ensure Dosage is always written to special_types
  if (typeName.toLowerCase().startsWith('dosage')) {
    return 'special_types';
  }

  // Check if it's a subclass
  for (final String parent in parentDirectories.keys) {
    if (typeName.startsWith(parent) && typeName != parent) {
      return parentDirectories[parent]!;
    }
  }

  // Check if it's a resource type
  for (final String resourceType in resourceTypes.keys) {
    if (typeName.startsWith(resourceType)) {
      return 'resource_types/${resourceTypes[resourceType]}';
    }
  }

  // Default directory if no match found
  return 'resource_types/others';
}

String toSnakeCase(String name) {
  final RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
  return name
      .replaceAllMapped(exp, (Match m) => ('_' + m.group(0)!))
      .toLowerCase();
}
