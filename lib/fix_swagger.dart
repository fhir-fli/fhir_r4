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

    // Traverse through the paths to check and fix XML schema references
    fixXmlReferences(modifiableMap);

    // Convert back to YAML and write to the file
    final YamlWriter yamlWriter = YamlWriter();
    final String updatedYaml = yamlWriter.write(modifiableMap);
    await file.writeAsString(updatedYaml);

    print('File updated with corrected XML schema references.');
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

void fixXmlReferences(Map<String, dynamic> map, {String parentKey = ''}) {
  map.forEach((dynamic key, dynamic value) {
    final String keyStr = key.toString(); // Cast the key to String explicitly
    if (value is Map<String, dynamic>) {
      if (value.containsKey('schema')) {
        final Map<String, dynamic> schema =
            value['schema'] as Map<String, dynamic>;
        // Check if there is a $ref key pointing to the FHIR-XML-RESOURCE schema
        if (schema.containsKey(r'$ref') &&
            schema[r'$ref'] == '#/components/schemas/FHIR-XML-RESOURCE') {
          // Extract the resource type from the path
          final String resourceType = extractResourceTypeFromPath(parentKey);
          if (resourceType.isNotEmpty) {
            final String correctedRef = './lib/fhir-all-xsd/$resourceType.xsd';
            print('Correcting reference in schema at $parentKey$keyStr:');
            print('Old: ${schema[r'$ref']}');
            print('New: $correctedRef');
            schema[r'$ref'] =
                correctedRef; // Replace with the correct reference
          }
        }
      }
      fixXmlReferences(value, parentKey: '$parentKey$keyStr.');
    } else if (value is List) {
      // If there is a list, traverse through the list
      for (int i = 0; i < value.length; i++) {
        if (value[i] is Map<String, dynamic>) {
          fixXmlReferences(value[i] as Map<String, dynamic>,
              parentKey: '$parentKey$keyStr[$i].');
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
