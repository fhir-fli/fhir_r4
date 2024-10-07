import 'dart:convert';
import 'dart:io';

import 'fhir_generate_extension.dart';

Future<Map<String, Map<String, dynamic>>> codesAndValueSets(
    String valueSetPath) async {
  final Map<String, Map<String, dynamic>> codesAndVS =
      <String, Map<String, dynamic>>{};

  final String codesString = File(valueSetPath).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(codesString) as Map<String, dynamic>;

  for (final dynamic entry in (bundle['entry'] as List<dynamic>)) {
    if ((entry as Map<String, dynamic>)['resource'] != null &&
            entry['resource'] is Map<String, dynamic> &&
            (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
                'ValueSet' ||
        (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
            'CodeSystem') {
      codesAndVS[(entry['resource'] as Map<String, dynamic>)['url'] as String] =
          entry['resource'] as Map<String, dynamic>;
      codesAndVS[(entry['fullUrl'] as String).splitOffVersion] =
          entry['resource'] as Map<String, dynamic>;
    }
  }
  return codesAndVS;
}

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
