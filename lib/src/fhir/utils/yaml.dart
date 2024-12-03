import 'package:yaml/yaml.dart';

/// Converts a YAML string to JSON.
Map<String, Object?> yamlToJson(String yaml) {
  return loadYaml(yaml) as Map<String, Object?>;
}

/// Converts a YamlMap directly to JSON.
Map<String, Object?> yamlMapToJson(YamlMap yamlMap) {
  // Handle YAML-to-JSON conversion directly
  return yamlMap.map((key, value) => MapEntry(key.toString(), value));
}
