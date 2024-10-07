import 'dart:convert';
import 'dart:io';

import 'fhir_generate_extension.dart';

Map<String, String> populateNameMap(String fhirSchemaPath) {
  final Map<String, String> nameMap = <String, String>{};
  final String fileString = File(fhirSchemaPath).readAsStringSync();
  final Map<String, dynamic> jsonSchema =
      jsonDecode(fileString) as Map<String, dynamic>;

  final Map<String, dynamic> definitions =
      jsonSchema['definitions'] as Map<String, dynamic>;
  definitions.forEach((String key, dynamic value) {
    nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
  return nameMap;
}

void writeToFile(
    StringBuffer buffer, String className, Map<String, String> nameMap) {
  String? writeFileName = className.fileNameFromClassName(nameMap);

  writeFileName = writeFileName?.properFileName;
  final String filePath = '../lib/src/fhir/'
      '${className.isResourceType ? "resource_types" : "data_types"}/$writeFileName.dart';
  File(filePath).writeAsStringSync(buffer.toString());
}
