// ignore_for_file: avoid_print

import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:yaml_writer/yaml_writer.dart';

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
    // Convert the immutable YamlMap to a modifiable Map
    final Map<String, dynamic> modifiableMap = deepCopyMap(yamlDoc);

    // Traverse through the paths to check and fix schema references
    fixReferences(modifiableMap);

    // Convert back to YAML and write to the file
    final YamlWriter yamlWriter = YamlWriter();
    final String updatedYaml = yamlWriter.write(modifiableMap);
    await file.writeAsString(updatedYaml);

    print('File updated with corrected schema references.');
  } else {
    print('The root of the YAML document is not a map.');
  }
}

Map<String, dynamic> deepCopyMap(YamlMap yamlMap) {
  final Map<String, dynamic> result = <String, dynamic>{};
  yamlMap.forEach((dynamic key, dynamic value) {
    final String keyStr = key.toString(); // Cast the key to String explicitly
    if (value is YamlMap) {
      result[keyStr] = deepCopyMap(value);
    } else if (value is YamlList) {
      result[keyStr] = deepCopyList(value);
    } else {
      result[keyStr] = value;
    }
  });
  return result;
}

List<dynamic> deepCopyList(YamlList yamlList) {
  final List<dynamic> result = <dynamic>[];
  for (final dynamic value in yamlList) {
    if (value is YamlMap) {
      result.add(deepCopyMap(value));
    } else if (value is YamlList) {
      result.add(deepCopyList(value));
    } else {
      result.add(value);
    }
  }
  return result;
}

void fixReferences(Map<String, dynamic> map, {String parentKey = ''}) {
  map.forEach((dynamic key, dynamic value) {
    final String keyStr = key.toString(); // Cast the key to String explicitly
    if (value is Map<String, dynamic>?) {
      // Handle null value explicitly
      if (value == null) {
        // Print the null value and context for further debugging
        print('Null value found at $parentKey$keyStr. Full map context: $map');
        return;
      }

      if (value.containsKey('schema')) {
        final Map<String, dynamic>? schema =
            value['schema'] as Map<String, dynamic>?;

        // Ensure schema is not null before processing
        if (schema != null) {
          // Fix JSON schema reference
          if (schema.containsKey(r'$ref') &&
              schema[r'$ref'] == '#/components/schemas/FHIR-JSON-RESOURCE') {
            // Extract the resource type from the path
            final String resourceType = extractResourceTypeFromPath(parentKey);
            if (resourceType.isNotEmpty) {
              final String correctedJsonRef =
                  './fhir.schema.json#/definitions/$resourceType';
              schema[r'$ref'] =
                  correctedJsonRef; // Replace with the correct reference
            }
          }

          // Fix XML schema reference
          if (schema.containsKey(r'$ref') &&
              schema[r'$ref'] == '#/components/schemas/FHIR-XML-RESOURCE') {
            // Extract the resource type from the path
            final String resourceType = extractResourceTypeFromPath(parentKey);
            if (resourceType.isNotEmpty) {
              final String correctedXmlRef =
                  './lib/fhir-all-xsd/$resourceType.xsd';
              schema[r'$ref'] =
                  correctedXmlRef; // Replace with the correct reference
            }
          }
        }
      }
      fixReferences(value, parentKey: '$parentKey$keyStr.');
    } else if (value is List) {
      // If there is a list, traverse through the list
      for (int i = 0; i < value.length; i++) {
        final dynamic listItem = value[i];

        if (listItem is Map<String, dynamic>) {
          fixReferences(listItem, parentKey: '$parentKey$keyStr[$i].');
        } else if (listItem == null) {
          // Handle null values inside lists
          print('Null value found in list at $parentKey$keyStr[$i].');
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
