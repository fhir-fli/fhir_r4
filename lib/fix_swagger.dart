// ignore_for_file: avoid_print

import 'dart:io';
import 'package:yaml/yaml.dart';

void main() async {
  final File file = File('api-docs.r4.openapi.yaml');

  if (!file.existsSync()) {
    print('File not found: api-docs.r4.openapi.yaml');
    return;
  }

  // Read the file content
  final String content = await file.readAsString();

  // Parse YAML file content
  final dynamic yamlDoc = loadYaml(content);

  // Ensure it's a YamlMap to avoid issues with dynamic typing
  if (yamlDoc is YamlMap) {
    // Traverse through the paths to check and fix missing types in schemas
    fixReferences(yamlDoc);
  } else {
    print('The root of the YAML document is not a map.');
  }
}

void fixReferences(YamlMap yamlMap, {String parentKey = ''}) {
  yamlMap.forEach((dynamic key, dynamic value) {
    if (value is YamlMap) {
      if (value.containsKey('schema')) {
        final YamlMap schema = value['schema'] as YamlMap;
        // Check if there is a $ref key pointing to a generic schema
        if (schema.containsKey(r'$ref') &&
            (schema[r'$ref'] == '#/components/schemas/FHIR-JSON-RESOURCE' ||
                schema[r'$ref'] == '#/components/schemas/FHIR-XML-RESOURCE')) {
          // Extract the resource type from the path
          final String resourceType = extractResourceTypeFromPath(parentKey);
          if (resourceType.isNotEmpty) {
            final String correctedRef =
                './fhir.schema.json#/definitions/$resourceType';
            print('Correcting reference in schema at $parentKey$key:');
            print('Old: ${schema[r'$ref']}');
            print('New: $correctedRef');
            schema[r'$ref'] =
                correctedRef; // Replace with the correct reference
          }
        }
      }
      fixReferences(value, parentKey: '$parentKey$key.');
    } else if (value is YamlList) {
      // If there is a list, traverse through the list
      for (int i = 0; i < value.length; i++) {
        if (value[i] is YamlMap) {
          fixReferences(value[i] as YamlMap, parentKey: '$parentKey$key[$i].');
        }
      }
    }
  });
}

String extractResourceTypeFromPath(String path) {
  // Extract the resource type based on the path.
  // E.g., "/Patient/{id}" -> "Patient", "/Observation/{id}" -> "Observation"
  final RegExp resourceTypePattern = RegExp(r'\/([A-Za-z]+)\/\{id\}');
  final Match? match = resourceTypePattern.firstMatch(path);

  if (match != null) {
    final String resourceType = match.group(1) ?? '';
    return resourceType;
  }

  return '';
}
