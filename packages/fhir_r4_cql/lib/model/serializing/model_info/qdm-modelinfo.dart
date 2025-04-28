// ignore_for_file: file_names

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


final qdmmodelinfo = ModelInfo.fromJson({
  "name": "QDM",
  "url": "urn:healthit-gov:qdm:v4_1_2",
  "schemaLocation": "http://gov.healthit.qdm qdm.xsd",
  "targetQualifier": "qdm",
  "patientClassName": "Patient",
  "patientClassIdentifier": "Patient",
  "patientBirthDatePropertyName": "birth datetime",
  "version": "4.1.2",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "System.Any",
      "retrievable": false,
      "identifier": "Patient",
      "element": {"name": "birth datetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosisActive",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DiagnosisActive",
      "label": "Diagnosis, Active",
      "primaryCodePath": "code",
      "element": [
        {"name": "anatomical location", "type": "System.Concept"},
        {"name": "laterality", "type": "System.Concept"},
        {"name": "severity", "type": "System.Concept"},
        {"name": "ordinality", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "LaboratoryTestPerformed",
      "label": "Laboratory Test, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "status", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"},
        {"name": "result code", "type": "System.Concept"},
        {"name": "result value", "type": "System.Quantity"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "EncounterPerformed",
      "label": "Encounter, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "admission datetime", "type": "System.DateTime"},
        {"name": "discharge datetime", "type": "System.DateTime"},
        {"name": "discharge status", "type": "System.Concept"},
        {"name": "facility location", "type": "System.Concept"},
        {
          "name": "facility location arrival datetime",
          "type": "System.DateTime"
        },
        {
          "name": "facility location departure datetime",
          "type": "System.DateTime"
        },
        {"name": "length of stay", "type": "System.Quantity"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QDMBaseType",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "start datetime", "type": "System.DateTime"},
        {"name": "stop datetime", "type": "System.DateTime"},
        {"name": "negation rationale", "type": "System.Concept"},
        {"name": "patient preference", "type": "System.Concept"},
        {"name": "provider preference", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationOrder",
      "label": "Medication, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "active datetime", "type": "System.DateTime"},
        {"name": "signed datetime", "type": "System.DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "cumulative medication duration", "type": "System.Quantity"}
      ]
    }
  ]
});
