import 'dart:async';

import 'extract_handler.dart';
import 'fhir_class_generation.dart';
import 'json_utils.dart';
import 'value_set_handler.dart';

const String fhirSchemaPath = './definitions.json/fhir.schema.json';
const String valueSetPath = './definitions.json/valuesets.json';

final Map<String, String> _nameMap = <String, String>{};
final Map<String, Map<String, dynamic>> _codesAndVS =
    <String, Map<String, dynamic>>{};
final Set<String> _valueSets = <String>{};

Future<void> main() async {
  await extract();
  _codesAndVS.addAll(await codesAndValueSets(valueSetPath));
  _nameMap.addAll(populateNameMap(fhirSchemaPath));
  await generateClassesFromStructureDefinitions(
      _codesAndVS, _valueSets, _nameMap);
  await exportFiles();
  await writeEnums(_valueSets, _codesAndVS, _nameMap);
  await deleteDirectories();
}
