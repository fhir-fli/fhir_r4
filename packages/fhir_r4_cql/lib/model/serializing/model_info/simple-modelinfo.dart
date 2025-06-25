// ignore_for_file: file_names

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

final simplemodelinfo = ModelInfo.fromJson({
  "name": "Simple",
  "url": "https://github.com/cqframework/cql-execution/simple",
  "targetQualifier": "simple",
  "patientClassName": "Simple.Patient",
  "patientBirthDatePropertyName": "birthDate",
  "version": "1.0.0",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Record",
      "baseType": "System.Any",
      "retrievable": false,
      "element": {"name": "id", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "Simple.Record",
      "retrievable": true,
      "element": [
        {"name": "name", "elementType": "System.String"},
        {"name": "gender", "elementType": "System.String"},
        {"name": "birthDate", "elementType": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter",
      "baseType": "Simple.Record",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "elementType": "System.Code"},
        {"name": "status", "elementType": "System.Code"},
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition",
      "baseType": "Simple.Record",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "elementType": "System.Code"},
        {"name": "status", "elementType": "System.Code"},
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    }
  ]
});
