import 'package:fhir_r4_cql/fhir_r4_cql.dart';

final quickfhirmodelinfo301 = ModelInfo.fromJson({
  "name": "QUICKFHIR",
  "url": "http://hl7.org/fhir",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate",
  "version": "3.0.1",
  "requiredModelInfo": {"name": "System", "version": "1.0.0"},
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Account",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Account",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "active",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "balance", "type": "System.Quantity"},
        {
          "name": "coverage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "type": "Reference"},
        {"name": "description", "type": "System.String"},
        {
          "name": "guarantor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Account.CoverageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "coverage", "type": "Reference"},
        {"name": "priority", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Account.GuarantorComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "party", "type": "Reference"},
        {"name": "onHold", "type": "System.Boolean"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ActivityDefinition",
      "primaryCodePath": "topic",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {"name": "usage", "type": "System.String"},
        {"name": "approvalDate", "type": "System.DateTime"},
        {"name": "lastReviewDate", "type": "System.DateTime"},
        {
          "name": "effectivePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contributor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "location", "type": "Reference"},
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
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
        {"name": "quantity", "type": "System.Quantity"},
        {
          "name": "dosage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "transform", "type": "Reference"},
        {
          "name": "dynamicValue",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition.DynamicValueComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "path", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "expression", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "role", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Address",
      "baseType": "Element",
      "retrievable": false,
      "label": "Address",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "use", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {
          "name": "line",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "AdverseEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AdverseEvent",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "category", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {
          "name": "reaction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {"name": "seriousness", "type": "System.Concept"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "recorder", "type": "Reference"},
        {"name": "eventParticipant", "type": "Reference"},
        {"name": "description", "type": "System.String"},
        {
          "name": "suspectEntity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subjectMedicalHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "referenceDocument",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "study",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEvent.SuspectEntityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "instance", "type": "Reference"},
        {"name": "causality", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AllergyIntolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "clinicalStatus", "type": "System.String"},
        {"name": "verificationStatus", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "criticality", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "patient", "type": "Reference"},
        {
          "name": "onset",
          "typeSpecifier": {
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
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "assertedDate", "type": "System.DateTime"},
        {"name": "recorder", "type": "Reference"},
        {"name": "asserter", "type": "Reference"},
        {"name": "lastOccurrence", "type": "System.DateTime"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reaction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance.ReactionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "substance", "type": "System.Concept"},
        {
          "name": "manifestation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "onset", "type": "System.DateTime"},
        {"name": "severity", "type": "System.String"},
        {"name": "exposureRoute", "type": "System.Concept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Annotation",
      "baseType": "Element",
      "retrievable": false,
      "label": "Annotation",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
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
      "name": "Appointment",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Appointment",
      "primaryCodePath": "serviceType",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {
          "name": "serviceType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentType", "type": "System.Concept"},
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "indication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {
          "name": "supportingInformation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "minutesDuration", "type": "System.Integer"},
        {
          "name": "slot",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "created", "type": "System.DateTime"},
        {"name": "comment", "type": "System.String"},
        {
          "name": "incomingReferral",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "requestedPeriod",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {"type": "IntervalTypeSpecifier"}
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "type": "Reference"},
        {"name": "required", "type": "System.String"},
        {"name": "status", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AppointmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AppointmentResponse",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointment", "type": "Reference"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {
          "name": "participantType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "type": "Reference"},
        {"name": "participantStatus", "type": "System.String"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Attachment",
      "baseType": "Element",
      "retrievable": false,
      "label": "Attachment",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "AuditEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AuditEvent",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Code"},
        {
          "name": "subtype",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "type": "System.String"},
        {"name": "recorded", "type": "System.DateTime"},
        {"name": "outcome", "type": "System.String"},
        {
          "name": "purposeOfEvent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "agent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "AuditEvent.SourceComponent"},
        {
          "name": "entity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Agent.NetworkComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "System.String"},
        {"name": "type", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.AgentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "role",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reference", "type": "Reference"},
        {"name": "userId", "type": "Identifier"},
        {"name": "altId", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "requestor", "type": "System.Boolean"},
        {"name": "location", "type": "Reference"},
        {
          "name": "policy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "media", "type": "System.Code"},
        {"name": "network", "type": "AuditEvent.Agent.NetworkComponent"},
        {
          "name": "purposeOfUse",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Entity.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.EntityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "reference", "type": "Reference"},
        {"name": "type", "type": "System.Code"},
        {"name": "role", "type": "System.Code"},
        {"name": "lifecycle", "type": "System.Code"},
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "query", "type": "System.String"},
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.SourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "site", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BackboneElement",
      "baseType": "Element",
      "retrievable": false,
      "label": "BackboneElement",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Basic",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Basic",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Binary",
      "baseType": "Resource",
      "retrievable": true,
      "label": "Binary",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "contentType", "type": "System.String"},
        {"name": "securityContext", "type": "Reference"},
        {"name": "content", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BodySite",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "BodySite",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {"name": "code", "type": "System.Concept"},
        {
          "name": "qualifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "image",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle",
      "baseType": "Resource",
      "retrievable": true,
      "label": "Bundle",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "System.String"},
        {"name": "total", "type": "System.Integer"},
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entry",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "signature", "type": "Signature"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry.RequestComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "method", "type": "System.String"},
        {"name": "url", "type": "System.String"},
        {"name": "ifNoneMatch", "type": "System.String"},
        {"name": "ifModifiedSince", "type": "System.DateTime"},
        {"name": "ifMatch", "type": "System.String"},
        {"name": "ifNoneExist", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry.ResponseComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "location", "type": "System.String"},
        {"name": "etag", "type": "System.String"},
        {"name": "lastModified", "type": "System.DateTime"},
        {"name": "outcome", "type": "Resource"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry.SearchComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "System.String"},
        {"name": "score", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.EntryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "link",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "Bundle.LinkComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {"name": "fullUrl", "type": "System.String"},
        {"name": "resource", "type": "Resource"},
        {"name": "search", "type": "Bundle.Entry.SearchComponent"},
        {"name": "request", "type": "Bundle.Entry.RequestComponent"},
        {"name": "response", "type": "Bundle.Entry.ResponseComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.LinkComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "relation", "type": "System.String"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CapabilityStatement",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "kind", "type": "System.String"},
        {
          "name": "instantiates",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "software", "type": "CapabilityStatement.SoftwareComponent"},
        {
          "name": "implementation",
          "type": "CapabilityStatement.ImplementationComponent"
        },
        {"name": "fhirVersion", "type": "System.String"},
        {"name": "acceptUnknown", "type": "System.String"},
        {
          "name": "format",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "patchFormat",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "implementationGuide",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "profile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rest",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "messaging",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "document",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.DocumentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.ImplementationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Messaging.EndpointComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "protocol", "type": "System.Code"},
        {"name": "address", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Messaging.EventComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Code"},
        {"name": "category", "type": "System.String"},
        {"name": "mode", "type": "System.String"},
        {"name": "focus", "type": "System.String"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Messaging.SupportedMessageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "System.String"},
        {"name": "definition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.MessagingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reliableCache", "type": "System.Integer"},
        {"name": "documentation", "type": "System.String"},
        {
          "name": "supportedMessage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "event",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.InteractionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.OperationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "definition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.Resource.InteractionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.Resource.SearchParamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.ResourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "profile", "type": "Reference"},
        {"name": "documentation", "type": "System.String"},
        {
          "name": "interaction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "versioning", "type": "System.String"},
        {"name": "readHistory", "type": "System.Boolean"},
        {"name": "updateCreate", "type": "System.Boolean"},
        {"name": "conditionalCreate", "type": "System.Boolean"},
        {"name": "conditionalRead", "type": "System.String"},
        {"name": "conditionalUpdate", "type": "System.Boolean"},
        {"name": "conditionalDelete", "type": "System.String"},
        {
          "name": "referencePolicy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchInclude",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchRevInclude",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchParam",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.Security.CertificateComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "blob", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.SecurityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "cors", "type": "System.Boolean"},
        {
          "name": "service",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "certificate",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.RestComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {
          "name": "security",
          "type": "CapabilityStatement.Rest.SecurityComponent"
        },
        {
          "name": "resource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "interaction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchParam",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "CapabilityStatement.Rest.Resource.SearchParamComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "operation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "compartment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.SoftwareComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "releaseDate", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CarePlan",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "intent", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "author",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "careTeam",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "addresses",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goal",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "activity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Activity.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "System.Concept"},
        {"name": "definition", "type": "Reference"},
        {"name": "code", "type": "System.Concept"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goal",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "prohibited", "type": "System.Boolean"},
        {
          "name": "scheduled",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "location", "type": "Reference"},
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "dailyAmount", "type": "System.Quantity"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "description", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.ActivityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "outcomeCodeableConcept",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "outcomeReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "progress",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reference", "type": "Reference"},
        {"name": "detail", "type": "CarePlan.Activity.DetailComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareTeam",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CareTeam",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "managingOrganization",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareTeam.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.Concept"},
        {"name": "member", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ChargeItem",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ChargeItem",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "performingOrganization", "type": "Reference"},
        {"name": "requestingOrganization", "type": "Reference"},
        {"name": "quantity", "type": "System.Quantity"},
        {
          "name": "bodysite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "factorOverride", "type": "System.Decimal"},
        {"name": "priceOverride", "type": "System.Quantity"},
        {"name": "overrideReason", "type": "System.String"},
        {"name": "enterer", "type": "Reference"},
        {"name": "enteredDate", "type": "System.DateTime"},
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "service",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "account",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInformation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ChargeItem.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.Concept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Claim",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "subType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "use", "type": "System.String"},
        {"name": "patient", "type": "Reference"},
        {
          "name": "billablePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "created", "type": "System.DateTime"},
        {"name": "enterer", "type": "Reference"},
        {"name": "insurer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "fundsReserve", "type": "System.Concept"},
        {
          "name": "related",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prescription", "type": "Reference"},
        {"name": "originalPrescription", "type": "Reference"},
        {"name": "payee", "type": "Claim.PayeeComponent"},
        {"name": "referral", "type": "Reference"},
        {"name": "facility", "type": "Reference"},
        {
          "name": "careTeam",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "information",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosis",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedure",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "insurance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "accident", "type": "Claim.AccidentComponent"},
        {
          "name": "employmentImpacted",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "hospitalization",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "total", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.AccidentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "System.DateTime"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.CareTeamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "provider", "type": "Reference"},
        {"name": "responsible", "type": "System.Boolean"},
        {"name": "role", "type": "System.Concept"},
        {"name": "qualification", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.DiagnosisComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {
          "name": "diagnosis",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "packageCode", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.InformationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "category", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.InsuranceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "focal", "type": "System.Boolean"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "System.String"},
        {
          "name": "preAuthRef",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "claimResponse", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Item.Detail.SubDetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Item.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subDetail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {
          "name": "careTeamLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosisLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "informationLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviced",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "System.Concept"},
        {
          "name": "subSite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "encounter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.PayeeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "resourceType", "type": "System.Code"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.ProcedureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "date", "type": "System.DateTime"},
        {
          "name": "procedure",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "claim", "type": "Reference"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "reference", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ClaimResponse",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "patient", "type": "Reference"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "insurer", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "disposition", "type": "System.String"},
        {"name": "payeeType", "type": "System.Concept"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "addItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "error",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "totalCost", "type": "System.Quantity"},
        {"name": "unallocDeductable", "type": "System.Quantity"},
        {"name": "totalBenefit", "type": "System.Quantity"},
        {"name": "payment", "type": "ClaimResponse.PaymentComponent"},
        {"name": "reserved", "type": "System.Code"},
        {"name": "form", "type": "System.Concept"},
        {
          "name": "processNote",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communicationRequest",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "insurance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.AddItem.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "System.Quantity"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ClaimResponse.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.AddItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "sequenceLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "System.Quantity"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ClaimResponse.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.ErrorComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {"name": "detailSequenceLinkId", "type": "System.Integer"},
        {"name": "subdetailSequenceLinkId", "type": "System.Integer"},
        {"name": "code", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.InsuranceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "focal", "type": "System.Boolean"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "System.String"},
        {
          "name": "preAuthRef",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "claimResponse", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Item.AdjudicationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "amount", "type": "System.Quantity"},
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Item.Detail.SubDetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ClaimResponse.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Item.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ClaimResponse.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "subDetail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.PaymentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "adjustment", "type": "System.Quantity"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "amount", "type": "System.Quantity"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.ProcessNoteComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "number", "type": "System.Integer"},
        {"name": "type", "type": "System.Concept"},
        {"name": "text", "type": "System.String"},
        {"name": "language", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ClinicalImpression",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "type": "System.DateTime"},
        {"name": "assessor", "type": "Reference"},
        {"name": "previous", "type": "Reference"},
        {
          "name": "problem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "investigation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "protocol",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "summary", "type": "System.String"},
        {
          "name": "finding",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prognosisCodeableConcept",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prognosisReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.FindingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "basis", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.InvestigationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CodeSystem",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "caseSensitive", "type": "System.Boolean"},
        {"name": "valueSet", "type": "System.String"},
        {"name": "hierarchyMeaning", "type": "System.String"},
        {"name": "compositional", "type": "System.Boolean"},
        {"name": "versionNeeded", "type": "System.Boolean"},
        {"name": "content", "type": "System.String"},
        {"name": "count", "type": "System.Integer"},
        {
          "name": "filter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "concept",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Concept.DesignationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "System.String"},
        {"name": "use", "type": "System.Code"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Concept.PropertyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
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
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.ConceptComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {
          "name": "designation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "concept",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "CodeSystem.ConceptComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.FilterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {
          "name": "operator",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.PropertyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "uri", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "type", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Communication",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Communication",
      "primaryCodePath": "reasonCode",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "notDone", "type": "System.Boolean"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "medium",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "type": "Reference"},
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "Reference"},
        {"name": "sent", "type": "System.DateTime"},
        {"name": "received", "type": "System.DateTime"},
        {"name": "sender", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "payload",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Communication.PayloadComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CommunicationRequest",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "System.String"},
        {
          "name": "medium",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "type": "Reference"},
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "Reference"},
        {
          "name": "payload",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "sender", "type": "Reference"},
        {
          "name": "requester",
          "type": "CommunicationRequest.RequesterComponent"
        },
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest.PayloadComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "agent", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CompartmentDefinition",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "search", "type": "System.Boolean"},
        {
          "name": "resource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentDefinition.ResourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Composition",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "class", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {
          "name": "author",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "type": "System.String"},
        {"name": "confidentiality", "type": "System.String"},
        {
          "name": "attester",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "custodian", "type": "Reference"},
        {
          "name": "relatesTo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "event",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "section",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.AttesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "mode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "time", "type": "System.DateTime"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.EventComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.RelatesToComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {
          "name": "target",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.SectionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "text", "type": "Narrative"},
        {"name": "mode", "type": "System.String"},
        {"name": "orderedBy", "type": "System.Concept"},
        {
          "name": "entry",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "emptyReason", "type": "System.Concept"},
        {
          "name": "section",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "Composition.SectionComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ConceptMap",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {
          "name": "source",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "target",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "group",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Group.Element.Target.DependsOnComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "property", "type": "System.String"},
        {"name": "system", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Group.Element.TargetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "equivalence", "type": "System.String"},
        {"name": "comment", "type": "System.String"},
        {
          "name": "dependsOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ConceptMap.Group.Element.Target.DependsOnComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Group.ElementComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Group.UnmappedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.GroupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "System.String"},
        {"name": "target", "type": "System.String"},
        {
          "name": "element",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "unmapped", "type": "ConceptMap.Group.UnmappedComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Condition",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "clinicalStatus", "type": "System.String"},
        {"name": "verificationStatus", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "severity", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {
          "name": "bodySite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "onset",
          "typeSpecifier": {
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
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "abatement",
          "typeSpecifier": {
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
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "assertedDate", "type": "System.DateTime"},
        {"name": "asserter", "type": "Reference"},
        {"name": "stage", "type": "Condition.StageComponent"},
        {
          "name": "evidence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition.EvidenceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition.StageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "summary", "type": "System.Concept"},
        {
          "name": "assessment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Consent",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "dateTime", "type": "System.DateTime"},
        {
          "name": "consentingParty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "actor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "organization",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "source",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "policy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "purpose",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dataPeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "data",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "except",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.ActorComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.Concept"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.DataComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "meaning", "type": "System.String"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Except.ActorComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.Concept"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Except.DataComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "meaning", "type": "System.String"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.ExceptComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "actor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "purpose",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "class",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dataPeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "data",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.PolicyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authority", "type": "System.String"},
        {"name": "uri", "type": "System.String"},
        {"name": "Rule", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContactDetail",
      "baseType": "Element",
      "retrievable": false,
      "label": "ContactDetail",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContactPoint",
      "baseType": "Element",
      "retrievable": false,
      "label": "ContactPoint",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "Contract",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Contract",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "issued", "type": "System.DateTime"},
        {
          "name": "applies",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "subject",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "authority",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "domain",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {
          "name": "subType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "decisionType", "type": "System.Concept"},
        {"name": "contentDerivative", "type": "System.Concept"},
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "agent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "signer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valuedItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "term",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "binding",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "friendly",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "legal",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.AgentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "type": "Reference"},
        {
          "name": "role",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.FriendlyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.LegalComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.SignerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Code"},
        {"name": "party", "type": "Reference"},
        {
          "name": "signature",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Term.AgentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "type": "Reference"},
        {
          "name": "role",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Term.ValuedItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entity",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.TermComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "issued", "type": "System.DateTime"},
        {
          "name": "applies",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "subType", "type": "System.Concept"},
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "agent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "type": "System.String"},
        {
          "name": "valuedItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "group",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "Contract.TermComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.ValuedItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entity",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contributor",
      "baseType": "Element",
      "retrievable": false,
      "label": "Contributor",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Coverage",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "policyHolder", "type": "Reference"},
        {"name": "subscriber", "type": "Reference"},
        {"name": "beneficiary", "type": "Reference"},
        {"name": "relationship", "type": "System.Concept"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "payor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "grouping", "type": "Coverage.GroupingComponent"},
        {"name": "dependent", "type": "System.String"},
        {"name": "sequence", "type": "System.String"},
        {"name": "order", "type": "System.Integer"},
        {"name": "network", "type": "System.String"},
        {
          "name": "contract",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Coverage.GroupingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "group", "type": "System.String"},
        {"name": "subGroup", "type": "System.String"},
        {"name": "plan", "type": "System.String"},
        {"name": "subPlan", "type": "System.String"},
        {"name": "class", "type": "System.String"},
        {"name": "subClass", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DataElement",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {"name": "stringency", "type": "System.String"},
        {
          "name": "mapping",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "element",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElement.MappingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identity", "type": "System.String"},
        {"name": "uri", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataRequirement",
      "baseType": "Element",
      "retrievable": false,
      "label": "DataRequirement",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {
          "name": "profile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "mustSupport",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "codeFilter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dateFilter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DetectedIssue",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DetectedIssue",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "severity", "type": "System.String"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"},
        {
          "name": "implicated",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "detail", "type": "System.String"},
        {"name": "reference", "type": "System.String"},
        {
          "name": "mitigation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DetectedIssue.MitigationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "type": "System.Concept"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Device",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "udi", "type": "Device.UdiComponent"},
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "lotNumber", "type": "System.String"},
        {"name": "manufacturer", "type": "System.String"},
        {"name": "manufactureDate", "type": "System.DateTime"},
        {"name": "expirationDate", "type": "System.DateTime"},
        {"name": "model", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "patient", "type": "Reference"},
        {"name": "owner", "type": "Reference"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {"name": "url", "type": "System.String"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "safety",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Device.UdiComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "deviceIdentifier", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "jurisdiction", "type": "System.String"},
        {"name": "carrierHRF", "type": "System.String"},
        {"name": "carrierAIDC", "type": "System.String"},
        {"name": "issuer", "type": "System.String"},
        {"name": "entryType", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DeviceComponent",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "System.Concept"},
        {"name": "lastSystemChange", "type": "System.DateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {
          "name": "operationalStatus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "parameterGroup", "type": "System.Concept"},
        {"name": "measurementPrinciple", "type": "System.String"},
        {
          "name": "productionSpecification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "languageCode", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent.ProductionSpecificationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "specType", "type": "System.Concept"},
        {"name": "componentId", "type": "Identifier"},
        {"name": "productionSpec", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetric",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DeviceMetric",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "System.Concept"},
        {"name": "unit", "type": "System.Concept"},
        {"name": "source", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {"name": "operationalStatus", "type": "System.String"},
        {"name": "color", "type": "System.String"},
        {"name": "category", "type": "System.String"},
        {"name": "measurementPeriod", "type": "Timing"},
        {
          "name": "calibration",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetric.CalibrationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "state", "type": "System.String"},
        {"name": "time", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DeviceRequest",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "priorRequest",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "intent", "type": "System.Concept"},
        {"name": "priority", "type": "System.String"},
        {
          "name": "code",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
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
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "requester", "type": "DeviceRequest.RequesterComponent"},
        {"name": "performerType", "type": "System.Concept"},
        {"name": "performer", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRequest.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "agent", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DeviceUseStatement",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "whenUsed",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "recordedOn", "type": "System.DateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {
          "name": "indication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "System.Concept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DiagnosticReport",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "issued", "type": "System.DateTime"},
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimen",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "result",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "imagingStudy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "image",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "conclusion", "type": "System.String"},
        {
          "name": "codedDiagnosis",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "presentedForm",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport.ImageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "comment", "type": "System.String"},
        {"name": "link", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport.PerformerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.Concept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DocumentManifest",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "masterIdentifier", "type": "Identifier"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "System.DateTime"},
        {
          "name": "author",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {
          "name": "content",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "related",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest.ContentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "p",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "ref", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DocumentReference",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "masterIdentifier", "type": "Identifier"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "docStatus", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "class", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "indexed", "type": "System.DateTime"},
        {
          "name": "author",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authenticator", "type": "Reference"},
        {"name": "custodian", "type": "Reference"},
        {
          "name": "relatesTo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "DocumentReference.ContextComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.ContentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "attachment", "type": "Attachment"},
        {"name": "format", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Context.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "ref", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.ContextComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "type": "Reference"},
        {
          "name": "event",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "facilityType", "type": "System.Concept"},
        {"name": "practiceSetting", "type": "System.Concept"},
        {"name": "sourcePatientInfo", "type": "Reference"},
        {
          "name": "related",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.RelatesToComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DomainResource",
      "baseType": "Resource",
      "retrievable": true,
      "label": "DomainResource",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Dosage",
      "baseType": "Element",
      "retrievable": false,
      "label": "Dosage",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "text", "type": "System.String"},
        {
          "name": "additionalInstruction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patientInstruction", "type": "System.String"},
        {"name": "timing", "type": "Timing"},
        {
          "name": "asNeeded",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
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
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {
          "name": "dose",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "maxDosePerPeriod", "type": "System.Ratio"},
        {"name": "maxDosePerAdministration", "type": "System.Quantity"},
        {"name": "maxDosePerLifetime", "type": "System.Quantity"},
        {
          "name": "rate",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Element",
      "retrievable": false,
      "label": "Element",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition",
      "baseType": "Element",
      "retrievable": false,
      "label": "ElementDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "path", "type": "System.String"},
        {
          "name": "representation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sliceName", "type": "System.String"},
        {"name": "label", "type": "System.String"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "slicing", "type": "Element"},
        {"name": "short", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "comment", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {
          "name": "alias",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "base", "type": "Element"},
        {"name": "contentReference", "type": "System.String"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "defaultValue",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "meaningWhenMissing", "type": "System.String"},
        {"name": "orderMeaning", "type": "System.String"},
        {
          "name": "fixed",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "pattern",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "example",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "minValue",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
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
        {
          "name": "maxValue",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
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
        {"name": "maxLength", "type": "System.Integer"},
        {
          "name": "condition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "constraint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mustSupport", "type": "System.Boolean"},
        {"name": "isModifier", "type": "System.Boolean"},
        {"name": "isSummary", "type": "System.Boolean"},
        {"name": "binding", "type": "Element"},
        {
          "name": "mapping",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EligibilityRequest",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "patient", "type": "Reference"},
        {
          "name": "serviced",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "created", "type": "System.DateTime"},
        {"name": "enterer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "insurer", "type": "Reference"},
        {"name": "facility", "type": "Reference"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "System.String"},
        {"name": "benefitCategory", "type": "System.Concept"},
        {"name": "benefitSubCategory", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EligibilityResponse",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "disposition", "type": "System.String"},
        {"name": "insurer", "type": "Reference"},
        {"name": "inforce", "type": "System.Boolean"},
        {
          "name": "insurance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "form", "type": "System.Concept"},
        {
          "name": "error",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.ErrorComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.Insurance.BenefitBalance.FinancialComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {
          "name": "allowed",
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
                "name": "{urn:hl7-org:elm-types:r1}String",
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
        {
          "name": "used",
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
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.Insurance.BenefitBalanceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "System.Concept"},
        {"name": "subCategory", "type": "System.Concept"},
        {"name": "excluded", "type": "System.Boolean"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "network", "type": "System.Concept"},
        {"name": "unit", "type": "System.Concept"},
        {"name": "term", "type": "System.Concept"},
        {
          "name": "financial",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.InsuranceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "coverage", "type": "Reference"},
        {"name": "contract", "type": "Reference"},
        {
          "name": "benefitBalance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Encounter",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "class", "type": "System.Code"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "episodeOfCare",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "incomingReferral",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointment", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "length", "type": "System.Quantity"},
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosis",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "account",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hospitalization",
          "type": "Encounter.HospitalizationComponent"
        },
        {
          "name": "location",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "serviceProvider", "type": "Reference"},
        {"name": "partOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.ClassHistoryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "class", "type": "System.Code"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.DiagnosisComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "condition", "type": "Reference"},
        {"name": "role", "type": "System.Concept"},
        {"name": "rank", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.HospitalizationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "preAdmissionIdentifier", "type": "Identifier"},
        {"name": "origin", "type": "Reference"},
        {"name": "admitSource", "type": "System.Concept"},
        {"name": "reAdmission", "type": "System.Concept"},
        {
          "name": "dietPreference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialCourtesy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialArrangement",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "destination", "type": "Reference"},
        {"name": "dischargeDisposition", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.LocationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {"name": "status", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "individual", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.StatusHistoryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Endpoint",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Endpoint",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "connectionType", "type": "System.Code"},
        {"name": "name", "type": "System.String"},
        {"name": "managingOrganization", "type": "Reference"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "payloadType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "payloadMimeType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "System.String"},
        {
          "name": "header",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EnrollmentRequest",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "insurer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {"name": "coverage", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EnrollmentResponse",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "disposition", "type": "System.String"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EpisodeOfCare",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosis",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {"name": "managingOrganization", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "referralRequest",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "careManager", "type": "Reference"},
        {
          "name": "team",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "account",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare.DiagnosisComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "condition", "type": "Reference"},
        {"name": "role", "type": "System.Concept"},
        {"name": "rank", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare.StatusHistoryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ExpansionProfile",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "fixedVersion",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "excludedSystem",
          "type": "ExpansionProfile.ExcludedSystemComponent"
        },
        {"name": "includeDesignations", "type": "System.Boolean"},
        {
          "name": "designation",
          "type": "ExpansionProfile.DesignationComponent"
        },
        {"name": "includeDefinition", "type": "System.Boolean"},
        {"name": "activeOnly", "type": "System.Boolean"},
        {"name": "excludeNested", "type": "System.Boolean"},
        {"name": "excludeNotForUI", "type": "System.Boolean"},
        {"name": "excludePostCoordinated", "type": "System.Boolean"},
        {"name": "displayLanguage", "type": "System.String"},
        {"name": "limitedExpansion", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation.Exclude.DesignationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "System.String"},
        {"name": "use", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation.ExcludeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "designation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation.Include.DesignationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "System.String"},
        {"name": "use", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation.IncludeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "designation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.DesignationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "include",
          "type": "ExpansionProfile.Designation.IncludeComponent"
        },
        {
          "name": "exclude",
          "type": "ExpansionProfile.Designation.ExcludeComponent"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.ExcludedSystemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "System.String"},
        {"name": "version", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.FixedVersionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "mode", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ExplanationOfBenefit",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "subType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {
          "name": "billablePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "created", "type": "System.DateTime"},
        {"name": "enterer", "type": "Reference"},
        {"name": "insurer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "referral", "type": "Reference"},
        {"name": "facility", "type": "Reference"},
        {"name": "claim", "type": "Reference"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "disposition", "type": "System.String"},
        {
          "name": "related",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prescription", "type": "Reference"},
        {"name": "originalPrescription", "type": "Reference"},
        {"name": "payee", "type": "ExplanationOfBenefit.PayeeComponent"},
        {
          "name": "information",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "careTeam",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosis",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedure",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "precedence", "type": "System.Integer"},
        {
          "name": "insurance",
          "type": "ExplanationOfBenefit.InsuranceComponent"
        },
        {"name": "accident", "type": "ExplanationOfBenefit.AccidentComponent"},
        {
          "name": "employmentImpacted",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "hospitalization",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "addItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "totalCost", "type": "System.Quantity"},
        {"name": "unallocDeductable", "type": "System.Quantity"},
        {"name": "totalBenefit", "type": "System.Quantity"},
        {"name": "payment", "type": "ExplanationOfBenefit.PaymentComponent"},
        {"name": "form", "type": "System.Concept"},
        {
          "name": "processNote",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "benefitBalance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.AccidentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "System.DateTime"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.AddItem.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "System.Quantity"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ExplanationOfBenefit.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.AddItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "sequenceLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "System.Quantity"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ExplanationOfBenefit.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.BenefitBalance.FinancialComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {
          "name": "allowed",
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
                "name": "{urn:hl7-org:elm-types:r1}String",
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
        {
          "name": "used",
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
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.BenefitBalanceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "System.Concept"},
        {"name": "subCategory", "type": "System.Concept"},
        {"name": "excluded", "type": "System.Boolean"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "network", "type": "System.Concept"},
        {"name": "unit", "type": "System.Concept"},
        {"name": "term", "type": "System.Concept"},
        {
          "name": "financial",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.CareTeamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "provider", "type": "Reference"},
        {"name": "responsible", "type": "System.Boolean"},
        {"name": "role", "type": "System.Concept"},
        {"name": "qualification", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.DiagnosisComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {
          "name": "diagnosis",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "packageCode", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.InformationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "category", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "reason", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.InsuranceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "coverage", "type": "Reference"},
        {
          "name": "preAuthRef",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Item.AdjudicationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "amount", "type": "System.Quantity"},
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Item.Detail.SubDetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "type", "type": "System.Concept"},
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ExplanationOfBenefit.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Item.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "type", "type": "System.Concept"},
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ExplanationOfBenefit.Item.AdjudicationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "subDetail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {
          "name": "careTeamLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosisLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "informationLinkId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "service", "type": "System.Concept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviced",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "System.Quantity"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "net", "type": "System.Quantity"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "System.Concept"},
        {
          "name": "subSite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "encounter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.PayeeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "resourceType", "type": "System.Concept"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.PaymentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "adjustment", "type": "System.Quantity"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "amount", "type": "System.Quantity"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.ProcedureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "System.Integer"},
        {"name": "date", "type": "System.DateTime"},
        {
          "name": "procedure",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.ProcessNoteComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "number", "type": "System.Integer"},
        {"name": "type", "type": "System.Concept"},
        {"name": "text", "type": "System.String"},
        {"name": "language", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "claim", "type": "Reference"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "reference", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "label": "Extension",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "FamilyMemberHistory",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "notDone", "type": "System.Boolean"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "name", "type": "System.String"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "gender", "type": "System.String"},
        {
          "name": "born",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
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
        {
          "name": "age",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "estimatedAge", "type": "System.Boolean"},
        {
          "name": "deceased",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
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
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory.ConditionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "outcome", "type": "System.Concept"},
        {
          "name": "onset",
          "typeSpecifier": {
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
              }
            ]
          }
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Flag",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Flag",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "encounter", "type": "Reference"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Goal",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "System.Concept"},
        {"name": "description", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "start",
          "typeSpecifier": {
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
        {"name": "target", "type": "Goal.TargetComponent"},
        {"name": "statusDate", "type": "System.DateTime"},
        {"name": "statusReason", "type": "System.String"},
        {"name": "expressedBy", "type": "Reference"},
        {
          "name": "addresses",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "outcomeCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "outcomeReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Goal.TargetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measure", "type": "System.Concept"},
        {
          "name": "detail",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "due",
          "typeSpecifier": {
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
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "GraphDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "start", "type": "System.String"},
        {"name": "profile", "type": "System.String"},
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition.Link.Target.CompartmentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "rule", "type": "System.String"},
        {"name": "expression", "type": "System.String"},
        {"name": "description", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition.Link.TargetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "profile", "type": "System.String"},
        {
          "name": "compartment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "link",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "GraphDefinition.LinkComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition.LinkComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "path", "type": "System.String"},
        {"name": "sliceName", "type": "System.String"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Group",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {"name": "type", "type": "System.String"},
        {"name": "actual", "type": "System.Boolean"},
        {"name": "code", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "quantity", "type": "System.Integer"},
        {
          "name": "characteristic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "member",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group.CharacteristicComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
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
        {"name": "exclude", "type": "System.Boolean"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group.MemberComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "entity", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "inactive", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GuidanceResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "GuidanceResponse",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "requestId", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "module", "type": "Reference"},
        {"name": "status", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "occurrenceDateTime", "type": "System.DateTime"},
        {"name": "performer", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "evaluationMessage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "outputParameters", "type": "Reference"},
        {"name": "result", "type": "Reference"},
        {
          "name": "dataRequirement",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "HealthcareService",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {"name": "providedBy", "type": "Reference"},
        {"name": "category", "type": "System.Concept"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "location",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "comment", "type": "System.String"},
        {"name": "extraDetails", "type": "System.String"},
        {"name": "photo", "type": "Attachment"},
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "coverageArea",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviceProvisionCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "eligibility", "type": "System.Concept"},
        {
          "name": "programName",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "characteristic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "referralMethod",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentRequired", "type": "System.Boolean"},
        {
          "name": "availableTime",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "notAvailable",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "availabilityExceptions", "type": "System.String"},
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.AvailableTimeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "daysOfWeek",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allDay", "type": "System.Boolean"},
        {"name": "availableStartTime", "type": "System.Time"},
        {"name": "availableEndTime", "type": "System.Time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.NotAvailableComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "during",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "label": "HumanName",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "use", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {"name": "family", "type": "System.String"},
        {
          "name": "given",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prefix",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "suffix",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Identifier",
      "baseType": "Element",
      "retrievable": false,
      "label": "Identifier",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "ImagingManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ImagingManifest",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "patient", "type": "Reference"},
        {"name": "authoringTime", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "description", "type": "System.String"},
        {
          "name": "study",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.Study.Series.InstanceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sopClass", "type": "System.String"},
        {"name": "uid", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.Study.SeriesComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "System.String"},
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.StudyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "System.String"},
        {"name": "imagingStudy", "type": "Reference"},
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "series",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ImagingStudy",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "System.String"},
        {"name": "accession", "type": "Identifier"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "availability", "type": "System.String"},
        {
          "name": "modalityList",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "started", "type": "System.DateTime"},
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "referrer", "type": "Reference"},
        {
          "name": "interpreter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "numberOfSeries", "type": "System.Integer"},
        {"name": "numberOfInstances", "type": "System.Integer"},
        {
          "name": "procedureReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reason", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {
          "name": "series",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.Series.InstanceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "System.String"},
        {"name": "number", "type": "System.Integer"},
        {"name": "sopClass", "type": "System.String"},
        {"name": "title", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.SeriesComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "System.String"},
        {"name": "number", "type": "System.Integer"},
        {"name": "modality", "type": "System.Code"},
        {"name": "description", "type": "System.String"},
        {"name": "numberOfInstances", "type": "System.Integer"},
        {"name": "availability", "type": "System.String"},
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "System.Code"},
        {"name": "laterality", "type": "System.Code"},
        {"name": "started", "type": "System.DateTime"},
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Immunization",
      "primaryCodePath": "vaccineCode",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "notGiven", "type": "System.Boolean"},
        {"name": "vaccineCode", "type": "System.Concept"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "primarySource", "type": "System.Boolean"},
        {"name": "reportOrigin", "type": "System.Concept"},
        {"name": "location", "type": "Reference"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "lotNumber", "type": "System.String"},
        {"name": "expirationDate", "type": "System.DateTime"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "doseQuantity", "type": "System.Quantity"},
        {
          "name": "practitioner",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "explanation", "type": "Immunization.ExplanationComponent"},
        {
          "name": "reaction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "vaccinationProtocol",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.ExplanationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.PractitionerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.Concept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.ReactionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "System.DateTime"},
        {"name": "detail", "type": "Reference"},
        {"name": "reported", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.VaccinationProtocolComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "doseSequence", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "System.String"},
        {
          "name": "targetDisease",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "doseStatus", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ImmunizationRecommendation",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {
          "name": "recommendation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name":
          "ImmunizationRecommendation.Recommendation.DateCriterionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "value", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.Recommendation.ProtocolComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "doseSequence", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.RecommendationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "System.DateTime"},
        {"name": "vaccineCode", "type": "System.Concept"},
        {"name": "targetDisease", "type": "System.Concept"},
        {"name": "doseNumber", "type": "System.Integer"},
        {"name": "forecastStatus", "type": "System.Concept"},
        {
          "name": "dateCriterion",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "protocol",
          "type": "ImmunizationRecommendation.Recommendation.ProtocolComponent"
        },
        {
          "name": "supportingImmunization",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingPatientInformation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ImplementationGuide",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {"name": "fhirVersion", "type": "System.String"},
        {
          "name": "dependency",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "package",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "global",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "binary",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "page", "type": "ImplementationGuide.PageComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.DependencyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "uri", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.GlobalComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.Package.ResourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "example", "type": "System.Boolean"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "acronym", "type": "System.String"},
        {
          "name": "source",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "exampleFor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.PackageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {
          "name": "resource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.PageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "kind", "type": "System.String"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "package",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "format", "type": "System.String"},
        {
          "name": "page",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ImplementationGuide.PageComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Library",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Library",
      "primaryCodePath": "topic",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "type", "type": "System.Concept"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {"name": "usage", "type": "System.String"},
        {"name": "approvalDate", "type": "System.DateTime"},
        {"name": "lastReviewDate", "type": "System.DateTime"},
        {
          "name": "effectivePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contributor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "parameter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dataRequirement",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Linkage",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Linkage",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {"name": "author", "type": "Reference"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Linkage.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "List",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "List",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "mode", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "orderedBy", "type": "System.Concept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entry",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "emptyReason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "List.EntryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "flag", "type": "System.Concept"},
        {"name": "deleted", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "item", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Location",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "operationalStatus", "type": "System.Code"},
        {"name": "name", "type": "System.String"},
        {
          "name": "alias",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "mode", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "Address"},
        {"name": "physicalType", "type": "System.Concept"},
        {"name": "position", "type": "Location.PositionComponent"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "partOf", "type": "Reference"},
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Location.PositionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "longitude", "type": "System.Decimal"},
        {"name": "latitude", "type": "System.Decimal"},
        {"name": "altitude", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Measure",
      "primaryCodePath": "topic",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {"name": "usage", "type": "System.String"},
        {"name": "approvalDate", "type": "System.DateTime"},
        {"name": "lastReviewDate", "type": "System.DateTime"},
        {
          "name": "effectivePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contributor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "disclaimer", "type": "System.String"},
        {"name": "scoring", "type": "System.Concept"},
        {"name": "compositeScoring", "type": "System.Concept"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "riskAdjustment", "type": "System.String"},
        {"name": "rateAggregation", "type": "System.String"},
        {"name": "rationale", "type": "System.String"},
        {"name": "clinicalRecommendationStatement", "type": "System.String"},
        {"name": "improvementNotation", "type": "System.String"},
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "guidance", "type": "System.String"},
        {"name": "set", "type": "System.String"},
        {
          "name": "group",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supplementalData",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.Group.PopulationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "criteria", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.Group.StratifierComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "criteria", "type": "System.String"},
        {"name": "path", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.GroupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "stratifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.SupplementalDataComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "usage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "criteria", "type": "System.String"},
        {"name": "path", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MeasureReport",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "measure", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "reportingOrganization", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "group",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "evaluatedResources", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group.PopulationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "System.Concept"},
        {"name": "count", "type": "System.Integer"},
        {"name": "patients", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group.Stratifier.Stratum.PopulationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "System.Concept"},
        {"name": "count", "type": "System.Integer"},
        {"name": "patients", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group.Stratifier.StratumComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"},
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measureScore", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group.StratifierComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "stratum",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.GroupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measureScore", "type": "System.Decimal"},
        {
          "name": "stratifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Media",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Media",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "subtype", "type": "System.Concept"},
        {"name": "view", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "operator", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "device", "type": "Reference"},
        {"name": "height", "type": "System.Integer"},
        {"name": "width", "type": "System.Integer"},
        {"name": "frames", "type": "System.Integer"},
        {"name": "duration", "type": "System.Integer"},
        {"name": "content", "type": "Attachment"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Medication",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "status", "type": "System.String"},
        {"name": "isBrand", "type": "System.Boolean"},
        {"name": "isOverTheCounter", "type": "System.Boolean"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "form", "type": "System.Concept"},
        {
          "name": "ingredient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "package", "type": "Medication.PackageComponent"},
        {
          "name": "image",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.IngredientComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "isActive", "type": "System.Boolean"},
        {"name": "amount", "type": "System.Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Package.BatchComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "lotNumber", "type": "System.String"},
        {"name": "expirationDate", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Package.ContentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "amount", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.PackageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "container", "type": "System.Concept"},
        {
          "name": "content",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "batch",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MedicationAdministration",
      "primaryCodePath": "medication",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "supportingInformation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "notGiven", "type": "System.Boolean"},
        {
          "name": "reasonNotGiven",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prescription", "type": "Reference"},
        {
          "name": "device",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "dosage", "type": "MedicationAdministration.DosageComponent"},
        {
          "name": "eventHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration.DosageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "type": "System.String"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "dose", "type": "System.Quantity"},
        {
          "name": "rate",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration.PerformerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MedicationDispense",
      "primaryCodePath": "medication",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "supportingInformation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "authorizingPrescription",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "daysSupply", "type": "System.Quantity"},
        {"name": "whenPrepared", "type": "System.DateTime"},
        {"name": "whenHandedOver", "type": "System.DateTime"},
        {"name": "destination", "type": "Reference"},
        {
          "name": "receiver",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dosageInstruction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "substitution",
          "type": "MedicationDispense.SubstitutionComponent"
        },
        {
          "name": "detectedIssue",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "notDone", "type": "System.Boolean"},
        {
          "name": "eventHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.PerformerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.SubstitutionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "wasSubstituted", "type": "System.Boolean"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "responsibleParty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MedicationRequest",
      "primaryCodePath": "medication",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "intent", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "priority", "type": "System.String"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "supportingInformation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "requester", "type": "MedicationRequest.RequesterComponent"},
        {"name": "recorder", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dosageInstruction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dispenseRequest",
          "type": "MedicationRequest.DispenseRequestComponent"
        },
        {
          "name": "substitution",
          "type": "MedicationRequest.SubstitutionComponent"
        },
        {"name": "priorPrescription", "type": "Reference"},
        {
          "name": "detectedIssue",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "eventHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest.DispenseRequestComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "validityPeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "numberOfRepeatsAllowed", "type": "System.Integer"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "expectedSupplyDuration", "type": "System.Quantity"},
        {"name": "performer", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "agent", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest.SubstitutionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allowed", "type": "System.Boolean"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MedicationStatement",
      "primaryCodePath": "medication",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "Reference"},
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "dateAsserted", "type": "System.DateTime"},
        {"name": "informationSource", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "derivedFrom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "taken", "type": "System.String"},
        {
          "name": "reasonNotTaken",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dosage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MessageDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "base", "type": "Reference"},
        {
          "name": "parent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "event", "type": "System.Code"},
        {"name": "category", "type": "System.String"},
        {
          "name": "focus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "responseRequired", "type": "System.Boolean"},
        {
          "name": "allowedResponse",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageDefinition.AllowedResponseComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "message", "type": "Reference"},
        {"name": "situation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageDefinition.FocusComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "profile", "type": "Reference"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MessageHeader",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "event", "type": "System.Code"},
        {
          "name": "destination",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "receiver", "type": "Reference"},
        {"name": "sender", "type": "Reference"},
        {"name": "timestamp", "type": "System.DateTime"},
        {"name": "enterer", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "source", "type": "MessageHeader.SourceComponent"},
        {"name": "responsible", "type": "Reference"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "response", "type": "MessageHeader.ResponseComponent"},
        {
          "name": "focus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.DestinationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "target", "type": "Reference"},
        {"name": "endpoint", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.ResponseComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "details", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.SourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "software", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "contact", "type": "ContactPoint"},
        {"name": "endpoint", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Meta",
      "baseType": "Element",
      "retrievable": false,
      "label": "Meta",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "versionId", "type": "System.String"},
        {"name": "lastUpdated", "type": "System.DateTime"},
        {
          "name": "profile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "security",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "tag",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "NamingSystem",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "kind", "type": "System.String"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "responsible", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "usage", "type": "System.String"},
        {
          "name": "uniqueId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "replacedBy", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem.UniqueIdComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "value", "type": "System.String"},
        {"name": "preferred", "type": "System.Boolean"},
        {"name": "comment", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Narrative",
      "baseType": "Element",
      "retrievable": false,
      "label": "Narrative",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "div", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "NutritionOrder",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "orderer", "type": "Reference"},
        {
          "name": "allergyIntolerance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "foodPreferenceModifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "excludeFoodModifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "oralDiet", "type": "NutritionOrder.OralDietComponent"},
        {
          "name": "supplement",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "enteralFormula",
          "type": "NutritionOrder.EnteralFormulaComponent"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.EnteralFormula.AdministrationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "schedule", "type": "Timing"},
        {"name": "quantity", "type": "System.Quantity"},
        {
          "name": "rate",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.EnteralFormulaComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "baseFormulaType", "type": "System.Concept"},
        {"name": "baseFormulaProductName", "type": "System.String"},
        {"name": "additiveType", "type": "System.Concept"},
        {"name": "additiveProductName", "type": "System.String"},
        {"name": "caloricDensity", "type": "System.Quantity"},
        {"name": "routeofAdministration", "type": "System.Concept"},
        {
          "name": "administration",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maxVolumeToDeliver", "type": "System.Quantity"},
        {"name": "administrationInstruction", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDiet.NutrientComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "modifier", "type": "System.Concept"},
        {"name": "amount", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDiet.TextureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "modifier", "type": "System.Concept"},
        {"name": "foodType", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDietComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "schedule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "nutrient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "texture",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "fluidConsistencyType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "instruction", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.SupplementComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "productName", "type": "System.String"},
        {
          "name": "schedule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "instruction", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Observation",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "issued", "type": "System.DateTime"},
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "typeSpecifier": {
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
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
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
        {"name": "interpretation", "type": "System.Concept"},
        {"name": "comment", "type": "System.String"},
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "specimen", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {
          "name": "referenceRange",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "related",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation.ComponentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {
          "name": "value",
          "typeSpecifier": {
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
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
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
        {"name": "interpretation", "type": "System.Concept"},
        {
          "name": "referenceRange",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "Observation.ReferenceRangeComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation.ReferenceRangeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "low", "type": "System.Quantity"},
        {"name": "high", "type": "System.Quantity"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "appliesTo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "age",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "OperationDefinition",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "kind", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "idempotent", "type": "System.Boolean"},
        {"name": "code", "type": "System.String"},
        {"name": "comment", "type": "System.String"},
        {"name": "base", "type": "Reference"},
        {
          "name": "resource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "System.Boolean"},
        {"name": "type", "type": "System.Boolean"},
        {"name": "instance", "type": "System.Boolean"},
        {
          "name": "parameter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "overload",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.OverloadComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "parameterName",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Parameter.BindingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "strength", "type": "System.String"},
        {
          "name": "valueSet",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.ParameterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "use", "type": "System.String"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "searchType", "type": "System.String"},
        {"name": "profile", "type": "Reference"},
        {
          "name": "binding",
          "type": "OperationDefinition.Parameter.BindingComponent"
        },
        {
          "name": "part",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "OperationDefinition.ParameterComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "OperationOutcome",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "issue",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome.IssueComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "severity", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "details", "type": "System.Concept"},
        {"name": "diagnostics", "type": "System.String"},
        {
          "name": "location",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "expression",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Organization",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {
          "name": "alias",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "partOf", "type": "Reference"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Organization.ContactComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.Concept"},
        {"name": "name", "type": "HumanName"},
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "Address"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ParameterDefinition",
      "baseType": "Element",
      "retrievable": false,
      "label": "ParameterDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "use", "type": "System.String"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Parameters",
      "baseType": "Resource",
      "retrievable": true,
      "label": "Parameters",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {
          "name": "parameter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Parameters.ParameterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "resource", "type": "Resource"},
        {
          "name": "part",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "Parameters.ParameterComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Patient",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {
          "name": "name",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {
          "name": "deceased",
          "typeSpecifier": {
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
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maritalStatus", "type": "System.Concept"},
        {
          "name": "multipleBirth",
          "typeSpecifier": {
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
        {
          "name": "photo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "animal", "type": "Patient.AnimalComponent"},
        {
          "name": "communication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "generalPractitioner",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "managingOrganization", "type": "Reference"},
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.AnimalComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "species", "type": "System.Concept"},
        {"name": "breed", "type": "System.Concept"},
        {"name": "genderStatus", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.CommunicationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "System.Concept"},
        {"name": "preferred", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.ContactComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relationship",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "HumanName"},
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "Address"},
        {"name": "gender", "type": "System.String"},
        {"name": "organization", "type": "Reference"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.LinkComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "other", "type": "Reference"},
        {"name": "type", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentNotice",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "PaymentNotice",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "statusDate", "type": "System.DateTime"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "target", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "paymentStatus", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "PaymentReconciliation",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "disposition", "type": "System.String"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "form", "type": "System.Concept"},
        {"name": "total", "type": "System.Quantity"},
        {
          "name": "processNote",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.DetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "submitter", "type": "Reference"},
        {"name": "payee", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "amount", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.ProcessNoteComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Person",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Person",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "name",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "photo", "type": "Attachment"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "active", "type": "System.Boolean"},
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Person.LinkComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "target", "type": "Reference"},
        {"name": "assurance", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "PlanDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {"name": "usage", "type": "System.String"},
        {"name": "approvalDate", "type": "System.DateTime"},
        {"name": "lastReviewDate", "type": "System.DateTime"},
        {
          "name": "effectivePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contributor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goal",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action.ConditionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "expression", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action.DynamicValueComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "path", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "expression", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "role", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action.RelatedActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actionId", "type": "System.String"},
        {"name": "relationship", "type": "System.String"},
        {
          "name": "offset",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
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
      "name": "PlanDefinition.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "label", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "textEquivalent", "type": "System.String"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "documentation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goalId",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "triggerDefinition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "input",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "output",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedAction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Code"},
        {"name": "groupingBehavior", "type": "System.String"},
        {"name": "selectionBehavior", "type": "System.String"},
        {"name": "requiredBehavior", "type": "System.String"},
        {"name": "precheckBehavior", "type": "System.String"},
        {"name": "cardinalityBehavior", "type": "System.String"},
        {"name": "definition", "type": "Reference"},
        {"name": "transform", "type": "Reference"},
        {
          "name": "dynamicValue",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "PlanDefinition.ActionComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Goal.TargetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measure", "type": "System.Concept"},
        {
          "name": "detail",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "due", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.GoalComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "System.Concept"},
        {"name": "description", "type": "System.Concept"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "start", "type": "System.Concept"},
        {
          "name": "addresses",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "documentation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Practitioner",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {
          "name": "name",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {
          "name": "photo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "qualification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner.QualificationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "issuer", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "PractitionerRole",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "practitioner", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "location",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "healthcareService",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "availableTime",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "notAvailable",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "availabilityExceptions", "type": "System.String"},
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole.AvailableTimeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "daysOfWeek",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allDay", "type": "System.Boolean"},
        {"name": "availableStartTime", "type": "System.Time"},
        {"name": "availableEndTime", "type": "System.Time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole.NotAvailableComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "during",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Procedure",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "notDone", "type": "System.Boolean"},
        {"name": "category", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "performed",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "outcome", "type": "System.Concept"},
        {
          "name": "report",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "complication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "followUp",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "focalDevice",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "usedReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "usedCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.FocalDeviceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "type": "System.Concept"},
        {"name": "manipulated", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.PerformerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.Concept"},
        {"name": "actor", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ProcedureRequest",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "requisition", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "intent", "type": "System.String"},
        {"name": "priority", "type": "System.String"},
        {"name": "doNotPerform", "type": "System.Boolean"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "asNeeded",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
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
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "requester", "type": "ProcedureRequest.RequesterComponent"},
        {"name": "performerType", "type": "System.Concept"},
        {"name": "performer", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimen",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequest.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "agent", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ProcessRequest",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "action", "type": "System.String"},
        {"name": "target", "type": "Reference"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "nullify", "type": "System.Boolean"},
        {"name": "reference", "type": "System.String"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "include",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "exclude",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ProcessResponse",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "disposition", "type": "System.String"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "form", "type": "System.Concept"},
        {
          "name": "processNote",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "error",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communicationRequest",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse.ProcessNoteComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Provenance",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "recorded", "type": "System.DateTime"},
        {
          "name": "policy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "activity", "type": "System.Code"},
        {
          "name": "agent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "signature",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.AgentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "role",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "who",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "onBehalfOf",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "relatedAgentType", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.EntityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "System.String"},
        {
          "name": "what",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "agent",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "Provenance.AgentComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Quantity",
      "baseType": "Element",
      "retrievable": false,
      "label": "Quantity",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "System.String"},
        {"name": "unit", "type": "System.String"},
        {"name": "system", "type": "System.String"},
        {"name": "code", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Questionnaire",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {"name": "approvalDate", "type": "System.DateTime"},
        {"name": "lastReviewDate", "type": "System.DateTime"},
        {
          "name": "effectivePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subjectType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.Item.EnableWhenComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "question", "type": "System.String"},
        {"name": "hasAnswer", "type": "System.Boolean"},
        {
          "name": "answer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
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
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
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
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.Item.OptionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
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
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "linkId", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prefix", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {
          "name": "enableWhen",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "required", "type": "System.Boolean"},
        {"name": "repeats", "type": "System.Boolean"},
        {"name": "readOnly", "type": "System.Boolean"},
        {"name": "maxLength", "type": "System.Integer"},
        {"name": "options", "type": "Reference"},
        {
          "name": "option",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "initial",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
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
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
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
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "Questionnaire.ItemComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "QuestionnaireResponse",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "parent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "questionnaire", "type": "Reference"},
        {"name": "status", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "authored", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "source", "type": "Reference"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse.Item.AnswerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Integer",
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
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
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
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "QuestionnaireResponse.ItemComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "linkId", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "answer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "QuestionnaireResponse.ItemComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "label": "Reference",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reference", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "display", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ReferralRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ReferralRequest",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "intent", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "priority", "type": "System.String"},
        {
          "name": "serviceRequested",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "requester", "type": "ReferralRequest.RequesterComponent"},
        {"name": "specialty", "type": "System.Concept"},
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "supportingInfo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ReferralRequest.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "agent", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedArtifact",
      "baseType": "Element",
      "retrievable": false,
      "label": "RelatedArtifact",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "citation", "type": "System.String"},
        {"name": "url", "type": "System.String"},
        {"name": "document", "type": "Attachment"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedPerson",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "RelatedPerson",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {"name": "patient", "type": "Reference"},
        {"name": "relationship", "type": "System.Concept"},
        {
          "name": "name",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "photo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RequestGroup",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "RequestGroup",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "intent", "type": "System.String"},
        {"name": "priority", "type": "System.String"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RequestGroup.Action.ConditionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "expression", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RequestGroup.Action.RelatedActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actionId", "type": "System.String"},
        {"name": "relationship", "type": "System.String"},
        {
          "name": "offset",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
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
      "name": "RequestGroup.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "label", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "textEquivalent", "type": "System.String"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "documentation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedAction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Code"},
        {"name": "groupingBehavior", "type": "System.String"},
        {"name": "selectionBehavior", "type": "System.String"},
        {"name": "requiredBehavior", "type": "System.String"},
        {"name": "precheckBehavior", "type": "System.String"},
        {"name": "cardinalityBehavior", "type": "System.String"},
        {"name": "resource", "type": "Reference"},
        {
          "name": "action",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "RequestGroup.ActionComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResearchStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ResearchStudy",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "type": "System.String"},
        {
          "name": "protocol",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "focus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "keyword",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "enrollment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "sponsor", "type": "Reference"},
        {"name": "principalInvestigator", "type": "Reference"},
        {
          "name": "site",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reasonStopped", "type": "System.Concept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "arm",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResearchStudy.ArmComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "description", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResearchSubject",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ResearchSubject",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "study", "type": "Reference"},
        {"name": "individual", "type": "Reference"},
        {"name": "assignedArm", "type": "System.String"},
        {"name": "actualArm", "type": "System.String"},
        {"name": "consent", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Resource",
      "retrievable": true,
      "label": "Resource",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "RiskAssessment",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "basedOn", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {"name": "status", "type": "System.String"},
        {"name": "method", "type": "System.Concept"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "condition", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "basis",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prediction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mitigation", "type": "System.String"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment.PredictionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "outcome", "type": "System.Concept"},
        {
          "name": "probability",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "qualitativeRisk", "type": "System.Concept"},
        {"name": "relativeRisk", "type": "System.Decimal"},
        {
          "name": "when",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "rationale", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SampledData",
      "baseType": "Element",
      "retrievable": false,
      "label": "SampledData",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Schedule",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "System.Boolean"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {
          "name": "serviceType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "actor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "planningHorizon",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "SearchParameter",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {
          "name": "base",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "derivedFrom", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "expression", "type": "System.String"},
        {"name": "xpath", "type": "System.String"},
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "comparator",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "chain",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "component",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter.ComponentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "type": "Reference"},
        {"name": "expression", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Sequence",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "coordinateSystem", "type": "System.Integer"},
        {"name": "patient", "type": "Reference"},
        {"name": "specimen", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "referenceSeq", "type": "Sequence.ReferenceSeqComponent"},
        {
          "name": "variant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "observedSeq", "type": "System.String"},
        {
          "name": "quality",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "readCoverage", "type": "System.Integer"},
        {
          "name": "repository",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "pointer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.QualityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "standardSequence", "type": "System.Concept"},
        {"name": "start", "type": "System.Integer"},
        {"name": "end", "type": "System.Integer"},
        {"name": "score", "type": "System.Quantity"},
        {"name": "method", "type": "System.Concept"},
        {"name": "truthTP", "type": "System.Decimal"},
        {"name": "queryTP", "type": "System.Decimal"},
        {"name": "truthFN", "type": "System.Decimal"},
        {"name": "queryFP", "type": "System.Decimal"},
        {"name": "gtFP", "type": "System.Decimal"},
        {"name": "precision", "type": "System.Decimal"},
        {"name": "recall", "type": "System.Decimal"},
        {"name": "fScore", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.ReferenceSeqComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "chromosome", "type": "System.Concept"},
        {"name": "genomeBuild", "type": "System.String"},
        {"name": "referenceSeqId", "type": "System.Concept"},
        {"name": "referenceSeqPointer", "type": "Reference"},
        {"name": "referenceSeqString", "type": "System.String"},
        {"name": "strand", "type": "System.Integer"},
        {"name": "windowStart", "type": "System.Integer"},
        {"name": "windowEnd", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.RepositoryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "url", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "datasetId", "type": "System.String"},
        {"name": "variantsetId", "type": "System.String"},
        {"name": "readsetId", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.VariantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "start", "type": "System.Integer"},
        {"name": "end", "type": "System.Integer"},
        {"name": "observedAllele", "type": "System.String"},
        {"name": "referenceAllele", "type": "System.String"},
        {"name": "cigar", "type": "System.String"},
        {"name": "variantPointer", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ServiceDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ServiceDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {"name": "usage", "type": "System.String"},
        {"name": "approvalDate", "type": "System.DateTime"},
        {"name": "lastReviewDate", "type": "System.DateTime"},
        {
          "name": "effectivePeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "topic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contributor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "System.String"},
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "trigger",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dataRequirement",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "operationDefinition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Signature",
      "baseType": "Element",
      "retrievable": false,
      "label": "Signature",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "when", "type": "System.DateTime"},
        {
          "name": "who",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "onBehalfOf",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "contentType", "type": "System.String"},
        {"name": "blob", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Slot",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "serviceCategory", "type": "System.Concept"},
        {
          "name": "serviceType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentType", "type": "System.Concept"},
        {"name": "schedule", "type": "Reference"},
        {"name": "status", "type": "System.String"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "overbooked", "type": "System.Boolean"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Specimen",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "accessionIdentifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "receivedTime", "type": "System.DateTime"},
        {
          "name": "parent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "request",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "collection", "type": "Specimen.CollectionComponent"},
        {
          "name": "processing",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "container",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.CollectionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "collector", "type": "Reference"},
        {
          "name": "collected",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"}
            ]
          }
        },
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "method", "type": "System.Concept"},
        {"name": "bodySite", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.ContainerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "capacity", "type": "System.Quantity"},
        {"name": "specimenQuantity", "type": "System.Quantity"},
        {
          "name": "additive",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.ProcessingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {"name": "procedure", "type": "System.Concept"},
        {
          "name": "additive",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "time",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
      "name": "StructureDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "StructureDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {
          "name": "keyword",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fhirVersion", "type": "System.String"},
        {
          "name": "mapping",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "System.String"},
        {"name": "abstract", "type": "System.Boolean"},
        {"name": "contextType", "type": "System.String"},
        {
          "name": "context",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "baseDefinition", "type": "System.String"},
        {"name": "derivation", "type": "System.String"},
        {"name": "snapshot", "type": "StructureDefinition.SnapshotComponent"},
        {
          "name": "differential",
          "type": "StructureDefinition.DifferentialComponent"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.DifferentialComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "element",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.MappingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identity", "type": "System.String"},
        {"name": "uri", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.SnapshotComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "element",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "StructureMap",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {
          "name": "structure",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "import",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "group",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.InputComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "mode", "type": "System.String"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.Rule.DependentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {
          "name": "variable",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.Rule.SourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "System.String"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {
          "name": "defaultValue",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "element", "type": "System.String"},
        {"name": "listMode", "type": "System.String"},
        {"name": "variable", "type": "System.String"},
        {"name": "condition", "type": "System.String"},
        {"name": "check", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.Rule.Target.ParameterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.Rule.TargetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "System.String"},
        {"name": "element", "type": "System.String"},
        {"name": "variable", "type": "System.String"},
        {
          "name": "listMode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "listRuleId", "type": "System.String"},
        {"name": "transform", "type": "System.String"},
        {
          "name": "parameter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {
          "name": "source",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rule",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "StructureMap.Group.RuleComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "dependent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.GroupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "extends", "type": "System.String"},
        {"name": "typeMode", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {
          "name": "input",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.StructureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "mode", "type": "System.String"},
        {"name": "alias", "type": "System.String"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Subscription",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Subscription",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "end", "type": "System.DateTime"},
        {"name": "reason", "type": "System.String"},
        {"name": "criteria", "type": "System.String"},
        {"name": "error", "type": "System.String"},
        {"name": "channel", "type": "Subscription.ChannelComponent"},
        {
          "name": "tag",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Subscription.ChannelComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "endpoint", "type": "System.String"},
        {"name": "payload", "type": "System.String"},
        {
          "name": "header",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Substance",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {
          "name": "instance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ingredient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance.IngredientComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Ratio"},
        {
          "name": "substance",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance.InstanceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "expiry", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyDelivery",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "SupplyDelivery",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "patient", "type": "Reference"},
        {"name": "type", "type": "System.Concept"},
        {
          "name": "suppliedItem",
          "type": "SupplyDelivery.SuppliedItemComponent"
        },
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "supplier", "type": "Reference"},
        {"name": "destination", "type": "Reference"},
        {
          "name": "receiver",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyDelivery.SuppliedItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Quantity"},
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "SupplyRequest",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "priority", "type": "System.String"},
        {"name": "orderedItem", "type": "SupplyRequest.OrderedItemComponent"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}DateTime",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "requester", "type": "SupplyRequest.RequesterComponent"},
        {
          "name": "supplier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "deliverFrom", "type": "Reference"},
        {"name": "deliverTo", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyRequest.OrderedItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "System.Quantity"},
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyRequest.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "agent", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Task",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definition",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}String",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "type": "Identifier"},
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "businessStatus", "type": "System.Concept"},
        {"name": "intent", "type": "System.String"},
        {"name": "priority", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "focus", "type": "Reference"},
        {"name": "for", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "executionPeriod",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {"name": "authoredOn", "type": "System.DateTime"},
        {"name": "lastModified", "type": "System.DateTime"},
        {"name": "requester", "type": "Task.RequesterComponent"},
        {
          "name": "performerType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "type": "Reference"},
        {"name": "reason", "type": "System.Concept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "restriction", "type": "Task.RestrictionComponent"},
        {
          "name": "input",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "output",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.InputComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.OutputComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Concept"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
                "name": "{urn:hl7-org:elm-types:r1}Integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {"type": "IntervalTypeSpecifier"},
              {"type": "IntervalTypeSpecifier"},
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "agent", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.RestrictionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "repetitions", "type": "System.Integer"},
        {
          "name": "period",
          "typeSpecifier": {"type": "IntervalTypeSpecifier"}
        },
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "TestReport",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "testScript", "type": "Reference"},
        {"name": "result", "type": "System.String"},
        {"name": "score", "type": "System.Decimal"},
        {"name": "tester", "type": "System.String"},
        {"name": "issued", "type": "System.DateTime"},
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "setup", "type": "TestReport.SetupComponent"},
        {
          "name": "test",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "teardown", "type": "TestReport.TeardownComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "uri", "type": "System.String"},
        {"name": "display", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Setup.Action.AssertComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "result", "type": "System.String"},
        {"name": "message", "type": "System.String"},
        {"name": "detail", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Setup.Action.OperationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "result", "type": "System.String"},
        {"name": "message", "type": "System.String"},
        {"name": "detail", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Setup.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "operation",
          "type": "TestReport.Setup.Action.OperationComponent"
        },
        {"name": "assert", "type": "TestReport.Setup.Action.AssertComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.SetupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Teardown.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "operation",
          "type": "TestReport.Setup.Action.OperationComponent"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.TeardownComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Test.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "operation",
          "type": "TestReport.Setup.Action.OperationComponent"
        },
        {"name": "assert", "type": "TestReport.Setup.Action.AssertComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.TestComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "TestScript",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {
          "name": "origin",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "destination",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "metadata", "type": "TestScript.MetadataComponent"},
        {
          "name": "fixture",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "profile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "variable",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "setup", "type": "TestScript.SetupComponent"},
        {
          "name": "test",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "teardown", "type": "TestScript.TeardownComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.DestinationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "index", "type": "System.Integer"},
        {"name": "profile", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.FixtureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "autocreate", "type": "System.Boolean"},
        {"name": "autodelete", "type": "System.Boolean"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Metadata.CapabilityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "required", "type": "System.Boolean"},
        {"name": "validated", "type": "System.Boolean"},
        {"name": "description", "type": "System.String"},
        {
          "name": "origin",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "destination", "type": "System.Integer"},
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "capabilities", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Metadata.LinkComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {"name": "description", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.MetadataComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "capability",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.OriginComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "index", "type": "System.Integer"},
        {"name": "profile", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule.ParamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "resource", "type": "Reference"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "set",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Ruleset.Rule.ParamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Ruleset.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "ruleId", "type": "System.String"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.RulesetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "resource", "type": "Reference"},
        {
          "name": "rule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Assert.Rule.ParamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Assert.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "ruleId", "type": "System.String"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "set",
          "type": "TestScript.Setup.Action.Assert.RulesetComponent"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Assert.Ruleset.Rule.ParamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Assert.Ruleset.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "ruleId", "type": "System.String"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Assert.RulesetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "rulesetId", "type": "System.String"},
        {
          "name": "rule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.AssertComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "label", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "direction", "type": "System.String"},
        {"name": "compareToSourceId", "type": "System.String"},
        {"name": "compareToSourceExpression", "type": "System.String"},
        {"name": "compareToSourcePath", "type": "System.String"},
        {"name": "contentType", "type": "System.String"},
        {"name": "expression", "type": "System.String"},
        {"name": "headerField", "type": "System.String"},
        {"name": "minimumId", "type": "System.String"},
        {"name": "navigationLinks", "type": "System.Boolean"},
        {"name": "operator", "type": "System.String"},
        {"name": "path", "type": "System.String"},
        {"name": "requestMethod", "type": "System.String"},
        {"name": "requestURL", "type": "System.String"},
        {"name": "resource", "type": "System.String"},
        {"name": "response", "type": "System.String"},
        {
          "name": "rule",
          "type": "TestScript.Setup.Action.Assert.RuleComponent"
        },
        {"name": "sourceId", "type": "System.String"},
        {"name": "validateProfileId", "type": "System.String"},
        {"name": "value", "type": "System.String"},
        {"name": "warningOnly", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Operation.RequestHeaderComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "field", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.OperationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.Code"},
        {"name": "resource", "type": "System.String"},
        {"name": "label", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "accept", "type": "System.String"},
        {"name": "contentType", "type": "System.String"},
        {"name": "destination", "type": "System.Integer"},
        {"name": "encodeRequestUrl", "type": "System.Boolean"},
        {"name": "origin", "type": "System.Integer"},
        {"name": "params", "type": "System.String"},
        {
          "name": "requestHeader",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "requestId", "type": "System.String"},
        {"name": "responseId", "type": "System.String"},
        {"name": "sourceId", "type": "System.String"},
        {"name": "targetId", "type": "System.String"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "operation",
          "type": "TestScript.Setup.Action.OperationComponent"
        },
        {"name": "assert", "type": "TestScript.Setup.Action.AssertComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.SetupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Teardown.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "operation",
          "type": "TestScript.Setup.Action.OperationComponent"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.TeardownComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Test.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "operation",
          "type": "TestScript.Setup.Action.OperationComponent"
        },
        {"name": "assert", "type": "TestScript.Setup.Action.AssertComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.TestComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.VariableComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {"name": "defaultValue", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "expression", "type": "System.String"},
        {"name": "headerField", "type": "System.String"},
        {"name": "hint", "type": "System.String"},
        {"name": "path", "type": "System.String"},
        {"name": "sourceId", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Timing",
      "baseType": "Element",
      "retrievable": false,
      "label": "Timing",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "event",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "repeat", "type": "Element"},
        {"name": "code", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TriggerDefinition",
      "baseType": "Element",
      "retrievable": false,
      "label": "TriggerDefinition",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "System.String"},
        {"name": "eventName", "type": "System.String"},
        {
          "name": "eventTiming",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "QUICKFHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
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
        {"name": "eventData", "type": "DataRequirement"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "UsageContext",
      "baseType": "Element",
      "retrievable": false,
      "label": "UsageContext",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.Code"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
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
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ValueSet",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "System.String"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "System.String"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "System.String"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "immutable", "type": "System.Boolean"},
        {"name": "purpose", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "extensible", "type": "System.Boolean"},
        {"name": "compose", "type": "ValueSet.ComposeComponent"},
        {"name": "expansion", "type": "ValueSet.ExpansionComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose.Include.Concept.DesignationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "System.String"},
        {"name": "use", "type": "System.Code"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose.Include.ConceptComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {
          "name": "designation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose.Include.FilterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "property", "type": "System.String"},
        {"name": "op", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose.IncludeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {
          "name": "concept",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "filter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valueSet",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.ComposeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "lockedDate", "type": "System.DateTime"},
        {"name": "inactive", "type": "System.Boolean"},
        {
          "name": "include",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "exclude",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ValueSet.Compose.IncludeComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Expansion.ContainsComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "System.String"},
        {"name": "abstract", "type": "System.Boolean"},
        {"name": "inactive", "type": "System.Boolean"},
        {"name": "version", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {
          "name": "designation",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ValueSet.Compose.Include.Concept.DesignationComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "contains",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "QUICKFHIR",
              "name": "ValueSet.Expansion.ContainsComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Expansion.ParameterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "System.String"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
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
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Decimal",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.ExpansionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "System.String"},
        {"name": "timestamp", "type": "System.DateTime"},
        {"name": "total", "type": "System.Integer"},
        {"name": "offset", "type": "System.Integer"},
        {
          "name": "parameter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contains",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "VisionPrescription",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "VisionPrescription",
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "text", "type": "Narrative"},
        {
          "name": "contained",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "System.String"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateWritten", "type": "System.DateTime"},
        {"name": "prescriber", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "System",
                "name": "{urn:hl7-org:elm-types:r1}Concept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "QUICKFHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "dispense",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "VisionPrescription.DispenseComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "product", "type": "System.Concept"},
        {"name": "eye", "type": "System.String"},
        {"name": "sphere", "type": "System.Decimal"},
        {"name": "cylinder", "type": "System.Decimal"},
        {"name": "axis", "type": "System.Integer"},
        {"name": "prism", "type": "System.Decimal"},
        {"name": "base", "type": "System.String"},
        {"name": "add", "type": "System.Decimal"},
        {"name": "power", "type": "System.Decimal"},
        {"name": "backCurve", "type": "System.Decimal"},
        {"name": "diameter", "type": "System.Decimal"},
        {"name": "duration", "type": "System.Quantity"},
        {"name": "color", "type": "System.String"},
        {"name": "brand", "type": "System.String"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    }
  ]
});
