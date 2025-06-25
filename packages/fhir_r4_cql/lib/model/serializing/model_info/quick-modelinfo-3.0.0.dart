import 'package:fhir_r4_cql/fhir_r4_cql.dart';

final quickmodelinfo300 = ModelInfo.fromJson({
  "name": "QUICK",
  "url": "http://cimi.hl7.org",
  "schemaLocation": "urn:hl7-org:elm-modelinfo:r1 modelinfo.xsd",
  "targetQualifier": "quick",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate",
  "version": "3.0.0",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "DoseRange",
      "baseType": "MedicationDoseQuantity",
      "retrievable": false,
      "element": {
        "name": "value",
        "typeSpecifier": {"type": "IntervalTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "lifecycleStatus", "type": "System.String"},
        {"name": "description", "type": "System.Concept"},
        {
          "name": "start",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "addresses",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Condition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Observation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}MedicationStatement",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "NutritionRequest",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}ServiceRequest",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "target",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "expressedBy", "type": "Party"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProfessionalQualification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "System.Concept"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "issuer", "type": "Organization"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group",
      "baseType": "CareRecipient",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "active", "type": "System.Boolean"},
        {"name": "type", "type": "System.String"},
        {"name": "actual", "type": "System.Boolean"},
        {"name": "code", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "quantity", "type": "System.Integer"},
        {"name": "managingEntity", "type": "Party"},
        {"name": "characteristic", "type": "GroupCharacteristic"},
        {"name": "member", "type": "GroupMember"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Finding",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": {"name": "status", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "reference", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "display", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareTeam",
      "baseType": "CareGiver",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "subject", "type": "CareRecipient"},
        {"name": "encounter", "type": "Encounter"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "participant", "type": "Participation"},
        {"name": "reasonCode", "type": "System.Concept"},
        {"name": "reasonReference", "type": "Condition"},
        {"name": "managingOrganization", "type": "Organization"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "note", "type": "Annotation"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "operationalStatus", "type": "System.Code"},
        {"name": "name", "type": "System.String"},
        {"name": "alias", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "mode", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "address", "type": "Address"},
        {"name": "physicalType", "type": "System.Concept"},
        {"name": "position", "type": "GpsLocation"},
        {"name": "managingOrganization", "type": "Organization"},
        {"name": "partOf", "type": "Location"},
        {"name": "hoursOfOperation", "type": "AvailableTime"},
        {"name": "availabilityExceptions", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration",
      "baseType": "Event",
      "retrievable": true,
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "medication", "type": "Medication"},
        {"name": "dosage", "type": "DosageTaken"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Narrative",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "System.String"},
        {"name": "div", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Hospitalization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "preAdmissionIdentifier", "type": "Identifier"},
        {
          "name": "origin",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Location",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "admitSource", "type": "System.Concept"},
        {"name": "reAdmission", "type": "System.Concept"},
        {"name": "dietPreference", "type": "System.Concept"},
        {"name": "specialCourtesy", "type": "System.Concept"},
        {"name": "specialArrangement", "type": "System.Concept"},
        {
          "name": "destination",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Location",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Organization",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "dischargeDisposition", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Meta",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "versionId", "type": "System.String"},
        {"name": "lastUpdated", "type": "System.DateTime"},
        {"name": "source", "type": "System.String"},
        {"name": "profile", "type": "System.String"},
        {"name": "security", "type": "System.Code"},
        {"name": "tag", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DosageTaken",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "System.String"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "dose", "type": "DoseQuantity"},
        {"name": "rate", "type": "MedicationDosePointRate"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUdiCarrier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "deviceIdentifier", "type": "System.String"},
        {"name": "issuer", "type": "System.String"},
        {"name": "jurisdiction", "type": "System.String"},
        {"name": "carrierAIDC", "type": "System.String"},
        {"name": "carrierHRF", "type": "System.String"},
        {"name": "entryType", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterDiagnosisOrProcedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "reference",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Condition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Procedure",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "use", "type": "System.Concept"},
        {"name": "rank", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDoseQuantity",
      "baseType": "BackboneElement",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEvent",
      "baseType": "Finding",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "System.Concept"},
        {"name": "subject", "type": "Party"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "seriousness", "type": "System.Concept"},
        {"name": "severity", "type": "System.Concept"},
        {"name": "recorder", "type": "Party"},
        {"name": "location", "type": "Location"},
        {"name": "suspectEntity", "type": "SuspectEntity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization",
      "baseType": "Event",
      "retrievable": true,
      "primaryCodePath": "vaccineCode",
      "element": [
        {"name": "vaccineCode", "type": "System.Concept"},
        {"name": "doseQuantity", "type": "System.Quantity"},
        {"name": "route", "type": "System.Concept"},
        {"name": "primarySource", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Address",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {"name": "line", "type": "System.String"},
        {"name": "city", "type": "System.String"},
        {"name": "district", "type": "System.String"},
        {"name": "state", "type": "System.String"},
        {"name": "postalCode", "type": "System.String"},
        {"name": "country", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "IndividualCareRecipient",
      "retrievable": false,
      "element": [
        {"name": "active", "type": "System.Boolean"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {
          "name": "deceased",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "address", "type": "Address"},
        {"name": "maritalStatus", "type": "System.Concept"},
        {
          "name": "multipleBirth",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "photo", "type": "Attachment"},
        {"name": "contact", "type": "IndividualContact"},
        {"name": "communication", "type": "LanguageCompetency"},
        {"name": "generalPractitioner", "type": "CareGiver"},
        {"name": "managingOrganization", "type": "Organization"},
        {"name": "link", "type": "RecordLink"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment",
      "baseType": "Event",
      "retrievable": false,
      "element": [
        {"name": "serviceCategory", "type": "System.Concept"},
        {"name": "serviceType", "type": "System.Concept"},
        {"name": "specialty", "type": "System.Concept"},
        {"name": "appointmentTime", "type": "System.Concept"},
        {"name": "priority", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "supportingInformation", "type": "Resource"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "stop", "type": "System.DateTime"},
        {"name": "minutesDuration", "type": "System.Integer"},
        {"name": "slot", "type": "Slot"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "comment", "type": "System.String"},
        {"name": "patientInstruction", "type": "System.String"},
        {"name": "participant", "type": "Participation"},
        {
          "name": "requestedPeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole",
      "baseType": "IndividualCareGiver",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "active", "type": "System.Boolean"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "practitioner", "type": "Practitioner"},
        {"name": "organization", "type": "Organization"},
        {"name": "code", "type": "System.Concept"},
        {"name": "specialty", "type": "System.Concept"},
        {"name": "location", "type": "Location"},
        {"name": "healthcareService", "type": "HealthcareService"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "availableTime", "type": "AvailableTime"},
        {"name": "notAvailable", "type": "NonAvailability"},
        {"name": "availabilityExceptions", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DomainResource",
      "baseType": "Resource",
      "retrievable": false,
      "element": {"name": "text", "type": "Narrative"}
    },
    {
      "type": "ClassInfo",
      "name": "LanguageCompetency",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "System.Concept"},
        {"name": "preferred", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceName",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "type", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RecordLink",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "other", "type": "IndividualCareRecipient"},
        {"name": "type", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GroupMember",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entity", "type": "Party"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "inactive", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "daysOfWeek", "type": "System.String"},
        {"name": "allDay", "type": "System.Boolean"},
        {"name": "availableStartTime", "type": "System.Time"},
        {"name": "availableEndTime", "type": "System.Time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "DomainResource",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "isActive", "type": "System.Boolean"},
        {"name": "strength", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Device",
      "baseType": "Party",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "udiCarrier", "type": "DeviceUdiCarrier"},
        {"name": "type", "type": "System.Concept"},
        {"name": "deviceName", "type": "DeviceName"},
        {"name": "status", "type": "System.String"},
        {"name": "statusReason", "type": "System.Concept"},
        {"name": "patient", "type": "Patient"},
        {"name": "owner", "type": "Organization"},
        {"name": "distinctIdentifier", "type": "System.String"},
        {"name": "manufacturer", "type": "System.String"},
        {"name": "manufactureDate", "type": "System.DateTime"},
        {"name": "expirationDate", "type": "System.DateTime"},
        {"name": "lotNumber", "type": "System.String"},
        {"name": "serialNumber", "type": "System.String"},
        {"name": "modelNumber", "type": "System.String"},
        {"name": "partNumber", "type": "System.String"},
        {"name": "version", "type": "DeviceVersion"},
        {"name": "contact", "type": "ContactPoint"},
        {"name": "location", "type": "Location"},
        {"name": "url", "type": "System.String"},
        {"name": "note", "type": "Annotation"},
        {"name": "safety", "type": "System.Concept"},
        {"name": "parent", "type": "Device"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {"name": "serviceType", "type": "System.Concept"},
        {"name": "specialty", "type": "System.Concept"},
        {"name": "appointmentType", "type": "System.Concept"},
        {"name": "schedule", "type": "Schedule"},
        {"name": "status", "type": "System.String"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "overbooked", "type": "System.Boolean"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedPerson",
      "baseType": "IndividualCareRecipient",
      "retrievable": false,
      "element": [
        {"name": "active", "type": "System.Boolean"},
        {"name": "patient", "type": "Patient"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {"name": "address", "type": "Address"},
        {"name": "photo", "type": "Attachment"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "communication", "type": "LanguageCompetency"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GroupCharacteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "exclude", "type": "System.Boolean"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SampledData",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "origin", "type": "System.Quantity"},
        {"name": "period", "type": "System.Decimal"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "lowerLimit", "type": "System.Decimal"},
        {"name": "upperLimit", "type": "System.Decimal"},
        {"name": "dimensions", "type": "System.Integer"},
        {"name": "data", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDoseRate",
      "baseType": "BackboneElement",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "CareGiver",
      "baseType": "Party",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "ChoiceElement",
      "baseType": "Element",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "DoseAndRate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "dose", "type": "MedicationDoseQuantity"},
        {"name": "rate", "type": "MedicationDoseRate"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareRecipient",
      "baseType": "Party",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "IndividualCareGiver",
      "baseType": "CareGiver",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Causality",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "assessment", "type": "System.Concept"},
        {"name": "productRelatedness", "type": "System.String"},
        {"name": "author", "type": "IndividualCareGiver"},
        {"name": "method", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GpsLocation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "longitude", "type": "System.Decimal"},
        {"name": "latitude", "type": "System.Decimal"},
        {"name": "altitude", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDosePointRate",
      "baseType": "MedicationDoseRate",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "address", "type": "Address"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "System.Concept"},
        {"name": "status", "type": "System.String"},
        {"name": "manufacturer", "type": "Organization"},
        {"name": "form", "type": "System.Concept"},
        {"name": "amount", "type": "Ratio"},
        {"name": "ingredient", "type": "Ingredient"},
        {"name": "batch", "type": "MedicationBatch"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure",
      "baseType": "Event",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "bodySite", "type": "System.Concept"},
        {
          "name": "performed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "partOf", "type": "Event"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "IndividualCareRecipient",
      "baseType": "CareRecipient",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "RateQuantity",
      "baseType": "MedicationDosePointRate",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Quantity"}
    },
    {
      "type": "ClassInfo",
      "name": "GoalTarget",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "measure", "type": "System.Concept"},
        {
          "name": "detail",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContactPoint",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "System.String"},
        {"name": "value", "type": "System.String"},
        {"name": "use", "type": "System.String"},
        {"name": "rank", "type": "System.Integer"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense",
      "baseType": "Event",
      "retrievable": true,
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "daysSupply", "type": "System.Quantity"},
        {"name": "dosageInstruction", "type": "DosageInstruction"},
        {"name": "performer", "type": "Performer"},
        {"name": "medication", "type": "Medication"},
        {"name": "fillNumber", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionRequest",
      "baseType": "Request",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Money",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "value", "type": "System.Decimal"},
        {"name": "currency", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport",
      "baseType": "Finding",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "System.Concept"},
        {"name": "subject", "type": "Party"},
        {"name": "encounter", "type": "Encounter"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "issued", "type": "System.DateTime"},
        {"name": "performer", "type": "Party"},
        {"name": "resultsInterpreter", "type": "Party"},
        {"name": "result", "type": "Observation"},
        {"name": "conclusion", "type": "System.String"},
        {"name": "conclusionCode", "type": "System.Concept"},
        {"name": "presentedForm", "type": "Attachment"},
        {"name": "locationPerformed", "type": "Location"},
        {"name": "code", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition",
      "baseType": "Finding",
      "retrievable": false,
      "element": [
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "abatement",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "severity", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {"name": "asserter", "type": "Party"},
        {"name": "clinicalStatus", "type": "System.Concept"},
        {"name": "assertedDate", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistoryCondition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "contributedToDeath", "type": "System.Boolean"},
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "note", "type": "Annotation"}
      ]
    },
    {"type": "ClassInfo", "name": "Element", "retrievable": false},
    {
      "type": "ClassInfo",
      "name": "NonAvailability",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "System.String"},
        {
          "name": "during",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SuspectEntity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "instance",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Immunization",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Procedure",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Medication",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}MedicationAdministration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}MedicationStatement",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Device",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Substance",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "causality", "type": "Causality"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientLocation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "location", "type": "Location"},
        {"name": "status", "type": "System.String"},
        {"name": "physicalType", "type": "System.Concept"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ServiceRequest",
      "baseType": "Request",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "doNotPerform", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Communication",
      "baseType": "Event",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "System.Concept"},
        {"name": "sender", "type": "Performer"},
        {"name": "recipient", "type": "Party"},
        {"name": "sent", "type": "System.DateTime"},
        {"name": "received", "type": "System.DateTime"},
        {"name": "medium", "type": "System.Concept"},
        {"name": "payload", "type": "CommunicationPayload"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "IndividualContact",
      "baseType": "Contact",
      "retrievable": false,
      "element": [
        {"name": "relationship", "type": "System.Concept"},
        {"name": "gender", "type": "System.String"},
        {"name": "organization", "type": "Organization"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseStatement",
      "baseType": "Event",
      "retrievable": true,
      "primaryCodePath": "device.code",
      "element": [
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "device", "type": "Device"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Signature",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "when", "type": "System.DateTime"},
        {"name": "who", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"},
        {"name": "targetFormat", "type": "System.String"},
        {"name": "sigFormat", "type": "System.String"},
        {"name": "data", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstancePackage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "expiry", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Eligibility",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BackboneElement",
      "baseType": "Element",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Encounter",
      "baseType": "Event",
      "retrievable": true,
      "primaryCodePath": "class",
      "element": [
        {"name": "class", "type": "System.Code"},
        {"name": "type", "type": "System.Concept"},
        {"name": "serviceType", "type": "System.Concept"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "participant", "type": "Participation"},
        {"name": "appointment", "type": "Appointment"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "length", "type": "System.Quantity"},
        {
          "name": "diagnosisOrProcedure",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Condition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICK",
                "name": "{http://hl7.org/fhir}Procedure",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "hospitalization", "type": "Hospitalization"},
        {"name": "location", "type": "PatientLocation"},
        {"name": "serviceProvider", "type": "Organization"},
        {"name": "partOf", "type": "Encounter"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation",
      "baseType": "Finding",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "method", "type": "System.Concept"},
        {"name": "component", "type": "ObservationComponent"},
        {"name": "performer", "type": "Party"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "issued", "type": "System.DateTime"},
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "dataAbsentReason", "type": "System.Concept"},
        {"name": "basedOn", "type": "Request"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement",
      "baseType": "Event",
      "retrievable": true,
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "dosage", "type": "DosageInstruction"},
        {"name": "medication", "type": "Medication"},
        {"name": "informationSource", "type": "Party"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DoseQuantity",
      "baseType": "MedicationDoseQuantity",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Quantity"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "Finding",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "criticality", "type": "System.String"},
        {"name": "patient", "type": "Patient"},
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "recorder", "type": "Party"},
        {"name": "asserter", "type": "Party"},
        {"name": "assertedDate", "type": "System.DateTime"},
        {"name": "lastOccurrence", "type": "System.DateTime"},
        {"name": "note", "type": "Annotation"},
        {"name": "reaction", "type": "Reaction"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRequest",
      "baseType": "Request",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": {
        "name": "code",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {
              "modelName": "QUICK",
              "name": "DomainResource",
              "type": "NamedTypeSpecifier"
            },
            {
              "modelName": "System",
              "name": "{urn:hl7-org:elm-types:r1}Concept",
              "type": "NamedTypeSpecifier"
            }
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "name": "RateRange",
      "baseType": "MedicationDoseRate",
      "retrievable": false,
      "element": {
        "name": "value",
        "typeSpecifier": {"type": "IntervalTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "Timing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "System.DateTime"},
        {"name": "repeat", "type": "TimingRepeat"},
        {"name": "code", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OrganizationalContact",
      "baseType": "Contact",
      "retrievable": false,
      "element": {"name": "purpose", "type": "System.Concept"}
    },
    {
      "type": "ClassInfo",
      "name": "InitialFill",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "duration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {"name": "family", "type": "System.String"},
        {"name": "given", "type": "System.String"},
        {"name": "prefix", "type": "System.String"},
        {"name": "suffix", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Party",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "identifier", "type": "Identifier"}
    },
    {
      "type": "ClassInfo",
      "name": "RateRatio",
      "baseType": "MedicationDosePointRate",
      "retrievable": false,
      "element": {"name": "value", "type": "Ratio"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest",
      "baseType": "Request",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "System.Concept"},
        {"name": "doNotPerform", "type": "System.Boolean"},
        {"name": "medium", "type": "System.Concept"},
        {"name": "payload", "type": "CommunicationPayload"},
        {"name": "sender", "type": "Party"},
        {"name": "recipient", "type": "Party"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "type": "System.Concept"},
        {"name": "actor", "type": "Party"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationBatch",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "lotNumber", "type": "System.String"},
        {"name": "expirationDate", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner",
      "baseType": "IndividualCareGiver",
      "retrievable": false,
      "element": [
        {"name": "active", "type": "System.Boolean"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "address", "type": "Address"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthdate", "type": "System.DateTime"},
        {"name": "photo", "type": "Attachment"},
        {"name": "qualification", "type": "ProfessionalQualification"},
        {"name": "communication", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DosageInstruction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseAndRate", "type": "DoseAndRate"},
        {"name": "timing", "type": "Timing"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Participation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "System.Concept"},
        {"name": "member", "type": "Party"},
        {"name": "onBehalfOf", "type": "Organization"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "required", "type": "System.String"},
        {"name": "status", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DispenseRequest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "initialFill", "type": "InitialFill"},
        {"name": "dispenseInterval", "type": "System.Quantity"},
        {
          "name": "validityPeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "numberOfRepeatsAllowed", "type": "System.Integer"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "expectedSupplyDuration", "type": "System.Quantity"},
        {"name": "performer", "type": "Organization"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Resource",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService",
      "baseType": "CareGiver",
      "retrievable": false,
      "element": [
        {"name": "active", "type": "System.Boolean"},
        {"name": "providedBy", "type": "Organization"},
        {"name": "category", "type": "System.Concept"},
        {"name": "type", "type": "System.Concept"},
        {"name": "specialty", "type": "System.Concept"},
        {"name": "location", "type": "Location"},
        {"name": "name", "type": "System.String"},
        {"name": "comment", "type": "System.String"},
        {"name": "extraDetails", "type": "System.String"},
        {"name": "photo", "type": "Attachment"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "coverageArea", "type": "Location"},
        {"name": "serviceProvisionCode", "type": "System.Concept"},
        {"name": "eligibility", "type": "Eligibility"},
        {"name": "program", "type": "System.Concept"},
        {"name": "characteristic", "type": "System.Concept"},
        {"name": "communication", "type": "System.Concept"},
        {"name": "referralMethod", "type": "System.Concept"},
        {"name": "appointmentRequired", "type": "System.Boolean"},
        {"name": "availableTime", "type": "AvailableTime"},
        {"name": "notAvailable", "type": "NonAvailability"},
        {"name": "availabilityException", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Organization",
      "baseType": "CareGiver",
      "retrievable": false,
      "element": [
        {"name": "active", "type": "System.Boolean"},
        {"name": "type", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "alias", "type": "System.String"},
        {"name": "telecom", "type": "ContactPoint"},
        {"name": "address", "type": "Address"},
        {"name": "partOf", "type": "Organization"},
        {"name": "contact", "type": "OrganizationalContact"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest",
      "baseType": "Request",
      "retrievable": true,
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "dosageInstruction", "type": "DosageInstruction"},
        {"name": "dispenseRequest", "type": "DispenseRequest"},
        {"name": "category", "type": "System.Concept"},
        {"name": "medication", "type": "Medication"},
        {"name": "doNotPerform", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceVersion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "component", "type": "Identifier"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Request",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "intent", "type": "System.String"},
        {"name": "reasonCode", "type": "System.Concept"},
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "requester", "type": "Party"},
        {"name": "subject", "type": "CareRecipient"},
        {"name": "status", "type": "System.String"},
        {"name": "statusReason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory",
      "baseType": "Finding",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "System.DateTime"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "condition", "type": "FamilyMemberHistoryCondition"},
        {"name": "patient", "type": "Patient"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Event",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "statusReason", "type": "System.Concept"},
        {"name": "subject", "type": "CareRecipient"},
        {"name": "performer", "type": "Performer"},
        {"name": "reasonCode", "type": "System.Concept"},
        {"name": "reasonReference", "type": "Condition"},
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "basedOn", "type": "Request"},
        {"name": "recorded", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Identifier",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "system", "type": "System.String"},
        {"name": "value", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "assigner", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ObservationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICK",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "dataAbsentReason", "type": "System.Concept"},
        {"name": "interpretation", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "substance", "type": "System.Concept"},
        {"name": "manifestation", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "onset", "type": "System.DateTime"},
        {"name": "severity", "type": "System.String"},
        {"name": "exposureRoute", "type": "System.Concept"},
        {"name": "note", "type": "Annotation"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Ratio",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "numerator", "type": "System.Quantity"},
        {"name": "denominator", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationPayload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {
              "modelName": "System",
              "name": "{urn:hl7-org:elm-types:r1}String",
              "type": "NamedTypeSpecifier"
            },
            {
              "modelName": "QUICK",
              "name": "Attachment",
              "type": "NamedTypeSpecifier"
            },
            {
              "modelName": "QUICK",
              "name": "DomainResource",
              "type": "NamedTypeSpecifier"
            }
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "name": "Annotation",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "author",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICK",
                "name": "DomainResource",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "time", "type": "System.DateTime"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "active", "type": "System.Boolean"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {"name": "serviceType", "type": "System.Concept"},
        {"name": "specialty", "type": "System.Concept"},
        {"name": "actor", "type": "Party"},
        {
          "name": "planningHorizon",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "instance", "type": "SubstancePackage"},
        {"name": "ingredient", "type": "Ingredient"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Attachment",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "contentType", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "data", "type": "System.String"},
        {"name": "url", "type": "System.String"},
        {"name": "size", "type": "System.Integer"},
        {"name": "hash", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "creation", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TimingRepeat",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "bounds",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "count", "type": "System.Integer"},
        {"name": "countMax", "type": "System.Integer"},
        {"name": "duration", "type": "System.Decimal"},
        {"name": "durationMax", "type": "System.Decimal"},
        {"name": "durationUnit", "type": "System.String"},
        {"name": "frequency", "type": "System.Integer"},
        {"name": "frequencyMax", "type": "System.Integer"},
        {"name": "period", "type": "System.Decimal"},
        {"name": "periodMax", "type": "System.Decimal"},
        {"name": "periodUnit", "type": "System.String"},
        {"name": "dayOfWeek", "type": "System.String"},
        {"name": "timeOfDay", "type": "System.Time"},
        {"name": "when", "type": "System.String"},
        {"name": "offset", "type": "System.Integer"}
      ]
    }
  ]
});
