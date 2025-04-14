import '../../../cql.dart';

final qdmmodelinfo55 = ModelInfo.fromJson({
  "name": "QDM",
  "url": "urn:healthit-gov:qdm:v5_5",
  "targetQualifier": "qdm",
  "patientClassName": "Patient",
  "patientClassIdentifier": "Patient",
  "patientBirthDatePropertyName": "birthDatetime",
  "version": "5.5",
  "strictRetrieveTyping": true,
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "System.Any",
      "retrievable": false,
      "identifier": "Patient",
      "element": {"name": "birthDatetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "Identifier",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "namingSystem", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Entity",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientEntity",
      "baseType": "Entity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "CarePartner",
      "baseType": "Entity",
      "retrievable": false,
      "element": {"name": "relationship", "type": "System.Code"}
    },
    {
      "type": "ClassInfo",
      "name": "RelatedPerson",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Related Person",
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "linkedPatientId", "type": "System.String"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      },
      "targetContextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "linkedPatientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner",
      "baseType": "Entity",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "System.Code"},
        {"name": "specialty", "type": "System.Code"},
        {"name": "qualification", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Organization",
      "baseType": "Entity",
      "retrievable": false,
      "element": {"name": "type", "type": "System.Code"}
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Participation",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Participation",
      "primaryCodePath": "code",
      "element": [
        {"name": "participationPeriod", "type": "interval<System.DateTime>"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicSex",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Sex",
      "primaryCodePath": "code",
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "CareGoal",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Care Goal",
      "primaryCodePath": "code",
      "element": [
        {"name": "statusDate", "type": "System.Date"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "relatedTo", "type": "list<System.String>"},
        {
          "name": "targetOutcome",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristic",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic",
      "primaryCodePath": "code",
      "element": {"name": "authorDatetime", "type": "System.DateTime"},
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicEthnicity",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Ethnicity",
      "primaryCodePath": "code",
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicRace",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Race",
      "primaryCodePath": "code",
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "status", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {
          "name": "result",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "resultDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "referenceRange", "type": "interval<System.Quantity>"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "components", "type": "list<QDM.ResultComponent>"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Symptom",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Symptom",
      "primaryCodePath": "code",
      "element": [
        {"name": "prevalencePeriod", "type": "interval<System.DateTime>"},
        {"name": "severity", "type": "System.Code"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministered",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "rank", "type": "System.Integer"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "negationRationale", "type": "System.Code"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "EncounterPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "admissionSource", "type": "System.Code"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dischargeDisposition", "type": "System.Code"},
        {"name": "facilityLocations", "type": "list<QDM.FacilityLocation>"},
        {"name": "diagnoses", "type": "list<QDM.DiagnosisComponent>"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "lengthOfStay", "type": "System.Quantity"},
        {"name": "priority", "type": "System.Code"},
        {
          "name": "participant",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Diagnosis",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Diagnosis",
      "primaryCodePath": "code",
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "prevalencePeriod", "type": "interval<System.DateTime>"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "severity", "type": "System.Code"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "category", "type": "System.Code"},
        {"name": "medium", "type": "System.Code"},
        {
          "name": "sender",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "recipient",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "relatedTo", "type": "list<System.String>"},
        {"name": "sentDatetime", "type": "System.DateTime"},
        {"name": "receivedDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {
          "name": "result",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "components", "type": "list<QDM.Component>"},
        {"name": "relatedTo", "type": "list<System.String>"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicClinicalTrialParticipant",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Clinical Trial Participant",
      "primaryCodePath": "code",
      "element": [
        {"name": "reason", "type": "System.Code"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "DeviceOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {
          "name": "result",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "resultDatetime", "type": "System.DateTime"},
        {"name": "status", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "components", "type": "list<QDM.Component>"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "InterventionOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistory",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Family History",
      "primaryCodePath": "code",
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relationship", "type": "System.Code"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Component",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {
          "name": "result",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosisComponent",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "presentOnAdmissionIndicator", "type": "System.Code"},
        {"name": "rank", "type": "System.Integer"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ResultComponent",
      "baseType": "Component",
      "retrievable": false,
      "element": {
        "name": "referenceRange",
        "type": "interval<System.Quantity>"
      },
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "FacilityLocation",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "locationPeriod", "type": "interval<System.DateTime>"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "MedicationActive",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Medication, Active",
      "primaryCodePath": "code",
      "element": [
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicPayer",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Payer",
      "primaryCodePath": "code",
      "element": {
        "name": "relevantPeriod",
        "type": "interval<System.DateTime>"
      },
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicExpired",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Expired",
      "primaryCodePath": "code",
      "element": [
        {"name": "expiredDatetime", "type": "System.DateTime"},
        {"name": "cause", "type": "System.Code"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationAdministered",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceAdministered",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "EncounterOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "priority", "type": "System.Code"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "EncounterRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ProcedurePerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {
          "name": "result",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "status", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "rank", "type": "System.Integer"},
        {"name": "priority", "type": "System.Code"},
        {"name": "incisionDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "components", "type": "list<QDM.Component>"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Allergy/Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "prevalencePeriod", "type": "interval<System.DateTime>"},
        {"name": "type", "type": "System.Code"},
        {"name": "severity", "type": "System.Code"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicBirthdate",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Birthdate",
      "primaryCodePath": "code",
      "element": {"name": "birthDatetime", "type": "System.DateTime"},
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Adverse Event",
      "primaryCodePath": "code",
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "severity", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "type", "type": "System.Code"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "QDMBaseType",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "code", "type": "System.Code"},
        {"name": "patientId", "type": "System.String"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "DeviceApplied",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDischarge",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "daysSupplied", "type": "System.Integer"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "prescriber",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "InterventionPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {
          "name": "result",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "status", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispensed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "daysSupplied", "type": "System.Integer"},
        {"name": "route", "type": "System.Code"},
        {
          "name": "prescriber",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "dispenser",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "negationRationale", "type": "System.Code"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "activeDatetime", "type": "System.DateTime"},
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "reason", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PatientCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Care Experience",
      "primaryCodePath": "code",
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ProviderCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Provider Care Experience",
      "primaryCodePath": "code",
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {
          "name": "recorder",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "rank", "type": "System.Integer"},
        {"name": "priority", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "daysSupplied", "type": "System.Integer"},
        {"name": "route", "type": "System.Code"},
        {"name": "setting", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "prescriber",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "InterventionRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {
          "name": "requester",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relevantDatetime", "type": "System.DateTime"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {
          "name": "result",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "components", "type": "list<QDM.Component>"},
        {
          "name": "performer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QDM",
                "name": "PatientEntity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "CarePartner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Practitioner",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QDM",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patientId"
      }
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveAssessmentOrder",
      "baseType": "AssessmentOrder",
      "identifier": "PositiveAssessmentOrder",
      "label": "Assessment, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeAssessmentOrder",
      "baseType": "AssessmentOrder",
      "identifier": "NegativeAssessmentOrder",
      "label": "Assessment, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveAssessmentRecommended",
      "baseType": "AssessmentRecommended",
      "identifier": "PositiveAssessmentRecommended",
      "label": "Assessment, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeAssessmentRecommended",
      "baseType": "AssessmentRecommended",
      "identifier": "NegativeAssessmentRecommended",
      "label": "Assessment, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveAssessmentPerformed",
      "baseType": "AssessmentPerformed",
      "identifier": "PositiveAssessmentPerformed",
      "label": "Assessment, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeAssessmentPerformed",
      "baseType": "AssessmentPerformed",
      "identifier": "NegativeAssessmentPerformed",
      "label": "Assessment, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveCommunicationPerformed",
      "baseType": "CommunicationPerformed",
      "identifier": "PositiveCommunicationPerformed",
      "label": "Communication, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeCommunicationPerformed",
      "baseType": "CommunicationPerformed",
      "identifier": "NegativeCommunicationPerformed",
      "label": "Communication, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDeviceOrder",
      "baseType": "DeviceOrder",
      "identifier": "PositiveDeviceOrder",
      "label": "Device, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDeviceOrder",
      "baseType": "DeviceOrder",
      "identifier": "NegativeDeviceOrder",
      "label": "Device, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDeviceRecommended",
      "baseType": "DeviceRecommended",
      "identifier": "PositiveDeviceRecommended",
      "label": "Device, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDeviceRecommended",
      "baseType": "DeviceRecommended",
      "identifier": "NegativeDeviceRecommended",
      "label": "Device, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDeviceApplied",
      "baseType": "DeviceApplied",
      "identifier": "PositiveDeviceApplied",
      "label": "Device, Applied",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDeviceApplied",
      "baseType": "DeviceApplied",
      "identifier": "NegativeDeviceApplied",
      "label": "Device, Not Applied",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDiagnosticStudyOrder",
      "baseType": "DiagnosticStudyOrder",
      "identifier": "PositiveDiagnosticStudyOrder",
      "label": "Diagnostic Study, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDiagnosticStudyOrder",
      "baseType": "DiagnosticStudyOrder",
      "identifier": "NegativeDiagnosticStudyOrder",
      "label": "Diagnostic Study, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDiagnosticStudyRecommended",
      "baseType": "DiagnosticStudyRecommended",
      "identifier": "PositiveDiagnosticStudyRecommended",
      "label": "Diagnostic Study, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDiagnosticStudyRecommended",
      "baseType": "DiagnosticStudyRecommended",
      "identifier": "NegativeDiagnosticStudyRecommended",
      "label": "Diagnostic Study, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDiagnosticStudyPerformed",
      "baseType": "DiagnosticStudyPerformed",
      "identifier": "PositiveDiagnosticStudyPerformed",
      "label": "Diagnostic Study, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDiagnosticStudyPerformed",
      "baseType": "DiagnosticStudyPerformed",
      "identifier": "NegativeDiagnosticStudyPerformed",
      "label": "Diagnostic Study, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveEncounterOrder",
      "baseType": "EncounterOrder",
      "identifier": "PositiveEncounterOrder",
      "label": "Encounter, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeEncounterOrder",
      "baseType": "EncounterOrder",
      "identifier": "NegativeEncounterOrder",
      "label": "Encounter, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveEncounterRecommended",
      "baseType": "EncounterRecommended",
      "identifier": "PositiveEncounterRecommended",
      "label": "Encounter, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeEncounterRecommended",
      "baseType": "EncounterRecommended",
      "identifier": "NegativeEncounterRecommended",
      "label": "Encounter, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveEncounterPerformed",
      "baseType": "EncounterPerformed",
      "identifier": "PositiveEncounterPerformed",
      "label": "Encounter, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeEncounterPerformed",
      "baseType": "EncounterPerformed",
      "identifier": "NegativeEncounterPerformed",
      "label": "Encounter, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveInterventionOrder",
      "baseType": "InterventionOrder",
      "identifier": "PositiveInterventionOrder",
      "label": "Intervention, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeInterventionOrder",
      "baseType": "InterventionOrder",
      "identifier": "NegativeInterventionOrder",
      "label": "Intervention, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveInterventionRecommended",
      "baseType": "InterventionRecommended",
      "identifier": "PositiveInterventionRecommended",
      "label": "Intervention, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeInterventionRecommended",
      "baseType": "InterventionRecommended",
      "identifier": "NegativeInterventionRecommended",
      "label": "Intervention, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveInterventionPerformed",
      "baseType": "InterventionPerformed",
      "identifier": "PositiveInterventionPerformed",
      "label": "Intervention, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeInterventionPerformed",
      "baseType": "InterventionPerformed",
      "identifier": "NegativeInterventionPerformed",
      "label": "Intervention, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveImmunizationOrder",
      "baseType": "ImmunizationOrder",
      "identifier": "PositiveImmunizationOrder",
      "label": "Immunization, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeImmunizationOrder",
      "baseType": "ImmunizationOrder",
      "identifier": "NegativeImmunizationOrder",
      "label": "Immunization, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveImmunizationAdministered",
      "baseType": "ImmunizationAdministered",
      "identifier": "PositiveImmunizationAdministered",
      "label": "Immunization, Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeImmunizationAdministered",
      "baseType": "ImmunizationAdministered",
      "identifier": "NegativeImmunizationAdministered",
      "label": "Immunization, Not Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationAdministered",
      "baseType": "MedicationAdministered",
      "identifier": "PositiveMedicationAdministered",
      "label": "Medication, Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationAdministered",
      "baseType": "MedicationAdministered",
      "identifier": "NegativeMedicationAdministered",
      "label": "Medication, Not Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationDispensed",
      "baseType": "MedicationDispensed",
      "identifier": "PositiveMedicationDispensed",
      "label": "Medication, Dispensed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationDispensed",
      "baseType": "MedicationDispensed",
      "identifier": "NegativeMedicationDispensed",
      "label": "Medication, Not Dispensed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationDischarge",
      "baseType": "MedicationDischarge",
      "identifier": "PositiveMedicationDischarge",
      "label": "Medication, Discharge",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationDischarge",
      "baseType": "MedicationDischarge",
      "identifier": "NegativeMedicationDischarge",
      "label": "Medication, Not Discharged",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationOrder",
      "baseType": "MedicationOrder",
      "identifier": "PositiveMedicationOrder",
      "label": "Medication, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationOrder",
      "baseType": "MedicationOrder",
      "identifier": "NegativeMedicationOrder",
      "label": "Medication, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositivePhysicalExamOrder",
      "baseType": "PhysicalExamOrder",
      "identifier": "PositivePhysicalExamOrder",
      "label": "Physical Exam, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativePhysicalExamOrder",
      "baseType": "PhysicalExamOrder",
      "identifier": "NegativePhysicalExamOrder",
      "label": "Physical Exam, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositivePhysicalExamRecommended",
      "baseType": "PhysicalExamRecommended",
      "identifier": "PositivePhysicalExamRecommended",
      "label": "Physical Exam, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativePhysicalExamRecommended",
      "baseType": "PhysicalExamRecommended",
      "identifier": "NegativePhysicalExamRecommended",
      "label": "Physical Exam, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositivePhysicalExamPerformed",
      "baseType": "PhysicalExamPerformed",
      "identifier": "PositivePhysicalExamPerformed",
      "label": "Physical Exam, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativePhysicalExamPerformed",
      "baseType": "PhysicalExamPerformed",
      "identifier": "NegativePhysicalExamPerformed",
      "label": "Physical Exam, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveProcedureOrder",
      "baseType": "ProcedureOrder",
      "identifier": "PositiveProcedureOrder",
      "label": "Procedure, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeProcedureOrder",
      "baseType": "ProcedureOrder",
      "identifier": "NegativeProcedureOrder",
      "label": "Procedure, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveProcedureRecommended",
      "baseType": "ProcedureRecommended",
      "identifier": "PositiveProcedureRecommended",
      "label": "Procedure, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeProcedureRecommended",
      "baseType": "ProcedureRecommended",
      "identifier": "NegativeProcedureRecommended",
      "label": "Procedure, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveProcedurePerformed",
      "baseType": "ProcedurePerformed",
      "identifier": "PositiveProcedurePerformed",
      "label": "Procedure, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeProcedurePerformed",
      "baseType": "ProcedurePerformed",
      "identifier": "NegativeProcedurePerformed",
      "label": "Procedure, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveSubstanceOrder",
      "baseType": "SubstanceOrder",
      "identifier": "PositiveSubstanceOrder",
      "label": "Substance, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeSubstanceOrder",
      "baseType": "SubstanceOrder",
      "identifier": "NegativeSubstanceOrder",
      "label": "Substance, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveSubstanceRecommended",
      "baseType": "SubstanceRecommended",
      "identifier": "PositiveSubstanceRecommended",
      "label": "Substance, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeSubstanceRecommended",
      "baseType": "SubstanceRecommended",
      "identifier": "NegativeSubstanceRecommended",
      "label": "Substance, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveSubstanceAdministered",
      "baseType": "SubstanceAdministered",
      "identifier": "PositiveSubstanceAdministered",
      "label": "Substance, Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeSubstanceAdministered",
      "baseType": "SubstanceAdministered",
      "identifier": "NegativeSubstanceAdministered",
      "label": "Substance, Not Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveLaboratoryTestOrder",
      "baseType": "LaboratoryTestOrder",
      "identifier": "PositiveLaboratoryTestOrder",
      "label": "Laboratory Test, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeLaboratoryTestOrder",
      "baseType": "LaboratoryTestOrder",
      "identifier": "NegativeLaboratoryTestOrder",
      "label": "Laboratory Test, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveLaboratoryTestRecommended",
      "baseType": "LaboratoryTestRecommended",
      "identifier": "PositiveLaboratoryTestRecommended",
      "label": "Laboratory Test, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeLaboratoryTestRecommended",
      "baseType": "LaboratoryTestRecommended",
      "identifier": "NegativeLaboratoryTestRecommended",
      "label": "Laboratory Test, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveLaboratoryTestPerformed",
      "baseType": "LaboratoryTestPerformed",
      "identifier": "PositiveLaboratoryTestPerformed",
      "label": "Laboratory Test, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeLaboratoryTestPerformed",
      "baseType": "LaboratoryTestPerformed",
      "identifier": "NegativeLaboratoryTestPerformed",
      "label": "Laboratory Test, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    }
  ],
  "contextInfo": {
    "name": "Patient",
    "keyElement": "id",
    "birthDateElement": "birthDatetime",
    "contextType": {
      "modelName": "QDM",
      "name": "{http://hl7.org/fhir}Patient",
      "type": "NamedTypeSpecifier"
    }
  }
});
