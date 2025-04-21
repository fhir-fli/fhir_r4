// ignore_for_file: prefer_single_quotes, always_specify_types
// ignore_for_file: avoid_escaping_inner_quotes, file_names
// ignore_for_file: require_trailing_commas, unused_local_variable

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

Future<void> main() async {
  final parser = await StructureMapParser.create();
  final structureMap = parser.parse(map1, 'testMap1');

  // If you want to pass in all resources locally
  final localResourceCache = CanonicalResourceCache();

  /// Engine for local resources
  final localEngine = await FhirMapEngine.create(localResourceCache);

  final localResult = localEngine.transformFromFhir(
    tLeft,
    localStructureMap,
    null,
  );

  // If you want to pass in resources locally, but also fetch some online
  // It will search everytime you pass it a new url
  final onlineResourceCache = OnlineResourceCache();

  final onlineEngine = await FhirMapEngine.create(onlineResourceCache);

  final onlineResult = onlineEngine.transformFromFhir(
    questionnaireResponse,
    hungerVitalSignsMap,
    null,
  );
}

const map1 = '''
map "http://hl7.org/fhir/StructureMap/tutorial-step1" = "tutorial-step1"

/// url = 'http://hl7.org/fhir/StructureMap/tutorial-step1'
/// name = 'tutorial-step1'
/// title = 'Tutorial Step 1'

uses "http://hl7.org/fhir/StructureDefinition/tutorial-left-1" alias TLeft as source
uses "http://hl7.org/fhir/StructureDefinition/tutorial-right-1" alias TRight as target

group tutorial(source src : TLeft, target tgt : TRight) {
    src.a as a -> tgt.a = a "rule_a";
}
''';

final structureDefinitionTLeft = StructureDefinition.fromJson({
  "resourceType": "StructureDefinition",
  "id": "TLeft",
  "extension": [
    {
      "url":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
      "valueUri": "http://hl7.org/fhir/tutorial",
    }
  ],
  "meta": {"lastUpdated": "2016-11-21T16:11:04.708+01:00"},
  "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left",
  "name": "TLeft",
  "fhirVersion": "4.0.1",
  "kind": "logical",
  "abstract": true,
  "type": "TLeft",
  "derivation": "specialization",
  "snapshot": {
    "element": [
      {"path": "TLeft", "min": 1, "max": "1"},
      {
        "path": "TLeft.a",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      },
      {
        "path": "TLeft.b",
        "min": 0,
        "max": "*",
        "type": [
          {"code": "string"},
        ],
      },
      {
        "path": "TLeft.test",
        "min": 0,
        "max": "1",
        "type": [
          {"code": "string"},
        ],
      }
    ],
  },
});

// Please note, this would throw an error, as this is a fake resource created
// specifically for map testing
final tLeft = Resource.fromJson({
  "resourceType": "TLeft",
  "a": ["a", "b", "c"],
  "b": ["1", "2", "3"],
  "test": "test",
});

final localStructureMap = StructureMap.fromJson({
  "resourceType": "StructureMap",
  "id": "unioncollection",
  "meta": {"lastUpdated": "2024-11-01T06:01:12.029+00:00"},
  "text": {
    "status": "generated",
    "div":
        "<div xmlns=\"http://www.w3.org/1999/xhtml\"><pre>/// url = &quot;http://hl7.org/fhir/StructureMap/unioncollection&quot;\r\n/// name = &quot;unioncollection&quot;\r\n/// title = &quot;null&quot;\r\n/// status = &quot;draft&quot;\r\n\r\nuses &quot;http://hl7.org/fhir/StructureDefinition/tutorial-left&quot; alias TLeft as source\r\nuses &quot;http://hl7.org/fhir/StructureDefinition/tutorial-right&quot; alias TRight as target\r\n\r\ngroup combine(source source : TLeft, target target : TRight) {\r\n  source.a first as a -&gt; target.c = (%source.a[0] + %source.b[0]) &quot;concatenated&quot;;\r\n}\r\n\r\n</pre></div>",
  },
  "url": "http://hl7.org/fhir/StructureMap/unioncollection",
  "name": "unioncollection",
  "status": "draft",
  "structure": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-left",
      "mode": "source",
      "alias": "TLeft",
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/tutorial-right",
      "mode": "target",
      "alias": "TRight",
    }
  ],
  "group": [
    {
      "name": "combine",
      "typeMode": "none",
      "input": [
        {"name": "source", "type": "TLeft", "mode": "source"},
        {"name": "target", "type": "TRight", "mode": "target"},
      ],
      "rule": [
        {
          "name": "concatenated",
          "source": [
            {
              "context": "source",
              "element": "a",
              "listMode": "first",
              "variable": "a",
            }
          ],
          "target": [
            {
              "context": "target",
              "contextType": "variable",
              "element": "c",
              "transform": "evaluate",
              "parameter": [
                {"valueString": "%source.a[0] + %source.b[0]"},
              ],
            }
          ],
        }
      ],
    }
  ],
});

final structureDefinitionTRight = StructureDefinition.fromJson({
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

final questionnaireResponse = QuestionnaireResponse.fromJson({
  "resourceType": "QuestionnaireResponse",
  "id": "SDOHCC-QuestionnaireResponseHungerVitalSignExample",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse",
    ],
  },
  "questionnaire":
      "http://hl7.org/fhir/us/sdoh-clinicalcare/Questionnaire/SDOHCC-QuestionnaireHungerVitalSign",
  "_questionnaire": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/display",
        "valueString": "SDOHCC Questionnaire Hunger Vital Sign",
      }
    ],
  },
  "status": "completed",
  "subject": {"reference": "Patient/pat-53234", "display": "COLIN ABBAS"},
  "authored": "2020-09-10T21:56:54.671Z",
  "source": {"reference": "Patient/pat-53234", "display": "COLIN ABBAS"},
  "item": [
    {
      "linkId": "/88122-7",
      "text":
          // ignore: lines_longer_than_80_chars
          "Within the past 12 months we worried whether our food would run out before we got money to buy more.",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA28397-0",
            "display": "Often true",
          },
        }
      ],
    },
    {
      "linkId": "/88123-5",
      "text":
          // ignore: lines_longer_than_80_chars
          "Within the past 12 months the food we bought just didn't last and we didn't have money to get more",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA28397-0",
            "display": "Often true",
          },
        }
      ],
    },
    {
      "linkId": "/88124-3",
      "text": "Food insecurity risk",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA19952-3",
            "display": "At risk",
          },
        }
      ],
    }
  ],
});

final hungerVitalSignsMap = StructureMap.fromJson({
  "resourceType": "Bundle",
  "id": "SDOHCC-BundleHungerVitalSignExample",
  "type": "transaction",
  "entry": [
    {
      "fullUrl":
          "http://hl7.org/fhir/us/sdoh-clinicalcare/Observation/SDOHCC-ObservationResponseHungerVitalSignQuestion3Example",
      "resource": {
        "resourceType": "Observation",
        "id": "SDOHCC-ObservationResponseHungerVitalSignQuestion3Example",
        "meta": {
          "profile": [
            "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ObservationScreeningResponse"
          ]
        },
        "status": "final",
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "social-history",
                "display": "Social History"
              }
            ]
          },
          {
            "coding": [
              {
                "system":
                    "http://terminology.hl7.org/CodeSystem/observation-category",
                "code": "survey",
                "display": "Survey"
              }
            ]
          },
          {
            "coding": [
              {
                "system":
                    "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                "code": "food-insecurity",
                "display": "Food Insecurity"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {"system": "http://loinc.org", "code": "88124-3"}
          ]
        },
        "subject": {"reference": "Patient/pat-53234", "display": "COLIN ABBAS"},
        "effectiveDateTime": "2020-09-10T21:56:54.671Z",
        "issued": "2020-09-10T21:56:54.671Z",
        "valueCodeableConcept": {
          "coding": [
            {
              "system": "http://loinc.org",
              "code": "LA19952-3",
              "display": "At risk"
            }
          ]
        },
        "derivedFrom": [
          {
            "reference":
                "QuestionnaireResponse/SDOHCC-QuestionnaireResponseHungerVitalSignExample"
          }
        ]
      },
      "request": {"method": "POST", "url": "Observation"}
    },
    {
      "fullUrl":
          "http://hl7.org/fhir/us/sdoh-clinicalcare/Condition/SDOHCC-ConditionFoodInsecurityExample",
      "resource": {
        "resourceType": "Condition",
        "id": "SDOHCC-ConditionFoodInsecurityExample",
        "meta": {
          "profile": [
            "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Condition"
          ]
        },
        "clinicalStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "unconfirmed",
              "display": "Unconfirmed"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system":
                    "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
                "code": "health-concern",
                "display": "Health Concern"
              }
            ]
          },
          {
            "coding": [
              {
                "system":
                    "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes",
                "code": "food-insecurity",
                "display": "Food Insecurity"
              }
            ]
          }
        ],
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "733423003",
              "display": "Food insecurity"
            },
            {
              "system": "http://hl7.org/fhir/sid/icd-10-cm",
              "code": "Z59.4",
              "display": "Lack of adequate food"
            }
          ]
        },
        "subject": {"reference": "Patient/pat-53234", "display": "COLIN ABBAS"},
        "onsetPeriod": {"start": "2020-09-10T21:56:54.671Z"},
        "evidence": [
          {
            "detail": [
              {
                "reference":
                    "Observation/SDOHCC-ObservationResponseHungerVitalSignQuestion3Example"
              }
            ]
          }
        ]
      },
      "request": {"method": "POST", "url": "Condition"}
    }
  ]
});
