import 'dart:convert';
import 'dart:io';

// Import your FhirPrimitives here
// import 'package:your_fhir_package/fhir_primitives.dart';

void main() async {
  final File file = File('search-parameters.json'); // Path to your JSON file
  final String jsonString = await file.readAsString();
  final Map<String, dynamic> data =
      jsonDecode(jsonString) as Map<String, dynamic>;

  final Map<String, List<Map<String, String>>> resourceParameters =
      <String, List<Map<String, String>>>{};

  // Parse the JSON data and extract search parameters
  for (final dynamic entry in data['entry'] as List<dynamic>) {
    final Map<String, dynamic> resource =
        (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>;
    final List<dynamic> baseList = resource['base'] as List<dynamic>;
    final String code = resource['code'] as String;
    final String type = resource['type'] as String;
    final List<dynamic>? components =
        resource['component'] as List<dynamic>?; // Handle composite parameters

    for (final dynamic base in baseList) {
      final String resourceType = base as String;

      if (!resourceParameters.containsKey(resourceType)) {
        resourceParameters[resourceType] = <Map<String, String>>[];
      }

      if (components != null && components.isNotEmpty) {
        // If the search parameter has components, add them as part of the composite
        for (final dynamic component in components) {
          final Map<String, dynamic> componentDetails =
              component as Map<String, dynamic>;

          // Safely retrieve the code and type, handling null values
          final String componentCode = componentDetails['code'] != null
              ? componentDetails['code'] as String
              : '';
          final String? componentType = componentDetails['type'] as String?;

          // Only add if the componentCode is valid (non-empty)
          if (componentCode.isNotEmpty) {
            resourceParameters[resourceType]!.add(<String, String>{
              'code': '$code-$componentCode', // Composite name
              if (componentType != null && componentType.isNotEmpty)
                'type': componentType,
            });
          }
        }
      } else {
        // Otherwise, treat it as a regular parameter
        resourceParameters[resourceType]!
            .add(<String, String>{'code': code, 'type': type});
      }
    }
  }

  // Create the searches directory if it doesn't exist
  final Directory dir = Directory('searches');
  if (!dir.existsSync()) {
    dir.createSync();
  }

  // Generate Dart files for each resource type
  for (final MapEntry<String, List<Map<String, String>>> entry
      in resourceParameters.entries) {
    final String resourceType = entry.key;
    final List<Map<String, String>> parameters = entry.value;
    final String className = '${resourceType}Search';

    // Prepare content for the file
    final StringBuffer buffer = StringBuffer();
    buffer.writeln('// This file is auto-generated. Do not edit directly.');
    final List<String> noParameters = <String>[
      'LinkageSearch',
      'VerificationResultSearch'
    ];
    if (!noParameters.contains(className)) {
      buffer.writeln("import '../../../fhir_r4.dart';");
      buffer.writeln("import '../enums/search_modifier.dart';\n");
    }

    buffer.writeln('class $className {');
    buffer.writeln(
        '  final Map<String, String> parameters = <String, String>{};');

    // Generate methods for each search parameter
    for (final Map<String, String> param in parameters) {
      final String paramCode = param['code']!.replaceAll('-', '_');
      final String paramType = param['type']!;

      // Convert the method name to PascalCase
      final String methodName = _toPascalCase(paramCode);

      switch (paramType) {
        case 'date':
          buffer.writeln('  $className ${_methodName(methodName)}'
              '(FhirDateTime value, {SearchModifier? modifier}) {');
          buffer.writeln(
              "    parameters['\${modifier}$paramCode'] = value.toString();");
          buffer.writeln('    return this;');
          buffer.writeln('  }\n');
        case 'token':
          buffer.writeln('  $className ${_methodName(methodName)}'
              '(FhirString value, {FhirUri? system, SearchModifier? modifier}) {');
          buffer.writeln(
              "    parameters['\${modifier}$paramCode'] = system != null ? '\$system|\$value' : '\$value';");
          buffer.writeln('    return this;');
          buffer.writeln('  }\n');
        case 'string':
          buffer.writeln('  $className ${_methodName(methodName)}'
              '(FhirString value, {SearchModifier? modifier}) {');
          buffer.writeln(
              "    parameters['\${modifier}$paramCode'] = value.toString();");
          buffer.writeln('    return this;');
          buffer.writeln('  }\n');
        case 'number':
          buffer.writeln('  $className ${_methodName(methodName)}'
              '(FhirDecimal value, {SearchModifier? modifier}) {');
          buffer.writeln(
              "    parameters['\${modifier}$paramCode'] = value.toString();");
          buffer.writeln('    return this;');
          buffer.writeln('  }\n');
        case 'quantity':
          buffer.writeln('  $className ${_methodName(methodName)}'
              '(FhirDecimal value, {FhirString? unit, FhirUri? system, SearchModifier? modifier}) {');
          buffer.writeln(
              "    parameters['\${modifier}$paramCode'] = '\$value.toString()}|\${system?.toString() ?? ''}|\${unit?.toString() ?? ''}';");
          buffer.writeln('    return this;');
          buffer.writeln('  }\n');
        case 'uri':
          buffer.writeln('  $className ${_methodName(methodName)}'
              '(FhirUri value, {SearchModifier? modifier}) {');
          buffer.writeln(
              "    parameters['\${modifier}$paramCode'] = value.toString();");
          buffer.writeln('    return this;');
          buffer.writeln('  }\n');
        // Add more cases here as needed for other parameter types
      }
    }

    buffer.writeln('  $className add(String parameter, String value) {');
    buffer.writeln('    parameters[parameter] = value;');
    buffer.writeln('    return this;');
    buffer.writeln('  }\n');

    // Generate the query builder method
    buffer.writeln('  String buildQuery() {');
    buffer.writeln(
        r"    return parameters.entries.map((MapEntry<String, String> e) => '${e.key}=${e.value}').join('&');");
    buffer.writeln('  }');

    buffer.writeln('}\n');

    // Write to individual file in the searches directory
    final File outputFile =
        File('searches/${resourceType.toLowerCase()}_search.dart');
    await outputFile.writeAsString(buffer.toString());
  }

  // ignore: avoid_print
  print('Dart search classes generated successfully!');

  final Directory searchDir = Directory('searches');
  final List<String> files = searchDir
      .listSync()
      .whereType<File>()
      .where((File file) => file.path.endsWith('.dart'))
      .map((File file) => file.path.split('/').last)
      .toList();

  files.sort();

  File('searches/searches.dart').writeAsStringSync(
      files.map((String file) => "export '$file';").join('\n'));
}

String _methodName(String name) {
  final List<String> reservedWords = <String>['class', 'case'];
  name = name.substring(0, 1).toLowerCase() + name.substring(1);
  if (reservedWords.contains(name)) {
    return '${name}_';
  }
  return name;
}

// Helper function to convert snake_case to PascalCase
String _toPascalCase(String text) {
  if (text.isEmpty) {
    return '';
  }
  return text
      .split('_')
      .map((String word) =>
          word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1))
      .join();
}
