import '../../../cql.dart';

final uscoremodelinfo311 = ModelInfo.fromJson({
  "name": "USCore",
  "url": "http://hl7.org/fhir/us/core",
  "targetUrl": "http://hl7.org/fhir",
  "targetQualifier": "uscore",
  "patientClassName": "PatientProfile",
  "patientBirthDatePropertyName": "birthDate",
  "version": "3.1.1",
  "requiredModelInfo": {"name": "System", "version": "1.0.0"},
  "typeInfo": [
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Address",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Address",
      "label": "Address",
      "element": [
        {"name": "use", "elementType": "AddressUse", "target": "%value.value"},
        {
          "name": "type",
          "elementType": "AddressType",
          "target": "%value.value"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "line",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "city",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "district",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "state",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "postalCode",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "country",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AddressType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AddressUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AdministrativeGender",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance",
      "label": "US  Core AllergyIntolerance Profile",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "clinicalStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "verificationStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "type",
          "elementType": "AllergyIntoleranceType",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "criticality",
          "elementType": "AllergyIntoleranceCriticality",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "patient", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "recordedDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "recorder", "elementType": "Reference"},
        {"name": "asserter", "elementType": "Reference"},
        {
          "name": "lastOccurrence",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reaction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "recorder"},
        {"context": "Patient", "relatedKeyElement": "asserter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AllergyIntolerance.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "substance",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "manifestation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "onset",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "severity",
          "elementType": "AllergyIntoleranceSeverity",
          "target": "%value.value"
        },
        {
          "name": "exposureRoute",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AllergyIntoleranceCategory",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AllergyIntoleranceCriticality",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AllergyIntoleranceSeverity",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "AllergyIntoleranceType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Annotation",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Annotation",
      "label": "Annotation",
      "element": [
        {
          "name": "author",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "time",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Attachment",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Attachment",
      "label": "Attachment",
      "element": [
        {
          "name": "contentType",
          "elementType": "MimeType",
          "target": "%value.value"
        },
        {
          "name": "language",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "data",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "url",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "size",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "hash",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "title",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "creation",
          "elementType": "System.DateTime",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "BackboneElement",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/BackboneElement",
      "label": "BackboneElement",
      "element": {
        "name": "modifierExtension",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "BirthSexExtension",
      "baseType": "System.String",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
      "label": "US Core Birth Sex Extension"
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "BodyLengthUnits",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "BodyTempUnits",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "BodyWeightUnits",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "CarePlan.Activity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "outcomeCodeableConcept",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "outcomeReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "progress",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reference", "elementType": "Reference"},
        {"name": "detail", "elementType": "CarePlan.Activity.Detail"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "CarePlan.Activity.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "kind",
          "elementType": "CarePlanActivityKind",
          "target": "%value.value"
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goal",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "CarePlanActivityStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "doNotPerform",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "scheduled",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "dailyAmount",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "CarePlanActivityKind",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "CarePlanActivityStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "CarePlanProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan",
      "label": "US Core CarePlan Profile",
      "target": "CarePlan",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "intent",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "AssessPlan",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "title",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "created",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "author", "elementType": "Reference"},
        {
          "name": "contributor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "careTeam",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "addresses",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goal",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "activity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "CareTeam",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam",
      "label": "US Core CareTeam Profile",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "managingOrganization",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "member"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "CareTeam.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "role",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "member", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"},
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition",
      "label": "US Core Condition Profile",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "clinicalStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "verificationStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "severity",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "bodySite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "abatement",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "recordedDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "recorder", "elementType": "Reference"},
        {"name": "asserter", "elementType": "Reference"},
        {
          "name": "stage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "evidence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "asserter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Condition.Evidence",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "detail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Condition.Stage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "summary",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "assessment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ContactDetail",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ContactDetail",
      "label": "ContactDetail",
      "element": [
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ContactPoint",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ContactPoint",
      "label": "ContactPoint",
      "element": [
        {
          "name": "system",
          "elementType": "ContactPointSystem",
          "target": "%value.value"
        },
        {
          "name": "value",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "use",
          "elementType": "ContactPointUse",
          "target": "%value.value"
        },
        {
          "name": "rank",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ContactPointSystem",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ContactPointUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Contributor",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Contributor",
      "label": "Contributor",
      "element": [
        {
          "name": "type",
          "elementType": "ContributorType",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ContributorType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DataRequirement",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DataRequirement",
      "label": "DataRequirement",
      "element": [
        {
          "name": "type",
          "elementType": "FHIRAllTypes",
          "target": "%value.value"
        },
        {
          "name": "profile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "mustSupport",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "codeFilter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dateFilter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "limit",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "sort",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DataRequirement.CodeFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "path",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "searchParam",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "valueSet",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToCode(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DataRequirement.DateFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "path",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "searchParam",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DataRequirement.Sort",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "path",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "direction",
          "elementType": "SortDirection",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DayOfWeek",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DaysOfWeek",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Device.DeviceName",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "DeviceNameType",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Device.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "valueQuantity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "valueCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Device.Specialization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "systemType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "version",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Device.UdiCarrier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "deviceIdentifier",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "issuer",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "jurisdiction",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "carrierAIDC",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "carrierHRF",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "entryType",
          "elementType": "UDIEntryType",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Device.Version",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "component", "elementType": "Identifier"},
        {
          "name": "value",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DeviceNameType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DiagnosticReport.Media",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "comment",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "link", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DiagnosticReportProfileLaboratoryReporting",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab",
      "label":
          "US Core DiagnosticReport Profile for Laboratory Results Reporting",
      "target": "DiagnosticReport",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "LaboratorySlice",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "resultsInterpreter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "result",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "imagingStudy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "media",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "conclusion",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "conclusionCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "presentedForm",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DiagnosticReportProfileNoteExchange",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note",
      "label": "US Core DiagnosticReport Profile for Report and Note exchange",
      "target": "DiagnosticReport",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "resultsInterpreter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "result",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "imagingStudy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "media",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "conclusion",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "conclusionCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "presentedForm",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DocumentReference.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "attachment", "elementType": "Attachment"},
        {
          "name": "format",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DocumentReference.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "event",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "facilityType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "practiceSetting",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "sourcePatientInfo", "elementType": "Reference"},
        {
          "name": "related",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DocumentReference.RelatesTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
          "elementType": "DocumentRelationshipType",
          "target": "%value.value"
        },
        {"name": "target", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DocumentReferenceProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference",
      "label": "US Core DocumentReference Profile",
      "target": "DocumentReference",
      "element": [
        {"name": "masterIdentifier", "elementType": "Identifier"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "docStatus",
          "elementType": "ReferredDocumentStatus",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authenticator", "elementType": "Reference"},
        {"name": "custodian", "elementType": "Reference"},
        {
          "name": "relatesTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "securityLabel",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "content",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "elementType": "DocumentReference.Context"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DocumentRelationshipType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "DomainResource",
      "baseType": "Resource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DomainResource",
      "label": "DomainResource",
      "element": [
        {"name": "text", "elementType": "Narrative"},
        {
          "name": "contained",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Dosage",
      "label": "Dosage",
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "additionalInstruction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "patientInstruction",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "timing", "elementType": "Timing"},
        {
          "name": "asNeeded",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "site",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "route",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "doseAndRate",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "maxDosePerPeriod",
          "elementType": "System.Ratio",
          "target": "FHIRHelpers.ToRatio(%value)"
        },
        {
          "name": "maxDosePerAdministration",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "maxDosePerLifetime",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Dosage.DoseAndRate",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "dose",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "rate",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Element",
      "baseType": "System.Any",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Element",
      "label": "Element",
      "element": [
        {
          "name": "id",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "extension",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Encounter.ClassHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "class",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Encounter.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "condition", "elementType": "Reference"},
        {
          "name": "use",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "rank",
          "elementType": "System.Integer",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Encounter.Hospitalization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "preAdmissionIdentifier", "elementType": "Identifier"},
        {"name": "origin", "elementType": "Reference"},
        {
          "name": "admitSource",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reAdmission",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "dietPreference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "specialCourtesy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "specialArrangement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "destination", "elementType": "Reference"},
        {
          "name": "dischargeDisposition",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Encounter.Location",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "location", "elementType": "Reference"},
        {
          "name": "status",
          "elementType": "EncounterLocationStatus",
          "target": "%value.value"
        },
        {
          "name": "physicalType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Encounter.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {"name": "individual", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Encounter.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "status",
          "elementType": "EncounterStatus",
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "EncounterLocationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "EncounterProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter",
      "label": "US Core Encounter Profile",
      "target": "Encounter",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "EncounterStatus",
          "target": "%value.value"
        },
        {
          "name": "statusHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "class",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "classHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "serviceType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "priority",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "episodeOfCare",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "appointment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "length",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosis",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "account",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "hospitalization", "elementType": "Encounter.Hospitalization"},
        {
          "name": "location",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "serviceProvider", "elementType": "Reference"},
        {"name": "partOf", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "EncounterStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "EthnicityExtension",
      "baseType": "Extension",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
      "label": "US Core Ethnicity Extension",
      "element": [
        {
          "name": "ombCategory",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.extension[url='ombCategory'].value)"
        },
        {
          "name": "detailed",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "FHIRHelpers.ToCode(%parent.extension[url='detailed'].value)"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%parent.extension[url='text'].value.value"
        },
        {
          "name": "url",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "EventTiming",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Expression",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Expression",
      "label": "Expression",
      "element": [
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "language",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "expression",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "reference",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Extension",
      "label": "Extension",
      "element": [
        {
          "name": "url",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "SampledData", "type": "NamedTypeSpecifier"},
              {"name": "Signature", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {"name": "ContactDetail", "type": "NamedTypeSpecifier"},
              {"name": "Contributor", "type": "NamedTypeSpecifier"},
              {"name": "DataRequirement", "type": "NamedTypeSpecifier"},
              {"name": "Expression", "type": "NamedTypeSpecifier"},
              {"name": "ParameterDefinition", "type": "NamedTypeSpecifier"},
              {"name": "RelatedArtifact", "type": "NamedTypeSpecifier"},
              {"name": "TriggerDefinition", "type": "NamedTypeSpecifier"},
              {"name": "UsageContext", "type": "NamedTypeSpecifier"},
              {"name": "Dosage", "type": "NamedTypeSpecifier"},
              {"name": "Meta", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "FHIRAllTypes",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "FHIRDeviceStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Goal.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "measure",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "detail",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {"name": "due", "elementType": "System.Date", "target": "%value.value"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "GoalProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal",
      "label": "US Core Goal Profile",
      "target": "Goal",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "lifecycleStatus",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "achievementStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "priority",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "description",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "start",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "statusDate",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "expressedBy", "elementType": "Reference"},
        {
          "name": "addresses",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "outcomeCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "outcomeReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/HumanName",
      "label": "HumanName",
      "element": [
        {"name": "use", "elementType": "NameUse", "target": "%value.value"},
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "family",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "given",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "prefix",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "suffix",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Identifier",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Identifier",
      "label": "Identifier",
      "element": [
        {
          "name": "use",
          "elementType": "IdentifierUse",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "system",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "value",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {"name": "assigner", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "IdentifierUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Immunization.Education",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "documentType",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "reference",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "publicationDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "presentationDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Immunization.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "function",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "actor", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Immunization.ProtocolApplied",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "series",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "authority", "elementType": "Reference"},
        {
          "name": "targetDisease",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "doseNumber",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "seriesDoses",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Immunization.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "detail", "elementType": "Reference"},
        {
          "name": "reported",
          "elementType": "System.Boolean",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ImmunizationProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization",
      "label": "US Core Immunization Profile",
      "target": "Immunization",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "vaccineCode",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "patient", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "recorded",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "primarySource",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "reportOrigin",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "location", "elementType": "Reference"},
        {"name": "manufacturer", "elementType": "Reference"},
        {
          "name": "lotNumber",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "expirationDate",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "site",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "route",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "doseQuantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "isSubpotent",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "subpotentReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "education",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programEligibility",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "fundingSource",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reaction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "protocolApplied",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ImplantableDeviceProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device",
      "label": "US Core Implantable Device Profile",
      "target": "Device",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "elementType": "Reference"},
        {"name": "udiCarrier", "elementType": "Device.UdiCarrier"},
        {
          "name": "status",
          "elementType": "FHIRDeviceStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "distinctIdentifier",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "manufacturer",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "manufactureDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "expirationDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "lotNumber",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "serialNumber",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "deviceName",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modelNumber",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "partNumber",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "specialization",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "version",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"},
        {"name": "owner", "elementType": "Reference"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "url",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "safety",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "parent", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "LaboratoryResultObservationProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab",
      "label": "US Core Laboratory Result Observation Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "Laboratory",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"name": "SampledData", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "LinkType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location",
      "label": "US Core Location Profile",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "LocationStatus",
          "target": "%value.value"
        },
        {
          "name": "operationalStatus",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "alias",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "mode",
          "elementType": "LocationMode",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "elementType": "Address"},
        {
          "name": "physicalType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "position", "elementType": "Location.Position"},
        {"name": "managingOrganization", "elementType": "Reference"},
        {"name": "partOf", "elementType": "Reference"},
        {
          "name": "hoursOfOperation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "availabilityExceptions",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Location.HoursOfOperation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "daysOfWeek",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "allDay",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "openingTime",
          "elementType": "System.Time",
          "target": "%value.value"
        },
        {
          "name": "closingTime",
          "elementType": "System.Time",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Location.Position",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "longitude",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "latitude",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "altitude",
          "elementType": "System.Decimal",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "LocationMode",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "LocationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Medication.Batch",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "lotNumber",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "expirationDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Medication.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "isActive",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "strength",
          "elementType": "System.Ratio",
          "target": "FHIRHelpers.ToRatio(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MedicationProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication",
      "label": "US Core Medication Profile",
      "target": "Medication",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "status",
          "elementType": "MedicationStatus",
          "target": "%value.value"
        },
        {"name": "manufacturer", "elementType": "Reference"},
        {
          "name": "form",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "amount",
          "elementType": "System.Ratio",
          "target": "FHIRHelpers.ToRatio(%value)"
        },
        {
          "name": "ingredient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "batch", "elementType": "Medication.Batch"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MedicationRequest.DispenseRequest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "initialFill",
          "elementType": "MedicationRequest.DispenseRequest.InitialFill"
        },
        {
          "name": "dispenseInterval",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "validityPeriod",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "numberOfRepeatsAllowed",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "expectedSupplyDuration",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {"name": "performer", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MedicationRequest.DispenseRequest.InitialFill",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "duration",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MedicationRequest.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "allowed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "reason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MedicationRequestPriority",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MedicationRequestProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest",
      "label": "US Core MedicationRequest Profile",
      "target": "MedicationRequest",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "intent",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "priority",
          "elementType": "MedicationRequestPriority",
          "target": "%value.value"
        },
        {
          "name": "doNotPerform",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "reported",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "medication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "supportingInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "authoredOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "requester", "elementType": "Reference"},
        {"name": "performer", "elementType": "Reference"},
        {
          "name": "performerType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "recorder", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "elementType": "Identifier"},
        {
          "name": "courseOfTherapyType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dosageInstruction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dispenseRequest",
          "elementType": "MedicationRequest.DispenseRequest"
        },
        {
          "name": "substitution",
          "elementType": "MedicationRequest.Substitution"
        },
        {"name": "priorPrescription", "elementType": "Reference"},
        {
          "name": "detectedIssue",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "eventHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MedicationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Meta",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Meta",
      "label": "Meta",
      "element": [
        {
          "name": "versionId",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "lastUpdated",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "source",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "profile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "security",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "tag",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToCode(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "MimeType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "NameUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Narrative",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Narrative",
      "label": "Narrative",
      "element": [
        {
          "name": "status",
          "elementType": "NarrativeStatus",
          "target": "%value.value"
        },
        {
          "name": "div",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "NarrativeStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Observation.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"name": "SampledData", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Observation.ReferenceRange",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Observation.Component.Concentration",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Observation.Component.DiastolicBP",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Observation.Component.FlowRate",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Observation.Component.SystolicBP",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Observation.ReferenceRange",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "low",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "high",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "appliesTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "age",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Organization.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "purpose",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "name", "elementType": "HumanName"},
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "elementType": "Address"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "OrganizationProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization",
      "label": "US Core Organization Profile",
      "target": "Organization",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "NPI", "elementType": "Identifier"},
        {"name": "CLIA", "elementType": "Identifier"},
        {
          "name": "active",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "alias",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "address",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "partOf", "elementType": "Reference"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ParameterDefinition",
      "baseType": "Element",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ParameterDefinition",
      "label": "ParameterDefinition",
      "element": [
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "use",
          "elementType": "ParameterUse",
          "target": "%value.value"
        },
        {
          "name": "min",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "max",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "documentation",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "FHIRAllTypes",
          "target": "%value.value"
        },
        {
          "name": "profile",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ParameterUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Patient.Communication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "language",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "preferred",
          "elementType": "System.Boolean",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Patient.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "relationship",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "name", "elementType": "HumanName"},
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "elementType": "Address"},
        {
          "name": "gender",
          "elementType": "AdministrativeGender",
          "target": "%value.value"
        },
        {"name": "organization", "elementType": "Reference"},
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Patient.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "other", "elementType": "Reference"},
        {"name": "type", "elementType": "LinkType", "target": "%value.value"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PatientProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient",
      "label": "US Core Patient Profile",
      "target": "Patient",
      "element": [
        {
          "name": "race",
          "elementType": "RaceExtension",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-race']"
        },
        {
          "name": "ethnicity",
          "elementType": "EthnicityExtension",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity']"
        },
        {
          "name": "birthsex",
          "elementType": "BirthSexExtension",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex'].value.value"
        },
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "active",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "gender",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "birthDate",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "deceased",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "address",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "maritalStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "multipleBirth",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "photo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "generalPractitioner",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "managingOrganization", "elementType": "Reference"},
        {
          "name": "link",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PediatricBMIforAgeObservationProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age",
      "label": "US Core Pediatric BMI for Age Observation Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PediatricWeightForHeightObservationProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height",
      "label": "US Core Pediatric Weight for Height Observation Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Practitioner.Qualification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {"name": "issuer", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PractitionerProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
      "label": "US Core Practitioner Profile",
      "target": "Practitioner",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "NPI", "elementType": "Identifier"},
        {
          "name": "active",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "address",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "gender",
          "elementType": "AdministrativeGender",
          "target": "%value.value"
        },
        {
          "name": "birthDate",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "photo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "qualification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PractitionerRole.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "daysOfWeek",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "allDay",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "availableStartTime",
          "elementType": "System.Time",
          "target": "%value.value"
        },
        {
          "name": "availableEndTime",
          "elementType": "System.Time",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PractitionerRole.NotAvailable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "during",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PractitionerRoleProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
      "label": "US Core PractitionerRole Profile",
      "target": "PractitionerRole",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "active",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {"name": "practitioner", "elementType": "Reference"},
        {"name": "organization", "elementType": "Reference"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "specialty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "location",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "healthcareService",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "availableTime",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "notAvailable",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "availabilityExceptions",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Procedure.FocalDevice",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "action",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "manipulated", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Procedure.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "function",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "actor", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ProcedureProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure",
      "label": "US Core Procedure Profile",
      "target": "Procedure",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "performed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {"name": "recorder", "elementType": "Reference"},
        {"name": "asserter", "elementType": "Reference"},
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "outcome",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "report",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "complication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "complicationDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "followUp",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "focalDevice",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "usedReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "usedCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance",
      "label": "US Core Provenance Profile",
      "element": [
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "occurred",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "recorded",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "policy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "reason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "activity",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "agent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ProvenanceAuthor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ProvenanceTransmitter",
          "elementType": "Provenance.Agent.ProvenanceTransmitter"
        },
        {
          "name": "entity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "signature",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "where(resolve() is Patient)"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Provenance.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "role",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "who", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Provenance.Agent.ProvenanceAuthor",
      "baseType": "Provenance.Agent",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Provenance.Agent.ProvenanceTransmitter",
      "baseType": "Provenance.Agent",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Provenance.Entity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "role",
          "elementType": "ProvenanceEntityRole",
          "target": "%value.value"
        },
        {"name": "what", "elementType": "Reference"},
        {
          "name": "agent",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Provenance.Agent.ProvenanceTransmitter",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ProvenanceEntityRole",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "PulseOximetryProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry",
      "label": "US Core Pulse Oximetry Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "OxygenSatCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='2708-6'])"
        },
        {
          "name": "PulseOx",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='59408-5'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "FlowRate", "elementType": "Observation.Component"},
        {"name": "Concentration", "elementType": "Observation.Component"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "QuantityComparator",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "RaceExtension",
      "baseType": "Extension",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
      "label": "US Core Race Extension",
      "element": [
        {
          "name": "ombCategory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "FHIRHelpers.ToCode(%parent.extension[url='ombCategory'].value)"
        },
        {
          "name": "detailed",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "FHIRHelpers.ToCode(%parent.extension[url='detailed'].value)"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%parent.extension[url='text'].value.value"
        },
        {
          "name": "url",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Reference",
      "label": "Reference",
      "element": [
        {
          "name": "reference",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "identifier", "elementType": "Identifier"},
        {
          "name": "display",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "ReferredDocumentStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "RelatedArtifact",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/RelatedArtifact",
      "label": "RelatedArtifact",
      "element": [
        {
          "name": "type",
          "elementType": "RelatedArtifactType",
          "target": "%value.value"
        },
        {
          "name": "label",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "display",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "citation",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "url",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "document", "elementType": "Attachment"},
        {
          "name": "resource",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "RelatedArtifactType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Resource",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Resource",
      "label": "Resource",
      "element": [
        {
          "name": "id",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "meta", "elementType": "Meta"},
        {
          "name": "implicitRules",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "language",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "SampledData",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SampledData",
      "label": "SampledData",
      "element": [
        {
          "name": "origin",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "period",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "factor",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "lowerLimit",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "upperLimit",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "dimensions",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "data",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Signature",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Signature",
      "label": "Signature",
      "element": [
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "when",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "who", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"},
        {
          "name": "targetFormat",
          "elementType": "MimeType",
          "target": "%value.value"
        },
        {
          "name": "sigFormat",
          "elementType": "MimeType",
          "target": "%value.value"
        },
        {
          "name": "data",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "SmokingStatusProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus",
      "label": "US Core Smoking Status Observation Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "SortDirection",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Status",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Timing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Timing",
      "label": "Timing",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "event",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {"name": "repeat", "elementType": "Timing.Repeat"},
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "Timing.Repeat",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "bounds",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "count",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "countMax",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "duration",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "durationMax",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "durationUnit",
          "elementType": "UnitsOfTime",
          "target": "%value.value"
        },
        {
          "name": "frequency",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "frequencyMax",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "periodMax",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "periodUnit",
          "elementType": "UnitsOfTime",
          "target": "%value.value"
        },
        {
          "name": "dayOfWeek",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "timeOfDay",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "when",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "offset",
          "elementType": "System.Integer",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "TriggerDefinition",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/TriggerDefinition",
      "label": "TriggerDefinition",
      "element": [
        {
          "name": "type",
          "elementType": "TriggerType",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "data",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "condition", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "TriggerType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "UDIEntryType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "UnitsOfTime",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "UsageContext",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/UsageContext",
      "label": "UsageContext",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "code",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-bmi",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/bmi",
      "label": "Observation Body Mass Index Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "BMICode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='39156-5'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-bodyheight",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/bodyheight",
      "label": "Observation Body Height Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "BodyHeightCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8302-2'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-bodytemp",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/bodytemp",
      "label": "Observation Body Temperature Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "BodyTempCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8310-5'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-bodyweight",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/bodyweight",
      "label": "Observation Body Weight Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "BodyWeightCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='29463-7'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-bp",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/bp",
      "label": "Observation Blood Pressure Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "BPCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='85354-9'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "SystolicBP",
          "elementType": "Observation.Component",
          "target":
              "%parent.component[code.coding.system='http://loinc.org',code.coding.code='8480-6']"
        },
        {
          "name": "DiastolicBP",
          "elementType": "Observation.Component",
          "target":
              "%parent.component[code.coding.system='http://loinc.org',code.coding.code='8462-4']"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-headcircum",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/headcircum",
      "label": "Observation Head Circumference Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "HeadCircumCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='9843-4'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-heartrate",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/heartrate",
      "label": "Observation Heart Rate Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "HeartRateCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8867-4'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-oxygensat",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/oxygensat",
      "label": "Observation Oxygen Saturation Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "OxygenSatCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='2708-6'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-resprate",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/resprate",
      "label": "Observation Respiratory Rate Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "RespRateCode",
          "elementType": "System.Code",
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='9279-1'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "USCore",
      "name": "observation-vitalspanel",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/vitalspanel",
      "label": "Observation Vital Signs Panel Profile",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "Status", "target": "%value.value"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VSCat",
          "elementType": "System.Concept",
          "target":
              "FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "VitalsPanelCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='85353-1'])"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "issued",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "referenceRange",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hasMember",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    }
  ],
  "contextInfo": {
    "name": "Patient",
    "keyElement": "id",
    "birthDateElement": "birthDate",
    "contextType": {"name": "PatientProfile", "type": "NamedTypeSpecifier"}
  }
});
