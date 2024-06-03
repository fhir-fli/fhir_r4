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

  definitions.forEach((String key, dynamic value) {
    final String directory = determineDirectory(key, parentDirectories);
    parentDirectories[key] = directory;
    generateAndSaveClass(key, value as Map<String, dynamic>, directory);
  });
}

void generateAndSaveClass(
    String key, Map<String, dynamic> definition, String directory) {
  final String dartClass = generateClass(key, definition);
  final File outputFile = File(
      'path_to_your_output_directory/$directory/${key.toLowerCase()}.dart');
  outputFile.createSync(recursive: true);
  outputFile.writeAsStringSync(dartClass);
}

String generateClass(String className, Map<String, dynamic> definition) {
  final StringBuffer buffer = StringBuffer();

  final String description =
      definition['description']?.toString() ?? 'No description available';
  final Map<String, dynamic>? properties =
      definition['properties'] as Map<String, dynamic>?;

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

String determineType(String key, Map<String, dynamic> value) {
  final String type = value['type'] as String? ?? 'dynamic';
  final String pattern = value['pattern'] as String? ?? '';
  final String? ref = value[r'$ref']?.toString().split('/').last;

  if (ref != null) {
    return convertType(ref);
  }

  value.forEach((String key, value) {
    if (key.toLowerCase().contains('instant') ||
        value.toString().toLowerCase().contains('instant')) {
      print('key: $key, value: $value');
    }
  });

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
  return primitiveTypes[ref] ?? ref;
}

String formatComment(String comment) {
  final StringBuffer buffer = StringBuffer();
  final List<String> words = comment.split(' ');
  String line = '/// ';
  for (final String word in words) {
    if ((line.length + word.length + 1) > 80) {
      buffer.writeln(line.trim());
      line = '/// $word ';
    } else {
      line += '$word ';
    }
  }
  buffer.writeln(line.trim());
  return buffer.toString();
}

String determineDirectory(
    String typeName, Map<String, String> parentDirectories) {
  // Check if it's a predefined type
  if (allTypes.containsKey(typeName)) {
    return allTypes[typeName]!;
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
