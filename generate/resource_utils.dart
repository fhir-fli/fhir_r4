// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'consts.dart';

void generateResourceUtils() {
  // Parse the schema and get the resource types
  final List<String> resourceTypes = extractResourceTypes();

  // Generate the various files
  generateResourceFromJson(resourceTypes);
  generateResourceNewId(resourceTypes);
  generateResourceNewVersion(resourceTypes);
  generateResourceTypesEnum(resourceTypes);

  print('Files generated successfully.');
}

// Function to parse the fhir.schema.json and extract all resource types
List<String> extractResourceTypes() {
  final File schemaFile = File(fhirSchemaPath);
  final Map<String, dynamic> schema =
      jsonDecode(schemaFile.readAsStringSync()) as Map<String, dynamic>;

  final Map<String, dynamic> definitions =
      schema['definitions'] as Map<String, dynamic>;

  // Extract resource types by checking if 'resourceType' exists in the structure definitions
  final List<String> resourceTypes = <String>[];
  definitions.forEach((String key, dynamic value) {
    if (value is Map<String, dynamic> &&
        value['properties'] != null &&
        (value['properties'] as Map<String, dynamic>)['resourceType'] != null) {
      resourceTypes.add(key);
    }
  });

  return resourceTypes;
}

// Function to generate resource_from_json.dart
void generateResourceFromJson(List<String> resourceTypes) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import '../../../$fhirVersion.dart';");
  buffer
      .writeln('/// Acts like a constructor, returns a [Resource], accepts a');
  buffer.writeln('/// [Map<String, Dynamic>] as an argument');
  buffer.writeln('Resource resourceFromJson(Map<String, dynamic> json) {');
  buffer.writeln("  final dynamic resourceType = json['resourceType'];");
  buffer.writeln('  switch (resourceType) {');

  for (final String resourceType in resourceTypes) {
    buffer.writeln("    case '$resourceType':");
    buffer.writeln('      return $resourceType.fromJson(json);');
  }

  buffer.writeln('    default:');
  buffer.writeln("      throw Exception('Unknown resource type');");
  buffer.writeln('  }');
  buffer.writeln('}');

  File('${fhirDirectory}utils/resource_from_json.dart')
      .writeAsStringSync(buffer.toString());
}

// Function to generate resource_new_id.dart
void generateResourceNewId(List<String> resourceTypes) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import '../../../$fhirVersion.dart';");
  buffer.writeln("/// Creates a new [id] for the Resources that's passed");
  buffer.writeln('Resource newId(Resource resource) {');
  buffer.writeln('  final FhirString newId = generateNewUuidFhirString();');
  buffer.writeln('  switch (resource.resourceType) {');

  for (final String resourceType in resourceTypes) {
    buffer.writeln('    case $fhirResourceType.$resourceType:');
    buffer.writeln(
        '      return (resource as $resourceType).copyWith(id: newId);');
  }

  buffer.writeln('    default:');
  buffer.writeln("      throw Exception('Unknown resource type');");
  buffer.writeln('  }');
  buffer.writeln('}');

  File('${fhirDirectory}utils/resource_new_id.dart')
      .writeAsStringSync(buffer.toString());
}

// Function to generate resource_new_version.dart
void generateResourceNewVersion(List<String> resourceTypes) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import '../../../$fhirVersion.dart';");
  buffer.writeln('/// Updates the [meta] field of the resource');
  buffer.writeln(
      'Resource updateMeta(Resource resource, {FhirMeta? meta, bool versionIdAsTime = false}) {');
  buffer.writeln(
      '  final FhirMeta newMeta = updateFhirMetaVersion(meta ?? resource.meta, versionIdAsTime);');
  buffer.writeln('  switch (resource.resourceType) {');

  for (final String resourceType in resourceTypes) {
    buffer.writeln('    case $fhirResourceType.$resourceType:');
    buffer.writeln(
        '      return (resource as $resourceType).copyWith(meta: newMeta);');
  }

  buffer.writeln('    default:');
  buffer.writeln("      throw Exception('Unknown resource type');");
  buffer.writeln('  }');
  buffer.writeln('}');

  File('${fhirDirectory}utils/resource_new_version.dart')
      .writeAsStringSync(buffer.toString());
}

// Function to generate resource_types_enum.dart
void generateResourceTypesEnum(List<String> resourceTypes) {
  final StringBuffer buffer = StringBuffer();
  buffer.writeln("import 'package:json_annotation/json_annotation.dart';");
  buffer.writeln('enum $fhirResourceType {');

  // Write the enum values
  for (final String resourceType in resourceTypes) {
    buffer.writeln("  @JsonValue('$resourceType')");
    buffer.writeln('  $resourceType,');
  }

  // Add the helper methods
  buffer.writeln('  @override');
  buffer.writeln('  String toString() {');
  buffer.writeln('    switch (this) {');
  for (final String resourceType in resourceTypes) {
    buffer.writeln('      case $fhirResourceType.$resourceType:');
    buffer.writeln("        return '$resourceType';");
  }
  buffer.writeln('    }');
  buffer.writeln('  }');

  buffer.writeln('  String toJson() => toString();');

  buffer.writeln('  static $fhirResourceType? fromString(String string) {');
  buffer.writeln('    switch (string) {');
  for (final String resourceType in resourceTypes) {
    buffer.writeln("      case '$resourceType':");
    buffer.writeln('        return $fhirResourceType.$resourceType;');
  }
  buffer.writeln('      default:');
  buffer.writeln('        return null;');
  buffer.writeln('    }');
  buffer.writeln('  }');

  buffer.writeln('  static $fhirResourceType? fromJson(dynamic json) {');
  buffer.writeln('    if (json is String) {');
  buffer.writeln('      return fromString(json);');
  buffer.writeln('    }');
  buffer.writeln('    return null;');
  buffer.writeln('  }');

  buffer.writeln('  static List<String> get typesAsStrings => <String>[');
  for (final String resourceType in resourceTypes) {
    buffer.writeln("    '$resourceType',");
  }
  buffer.writeln('  ];');

  buffer.writeln('}');

  File('${fhirDirectory}utils/resource_types_enum.dart')
      .writeAsStringSync(buffer.toString());
}
