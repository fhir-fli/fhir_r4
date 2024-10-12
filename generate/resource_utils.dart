// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'consts.dart';

void generateResourceUtils() {
  // Parse the schema and get the resource types
  final resourceTypes = extractResourceTypes();
  ignoredClasses.forEach(resourceTypes.remove);
  resourceTypes
    ..removeWhere((String element) => classNamesAdjusted.contains(element))
    ..addAll(classNamesAdjusted.map((String e) => 'Fhir$e'))
    ..sort();

  // Generate the various files
  _generateFile(
    resourceTypes,
    _buildResourceFromJson,
    'resource_from_json.dart',
  );
  _generateFile(resourceTypes, _buildResourceNewId, 'resource_new_id.dart');
  _generateFile(
    resourceTypes,
    _buildResourceNewVersion,
    'resource_new_version.dart',
  );
  _generateFile(
    resourceTypes,
    _buildResourceTypesEnum,
    'resource_types_enum.dart',
  );

  print('Files generated successfully.');
}

// Function to parse the fhir.schema.json and extract all resource types
List<String> extractResourceTypes() {
  final schemaFile = File(fhirSchemaPath);
  final schema =
      jsonDecode(schemaFile.readAsStringSync()) as Map<String, dynamic>;
  final definitions = schema['definitions'] as Map<String, dynamic>;

  // Extract resource types by checking if 'resourceType' exists in the
  //structure definitions
  final resourceTypes = <String>[];
  definitions.forEach((String key, dynamic value) {
    if (value is Map<String, dynamic> &&
        value['properties'] != null &&
        (value['properties'] as Map<String, dynamic>)['resourceType'] != null) {
      resourceTypes.add(key);
    }
  });

  return resourceTypes;
}

// Function to avoid duplication when generating files
void _generateFile(
  List<String> resourceTypes,
  String Function(List<String>) builder,
  String fileName,
) {
  final content = builder(resourceTypes);
  File('$fhirDirectory/utils/$fileName').writeAsStringSync(content);
}

// Build content for resource_from_json.dart
String _buildResourceFromJson(List<String> resourceTypes) {
  final buffer = StringBuffer()
    ..writeln("import 'package:$fhirVersion/$fhirVersion.dart';")
    ..writeln('/// Acts like a constructor, returns a [Resource], accepts a')
    ..writeln('/// [Map<String, Dynamic>] as an argument')
    ..writeln('Resource resourceFromJson(Map<String, dynamic> json) {')
    ..writeln("  final dynamic resourceType = json['resourceType'];")
    ..writeln('  switch (resourceType) {');

  for (final resourceType in resourceTypes) {
    buffer
      ..writeln("    case '${resourceType.replaceAll('Fhir', '')}':")
      ..writeln('      return $resourceType.fromJson(json);');
  }

  buffer
    ..writeln('    default:')
    ..writeln('      throw UnsupportedError(')
    ..writeln(
        "      'You have passed Resource.fromJson a type which does not exist "
        "or is '\n 'null. In this case, the resourceType is \$resourceType.');")
    ..writeln('  }')
    ..writeln('}');

  return buffer.toString();
}

// Build content for resource_new_id.dart
String _buildResourceNewId(List<String> resourceTypes) {
  final buffer = StringBuffer()
    ..writeln("import 'package:$fhirVersion/$fhirVersion.dart';")
    ..writeln("/// Creates a new [id] for the Resources that's passed")
    ..writeln('Resource newId(Resource resource) {')
    ..writeln('  final newId = generateNewUuidFhirString();')
    ..writeln('  switch (resource.resourceType) {');

  for (final resourceType in resourceTypes) {
    buffer
      ..writeln('    case $fhirResourceType.$resourceType:')
      ..writeln(
        '      return (resource as $resourceType).copyWith(id: newId);',
      );
  }

  buffer
    ..writeln('  }')
    ..writeln('}');

  return buffer.toString();
}

// Build content for resource_new_version.dart
String _buildResourceNewVersion(List<String> resourceTypes) {
  final buffer = StringBuffer()..writeln(updatedMeta);

  for (final resourceType in resourceTypes) {
    buffer
      ..writeln('    case $fhirResourceType.$resourceType:')
      ..writeln(
        '      return (resource as $resourceType).copyWith(meta: newMeta);',
      );
  }

  buffer
    ..writeln('  }')
    ..writeln('}');

  return buffer.toString();
}

// Build content for resource_types_enum.dart
String _buildResourceTypesEnum(List<String> resourceTypes) {
  final buffer = StringBuffer()
    ..writeln('// ignore_for_file: constant_identifier_names\n')
    ..writeln('/// An enum representing the different FHIR resource types.')
    ..writeln('enum $fhirResourceType {');

  // Write the enum values
  for (final resourceType in resourceTypes) {
    buffer
      ..writeln(' /// $resourceType')
      ..writeln(' $resourceType,');
  }

  buffer
    ..writeln(';')
    ..writeln('  @override')
    ..writeln('  String toString() {')
    ..writeln('    switch (this) {');

  for (final resourceType in resourceTypes) {
    buffer
      ..writeln('      case $fhirResourceType.$resourceType:')
      ..writeln("        return '${resourceType.replaceAll('Fhir', '')}';");
  }

  buffer
    ..writeln('    }')
    ..writeln('  }')
    ..writeln(' /// Returns the [R4ResourceType] as a [String].')
    ..writeln('  String toJson() => toString();\n')
    ..writeln(' /// Returns the [R4ResourceType] from a [String].')
    ..writeln('  static $fhirResourceType? fromString(String string) {')
    ..writeln('    switch (string) {');

  for (final resourceType in resourceTypes) {
    buffer
      ..writeln("      case '${resourceType.replaceAll('Fhir', '')}':")
      ..writeln('        return $fhirResourceType.$resourceType;');
  }

  buffer
    ..writeln('      default:')
    ..writeln('        return null;')
    ..writeln('    }')
    ..writeln('  }')
    ..writeln(
      ' /// Returns a list of [R4ResourceType] from a [dynamic] object.',
    )
    ..writeln('  static $fhirResourceType? fromJson(dynamic json) {')
    ..writeln('    if (json is String) {')
    ..writeln('      return fromString(json);')
    ..writeln('    }')
    ..writeln('    return null;')
    ..writeln('  }')
    ..writeln(' /// Returns a list of [R4ResourceType] as [String]s.')
    ..writeln('  static List<String> get typesAsStrings => <String>[');

  for (final resourceType in resourceTypes) {
    buffer.writeln("    '${resourceType.replaceAll('Fhir', '')}',");
  }

  buffer.writeln('  ];}');

  return buffer.toString();
}

const String updatedMeta = '''
import 'package:$fhirVersion/$fhirVersion.dart';

/// Returns a [FhirMeta] object, creates a new one if none is passed, otherwise
/// updates the [lastUpdated] and increases the [version] by 1
FhirMeta updateFhirMetaVersion(
  FhirMeta? oldFhirMeta, [
  // ignore: avoid_positional_boolean_parameters
  bool versionIdAsTime = false,
]) {
  final now = DateTime.now().toUtc();
  if (versionIdAsTime) {
    if (oldFhirMeta == null) {
      return FhirMeta(
        lastUpdated: FhirInstant.fromDateTime(now),
        versionId: FhirId(now.toIso8601String().replaceAll(':', '.')),
      );
    } else {
      return oldFhirMeta.copyWith(
        lastUpdated: FhirInstant.fromDateTime(now),
        versionId: FhirId(now.toIso8601String().replaceAll(':', '.')),
      );
    }
  }
  final version = oldFhirMeta == null
      ? 1
      : oldFhirMeta.versionId == null
          ? 1
          : int.parse(oldFhirMeta.versionId.toString()) + 1;
  if (oldFhirMeta == null) {
    return FhirMeta(
      lastUpdated: FhirInstant.fromDateTime(now),
      versionId: FhirId(version.toString()),
    );
  } else {
    return oldFhirMeta.copyWith(
      lastUpdated: FhirInstant.fromDateTime(now),
      versionId: FhirId(version.toString()),
    );
  }
}

/// Updates the [meta] field of this Resource, updates the meta.lastUpdated
/// field, adds 1 to the version number and adds an [Id] if there is not already
/// one, accepts [meta] as an argument and will update that field, otherwise
/// will try and update the [meta] field already in the resource
Resource updateMeta(
  Resource resource, {
  FhirMeta? meta,
  bool versionIdAsTime = false,
}) {
  final newMeta = updateFhirMetaVersion(meta ?? resource.meta, versionIdAsTime);
  switch (resource.resourceType) {''';
