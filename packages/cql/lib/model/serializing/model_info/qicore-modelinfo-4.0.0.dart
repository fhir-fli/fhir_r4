import '../../../cql.dart';

final qicoremodelinfo400 = ModelInfo.fromJson({
  "name": "QICore",
  "url": "http://hl7.org/fhir/us/qicore",
  "targetUrl": "http://hl7.org/fhir",
  "targetQualifier": "qicore",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate",
  "version": "4.0.0",
  "requiredModelInfo": {"name": "System", "version": "1.0.0"},
  "typeInfo": [
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "AddressType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AddressUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AdministrativeGender",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AdverseEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-adverseevent",
      "label": "AdverseEvent",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {
          "name": "actuality",
          "elementType": "AdverseEventActuality",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "event",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "detected",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "recordedDate",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "resultingCondition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "seriousness",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "severity",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "outcome",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "recorder", "elementType": "Reference"},
        {
          "name": "contributor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "suspectEntity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subjectMedicalHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "referenceDocument",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "study",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "recorder"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "RelatedPerson", "relatedKeyElement": "recorder"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AdverseEvent.SuspectEntity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "instance", "elementType": "Reference"},
        {
          "name": "causality",
          "elementType": "AdverseEvent.SuspectEntity.Causality"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AdverseEvent.SuspectEntity.Causality",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "assessment",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "productRelatedness",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "author", "elementType": "Reference"},
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AdverseEventActuality",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-allergyintolerance",
      "label": "AllergyIntolerance",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "resolutionAge",
          "elementType": "resolutionAge",
          "target":
              "FHIRHelpers.ToQuantity(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/allergyintolerance-resolutionAge'].value)"
        },
        {
          "name": "reasonRefuted",
          "elementType": "reasonRefuted",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/allergyintolerance-reasonRefuted'].value)"
        },
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
              {"type": "IntervalTypeSpecifier"}
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
        {"context": "Practitioner", "relatedKeyElement": "recorder"},
        {"context": "Practitioner", "relatedKeyElement": "asserter"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "recorder"},
        {"context": "Patient", "relatedKeyElement": "asserter"},
        {"context": "RelatedPerson", "relatedKeyElement": "asserter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
        },
        {
          "name": "reaction-duration",
          "elementType": "duration",
          "target":
              "FHIRHelpers.ToQuantity(%parent.reaction.extension[url='http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration'].value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AllergyIntoleranceCategory",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AllergyIntoleranceCriticality",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AllergyIntoleranceSeverity",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "AllergyIntoleranceType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "BodyLengthUnits",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "BodyStructure",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-bodystructure",
      "label": "BodyStructure",
      "primaryCodePath": "location",
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
          "name": "morphology",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "location",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "locationQualifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "image",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"}
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patient"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "BodyTempUnits",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "BodyWeightUnits",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careplan",
      "label": "CarePlan",
      "primaryCodePath": "category",
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
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "performer"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "performer"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "CarePlanActivityKind",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CarePlanActivityStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CareTeam",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careteam",
      "label": "CareTeam",
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
        {"context": "Practitioner", "relatedKeyElement": "member"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "member"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "member"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-claim",
      "label": "Claim",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "ClaimStatus",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "subType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "use", "elementType": "Use", "target": "%value.value"},
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "billablePeriod",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "created",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "enterer", "elementType": "Reference"},
        {"name": "insurer", "elementType": "Reference"},
        {"name": "provider", "elementType": "Reference"},
        {
          "name": "priority",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "fundsReserve",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "related",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prescription", "elementType": "Reference"},
        {"name": "originalPrescription", "elementType": "Reference"},
        {"name": "payee", "elementType": "Claim.Payee"},
        {"name": "referral", "elementType": "Reference"},
        {"name": "facility", "elementType": "Reference"},
        {
          "name": "careTeam",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosis",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "accident", "elementType": "Claim.Accident"},
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "total",
          "elementType": "System.Decimal",
          "target": "%value.value"
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "enterer"},
        {"context": "Practitioner", "relatedKeyElement": "provider"},
        {"context": "Practitioner", "relatedKeyElement": "party"},
        {"context": "Practitioner", "relatedKeyElement": "provider"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "party"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "udi"},
        {"context": "Device", "relatedKeyElement": "udi"},
        {"context": "Device", "relatedKeyElement": "udi"},
        {"context": "Device", "relatedKeyElement": "udi"},
        {"context": "RelatedPerson", "relatedKeyElement": "party"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Accident",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "date",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.CareTeam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {"name": "provider", "elementType": "Reference"},
        {
          "name": "responsible",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "role",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "qualification",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "diagnosis",
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
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "onAdmission",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "packageCode",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "focal",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "coverage", "elementType": "Reference"},
        {
          "name": "businessArrangement",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "preAuthRef",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {"name": "claimResponse", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "careTeamSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "diagnosisSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "procedureSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "informationSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "revenue",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "productOrService",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "serviced",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "unitPrice",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "factor",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "net",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "subSite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "encounter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Item.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "revenue",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "productOrService",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "unitPrice",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "factor",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "net",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Item.Detail.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "revenue",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "productOrService",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "unitPrice",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "factor",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "net",
          "elementType": "System.Decimal",
          "target": "%value.value"
        },
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "party", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "procedure",
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
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "claim", "elementType": "Reference"},
        {
          "name": "relationship",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "reference", "elementType": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Claim.SupportingInfo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "sequence",
          "elementType": "System.Integer",
          "target": "%value.value"
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
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
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
      "namespace": "QICore",
      "name": "ClaimStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Communication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communication",
      "label": "Communication",
      "primaryCodePath": "reasonCode",
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
          "name": "inResponseTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "CommunicationStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
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
          "elementType": "CommunicationPriority",
          "target": "%value.value"
        },
        {
          "name": "medium",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "topic",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "about",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "sent",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "received",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sender", "elementType": "Reference"},
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
          "name": "payload",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "sender"},
        {"context": "Practitioner", "relatedKeyElement": "recipient"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Patient", "relatedKeyElement": "sender"},
        {"context": "Patient", "relatedKeyElement": "recipient"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "sender"},
        {"context": "Device", "relatedKeyElement": "recipient"},
        {"context": "RelatedPerson", "relatedKeyElement": "sender"},
        {"context": "RelatedPerson", "relatedKeyElement": "recipient"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Communication.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {
              "name": "{urn:hl7-org:elm-types:r1}String",
              "type": "NamedTypeSpecifier"
            },
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        },
        "target": "FHIRHelpers.ToValue(%value)"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CommunicationNotDone",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communicationnotdone",
      "label": "CommunicationNotDone",
      "target": "Communication",
      "primaryCodePath": "reasonCode",
      "element": [
        {
          "name": "recorded",
          "elementType": "NotDoneRecorded",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded'].value.value"
        },
        {
          "name": "notDone",
          "elementType": "System.Boolean",
          "target":
              "%parent.modifierExtension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDone'].value"
        },
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
          "name": "inResponseTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "CommunicationStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
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
          "elementType": "CommunicationPriority",
          "target": "%value.value"
        },
        {
          "name": "medium",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "topic",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "about",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "sent",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "received",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sender", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "notDoneValueSet",
          "elementType": "reference",
          "target":
              "%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "payload",
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
      "namespace": "QICore",
      "name": "CommunicationPriority",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communicationrequest",
      "label": "CommunicationRequest",
      "primaryCodePath": "category",
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
          "name": "replaces",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "elementType": "Identifier"},
        {
          "name": "status",
          "elementType": "CommunicationRequestStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
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
          "elementType": "CommunicationPriority",
          "target": "%value.value"
        },
        {
          "name": "doNotPerform",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "medium",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "about",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "payload",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "occurrence",
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
          "name": "authoredOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sender", "elementType": "Reference"},
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
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "sender"},
        {"context": "Practitioner", "relatedKeyElement": "recipient"},
        {"context": "Practitioner", "relatedKeyElement": "requester"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Patient", "relatedKeyElement": "sender"},
        {"context": "Patient", "relatedKeyElement": "recipient"},
        {"context": "Patient", "relatedKeyElement": "requester"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "sender"},
        {"context": "Device", "relatedKeyElement": "recipient"},
        {"context": "RelatedPerson", "relatedKeyElement": "sender"},
        {"context": "RelatedPerson", "relatedKeyElement": "recipient"},
        {"context": "RelatedPerson", "relatedKeyElement": "requester"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CommunicationRequest.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {
              "name": "{urn:hl7-org:elm-types:r1}String",
              "type": "NamedTypeSpecifier"
            },
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        },
        "target": "FHIRHelpers.ToValue(%value)"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CommunicationRequestStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "CommunicationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-condition",
      "label": "Condition",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "dueTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "FHIRHelpers.ToValue(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/condition-dueTo'].value)"
        },
        {
          "name": "occurredFollowing",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "FHIRHelpers.ToValue(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing'].value)"
        },
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
              {"type": "IntervalTypeSpecifier"}
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
              {"type": "IntervalTypeSpecifier"}
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
        {"context": "Practitioner", "relatedKeyElement": "asserter"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "asserter"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "asserter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ContactPointSystem",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ContactPointUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ContributorType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-coverage",
      "label": "Coverage",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "CoverageStatus",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "policyHolder", "elementType": "Reference"},
        {"name": "subscriber", "elementType": "Reference"},
        {
          "name": "subscriberId",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "beneficiary", "elementType": "Reference"},
        {
          "name": "dependent",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "relationship",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "payor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "class",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "order",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "network",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "costToBeneficiary",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subrogation",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "contract",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Patient", "relatedKeyElement": "policyHolder"},
        {"context": "Patient", "relatedKeyElement": "subscriber"},
        {"context": "Patient", "relatedKeyElement": "beneficiary"},
        {"context": "Patient", "relatedKeyElement": "payor"},
        {"context": "RelatedPerson", "relatedKeyElement": "policyHolder"},
        {"context": "RelatedPerson", "relatedKeyElement": "subscriber"},
        {"context": "RelatedPerson", "relatedKeyElement": "payor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Coverage.Class",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "value",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Coverage.CostToBeneficiary",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
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
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "exception",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Coverage.CostToBeneficiary.Exception",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
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
      "namespace": "QICore",
      "name": "CoverageStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "DayOfWeek",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "DaysOfWeek",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-device",
      "label": "Device",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "elementType": "Reference"},
        {
          "name": "udiCarrier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "DeviceNameType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "DeviceNotRequested",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-devicenotrequested",
      "label": "DeviceNotRequested",
      "target": "DeviceRequest",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "doNotPerformReason",
          "elementType": "DoNotPerformReason",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-doNotPerformReason'].value)"
        },
        {
          "name": "doNotPerform",
          "elementType": "System.Boolean",
          "target":
              "%parent.modifierExtension[url='http://hl7.org/fhir/StructureDefinition/request-doNotPerform'].value"
        },
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
          "name": "priorRequest",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "elementType": "Identifier"},
        {
          "name": "status",
          "elementType": "DeviceRequestStatus",
          "target": "%value.value"
        },
        {
          "name": "intent",
          "elementType": "RequestIntent",
          "target": "%value.value"
        },
        {
          "name": "priority",
          "elementType": "RequestPriority",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "doNotPerformValueSet",
          "elementType": "reference",
          "target":
              "%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"
        },
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
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
              {"type": "IntervalTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "authoredOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "performerType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "performer", "elementType": "Reference"},
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
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "DeviceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-devicerequest",
      "label": "DeviceRequest",
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
          "name": "priorRequest",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "elementType": "Identifier"},
        {
          "name": "status",
          "elementType": "DeviceRequestStatus",
          "target": "%value.value"
        },
        {
          "name": "intent",
          "elementType": "RequestIntent",
          "target": "%value.value"
        },
        {
          "name": "priority",
          "elementType": "RequestPriority",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
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
              {"type": "IntervalTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "authoredOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "performerType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "performer", "elementType": "Reference"},
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
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "requester"},
        {"context": "Practitioner", "relatedKeyElement": "performer"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Patient", "relatedKeyElement": "performer"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "code as Reference)"},
        {"context": "Device", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "requester"},
        {"context": "Device", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "DeviceRequest.Parameter",
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
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
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
      "namespace": "QICore",
      "name": "DeviceRequestStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-deviceusestatement",
      "label": "DeviceUseStatement",
      "primaryCodePath": "device.code",
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
          "elementType": "DeviceUseStatementStatus",
          "target": "%value.value"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Timing", "type": "NamedTypeSpecifier"},
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
          "name": "recordedOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "source", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
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
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "device"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "DeviceUseStatementStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Diagnosis_Present_On_Admission_Extension",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-diagnosisPresentOnAdmission",
      "label": "Diagnosis_Present_On_Admission_Extension"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "DiagnosticReportLab",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-lab",
      "label": "DiagnosticReportLab",
      "target": "DiagnosticReport",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "locationPerformed",
          "elementType": "Reference",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed']"
        },
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
      "namespace": "QICore",
      "name": "DiagnosticReportNote",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-note",
      "label": "DiagnosticReportNote",
      "target": "DiagnosticReport",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "locationPerformed",
          "elementType": "Reference",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed']"
        },
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
      "namespace": "QICore",
      "name": "DoNotPerformReason",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-doNotPerformReason",
      "label": "DoNotPerformReason"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "EnableWhenBehavior",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter",
      "label": "Encounter",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "statusReason",
          "elementType": "statusReason",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/request-statusReason'].value)"
        },
        {
          "name": "procedure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-procedure']"
        },
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
      ],
      "contextRelationship": [
        {
          "context": "Practitioner",
          "relatedKeyElement": "where(resolve() is Practitioner)"
        },
        {"context": "Practitioner", "relatedKeyElement": "individual"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "RelatedPerson", "relatedKeyElement": "individual"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
        },
        {
          "name": "diagnosisPresentOnAdmission",
          "elementType": "Diagnosis_Present_On_Admission_Extension",
          "target":
              "FHIRHelpers.ToConcept(%parent.diagnosis.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-diagnosisPresentOnAdmission'].value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "EncounterLocationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "EncounterProcedureExtension",
      "baseType": "Extension",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-procedure",
      "label": "EncounterProcedureExtension",
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%parent.extension[url='type'].value)"
        },
        {
          "name": "rank",
          "elementType": "System.Integer",
          "target": "%parent.extension[url='rank'].value.value"
        },
        {
          "name": "procedure",
          "elementType": "Reference",
          "target": "%parent.extension[url='procedure']"
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
      "namespace": "QICore",
      "name": "EncounterStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "EventTiming",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "FHIRAllTypes",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "FHIRDeviceStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "FHIRSubstanceStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "FamilyHistoryStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "FamilyMemberHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-familymemberhistory",
      "label": "FamilyMemberHistory",
      "primaryCodePath": "relationship",
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
          "name": "status",
          "elementType": "FamilyHistoryStatus",
          "target": "%value.value"
        },
        {
          "name": "dataAbsentReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "relationship",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "sex",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "born",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
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
          "name": "age",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
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
          "name": "estimatedAge",
          "elementType": "System.Boolean",
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
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
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
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patient"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "FamilyMemberHistory.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "outcome",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "contributedToDeath",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition-abatement",
          "elementType": "abatement",
          "target":
              "FHIRHelpers.ToValue(%parent.condition.extension[url='http://hl7.org/fhir/StructureDefinition/familymemberhistory-abatement'].value)"
        },
        {
          "name": "condition-severity",
          "elementType": "severity",
          "target":
              "FHIRHelpers.ToConcept(%parent.condition.extension[url='http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity'].value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Flag",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-flag",
      "label": "Flag",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "FlagStatus",
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
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {"name": "encounter", "elementType": "Reference"},
        {"name": "author", "elementType": "Reference"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Device", "relatedKeyElement": "author"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "FlagStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-goal",
      "label": "Goal",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "reasonRejected",
          "elementType": "reasonRejected",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/goal-reasonRejected'].value)"
        },
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
          "elementType": "System.Date",
          "target": "%value.value"
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
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patient"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "IdentifierUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImagingStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-imagingstudy",
      "label": "ImagingStudy",
      "primaryCodePath": "procedureCode",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "ImagingStudyStatus",
          "target": "%value.value"
        },
        {
          "name": "modality",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "started",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "referrer", "elementType": "Reference"},
        {
          "name": "interpreter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "numberOfSeries",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "numberOfInstances",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {"name": "procedureReference", "elementType": "Reference"},
        {
          "name": "procedureCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
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
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "series",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patient"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImagingStudy.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "uid",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "number",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "modality",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "numberOfInstances",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "laterality",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "specimen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "started",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImagingStudy.Series.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "uid",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "sopClass",
          "elementType": "System.Code",
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "number",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "title",
          "elementType": "System.String",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImagingStudy.Series.Performer",
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
      "namespace": "QICore",
      "name": "ImagingStudyStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Immunization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunization",
      "label": "Immunization",
      "primaryCodePath": "vaccineCode",
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
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Patient", "relatedKeyElement": "patient"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ImmunizationEvaluation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationevaluation",
      "label": "ImmunizationEvaluation",
      "primaryCodePath": "targetDisease",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "ImmunizationEvaluationStatus",
          "target": "%value.value"
        },
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "authority", "elementType": "Reference"},
        {
          "name": "targetDisease",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "immunizationEvent", "elementType": "Reference"},
        {
          "name": "doseStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "doseStatusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "series",
          "elementType": "System.String",
          "target": "%value.value"
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
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patient"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImmunizationEvaluationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImmunizationNotDone",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationnotdone",
      "label": "ImmunizationNotDone",
      "target": "Immunization",
      "primaryCodePath": "vaccineCode",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "ImmunizationStatus",
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
        {
          "name": "notDoneValueSet",
          "elementType": "reference",
          "target":
              "%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"
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
      "namespace": "QICore",
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationrec",
      "label": "ImmunizationRecommendation",
      "primaryCodePath": "recommendation.vaccineCode",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "authority", "elementType": "Reference"},
        {
          "name": "recommendation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patient"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImmunizationRecommendation.Recommendation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "vaccineCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "targetDisease",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "contraindicatedVaccineCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "forecastStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "forecastReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "dateCriterion",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "series",
          "elementType": "System.String",
          "target": "%value.value"
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
        },
        {
          "name": "supportingImmunization",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingPatientInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImmunizationRecommendation.Recommendation.DateCriterion",
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
          "elementType": "System.DateTime",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ImmunizationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "IsElective",
      "baseType": "System.Boolean",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-isElective",
      "label": "IsElective"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "LinkType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location",
      "label": "Location",
      "primaryCodePath": "type",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "LocationMode",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medication",
      "label": "Medication",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "MedicationAdministration",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationadministration",
      "label": "MedicationAdministration",
      "primaryCodePath": "medication",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "MedicationAdministrationStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
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
        {"name": "context", "elementType": "Reference"},
        {
          "name": "supportingInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
          "name": "performer",
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
        {"name": "request", "elementType": "Reference"},
        {
          "name": "device",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "dosage", "elementType": "MedicationAdministration.Dosage"},
        {
          "name": "eventHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "actor"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Encounter", "relatedKeyElement": "context"},
        {"context": "Device", "relatedKeyElement": "device"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationAdministration.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "text",
          "elementType": "System.String",
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
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "dose",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
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
      "namespace": "QICore",
      "name": "MedicationAdministration.Performer",
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
      "namespace": "QICore",
      "name": "MedicationAdministrationNotDone",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-mednotadministered",
      "label": "MedicationAdministrationNotDone",
      "target": "MedicationAdministration",
      "primaryCodePath": "medication",
      "element": [
        {
          "name": "recorded",
          "elementType": "NotDoneRecorded",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded'].value.value"
        },
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "MedicationAdministrationStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "medication",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "notDoneValueSet",
          "elementType": "reference",
          "target":
              "%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "context", "elementType": "Reference"},
        {
          "name": "supportingInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
          "name": "performer",
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
        {"name": "request", "elementType": "Reference"},
        {
          "name": "device",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "dosage", "elementType": "MedicationAdministration.Dosage"},
        {
          "name": "eventHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationAdministrationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationDispense",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationdispense",
      "label": "MedicationDispense",
      "primaryCodePath": "medication",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "MedicationDispenseStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
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
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
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
        {"name": "context", "elementType": "Reference"},
        {
          "name": "supportingInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "authorizingPrescription",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "daysSupply",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "whenPrepared",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "whenHandedOver",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "destination", "elementType": "Reference"},
        {
          "name": "receiver",
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
          "name": "substitution",
          "elementType": "MedicationDispense.Substitution"
        },
        {
          "name": "detectedIssue",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "eventHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Practitioner", "relatedKeyElement": "receiver"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "receiver"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationDispense.Performer",
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
      "namespace": "QICore",
      "name": "MedicationDispense.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "wasSubstituted",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "reason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "responsibleParty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationDispenseStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationrequest",
      "label": "MedicationRequest",
      "primaryCodePath": "medication",
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
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "requester"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Encounter", "relatedKeyElement": "encounter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "MedicationRequestPriority",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationstatement",
      "label": "MedicationStatement",
      "primaryCodePath": "medication",
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
          "elementType": "MedicationStatementStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "category",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
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
        {"name": "context", "elementType": "Reference"},
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
          "name": "dateAsserted",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "informationSource", "elementType": "Reference"},
        {
          "name": "derivedFrom",
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
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dosage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "informationSource"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "RelatedPerson", "relatedKeyElement": "informationSource"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationStatementStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "MedicationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "MimeType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "NameUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "NarrativeStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "NotDone",
      "baseType": "System.Boolean",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDone",
      "label": "NotDone"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "NotDoneReason",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDoneReason",
      "label": "NotDoneReason"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "NotDoneRecorded",
      "baseType": "System.DateTime",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded",
      "label": "NotDoneRecorded"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observation",
      "label": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "bodyPosition",
          "elementType": "bodyPosition",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/observation-bodyPosition'].value)"
        },
        {
          "name": "delta",
          "elementType": "delta",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/observation-delta'].value)"
        },
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
          "elementType": "ObservationStatus",
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
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "performer"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Patient", "relatedKeyElement": "performer"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "device"},
        {"context": "RelatedPerson", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "Observation.Component.Concentration",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Observation.Component.DiastolicBP",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Observation.Component.FlowRate",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Observation.Component.SystolicBP",
      "baseType": "Observation.Component",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ObservationNotDone",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observationnotdone",
      "label": "ObservationNotDone",
      "target": "Observation",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "notDoneReason",
          "elementType": "NotDoneReason",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDoneReason'].value)"
        },
        {
          "name": "notDone",
          "elementType": "System.Boolean",
          "target":
              "%parent.modifierExtension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDone'].value"
        },
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
          "elementType": "ObservationStatus",
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
        {
          "name": "notDoneValueSet",
          "elementType": "reference",
          "target":
              "%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"
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
      "namespace": "QICore",
      "name": "ObservationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-organization",
      "label": "Organization",
      "primaryCodePath": "type",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ParameterUse",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient",
      "label": "Patient",
      "element": [
        {
          "name": "race",
          "elementType": "USCoreRaceExtension",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-race']"
        },
        {
          "name": "ethnicity",
          "elementType": "USCoreEthnicityExtension",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity']"
        },
        {
          "name": "birthsex",
          "elementType": "USCoreBirthSexExtension",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex'].value.value"
        },
        {
          "name": "religion",
          "elementType": "religion",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-religion'].value)"
        },
        {
          "name": "birthPlace",
          "elementType": "birthPlace",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-birthPlace']"
        },
        {
          "name": "disability",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-disability'].value)"
        },
        {
          "name": "nationality",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-nationality']"
        },
        {
          "name": "cadavericDonor",
          "elementType": "cadavericDonor",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor'].value.value"
        },
        {
          "name": "birthTime",
          "elementType": "birthTime",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-birthTime'].value.value"
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
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "generalPractitioner"},
        {"context": "Patient", "relatedKeyElement": "other"},
        {"context": "RelatedPerson", "relatedKeyElement": "other"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Patient.Address",
      "retrievable": false,
      "element": {
        "name": "address-preferred",
        "elementType": "preferred",
        "target":
            "%parent.address.extension[url='http://hl7.org/fhir/StructureDefinition/iso21090-preferred'].value.value"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "Patient.Telecom",
      "retrievable": false,
      "element": {
        "name": "telecom-preferred",
        "elementType": "preferred",
        "target":
            "%parent.telecom.extension[url='http://hl7.org/fhir/StructureDefinition/iso21090-preferred'].value.value"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Practitioner",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitioner",
      "label": "Practitioner",
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
        {"name": "name", "elementType": "HumanName"},
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "PractitionerRole",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitionerrole",
      "label": "PractitionerRole",
      "primaryCodePath": "code",
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
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "specialty",
          "elementType": "System.Concept",
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
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "practitioner"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "Procedure",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-procedure",
      "label": "Procedure",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "approachBodyStructure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure']"
        },
        {
          "name": "incisionDateTime",
          "elementType": "incisionDateTime",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-incisionDateTime'].value.value"
        },
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
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Patient", "relatedKeyElement": "patient"},
        {"context": "Patient", "relatedKeyElement": "actor"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ProcedureNotDone",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-procedurenotdone",
      "label": "ProcedureNotDone",
      "target": "Procedure",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "recorded",
          "elementType": "NotDoneRecorded",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded'].value.value"
        },
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
          "elementType": "ProcedureStatus",
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
        {
          "name": "notDoneValueSet",
          "elementType": "reference",
          "target":
              "%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"
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
              {"type": "IntervalTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
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
      "namespace": "QICore",
      "name": "ProcedureStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "PublicationStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "QuantityComparator",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Questionnaire",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Questionnaire",
      "label": "Questionnaire",
      "primaryCodePath": "name",
      "element": [
        {
          "name": "url",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "version",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "name",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "title",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "status",
          "elementType": "PublicationStatus",
          "target": "%value.value"
        },
        {
          "name": "experimental",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "subjectType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "%value.value"
        },
        {
          "name": "date",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "publisher",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "purpose",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "copyright",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "approvalDate",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "lastReviewDate",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "effectivePeriod",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Questionnaire.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "linkId",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "definition",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToCode(%value)"
        },
        {
          "name": "prefix",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "QuestionnaireItemType",
          "target": "%value.value"
        },
        {
          "name": "enableWhen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "enableBehavior",
          "elementType": "EnableWhenBehavior",
          "target": "%value.value"
        },
        {
          "name": "required",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "repeats",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "readOnly",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "maxLength",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "answerValueSet",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "answerOption",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "initial",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Questionnaire.Item",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Questionnaire.Item.AnswerOption",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Date",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "initialSelected",
          "elementType": "System.Boolean",
          "target": "%value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Questionnaire.Item.EnableWhen",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "question",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "operator",
          "elementType": "QuestionnaireItemOperator",
          "target": "%value.value"
        },
        {
          "name": "answer",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
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
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Questionnaire.Item.Initial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "value",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {
              "name": "{urn:hl7-org:elm-types:r1}Boolean",
              "type": "NamedTypeSpecifier"
            },
            {
              "name": "{urn:hl7-org:elm-types:r1}Decimal",
              "type": "NamedTypeSpecifier"
            },
            {
              "name": "{urn:hl7-org:elm-types:r1}Integer",
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
              "name": "{urn:hl7-org:elm-types:r1}Time",
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
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {
              "name": "{urn:hl7-org:elm-types:r1}Code",
              "type": "NamedTypeSpecifier"
            },
            {
              "name": "{urn:hl7-org:elm-types:r1}Quantity",
              "type": "NamedTypeSpecifier"
            },
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        },
        "target": "FHIRHelpers.ToValue(%value)"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "QuestionnaireItemOperator",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "QuestionnaireItemType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "QuestionnaireResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "label": "QuestionnaireResponse",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "questionnaire",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "status",
          "elementType": "QuestionnaireResponseStatus",
          "target": "%value.value"
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "authored",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "author", "elementType": "Reference"},
        {"name": "source", "elementType": "Reference"},
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Practitioner", "relatedKeyElement": "source"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Patient", "relatedKeyElement": "author"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "source"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "QuestionnaireResponse.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "linkId",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "definition",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "text",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "answer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "QuestionnaireResponse.Item",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "QuestionnaireResponse.Item.Answer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Integer",
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
                "name": "{urn:hl7-org:elm-types:r1}Time",
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
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "QuestionnaireResponse.Item",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "QuestionnaireResponseStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "RelatedArtifactType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "RelatedPerson",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-relatedperson",
      "label": "RelatedPerson",
      "primaryCodePath": "relationship",
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
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "relationship",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
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
          "elementType": "AdministrativeGender",
          "target": "%value.value"
        },
        {
          "name": "birthDate",
          "elementType": "System.Date",
          "target": "%value.value"
        },
        {
          "name": "address",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "photo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "communication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Patient",
        "relatedKeyElement": "patient"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "RelatedPerson.Communication",
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
      "namespace": "QICore",
      "name": "RequestIntent",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "RequestPriority",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ResourceType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "ServiceNotRequested",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicenotrequested",
      "label": "ServiceNotRequested",
      "target": "ServiceRequest",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "approachBodyStructure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure']"
        },
        {
          "name": "appropriatenessScore",
          "elementType": "ServiceRequestAppropriatenessScore",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore']"
        },
        {
          "name": "reasonRefused",
          "elementType": "DoNotPerformReason",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-doNotPerformReason'].value)"
        },
        {
          "name": "isElective",
          "elementType": "IsElective",
          "target": "%value.value"
        },
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
        {"name": "requisition", "elementType": "Identifier"},
        {
          "name": "status",
          "elementType": "ServiceRequestStatus",
          "target": "%value.value"
        },
        {
          "name": "intent",
          "elementType": "ServiceRequestIntent",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "priority",
          "elementType": "ServiceRequestPriority",
          "target": "%value.value"
        },
        {
          "name": "doNotPerform",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "notDoneValueSet",
          "elementType": "reference",
          "target":
              "%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"
        },
        {
          "name": "orderDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "quantity",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
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
              {"type": "IntervalTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
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
          "name": "authoredOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "performerType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "locationCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "locationReference",
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
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "patientInstruction",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "relevantHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ServiceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest",
      "label": "ServiceRequest",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "statusReason",
          "elementType": "statusReason",
          "target":
              "FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/request-statusReason'].value)"
        },
        {
          "name": "approachBodyStructure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target":
              "%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure']"
        },
        {
          "name": "appropriatenessScore",
          "target":
              "%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore']"
        },
        {
          "name": "isElective",
          "elementType": "IsElective",
          "target": "%value.value"
        },
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
        {"name": "requisition", "elementType": "Identifier"},
        {
          "name": "status",
          "elementType": "ServiceRequestStatus",
          "target": "%value.value"
        },
        {
          "name": "intent",
          "elementType": "ServiceRequestIntent",
          "target": "%value.value"
        },
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "priority",
          "elementType": "ServiceRequestPriority",
          "target": "%value.value"
        },
        {
          "name": "doNotPerform",
          "elementType": "System.Boolean",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "orderDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "quantity",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
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
              {"type": "IntervalTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        },
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
          "name": "authoredOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "performerType",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "locationCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "locationReference",
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
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "patientInstruction",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "relevantHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "performer"},
        {"context": "Practitioner", "relatedKeyElement": "requester"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Patient", "relatedKeyElement": "performer"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "performer"},
        {"context": "Device", "relatedKeyElement": "requester"},
        {"context": "RelatedPerson", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ServiceRequestAppropriatenessScore",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore",
      "label": "RAND Appropriateness Score Extension"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ServiceRequestIntent",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ServiceRequestPriority",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "ServiceRequestStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "SortDirection",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-specimen",
      "label": "Specimen",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "accessionIdentifier", "elementType": "Identifier"},
        {
          "name": "status",
          "elementType": "SpecimenStatus",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "receivedTime",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "parent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "request",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "collection", "elementType": "Specimen.Collection"},
        {
          "name": "processing",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "container",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "collector"},
        {"context": "Patient", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "subject"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Specimen.Collection",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "collector", "elementType": "Reference"},
        {
          "name": "collected",
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
          "name": "duration",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "method",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "bodySite",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "fastingStatus",
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
              }
            ]
          },
          "target": "FHIRHelpers.ToValue(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Specimen.Container",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "capacity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "specimenQuantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        },
        {
          "name": "additive",
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
          "name": "container-sequenceNumber",
          "elementType": "sequenceNumber",
          "target":
              "%parent.container.extension[url='http://hl7.org/fhir/StructureDefinition/specimen-sequenceNumber'].value.value"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Specimen.Processing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "procedure",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "additive",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "time",
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
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "SpecimenStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Status",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-substance",
      "label": "Substance",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "FHIRSubstanceStatus",
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
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "instance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ingredient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Substance.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "quantity",
          "elementType": "System.Ratio",
          "target": "FHIRHelpers.ToRatio(%value)"
        },
        {"name": "substance", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Substance.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {
          "name": "expiry",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "quantity",
          "elementType": "System.Quantity",
          "target": "FHIRHelpers.ToQuantity(%value)"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Task",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-task",
      "label": "Task",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "instantiatesUri",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "elementType": "Identifier"},
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "status",
          "elementType": "TaskStatus",
          "target": "%value.value"
        },
        {
          "name": "statusReason",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "businessStatus",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "intent",
          "elementType": "TaskIntent",
          "target": "%value.value"
        },
        {
          "name": "priority",
          "elementType": "TaskPriority",
          "target": "%value.value"
        },
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {
          "name": "description",
          "elementType": "System.String",
          "target": "%value.value"
        },
        {"name": "focus", "elementType": "Reference"},
        {"name": "for", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "executionPeriod",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "authoredOn",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {
          "name": "lastModified",
          "elementType": "System.DateTime",
          "target": "%value.value"
        },
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "performerType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"},
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "owner", "elementType": "Reference"},
        {"name": "location", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
        },
        {"name": "reasonReference", "elementType": "Reference"},
        {
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "restriction", "elementType": "Task.Restriction"},
        {
          "name": "input",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "output",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "Task.Input",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
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
      "namespace": "QICore",
      "name": "Task.Output",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%value)"
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
      "namespace": "QICore",
      "name": "Task.Restriction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "repetitions",
          "elementType": "System.Integer",
          "target": "%value.value"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target": "FHIRHelpers.ToInterval(%value)"
        },
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "TaskIntent",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "TaskPriority",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "TaskStatus",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "TriggerType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "UDIEntryType",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "USCoreBirthSexExtension",
      "baseType": "System.String",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
      "label": "US Core Birth Sex Extension"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "USCoreEthnicityExtension",
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
      "namespace": "QICore",
      "name": "USCoreImplantableDeviceProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device",
      "label": "US Core Implantable Device Profile",
      "target": "Device",
      "primaryCodePath": "type",
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
      "namespace": "QICore",
      "name": "USCoreLaboratoryResultObservationProfile",
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
      "namespace": "QICore",
      "name": "USCorePediatricBMIforAgeObservationProfile",
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
      "namespace": "QICore",
      "name": "USCorePediatricWeightForHeightObservationProfile",
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
      "namespace": "QICore",
      "name": "USCorePulseOximetryProfile",
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
      "namespace": "QICore",
      "name": "USCoreRaceExtension",
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
      "namespace": "QICore",
      "name": "USCoreSmokingStatusProfile",
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
      "namespace": "QICore",
      "name": "UnitsOfTime",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
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
      "namespace": "QICore",
      "name": "Use",
      "baseType": "System.String",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "abatement",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/familymemberhistory-abatement",
      "label": "abatement"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "approachBodyStructure",
      "baseType": "Reference",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure",
      "label": "approachBodyStructure"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "birthPlace",
      "baseType": "Address",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
      "label": "Birth Place"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "birthTime",
      "baseType": "System.DateTime",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
      "label": "Birth Time"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "bodyPosition",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition",
      "label": "bodyPosition"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "cadavericDonor",
      "baseType": "System.Boolean",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor",
      "label": "cadavericDonor"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "delta",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/observation-delta",
      "label": "delta"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "disability",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/patient-disability",
      "label": "disability"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "doNotPerform",
      "baseType": "System.Boolean",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/request-doNotPerform",
      "label": "Do Not Perfom"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "dueTo",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
      "label": "dueTo"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "duration",
      "baseType": "System.Quantity",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration",
      "label": "duration"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "incisionDateTime",
      "baseType": "System.DateTime",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/procedure-incisionDateTime",
      "label": "incisionDateTime"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "locationPerformed",
      "baseType": "Reference",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed",
      "label": "locationPerformed"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "nationality",
      "baseType": "Extension",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/patient-nationality",
      "label": "nationality",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "code",
          "elementType": "System.Concept",
          "target": "FHIRHelpers.ToConcept(%parent.extension[url='code'].value)"
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"},
          "target":
              "FHIRHelpers.ToInterval(%parent.extension[url='period'].value)"
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
      "namespace": "QICore",
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
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "occurredFollowing",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing",
      "label": "occurredFollowing"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "preferred",
      "baseType": "System.Boolean",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
      "label": "preferred"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "reasonRefuted",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/allergyintolerance-reasonRefuted",
      "label": "reasonRefuted"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "reasonRejected",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/goal-reasonRejected",
      "label": "reason rejected"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "reference",
      "baseType": "System.String",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/valueset-reference",
      "label": "reference"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "religion",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/patient-religion",
      "label": "religion"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "resolutionAge",
      "baseType": "System.Quantity",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/allergyintolerance-resolutionAge",
      "label": "resolutionAge"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "sequenceNumber",
      "baseType": "System.Integer",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/specimen-sequenceNumber",
      "label": "sequenceNumber"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "severity",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity",
      "label": "severity"
    },
    {
      "type": "ClassInfo",
      "namespace": "QICore",
      "name": "statusReason",
      "baseType": "System.Concept",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/request-statusReason",
      "label": "Reason for current status"
    }
  ],
  "contextInfo": [
    {
      "name": "Practitioner",
      "keyElement": "id",
      "birthDateElement": null,
      "contextType": {
        "name": "{http://hl7.org/fhir}Practitioner",
        "type": "NamedTypeSpecifier"
      }
    },
    {
      "name": "Device",
      "keyElement": "id",
      "birthDateElement": null,
      "contextType": {
        "name": "{http://hl7.org/fhir}Device",
        "type": "NamedTypeSpecifier"
      }
    },
    {
      "name": "Patient",
      "keyElement": "id",
      "birthDateElement": "birthDate",
      "contextType": {
        "name": "{http://hl7.org/fhir}Patient",
        "type": "NamedTypeSpecifier"
      }
    },
    {
      "name": "Encounter",
      "keyElement": "id",
      "birthDateElement": null,
      "contextType": {
        "name": "{http://hl7.org/fhir}Encounter",
        "type": "NamedTypeSpecifier"
      }
    },
    {
      "name": "RelatedPerson",
      "keyElement": "id",
      "birthDateElement": null,
      "contextType": {
        "name": "{http://hl7.org/fhir}RelatedPerson",
        "type": "NamedTypeSpecifier"
      }
    }
  ]
});
