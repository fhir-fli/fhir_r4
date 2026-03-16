// ignore_for_file: prefer_single_quotes,
// ignore_for_file: file_names

import 'package:fhir_r4/fhir_r4.dart';

final structureDefinitionTRight15 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TRight",
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right",
  "name": "TRight",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TRight",
  "derivation": "specialization",
  "snapshot": {
    "element": [
      {"path": "TRight", "min": 1, "max": "1"},
      {
        "path": "TRight.c",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
