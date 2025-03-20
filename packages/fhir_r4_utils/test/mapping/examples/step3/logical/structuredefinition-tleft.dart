// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes, file_names

import 'package:fhir_r4/fhir_r4.dart';

final structureDefinitionTLeft3 = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TLeft",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left-3",
  "name": "TLeft",
  "status": "draft",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TLeft",
  "baseDefinition": "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation": "specialization",
  "differential": {
    "element": [
      {"id": "TLeft", "path": "TLeft", "min": 1, "max": "1"},
      {
        "id": "TLeft.a2",
        "path": "TLeft.a2",
        "min": 1,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});
