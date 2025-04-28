import 'package:fhir_r4_cql/fhir_r4_cql.dart';


final fhirmodelinfo301 = ModelInfo.fromJson({
  "name": "FHIR",
  "url": "http://hl7.org/fhir",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate.value",
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "AccountStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "name", "type": "string"},
        {"name": "subject", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "active", "type": "Period"},
        {"name": "balance", "type": "Money"},
        {
          "name": "coverage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "type": "Reference"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "coverage", "type": "Reference"},
        {"name": "priority", "type": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Account.GuarantorComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "party", "type": "Reference"},
        {"name": "onHold", "type": "boolean"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AccountStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionCardinalityBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionConditionKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionGroupingBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionList",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionPrecheckBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionRequiredBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActionSelectionBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ActivityDefinition",
      "primaryCodePath": "topic",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {"name": "usage", "type": "string"},
        {"name": "approvalDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
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
        {"name": "copyright", "type": "markdown"},
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "ActivityDefinitionKind"},
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              }
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
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "quantity", "type": "SimpleQuantity"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "path", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ActivityParticipantType"},
        {"name": "role", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinitionKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActivityParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Address",
      "baseType": "Element",
      "retrievable": false,
      "label": "Address",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "use", "type": "AddressUse"},
        {"name": "type", "type": "AddressType"},
        {"name": "text", "type": "string"},
        {
          "name": "line",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "city", "type": "string"},
        {"name": "district", "type": "string"},
        {"name": "state", "type": "string"},
        {"name": "postalCode", "type": "string"},
        {"name": "country", "type": "string"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AddressType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AddressUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AdministrativeGender",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AdverseEvent",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "category", "type": "AdverseEventCategory"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {
          "name": "reaction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {"name": "seriousness", "type": "CodeableConcept"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "recorder", "type": "Reference"},
        {"name": "eventParticipant", "type": "Reference"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "instance", "type": "Reference"},
        {"name": "causality", "type": "AdverseEventCausality"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEventCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEventCausality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Age",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "AggregationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AllergyIntolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "clinicalStatus", "type": "AllergyIntoleranceClinicalStatus"},
        {
          "name": "verificationStatus",
          "type": "AllergyIntoleranceVerificationStatus"
        },
        {"name": "type", "type": "AllergyIntoleranceType"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "criticality", "type": "AllergyIntoleranceCriticality"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {
          "name": "onset",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "assertedDate", "type": "dateTime"},
        {"name": "recorder", "type": "Reference"},
        {"name": "asserter", "type": "Reference"},
        {"name": "lastOccurrence", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "substance", "type": "CodeableConcept"},
        {
          "name": "manifestation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "onset", "type": "dateTime"},
        {"name": "severity", "type": "AllergyIntoleranceSeverity"},
        {"name": "exposureRoute", "type": "CodeableConcept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceClinicalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceCriticality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceVerificationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Annotation",
      "baseType": "Element",
      "retrievable": false,
      "label": "Annotation",
      "element": [
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "time", "type": "dateTime"},
        {"name": "text", "type": "string"}
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "AppointmentStatus"},
        {"name": "serviceCategory", "type": "CodeableConcept"},
        {
          "name": "serviceType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentType", "type": "CodeableConcept"},
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "indication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "unsignedInt"},
        {"name": "description", "type": "string"},
        {
          "name": "supportingInformation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "start", "type": "instant"},
        {"name": "end", "type": "instant"},
        {"name": "minutesDuration", "type": "positiveInt"},
        {
          "name": "slot",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "created", "type": "dateTime"},
        {"name": "comment", "type": "string"},
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "required", "type": "ParticipantRequired"},
        {"name": "status", "type": "ParticipationStatus"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AppointmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AppointmentResponse",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "start", "type": "instant"},
        {"name": "end", "type": "instant"},
        {
          "name": "participantType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "type": "Reference"},
        {"name": "participantStatus", "type": "ParticipantStatus"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AppointmentStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AssertionDirectionType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AssertionOperatorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AssertionResponseTypes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Attachment",
      "baseType": "Element",
      "retrievable": false,
      "label": "Attachment",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "contentType", "type": "MimeType"},
        {"name": "language", "type": "code"},
        {"name": "data", "type": "base64Binary"},
        {"name": "url", "type": "uri"},
        {"name": "size", "type": "unsignedInt"},
        {"name": "hash", "type": "base64Binary"},
        {"name": "title", "type": "string"},
        {"name": "creation", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "AuditEvent",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "type", "type": "Coding"},
        {
          "name": "subtype",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "type": "AuditEventAction"},
        {"name": "recorded", "type": "instant"},
        {"name": "outcome", "type": "AuditEventOutcome"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "string"},
        {"name": "type", "type": "AuditEventAgentNetworkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.AgentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "altId", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "requestor", "type": "boolean"},
        {"name": "location", "type": "Reference"},
        {
          "name": "policy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "media", "type": "Coding"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "string"},
        {"name": "value", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.EntityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "type", "type": "Coding"},
        {"name": "role", "type": "Coding"},
        {"name": "lifecycle", "type": "Coding"},
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "query", "type": "base64Binary"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "site", "type": "string"},
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEventAction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AuditEventAgentNetworkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AuditEventOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "BackboneElement",
      "baseType": "Element",
      "retrievable": false,
      "label": "BackboneElement",
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "date"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
        {"name": "contentType", "type": "MimeType"},
        {"name": "securityContext", "type": "Reference"},
        {"name": "content", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BindingStrength",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "BodySite",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "BodySite",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "qualifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "BundleType"},
        {"name": "total", "type": "unsignedInt"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "method", "type": "HTTPVerb"},
        {"name": "url", "type": "uri"},
        {"name": "ifNoneMatch", "type": "string"},
        {"name": "ifModifiedSince", "type": "instant"},
        {"name": "ifMatch", "type": "string"},
        {"name": "ifNoneExist", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry.ResponseComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "string"},
        {"name": "location", "type": "uri"},
        {"name": "etag", "type": "string"},
        {"name": "lastModified", "type": "instant"},
        {"name": "outcome", "type": "Resource"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry.SearchComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "SearchEntryMode"},
        {"name": "score", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.EntryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
              "modelName": "FHIR",
              "name": "Bundle.LinkComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {"name": "fullUrl", "type": "uri"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "relation", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BundleType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CapabilityStatement",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
        {"name": "kind", "type": "CapabilityStatementKind"},
        {
          "name": "instantiates",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "software", "type": "CapabilityStatement.SoftwareComponent"},
        {
          "name": "implementation",
          "type": "CapabilityStatement.ImplementationComponent"
        },
        {"name": "fhirVersion", "type": "id"},
        {"name": "acceptUnknown", "type": "UnknownContentCode"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "DocumentMode"},
        {"name": "documentation", "type": "string"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.ImplementationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Messaging.EndpointComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "protocol", "type": "Coding"},
        {"name": "address", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Messaging.EventComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "Coding"},
        {"name": "category", "type": "MessageSignificanceCategory"},
        {"name": "mode", "type": "EventCapabilityMode"},
        {"name": "focus", "type": "ResourceType"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Messaging.SupportedMessageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "EventCapabilityMode"},
        {"name": "definition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.MessagingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "reliableCache", "type": "unsignedInt"},
        {"name": "documentation", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "SystemRestfulInteraction"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.OperationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "definition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.Resource.InteractionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "TypeRestfulInteraction"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.Resource.SearchParamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "definition", "type": "uri"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.ResourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"},
        {"name": "documentation", "type": "markdown"},
        {
          "name": "interaction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "versioning", "type": "ResourceVersionPolicy"},
        {"name": "readHistory", "type": "boolean"},
        {"name": "updateCreate", "type": "boolean"},
        {"name": "conditionalCreate", "type": "boolean"},
        {"name": "conditionalRead", "type": "ConditionalReadStatus"},
        {"name": "conditionalUpdate", "type": "boolean"},
        {"name": "conditionalDelete", "type": "ConditionalDeleteStatus"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "MimeType"},
        {"name": "blob", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest.SecurityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "cors", "type": "boolean"},
        {
          "name": "service",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "RestfulCapabilityMode"},
        {"name": "documentation", "type": "string"},
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
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "releaseDate", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatementKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CarePlan",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "CarePlanStatus"},
        {"name": "intent", "type": "CarePlanIntent"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "period", "type": "Period"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "CodeableConcept"},
        {"name": "definition", "type": "Reference"},
        {"name": "code", "type": "CodeableConcept"},
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
        {"name": "status", "type": "CarePlanActivityStatus"},
        {"name": "prohibited", "type": "boolean"},
        {
          "name": "scheduled",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "dailyAmount", "type": "SimpleQuantity"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "description", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.ActivityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
      "name": "CarePlanActivityStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CarePlanIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CarePlanStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CareTeam",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CareTeam",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "CareTeamStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "period", "type": "Period"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "CodeableConcept"},
        {"name": "member", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareTeamStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ChargeItem",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ChargeItem",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ChargeItemStatus"},
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "quantity", "type": "Quantity"},
        {
          "name": "bodysite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "factorOverride", "type": "decimal"},
        {"name": "priceOverride", "type": "Money"},
        {"name": "overrideReason", "type": "string"},
        {"name": "enterer", "type": "Reference"},
        {"name": "enteredDate", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ChargeItemStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Claim",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ClaimStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "subType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "use", "type": "Use"},
        {"name": "patient", "type": "Reference"},
        {"name": "billablePeriod", "type": "Period"},
        {"name": "created", "type": "dateTime"},
        {"name": "enterer", "type": "Reference"},
        {"name": "insurer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "priority", "type": "CodeableConcept"},
        {"name": "fundsReserve", "type": "CodeableConcept"},
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
        {"name": "employmentImpacted", "type": "Period"},
        {"name": "hospitalization", "type": "Period"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "total", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.AccidentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "date"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "provider", "type": "Reference"},
        {"name": "responsible", "type": "boolean"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "qualification", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.DiagnosisComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {
          "name": "diagnosis",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "packageCode", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.InformationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.InsuranceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "focal", "type": "boolean"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "net", "type": "Money"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "net", "type": "Money"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
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
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
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
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "resourceType", "type": "Coding"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.ProcedureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "date", "type": "dateTime"},
        {
          "name": "procedure",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "claim", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ClaimResponseStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {"name": "insurer", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "disposition", "type": "string"},
        {"name": "payeeType", "type": "CodeableConcept"},
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
        {"name": "totalCost", "type": "Money"},
        {"name": "unallocDeductable", "type": "Money"},
        {"name": "totalBenefit", "type": "Money"},
        {"name": "payment", "type": "ClaimResponse.PaymentComponent"},
        {"name": "reserved", "type": "Coding"},
        {"name": "form", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "Money"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "Money"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "positiveInt"},
        {"name": "detailSequenceLinkId", "type": "positiveInt"},
        {"name": "subdetailSequenceLinkId", "type": "positiveInt"},
        {"name": "code", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.InsuranceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "focal", "type": "boolean"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "CodeableConcept"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Item.Detail.SubDetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "positiveInt"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "positiveInt"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "positiveInt"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "adjustment", "type": "Money"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.ProcessNoteComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "number", "type": "positiveInt"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "text", "type": "string"},
        {"name": "language", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClaimStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ClinicalImpression",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ClinicalImpressionStatus"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "date", "type": "dateTime"},
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
        {"name": "summary", "type": "string"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "basis", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.InvestigationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpressionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CodeSystem",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
        {"name": "caseSensitive", "type": "boolean"},
        {"name": "valueSet", "type": "uri"},
        {"name": "hierarchyMeaning", "type": "CodeSystemHierarchyMeaning"},
        {"name": "compositional", "type": "boolean"},
        {"name": "versionNeeded", "type": "boolean"},
        {"name": "content", "type": "CodeSystemContentMode"},
        {"name": "count", "type": "unsignedInt"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Concept.PropertyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "code"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "definition", "type": "string"},
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
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "code"},
        {"name": "description", "type": "string"},
        {
          "name": "operator",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.PropertyComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "code"},
        {"name": "uri", "type": "uri"},
        {"name": "description", "type": "string"},
        {"name": "type", "type": "PropertyType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystemContentMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystemHierarchyMeaning",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CodeableConcept",
      "baseType": "Element",
      "retrievable": false,
      "label": "CodeableConcept",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "coding",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Coding",
      "baseType": "Element",
      "retrievable": false,
      "label": "Coding",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "userSelected", "type": "boolean"}
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "CommunicationStatus"},
        {"name": "notDone", "type": "boolean"},
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
        {"name": "sent", "type": "dateTime"},
        {"name": "received", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
      "name": "CommunicationPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CommunicationRequest",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "CommunicationRequestStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "CommunicationPriority"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "authoredOn", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
      "name": "CommunicationRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "CompartmentDefinition",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CompartmentType"},
        {"name": "search", "type": "boolean"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "ResourceType"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Composition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Composition",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "CompositionStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "class", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {
          "name": "author",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "type": "string"},
        {"name": "confidentiality", "type": "DocumentConfidentiality"},
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
        {"name": "id", "type": "string"},
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
        {"name": "time", "type": "dateTime"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.EventComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "period", "type": "Period"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "DocumentRelationshipType"},
        {
          "name": "target",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "type": "string"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "text", "type": "Narrative"},
        {"name": "mode", "type": "SectionMode"},
        {"name": "orderedBy", "type": "CodeableConcept"},
        {
          "name": "entry",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "emptyReason", "type": "CodeableConcept"},
        {
          "name": "section",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
              "name": "Composition.SectionComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompositionAttestationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CompositionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ConceptMap",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
        {
          "name": "source",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "property", "type": "uri"},
        {"name": "system", "type": "uri"},
        {"name": "code", "type": "string"},
        {"name": "display", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Group.Element.TargetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "equivalence", "type": "ConceptMapEquivalence"},
        {"name": "comment", "type": "string"},
        {
          "name": "dependsOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mode", "type": "ConceptMapGroupUnmappedMode"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.GroupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "uri"},
        {"name": "target", "type": "uri"},
        {
          "name": "element",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "unmapped", "type": "ConceptMap.Group.UnmappedComponent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMapEquivalence",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMapGroupUnmappedMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Condition",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "clinicalStatus", "type": "ConditionClinicalStatus"},
        {"name": "verificationStatus", "type": "ConditionVerificationStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "severity", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "assertedDate", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "summary", "type": "CodeableConcept"},
        {
          "name": "assessment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConditionClinicalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConditionVerificationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConditionalDeleteStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConditionalReadStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Consent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Consent",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ConsentState"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "dateTime", "type": "dateTime"},
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
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "dataPeriod", "type": "Period"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "CodeableConcept"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.DataComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "meaning", "type": "ConsentDataMeaning"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Except.ActorComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "CodeableConcept"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Except.DataComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "meaning", "type": "ConsentDataMeaning"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.ExceptComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ConsentExceptType"},
        {"name": "period", "type": "Period"},
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
        {"name": "dataPeriod", "type": "Period"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authority", "type": "uri"},
        {"name": "uri", "type": "uri"},
        {"name": "Rule", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConsentDataMeaning",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConsentExceptType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConsentState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConstraintSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ContactDetail",
      "baseType": "Element",
      "retrievable": false,
      "label": "ContactDetail",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "ContactPointSystem"},
        {"name": "value", "type": "string"},
        {"name": "use", "type": "ContactPointUse"},
        {"name": "rank", "type": "positiveInt"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContactPointSystem",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ContactPointUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ContentType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Contract",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Contract",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ContractStatus"},
        {"name": "issued", "type": "dateTime"},
        {"name": "applies", "type": "Period"},
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
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "subType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "decisionType", "type": "CodeableConcept"},
        {"name": "contentDerivative", "type": "CodeableConcept"},
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
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "Coding"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "dateTime"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.TermComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "issued", "type": "dateTime"},
        {"name": "applies", "type": "Period"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subType", "type": "CodeableConcept"},
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
        {"name": "text", "type": "string"},
        {
          "name": "valuedItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "group",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "dateTime"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContractStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Contributor",
      "baseType": "Element",
      "retrievable": false,
      "label": "Contributor",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ContributorType"},
        {"name": "name", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContributorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Count",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Coverage",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "CoverageStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "policyHolder", "type": "Reference"},
        {"name": "subscriber", "type": "Reference"},
        {"name": "beneficiary", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "period", "type": "Period"},
        {
          "name": "payor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "grouping", "type": "Coverage.GroupingComponent"},
        {"name": "dependent", "type": "string"},
        {"name": "sequence", "type": "string"},
        {"name": "order", "type": "positiveInt"},
        {"name": "network", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "group", "type": "string"},
        {"name": "subGroup", "type": "string"},
        {"name": "plan", "type": "string"},
        {"name": "subPlan", "type": "string"},
        {"name": "class", "type": "string"},
        {"name": "subClass", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CoverageStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DataElement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DataElement",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
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
        {"name": "copyright", "type": "markdown"},
        {"name": "stringency", "type": "DataElementStringency"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identity", "type": "id"},
        {"name": "uri", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElementStringency",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DataRequirement",
      "baseType": "Element",
      "retrievable": false,
      "label": "DataRequirement",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "FHIRAllTypes"},
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
      "name": "DayOfWeek",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DaysOfWeek",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DetectedIssue",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DetectedIssue",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "DetectedIssueStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "severity", "type": "DetectedIssueSeverity"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
        {
          "name": "implicated",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "detail", "type": "string"},
        {"name": "reference", "type": "uri"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "type": "CodeableConcept"},
        {"name": "date", "type": "dateTime"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DetectedIssueSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DetectedIssueStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Device",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "FHIRDeviceStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "lotNumber", "type": "string"},
        {"name": "manufacturer", "type": "string"},
        {"name": "manufactureDate", "type": "dateTime"},
        {"name": "expirationDate", "type": "dateTime"},
        {"name": "model", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "patient", "type": "Reference"},
        {"name": "owner", "type": "Reference"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {"name": "url", "type": "uri"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "deviceIdentifier", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "jurisdiction", "type": "uri"},
        {"name": "carrierHRF", "type": "string"},
        {"name": "carrierAIDC", "type": "base64Binary"},
        {"name": "issuer", "type": "uri"},
        {"name": "entryType", "type": "UDIEntryType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DeviceComponent",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "type", "type": "CodeableConcept"},
        {"name": "lastSystemChange", "type": "instant"},
        {"name": "source", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {
          "name": "operationalStatus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "parameterGroup", "type": "CodeableConcept"},
        {"name": "measurementPrinciple", "type": "MeasmntPrinciple"},
        {
          "name": "productionSpecification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "languageCode", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent.ProductionSpecificationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "specType", "type": "CodeableConcept"},
        {"name": "componentId", "type": "Identifier"},
        {"name": "productionSpec", "type": "string"}
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "type", "type": "CodeableConcept"},
        {"name": "unit", "type": "CodeableConcept"},
        {"name": "source", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {"name": "operationalStatus", "type": "DeviceMetricOperationalStatus"},
        {"name": "color", "type": "DeviceMetricColor"},
        {"name": "category", "type": "DeviceMetricCategory"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "DeviceMetricCalibrationType"},
        {"name": "state", "type": "DeviceMetricCalibrationState"},
        {"name": "time", "type": "instant"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetricCalibrationState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetricCalibrationType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetricCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetricColor",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetricOperationalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DeviceRequest",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "DeviceRequestStatus"},
        {"name": "intent", "type": "CodeableConcept"},
        {"name": "priority", "type": "RequestPriority"},
        {
          "name": "code",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "authoredOn", "type": "dateTime"},
        {"name": "requester", "type": "DeviceRequest.RequesterComponent"},
        {"name": "performerType", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
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
      "name": "DeviceRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DeviceUseStatement",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "DeviceUseStatementStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "whenUsed", "type": "Period"},
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "recordedOn", "type": "dateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {
          "name": "indication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "CodeableConcept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseStatementStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DiagnosticReport",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "DiagnosticReportStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "issued", "type": "instant"},
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
        {"name": "conclusion", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "comment", "type": "string"},
        {"name": "link", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport.PerformerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DigitalMediaType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DiscriminatorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Distance",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "DocumentConfidentiality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DocumentManifest",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {
          "name": "author",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "uri"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
      "name": "DocumentMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "DocumentReference",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "docStatus", "type": "ReferredDocumentStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "class", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {"name": "indexed", "type": "instant"},
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
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "attachment", "type": "Attachment"},
        {"name": "format", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Context.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "period", "type": "Period"},
        {"name": "facilityType", "type": "CodeableConcept"},
        {"name": "practiceSetting", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "DocumentRelationshipType"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReferenceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DomainResource",
      "baseType": "Resource",
      "retrievable": true,
      "label": "DomainResource",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "integer"},
        {"name": "text", "type": "string"},
        {
          "name": "additionalInstruction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patientInstruction", "type": "string"},
        {"name": "timing", "type": "Timing"},
        {
          "name": "asNeeded",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "site", "type": "CodeableConcept"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {
          "name": "dose",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SimpleQuantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "maxDosePerPeriod", "type": "Ratio"},
        {"name": "maxDosePerAdministration", "type": "SimpleQuantity"},
        {"name": "maxDosePerLifetime", "type": "SimpleQuantity"},
        {
          "name": "rate",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SimpleQuantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Duration",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Element",
      "retrievable": false,
      "label": "Element",
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "path", "type": "string"},
        {
          "name": "representation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sliceName", "type": "string"},
        {"name": "label", "type": "string"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "slicing", "type": "Element"},
        {"name": "short", "type": "string"},
        {"name": "definition", "type": "markdown"},
        {"name": "comment", "type": "markdown"},
        {"name": "requirements", "type": "markdown"},
        {
          "name": "alias",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "min", "type": "unsignedInt"},
        {"name": "max", "type": "string"},
        {"name": "base", "type": "Element"},
        {"name": "contentReference", "type": "uri"},
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
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "meaningWhenMissing", "type": "markdown"},
        {"name": "orderMeaning", "type": "string"},
        {
          "name": "fixed",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "maxLength", "type": "integer"},
        {
          "name": "condition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "constraint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mustSupport", "type": "boolean"},
        {"name": "isModifier", "type": "boolean"},
        {"name": "isSummary", "type": "boolean"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "EligibilityRequestStatus"},
        {"name": "priority", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {
          "name": "serviced",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "created", "type": "dateTime"},
        {"name": "enterer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "insurer", "type": "Reference"},
        {"name": "facility", "type": "Reference"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "string"},
        {"name": "benefitCategory", "type": "CodeableConcept"},
        {"name": "benefitSubCategory", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EligibilityResponse",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "EligibilityResponseStatus"},
        {"name": "created", "type": "dateTime"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "disposition", "type": "string"},
        {"name": "insurer", "type": "Reference"},
        {"name": "inforce", "type": "boolean"},
        {
          "name": "insurance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "form", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.Insurance.BenefitBalance.FinancialComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "allowed",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
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
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "CodeableConcept"},
        {"name": "subCategory", "type": "CodeableConcept"},
        {"name": "excluded", "type": "boolean"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "network", "type": "CodeableConcept"},
        {"name": "unit", "type": "CodeableConcept"},
        {"name": "term", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
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
      "name": "EligibilityResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Encounter",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "EncounterStatus"},
        {"name": "class", "type": "Coding"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "CodeableConcept"},
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
        {"name": "period", "type": "Period"},
        {"name": "length", "type": "Duration"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "class", "type": "Coding"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.DiagnosisComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "condition", "type": "Reference"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "rank", "type": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.HospitalizationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "admitSource", "type": "CodeableConcept"},
        {"name": "reAdmission", "type": "CodeableConcept"},
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
        {"name": "dischargeDisposition", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.LocationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {"name": "status", "type": "EncounterLocationStatus"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "period", "type": "Period"},
        {"name": "individual", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.StatusHistoryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "EncounterStatus"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterLocationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EncounterStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Endpoint",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Endpoint",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "EndpointStatus"},
        {"name": "connectionType", "type": "Coding"},
        {"name": "name", "type": "string"},
        {"name": "managingOrganization", "type": "Reference"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "type": "Period"},
        {
          "name": "payloadType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "payloadMimeType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "uri"},
        {
          "name": "header",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EndpointStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EnrollmentRequest",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "EnrollmentRequestStatus"},
        {"name": "created", "type": "dateTime"},
        {"name": "insurer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {"name": "coverage", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EnrollmentResponse",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "EnrollmentResponseStatus"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "disposition", "type": "string"},
        {"name": "created", "type": "dateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "EpisodeOfCare",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "EpisodeOfCareStatus"},
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
        {"name": "period", "type": "Period"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "condition", "type": "Reference"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "rank", "type": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare.StatusHistoryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "EpisodeOfCareStatus"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCareStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EventCapabilityMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EventTiming",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ExpansionProfile",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
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
        {"name": "includeDesignations", "type": "boolean"},
        {
          "name": "designation",
          "type": "ExpansionProfile.DesignationComponent"
        },
        {"name": "includeDefinition", "type": "boolean"},
        {"name": "activeOnly", "type": "boolean"},
        {"name": "excludeNested", "type": "boolean"},
        {"name": "excludeNotForUI", "type": "boolean"},
        {"name": "excludePostCoordinated", "type": "boolean"},
        {"name": "displayLanguage", "type": "code"},
        {"name": "limitedExpansion", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation.Exclude.DesignationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation.ExcludeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation.IncludeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.FixedVersionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "mode", "type": "SystemVersionProcessingMode"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ExplanationOfBenefit",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ExplanationOfBenefitStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "subType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {"name": "billablePeriod", "type": "Period"},
        {"name": "created", "type": "dateTime"},
        {"name": "enterer", "type": "Reference"},
        {"name": "insurer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "referral", "type": "Reference"},
        {"name": "facility", "type": "Reference"},
        {"name": "claim", "type": "Reference"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "disposition", "type": "string"},
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
        {"name": "precedence", "type": "positiveInt"},
        {
          "name": "insurance",
          "type": "ExplanationOfBenefit.InsuranceComponent"
        },
        {"name": "accident", "type": "ExplanationOfBenefit.AccidentComponent"},
        {"name": "employmentImpacted", "type": "Period"},
        {"name": "hospitalization", "type": "Period"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "addItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "totalCost", "type": "Money"},
        {"name": "unallocDeductable", "type": "Money"},
        {"name": "totalBenefit", "type": "Money"},
        {"name": "payment", "type": "ExplanationOfBenefit.PaymentComponent"},
        {"name": "form", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "date"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "Money"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fee", "type": "Money"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "allowed",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
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
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "CodeableConcept"},
        {"name": "subCategory", "type": "CodeableConcept"},
        {"name": "excluded", "type": "boolean"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "network", "type": "CodeableConcept"},
        {"name": "unit", "type": "CodeableConcept"},
        {"name": "term", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "provider", "type": "Reference"},
        {"name": "responsible", "type": "boolean"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "qualification", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.DiagnosisComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {
          "name": "diagnosis",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "packageCode", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.InformationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "timing",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "reason", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.InsuranceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "CodeableConcept"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Item.Detail.SubDetailComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "net", "type": "Money"},
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
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "net", "type": "Money"},
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
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
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
        {"name": "revenue", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "service", "type": "CodeableConcept"},
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
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "location",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {
          "name": "udi",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "resourceType", "type": "CodeableConcept"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.PaymentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "adjustment", "type": "Money"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.ProcedureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequence", "type": "positiveInt"},
        {"name": "date", "type": "dateTime"},
        {
          "name": "procedure",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "number", "type": "positiveInt"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "text", "type": "string"},
        {"name": "language", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "claim", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "reference", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefitStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "label": "Extension",
      "element": [
        {"name": "id", "type": "uri"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "uri"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
      "name": "ExtensionContext",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "FHIRAllTypes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "FHIRDefinedType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "FHIRDeviceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "FHIRSubstanceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistoryStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "FamilyMemberHistory",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "FamilyHistoryStatus"},
        {"name": "notDone", "type": "boolean"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "name", "type": "string"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "gender", "type": "AdministrativeGender"},
        {
          "name": "born",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
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
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "estimatedAge", "type": "boolean"},
        {
          "name": "deceased",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {"name": "outcome", "type": "CodeableConcept"},
        {
          "name": "onset",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
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
      "name": "FilterOperator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Flag",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Flag",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "FlagStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "encounter", "type": "Reference"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FlagStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Goal",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "GoalStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "CodeableConcept"},
        {"name": "description", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "start",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "target", "type": "Goal.TargetComponent"},
        {"name": "statusDate", "type": "date"},
        {"name": "statusReason", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measure", "type": "CodeableConcept"},
        {
          "name": "detail",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
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
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GoalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "GraphCompartmentRule",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "GraphDefinition",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "start", "type": "ResourceType"},
        {"name": "profile", "type": "uri"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CompartmentCode"},
        {"name": "rule", "type": "GraphCompartmentRule"},
        {"name": "expression", "type": "string"},
        {"name": "description", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition.Link.TargetComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ResourceType"},
        {"name": "profile", "type": "uri"},
        {
          "name": "compartment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "link",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "path", "type": "string"},
        {"name": "sliceName", "type": "string"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {"name": "type", "type": "GroupType"},
        {"name": "actual", "type": "boolean"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "name", "type": "string"},
        {"name": "quantity", "type": "unsignedInt"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "exclude", "type": "boolean"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group.MemberComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "entity", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "inactive", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GroupType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "GuidanceResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "GuidanceResponse",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "requestId", "type": "id"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "module", "type": "Reference"},
        {"name": "status", "type": "GuidanceResponseStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "occurrenceDateTime", "type": "dateTime"},
        {"name": "performer", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
      "name": "GuidanceResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "GuideDependencyType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "GuidePageKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "HTTPVerb",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "HealthcareService",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {"name": "providedBy", "type": "Reference"},
        {"name": "category", "type": "CodeableConcept"},
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
        {"name": "name", "type": "string"},
        {"name": "comment", "type": "string"},
        {"name": "extraDetails", "type": "string"},
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
        {"name": "eligibility", "type": "CodeableConcept"},
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
        {"name": "appointmentRequired", "type": "boolean"},
        {
          "name": "availableTime",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "notAvailable",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "availabilityExceptions", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "allDay", "type": "boolean"},
        {"name": "availableStartTime", "type": "time"},
        {"name": "availableEndTime", "type": "time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.NotAvailableComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "during", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "label": "HumanName",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "use", "type": "NameUse"},
        {"name": "text", "type": "string"},
        {"name": "family", "type": "string"},
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
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Identifier",
      "baseType": "Element",
      "retrievable": false,
      "label": "Identifier",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "use", "type": "IdentifierUse"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "system", "type": "uri"},
        {"name": "value", "type": "string"},
        {"name": "period", "type": "Period"},
        {"name": "assigner", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "IdentifierUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "IdentityAssuranceLevel",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ImagingManifest",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "authoringTime", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sopClass", "type": "oid"},
        {"name": "uid", "type": "oid"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.Study.SeriesComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "oid"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "oid"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "uid", "type": "oid"},
        {"name": "accession", "type": "Identifier"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "availability", "type": "InstanceAvailability"},
        {
          "name": "modalityList",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "started", "type": "dateTime"},
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
        {"name": "numberOfSeries", "type": "unsignedInt"},
        {"name": "numberOfInstances", "type": "unsignedInt"},
        {
          "name": "procedureReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "oid"},
        {"name": "number", "type": "unsignedInt"},
        {"name": "sopClass", "type": "oid"},
        {"name": "title", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.SeriesComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "uid", "type": "oid"},
        {"name": "number", "type": "unsignedInt"},
        {"name": "modality", "type": "Coding"},
        {"name": "description", "type": "string"},
        {"name": "numberOfInstances", "type": "unsignedInt"},
        {"name": "availability", "type": "InstanceAvailability"},
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "Coding"},
        {"name": "laterality", "type": "Coding"},
        {"name": "started", "type": "dateTime"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ImmunizationStatus"},
        {"name": "notGiven", "type": "boolean"},
        {"name": "vaccineCode", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "primarySource", "type": "boolean"},
        {"name": "reportOrigin", "type": "CodeableConcept"},
        {"name": "location", "type": "Reference"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "lotNumber", "type": "string"},
        {"name": "expirationDate", "type": "date"},
        {"name": "site", "type": "CodeableConcept"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "doseQuantity", "type": "SimpleQuantity"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.ReactionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "dateTime"},
        {"name": "detail", "type": "Reference"},
        {"name": "reported", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.VaccinationProtocolComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "doseSequence", "type": "positiveInt"},
        {"name": "description", "type": "string"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "string"},
        {
          "name": "targetDisease",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "doseStatus", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ImmunizationRecommendation",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {"name": "value", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.Recommendation.ProtocolComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "doseSequence", "type": "positiveInt"},
        {"name": "description", "type": "string"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.RecommendationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "type": "dateTime"},
        {"name": "vaccineCode", "type": "CodeableConcept"},
        {"name": "targetDisease", "type": "CodeableConcept"},
        {"name": "doseNumber", "type": "positiveInt"},
        {"name": "forecastStatus", "type": "CodeableConcept"},
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
      "name": "ImmunizationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ImplementationGuide",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "markdown"},
        {"name": "fhirVersion", "type": "id"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "GuideDependencyType"},
        {"name": "uri", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.GlobalComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.Package.ResourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "example", "type": "boolean"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "acronym", "type": "string"},
        {
          "name": "source",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "uri"},
        {"name": "title", "type": "string"},
        {"name": "kind", "type": "GuidePageKind"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "package",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "format", "type": "MimeType"},
        {
          "name": "page",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
              "name": "ImplementationGuide.PageComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InstanceAvailability",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "IssueSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "IssueType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Library",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Library",
      "primaryCodePath": "topic",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {"name": "usage", "type": "string"},
        {"name": "approvalDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
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
        {"name": "copyright", "type": "markdown"},
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
      "name": "LinkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Linkage",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Linkage",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "LinkageType"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LinkageType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "List",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "List",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ListStatus"},
        {"name": "mode", "type": "ListMode"},
        {"name": "title", "type": "string"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "orderedBy", "type": "CodeableConcept"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entry",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "emptyReason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "List.EntryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "flag", "type": "CodeableConcept"},
        {"name": "deleted", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "item", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ListStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Location",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "LocationStatus"},
        {"name": "operationalStatus", "type": "Coding"},
        {"name": "name", "type": "string"},
        {
          "name": "alias",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "mode", "type": "LocationMode"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "Address"},
        {"name": "physicalType", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "longitude", "type": "decimal"},
        {"name": "latitude", "type": "decimal"},
        {"name": "altitude", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LocationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "LocationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MeasmntPrinciple",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Measure",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Measure",
      "primaryCodePath": "topic",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {"name": "usage", "type": "string"},
        {"name": "approvalDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
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
        {"name": "copyright", "type": "markdown"},
        {
          "name": "relatedArtifact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "disclaimer", "type": "markdown"},
        {"name": "scoring", "type": "CodeableConcept"},
        {"name": "compositeScoring", "type": "CodeableConcept"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "riskAdjustment", "type": "string"},
        {"name": "rateAggregation", "type": "string"},
        {"name": "rationale", "type": "markdown"},
        {"name": "clinicalRecommendationStatement", "type": "markdown"},
        {"name": "improvementNotation", "type": "string"},
        {
          "name": "definition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "guidance", "type": "markdown"},
        {"name": "set", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "criteria", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.Group.StratifierComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "criteria", "type": "string"},
        {"name": "path", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.GroupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "criteria", "type": "string"},
        {"name": "path", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MeasureReport",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "MeasureReportStatus"},
        {"name": "type", "type": "MeasureReportType"},
        {"name": "measure", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "reportingOrganization", "type": "Reference"},
        {"name": "period", "type": "Period"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "count", "type": "integer"},
        {"name": "patients", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group.Stratifier.Stratum.PopulationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "count", "type": "integer"},
        {"name": "patients", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group.Stratifier.StratumComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "string"},
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measureScore", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group.StratifierComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "measureScore", "type": "decimal"},
        {
          "name": "stratifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReportType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Media",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Media",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "type", "type": "DigitalMediaType"},
        {"name": "subtype", "type": "CodeableConcept"},
        {"name": "view", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "operator", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "CodeableConcept"},
        {"name": "device", "type": "Reference"},
        {"name": "height", "type": "positiveInt"},
        {"name": "width", "type": "positiveInt"},
        {"name": "frames", "type": "positiveInt"},
        {"name": "duration", "type": "unsignedInt"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "code", "type": "CodeableConcept"},
        {"name": "status", "type": "MedicationStatus"},
        {"name": "isBrand", "type": "boolean"},
        {"name": "isOverTheCounter", "type": "boolean"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "form", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "isActive", "type": "boolean"},
        {"name": "amount", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Package.BatchComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "lotNumber", "type": "string"},
        {"name": "expirationDate", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Package.ContentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "amount", "type": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.PackageComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "container", "type": "CodeableConcept"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "MedicationAdministrationStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "performer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "notGiven", "type": "boolean"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "type": "string"},
        {"name": "site", "type": "CodeableConcept"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "dose", "type": "SimpleQuantity"},
        {
          "name": "rate",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SimpleQuantity",
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
        {"name": "id", "type": "string"},
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
      "name": "MedicationAdministrationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MedicationDispense",
      "primaryCodePath": "medication",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "MedicationDispenseStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "type", "type": "CodeableConcept"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "daysSupply", "type": "SimpleQuantity"},
        {"name": "whenPrepared", "type": "dateTime"},
        {"name": "whenHandedOver", "type": "dateTime"},
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
        {"name": "notDone", "type": "boolean"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "wasSubstituted", "type": "boolean"},
        {"name": "type", "type": "CodeableConcept"},
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
      "name": "MedicationDispenseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MedicationRequest",
      "primaryCodePath": "medication",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "MedicationRequestStatus"},
        {"name": "intent", "type": "MedicationRequestIntent"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "priority", "type": "MedicationRequestPriority"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "authoredOn", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "validityPeriod", "type": "Period"},
        {"name": "numberOfRepeatsAllowed", "type": "positiveInt"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "expectedSupplyDuration", "type": "Duration"},
        {"name": "performer", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest.RequesterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allowed", "type": "boolean"},
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MedicationStatement",
      "primaryCodePath": "medication",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "MedicationStatementStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {
          "name": "medication",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "dateAsserted", "type": "dateTime"},
        {"name": "informationSource", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "derivedFrom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "taken", "type": "MedicationStatementTaken"},
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
      "name": "MedicationStatementStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatementTaken",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MessageDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MessageDefinition",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
        {"name": "base", "type": "Reference"},
        {
          "name": "parent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "event", "type": "Coding"},
        {"name": "category", "type": "MessageSignificanceCategory"},
        {
          "name": "focus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "responseRequired", "type": "boolean"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "message", "type": "Reference"},
        {"name": "situation", "type": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageDefinition.FocusComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"},
        {"name": "min", "type": "unsignedInt"},
        {"name": "max", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "MessageHeader",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "event", "type": "Coding"},
        {
          "name": "destination",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "receiver", "type": "Reference"},
        {"name": "sender", "type": "Reference"},
        {"name": "timestamp", "type": "instant"},
        {"name": "enterer", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "source", "type": "MessageHeader.SourceComponent"},
        {"name": "responsible", "type": "Reference"},
        {"name": "reason", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "target", "type": "Reference"},
        {"name": "endpoint", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.ResponseComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "id"},
        {"name": "code", "type": "ResponseType"},
        {"name": "details", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.SourceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "software", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "contact", "type": "ContactPoint"},
        {"name": "endpoint", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageSignificanceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Meta",
      "baseType": "Element",
      "retrievable": false,
      "label": "Meta",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "versionId", "type": "id"},
        {"name": "lastUpdated", "type": "instant"},
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
      "name": "MimeType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Money",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "NameUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "NamingSystem",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "name", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "kind", "type": "NamingSystemType"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "responsible", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "usage", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "NamingSystemIdentifierType"},
        {"name": "value", "type": "string"},
        {"name": "preferred", "type": "boolean"},
        {"name": "comment", "type": "string"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystemIdentifierType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystemType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Narrative",
      "baseType": "Element",
      "retrievable": false,
      "label": "Narrative",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "NarrativeStatus"},
        {"name": "div", "type": "xhtml"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NarrativeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "NutritionOrder",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "NutritionOrderStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateTime", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "schedule", "type": "Timing"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {
          "name": "rate",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "SimpleQuantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "baseFormulaType", "type": "CodeableConcept"},
        {"name": "baseFormulaProductName", "type": "string"},
        {"name": "additiveType", "type": "CodeableConcept"},
        {"name": "additiveProductName", "type": "string"},
        {"name": "caloricDensity", "type": "SimpleQuantity"},
        {"name": "routeofAdministration", "type": "CodeableConcept"},
        {
          "name": "administration",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maxVolumeToDeliver", "type": "SimpleQuantity"},
        {"name": "administrationInstruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDiet.NutrientComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "modifier", "type": "CodeableConcept"},
        {"name": "amount", "type": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDiet.TextureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "modifier", "type": "CodeableConcept"},
        {"name": "foodType", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDietComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "instruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.SupplementComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "productName", "type": "string"},
        {
          "name": "schedule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "instruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Observation",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ObservationStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "effective",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "issued", "type": "instant"},
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
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "dataAbsentReason", "type": "CodeableConcept"},
        {"name": "interpretation", "type": "CodeableConcept"},
        {"name": "comment", "type": "string"},
        {"name": "bodySite", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "dataAbsentReason", "type": "CodeableConcept"},
        {"name": "interpretation", "type": "CodeableConcept"},
        {
          "name": "referenceRange",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "low", "type": "SimpleQuantity"},
        {"name": "high", "type": "SimpleQuantity"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "appliesTo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "age", "type": "Range"},
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation.RelatedComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ObservationRelationshipType"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ObservationRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ObservationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "OperationDefinition",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "kind", "type": "OperationKind"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "idempotent", "type": "boolean"},
        {"name": "code", "type": "code"},
        {"name": "comment", "type": "string"},
        {"name": "base", "type": "Reference"},
        {
          "name": "resource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "boolean"},
        {"name": "type", "type": "boolean"},
        {"name": "instance", "type": "boolean"},
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
        {"name": "id", "type": "string"},
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
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Parameter.BindingComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "strength", "type": "BindingStrength"},
        {
          "name": "valueSet",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "code"},
        {"name": "use", "type": "OperationParameterUse"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "documentation", "type": "string"},
        {"name": "type", "type": "FHIRAllTypes"},
        {"name": "searchType", "type": "SearchParamType"},
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
              "modelName": "FHIR",
              "name": "OperationDefinition.ParameterComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "OperationOutcome",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "severity", "type": "IssueSeverity"},
        {"name": "code", "type": "IssueType"},
        {"name": "details", "type": "CodeableConcept"},
        {"name": "diagnostics", "type": "string"},
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
      "name": "OperationParameterUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Organization",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "code"},
        {"name": "use", "type": "ParameterUse"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "documentation", "type": "string"},
        {"name": "type", "type": "FHIRAllTypes"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ParameterUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Parameters",
      "baseType": "Resource",
      "retrievable": true,
      "label": "Parameters",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
              "modelName": "FHIR",
              "name": "Parameters.ParameterComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ParticipantRequired",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ParticipantStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ParticipationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Patient",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {
          "name": "name",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
        {
          "name": "deceased",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maritalStatus", "type": "CodeableConcept"},
        {
          "name": "multipleBirth",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "species", "type": "CodeableConcept"},
        {"name": "breed", "type": "CodeableConcept"},
        {"name": "genderStatus", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.CommunicationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "CodeableConcept"},
        {"name": "preferred", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.ContactComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "organization", "type": "Reference"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.LinkComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "other", "type": "Reference"},
        {"name": "type", "type": "LinkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentNotice",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "PaymentNotice",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "PaymentNoticeStatus"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "statusDate", "type": "date"},
        {"name": "created", "type": "dateTime"},
        {"name": "target", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "paymentStatus", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentNoticeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "PaymentReconciliation",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "PaymentReconciliationStatus"},
        {"name": "period", "type": "Period"},
        {"name": "created", "type": "dateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "disposition", "type": "string"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {
          "name": "detail",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "form", "type": "CodeableConcept"},
        {"name": "total", "type": "Money"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "submitter", "type": "Reference"},
        {"name": "payee", "type": "Reference"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.ProcessNoteComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Period",
      "baseType": "Element",
      "retrievable": false,
      "label": "Period",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "start", "type": "dateTime"},
        {"name": "end", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Person",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Person",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "photo", "type": "Attachment"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "active", "type": "boolean"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "target", "type": "Reference"},
        {"name": "assurance", "type": "IdentityAssuranceLevel"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "PlanDefinition",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {"name": "usage", "type": "string"},
        {"name": "approvalDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
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
        {"name": "copyright", "type": "markdown"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "ActionConditionKind"},
        {"name": "description", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action.DynamicValueComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "path", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action.ParticipantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "ActionParticipantType"},
        {"name": "role", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action.RelatedActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actionId", "type": "id"},
        {"name": "relationship", "type": "ActionRelationshipType"},
        {
          "name": "offset",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              }
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "label", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "textEquivalent", "type": "string"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "type", "type": "Coding"},
        {"name": "groupingBehavior", "type": "ActionGroupingBehavior"},
        {"name": "selectionBehavior", "type": "ActionSelectionBehavior"},
        {"name": "requiredBehavior", "type": "ActionRequiredBehavior"},
        {"name": "precheckBehavior", "type": "ActionPrecheckBehavior"},
        {"name": "cardinalityBehavior", "type": "ActionCardinalityBehavior"},
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
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measure", "type": "CodeableConcept"},
        {
          "name": "detail",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "due", "type": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.GoalComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "type": "CodeableConcept"},
        {"name": "description", "type": "CodeableConcept"},
        {"name": "priority", "type": "CodeableConcept"},
        {"name": "start", "type": "CodeableConcept"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
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
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
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
        {"name": "id", "type": "string"},
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
        {"name": "code", "type": "CodeableConcept"},
        {"name": "period", "type": "Period"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {"name": "period", "type": "Period"},
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
        {"name": "availabilityExceptions", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "allDay", "type": "boolean"},
        {"name": "availableStartTime", "type": "time"},
        {"name": "availableEndTime", "type": "time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole.NotAvailableComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "during", "type": "Period"}
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ProcedureStatus"},
        {"name": "notDone", "type": "boolean"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "performed",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
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
        {"name": "outcome", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "type": "CodeableConcept"},
        {"name": "manipulated", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.PerformerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "CodeableConcept"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ProcedureRequestStatus"},
        {"name": "intent", "type": "ProcedureRequestIntent"},
        {"name": "priority", "type": "ProcedureRequestPriority"},
        {"name": "doNotPerform", "type": "boolean"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "authoredOn", "type": "dateTime"},
        {"name": "requester", "type": "ProcedureRequest.RequesterComponent"},
        {"name": "performerType", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
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
      "name": "ProcedureRequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ProcessRequest",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ProcessRequestStatus"},
        {"name": "action", "type": "ActionList"},
        {"name": "target", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "nullify", "type": "boolean"},
        {"name": "reference", "type": "string"},
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
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest.ItemComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sequenceLinkId", "type": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ProcessResponse",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ProcessResponseStatus"},
        {"name": "created", "type": "dateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "disposition", "type": "string"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "form", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PropertyRepresentation",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PropertyType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Provenance",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "period", "type": "Period"},
        {"name": "recorded", "type": "instant"},
        {
          "name": "policy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "activity", "type": "Coding"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "relatedAgentType", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.EntityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "type": "ProvenanceEntityRole"},
        {
          "name": "what",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
              "modelName": "FHIR",
              "name": "Provenance.AgentComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProvenanceEntityRole",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PublicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Quantity",
      "baseType": "Element",
      "retrievable": false,
      "label": "Quantity",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "decimal"},
        {"name": "comparator", "type": "QuantityComparator"},
        {"name": "unit", "type": "string"},
        {"name": "system", "type": "uri"},
        {"name": "code", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuantityComparator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Questionnaire",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {"name": "approvalDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
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
        {"name": "copyright", "type": "markdown"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "question", "type": "string"},
        {"name": "hasAnswer", "type": "boolean"},
        {
          "name": "answer",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "linkId", "type": "string"},
        {"name": "definition", "type": "uri"},
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prefix", "type": "string"},
        {"name": "text", "type": "string"},
        {"name": "type", "type": "QuestionnaireItemType"},
        {
          "name": "enableWhen",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "required", "type": "boolean"},
        {"name": "repeats", "type": "boolean"},
        {"name": "readOnly", "type": "boolean"},
        {"name": "maxLength", "type": "integer"},
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
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
              "modelName": "FHIR",
              "name": "Questionnaire.ItemComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireItemType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "QuestionnaireResponse",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "QuestionnaireResponseStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "authored", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "linkId", "type": "string"},
        {"name": "definition", "type": "uri"},
        {"name": "text", "type": "string"},
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
              "modelName": "FHIR",
              "name": "QuestionnaireResponse.ItemComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Range",
      "baseType": "Element",
      "retrievable": false,
      "label": "Range",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "low", "type": "SimpleQuantity"},
        {"name": "high", "type": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Ratio",
      "baseType": "Element",
      "retrievable": false,
      "label": "Ratio",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "numerator", "type": "Quantity"},
        {"name": "denominator", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "label": "Reference",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reference", "type": "string"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "display", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ReferenceHandlingPolicy",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ReferenceVersionRules",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ReferralCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ReferralPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ReferralRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ReferralRequest",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ReferralRequestStatus"},
        {"name": "intent", "type": "ReferralCategory"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "priority", "type": "ReferralPriority"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "authoredOn", "type": "dateTime"},
        {"name": "requester", "type": "ReferralRequest.RequesterComponent"},
        {"name": "specialty", "type": "CodeableConcept"},
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
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
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
      "name": "ReferralRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ReferredDocumentStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "RelatedArtifact",
      "baseType": "Element",
      "retrievable": false,
      "label": "RelatedArtifact",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "RelatedArtifactType"},
        {"name": "display", "type": "string"},
        {"name": "citation", "type": "string"},
        {"name": "url", "type": "uri"},
        {"name": "document", "type": "Attachment"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedArtifactType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "RelatedPerson",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "RelatedPerson",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {"name": "patient", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
        {
          "name": "name",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "photo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RequestGroup",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "RequestGroup",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "RequestStatus"},
        {"name": "intent", "type": "RequestIntent"},
        {"name": "priority", "type": "RequestPriority"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "authoredOn", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "ActionConditionKind"},
        {"name": "description", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RequestGroup.Action.RelatedActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actionId", "type": "id"},
        {"name": "relationship", "type": "ActionRelationshipType"},
        {
          "name": "offset",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              }
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "label", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "textEquivalent", "type": "string"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "type", "type": "Coding"},
        {"name": "groupingBehavior", "type": "ActionGroupingBehavior"},
        {"name": "selectionBehavior", "type": "ActionSelectionBehavior"},
        {"name": "requiredBehavior", "type": "ActionRequiredBehavior"},
        {"name": "precheckBehavior", "type": "ActionPrecheckBehavior"},
        {"name": "cardinalityBehavior", "type": "ActionCardinalityBehavior"},
        {"name": "resource", "type": "Reference"},
        {
          "name": "action",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
              "name": "RequestGroup.ActionComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "RequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "RequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ResearchStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ResearchStudy",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "title", "type": "string"},
        {
          "name": "protocol",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "ResearchStudyStatus"},
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
        {"name": "description", "type": "markdown"},
        {
          "name": "enrollment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "type": "Period"},
        {"name": "sponsor", "type": "Reference"},
        {"name": "principalInvestigator", "type": "Reference"},
        {
          "name": "site",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reasonStopped", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResearchStudyStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ResearchSubject",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ResearchSubject",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "ResearchSubjectStatus"},
        {"name": "period", "type": "Period"},
        {"name": "study", "type": "Reference"},
        {"name": "individual", "type": "Reference"},
        {"name": "assignedArm", "type": "string"},
        {"name": "actualArm", "type": "string"},
        {"name": "consent", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResearchSubjectStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Resource",
      "retrievable": true,
      "label": "Resource",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResourceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ResourceVersionPolicy",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ResponseType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "RestfulCapabilityMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "RiskAssessment",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "RiskAssessmentStatus"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "mitigation", "type": "string"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment.PredictionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "outcome", "type": "CodeableConcept"},
        {
          "name": "probability",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "qualitativeRisk", "type": "CodeableConcept"},
        {"name": "relativeRisk", "type": "decimal"},
        {
          "name": "when",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "rationale", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessmentStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SampledData",
      "baseType": "Element",
      "retrievable": false,
      "label": "SampledData",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "origin", "type": "SimpleQuantity"},
        {"name": "period", "type": "decimal"},
        {"name": "factor", "type": "decimal"},
        {"name": "lowerLimit", "type": "decimal"},
        {"name": "upperLimit", "type": "decimal"},
        {"name": "dimensions", "type": "positiveInt"},
        {"name": "data", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Schedule",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "active", "type": "boolean"},
        {"name": "serviceCategory", "type": "CodeableConcept"},
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
        {"name": "planningHorizon", "type": "Period"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SearchComparator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SearchEntryMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SearchModifierCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SearchParamType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "SearchParameter",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
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
        {"name": "purpose", "type": "markdown"},
        {"name": "code", "type": "code"},
        {
          "name": "base",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "SearchParamType"},
        {"name": "derivedFrom", "type": "uri"},
        {"name": "description", "type": "markdown"},
        {"name": "expression", "type": "string"},
        {"name": "xpath", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "type": "Reference"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SectionMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Sequence",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Sequence",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "type", "type": "code"},
        {"name": "coordinateSystem", "type": "integer"},
        {"name": "patient", "type": "Reference"},
        {"name": "specimen", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "referenceSeq", "type": "Sequence.ReferenceSeqComponent"},
        {
          "name": "variant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "observedSeq", "type": "string"},
        {
          "name": "quality",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "readCoverage", "type": "integer"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "qualityType"},
        {"name": "standardSequence", "type": "CodeableConcept"},
        {"name": "start", "type": "integer"},
        {"name": "end", "type": "integer"},
        {"name": "score", "type": "Quantity"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "truthTP", "type": "decimal"},
        {"name": "queryTP", "type": "decimal"},
        {"name": "truthFN", "type": "decimal"},
        {"name": "queryFP", "type": "decimal"},
        {"name": "gtFP", "type": "decimal"},
        {"name": "precision", "type": "decimal"},
        {"name": "recall", "type": "decimal"},
        {"name": "fScore", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.ReferenceSeqComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "chromosome", "type": "CodeableConcept"},
        {"name": "genomeBuild", "type": "string"},
        {"name": "referenceSeqId", "type": "CodeableConcept"},
        {"name": "referenceSeqPointer", "type": "Reference"},
        {"name": "referenceSeqString", "type": "string"},
        {"name": "strand", "type": "integer"},
        {"name": "windowStart", "type": "integer"},
        {"name": "windowEnd", "type": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.RepositoryComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "repositoryType"},
        {"name": "url", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "datasetId", "type": "string"},
        {"name": "variantsetId", "type": "string"},
        {"name": "readsetId", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.VariantComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "start", "type": "integer"},
        {"name": "end", "type": "integer"},
        {"name": "observedAllele", "type": "string"},
        {"name": "referenceAllele", "type": "string"},
        {"name": "cigar", "type": "string"},
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {"name": "usage", "type": "string"},
        {"name": "approvalDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
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
        {"name": "copyright", "type": "markdown"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "when", "type": "instant"},
        {
          "name": "who",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "contentType", "type": "MimeType"},
        {"name": "blob", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SimpleQuantity",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "SlicingRules",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Slot",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "serviceCategory", "type": "CodeableConcept"},
        {
          "name": "serviceType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentType", "type": "CodeableConcept"},
        {"name": "schedule", "type": "Reference"},
        {"name": "status", "type": "SlotStatus"},
        {"name": "start", "type": "instant"},
        {"name": "end", "type": "instant"},
        {"name": "overbooked", "type": "boolean"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SlotStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Specimen",
      "primaryCodePath": "type",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "SpecimenStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "receivedTime", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "bodySite", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.ContainerComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "description", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "capacity", "type": "SimpleQuantity"},
        {"name": "specimenQuantity", "type": "SimpleQuantity"},
        {
          "name": "additive",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "procedure", "type": "CodeableConcept"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SpecimenStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "StructureDefinition",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
        {
          "name": "keyword",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fhirVersion", "type": "id"},
        {
          "name": "mapping",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "type": "StructureDefinitionKind"},
        {"name": "abstract", "type": "boolean"},
        {"name": "contextType", "type": "ExtensionContext"},
        {
          "name": "context",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "code"},
        {"name": "baseDefinition", "type": "uri"},
        {"name": "derivation", "type": "TypeDerivationRule"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identity", "type": "id"},
        {"name": "uri", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.SnapshotComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
      "name": "StructureDefinitionKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "StructureMap",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "id"},
        {"name": "type", "type": "string"},
        {"name": "mode", "type": "StructureMapInputMode"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.Rule.DependentComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "id"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "id"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "type", "type": "string"},
        {
          "name": "defaultValue",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Meta",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "element", "type": "string"},
        {"name": "listMode", "type": "StructureMapSourceListMode"},
        {"name": "variable", "type": "id"},
        {"name": "condition", "type": "string"},
        {"name": "check", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group.Rule.Target.ParameterComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "type": "id"},
        {"name": "element", "type": "string"},
        {"name": "variable", "type": "id"},
        {
          "name": "listMode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "listRuleId", "type": "id"},
        {"name": "transform", "type": "StructureMapTransform"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "id"},
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
              "modelName": "FHIR",
              "name": "StructureMap.Group.RuleComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "dependent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.GroupComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "id"},
        {"name": "extends", "type": "id"},
        {"name": "typeMode", "type": "StructureMapGroupTypeMode"},
        {"name": "documentation", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "uri"},
        {"name": "mode", "type": "StructureMapModelMode"},
        {"name": "alias", "type": "string"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapContextType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapGroupTypeMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapInputMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapModelMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapSourceListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapTargetListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapTransform",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Subscription",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Subscription",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "SubscriptionStatus"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "end", "type": "instant"},
        {"name": "reason", "type": "string"},
        {"name": "criteria", "type": "string"},
        {"name": "error", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "SubscriptionChannelType"},
        {"name": "endpoint", "type": "uri"},
        {"name": "payload", "type": "string"},
        {
          "name": "header",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubscriptionChannelType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SubscriptionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Substance",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "FHIRSubstanceStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "Ratio"},
        {
          "name": "substance",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "Identifier"},
        {"name": "expiry", "type": "dateTime"},
        {"name": "quantity", "type": "SimpleQuantity"}
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
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "SupplyDeliveryStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "type", "type": "CodeableConcept"},
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
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "SimpleQuantity"},
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
      "name": "SupplyDeliveryStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SupplyRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "SupplyRequest",
      "primaryCodePath": "category",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "SupplyRequestStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "priority", "type": "RequestPriority"},
        {"name": "orderedItem", "type": "SupplyRequest.OrderedItemComponent"},
        {
          "name": "occurrence",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "authoredOn", "type": "dateTime"},
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
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "Quantity"},
        {
          "name": "item",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
      "name": "SupplyRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SystemRestfulInteraction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SystemVersionProcessingMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Task",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "Task",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "status", "type": "TaskStatus"},
        {"name": "businessStatus", "type": "CodeableConcept"},
        {"name": "intent", "type": "TaskIntent"},
        {"name": "priority", "type": "TaskPriority"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "focus", "type": "Reference"},
        {"name": "for", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "executionPeriod", "type": "Period"},
        {"name": "authoredOn", "type": "dateTime"},
        {"name": "lastModified", "type": "dateTime"},
        {"name": "requester", "type": "Task.RequesterComponent"},
        {
          "name": "performerType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "type": "Reference"},
        {"name": "reason", "type": "CodeableConcept"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {"modelName": "FHIR", "name": "id", "type": "NamedTypeSpecifier"},
              {
                "modelName": "FHIR",
                "name": "instant",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "markdown",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "oid",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "positiveInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "time",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "unsignedInt",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Address",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Age",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Annotation",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Attachment",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Coding",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactPoint",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Count",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Distance",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Duration",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "HumanName",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Identifier",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Money",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "SampledData",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Signature",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "repetitions", "type": "positiveInt"},
        {"name": "period", "type": "Period"},
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TaskIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TaskPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TaskStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "TestReport",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "name", "type": "string"},
        {"name": "status", "type": "TestReportStatus"},
        {"name": "testScript", "type": "Reference"},
        {"name": "result", "type": "TestReportResult"},
        {"name": "score", "type": "decimal"},
        {"name": "tester", "type": "string"},
        {"name": "issued", "type": "dateTime"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "TestReportParticipantType"},
        {"name": "uri", "type": "uri"},
        {"name": "display", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Setup.Action.AssertComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "result", "type": "TestReportActionResult"},
        {"name": "message", "type": "markdown"},
        {"name": "detail", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Setup.Action.OperationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "result", "type": "TestReportActionResult"},
        {"name": "message", "type": "markdown"},
        {"name": "detail", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Setup.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReportActionResult",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestReportParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestReportResult",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "TestScript",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "index", "type": "integer"},
        {"name": "profile", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.FixtureComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "autocreate", "type": "boolean"},
        {"name": "autodelete", "type": "boolean"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Metadata.CapabilityComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "required", "type": "boolean"},
        {"name": "validated", "type": "boolean"},
        {"name": "description", "type": "string"},
        {
          "name": "origin",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "destination", "type": "integer"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "type": "uri"},
        {"name": "description", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.MetadataComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "index", "type": "integer"},
        {"name": "profile", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule.ParamComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Ruleset.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "ruleId", "type": "id"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Assert.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "ruleId", "type": "id"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Assert.Ruleset.RuleComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "ruleId", "type": "id"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "rulesetId", "type": "id"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "label", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "direction", "type": "AssertionDirectionType"},
        {"name": "compareToSourceId", "type": "string"},
        {"name": "compareToSourceExpression", "type": "string"},
        {"name": "compareToSourcePath", "type": "string"},
        {"name": "contentType", "type": "ContentType"},
        {"name": "expression", "type": "string"},
        {"name": "headerField", "type": "string"},
        {"name": "minimumId", "type": "string"},
        {"name": "navigationLinks", "type": "boolean"},
        {"name": "operator", "type": "AssertionOperatorType"},
        {"name": "path", "type": "string"},
        {"name": "requestMethod", "type": "TestScriptRequestMethodCode"},
        {"name": "requestURL", "type": "string"},
        {"name": "resource", "type": "FHIRDefinedType"},
        {"name": "response", "type": "AssertionResponseTypes"},
        {
          "name": "rule",
          "type": "TestScript.Setup.Action.Assert.RuleComponent"
        },
        {"name": "sourceId", "type": "id"},
        {"name": "validateProfileId", "type": "id"},
        {"name": "value", "type": "string"},
        {"name": "warningOnly", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.Operation.RequestHeaderComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "field", "type": "string"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.Action.OperationComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "Coding"},
        {"name": "resource", "type": "FHIRDefinedType"},
        {"name": "label", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "accept", "type": "ContentType"},
        {"name": "contentType", "type": "ContentType"},
        {"name": "destination", "type": "integer"},
        {"name": "encodeRequestUrl", "type": "boolean"},
        {"name": "origin", "type": "integer"},
        {"name": "params", "type": "string"},
        {
          "name": "requestHeader",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "requestId", "type": "id"},
        {"name": "responseId", "type": "id"},
        {"name": "sourceId", "type": "id"},
        {"name": "targetId", "type": "id"},
        {"name": "url", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup.ActionComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {"name": "defaultValue", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "expression", "type": "string"},
        {"name": "headerField", "type": "string"},
        {"name": "hint", "type": "string"},
        {"name": "path", "type": "string"},
        {"name": "sourceId", "type": "id"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScriptRequestMethodCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Timing",
      "baseType": "Element",
      "retrievable": false,
      "label": "Timing",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "event",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "repeat", "type": "Element"},
        {"name": "code", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TriggerDefinition",
      "baseType": "Element",
      "retrievable": false,
      "label": "TriggerDefinition",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "TriggerType"},
        {"name": "eventName", "type": "string"},
        {
          "name": "eventTiming",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "Timing",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "date",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "dateTime",
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
      "name": "TriggerType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TypeDerivationRule",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TypeRestfulInteraction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "UDIEntryType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "UnitsOfTime",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "UnknownContentCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "UsageContext",
      "baseType": "Element",
      "retrievable": false,
      "label": "UsageContext",
      "primaryCodePath": "code",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "Coding"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Range",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Use",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "ValueSet",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "markdown"},
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "immutable", "type": "boolean"},
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
        {"name": "extensible", "type": "boolean"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose.Include.ConceptComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "property", "type": "code"},
        {"name": "op", "type": "FilterOperator"},
        {"name": "value", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose.IncludeComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "lockedDate", "type": "date"},
        {"name": "inactive", "type": "boolean"},
        {
          "name": "include",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "exclude",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "uri"},
        {"name": "abstract", "type": "boolean"},
        {"name": "inactive", "type": "boolean"},
        {"name": "version", "type": "string"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {
          "name": "designation",
          "typeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "modelName": "FHIR",
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
              "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {
          "name": "value",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "string",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "integer",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "decimal",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "uri",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "code",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "identifier", "type": "uri"},
        {"name": "timestamp", "type": "dateTime"},
        {"name": "total", "type": "integer"},
        {"name": "offset", "type": "integer"},
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
      "name": "VisionBase",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "VisionEyes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "VisionPrescription",
      "baseType": "DomainResource",
      "retrievable": true,
      "label": "VisionPrescription",
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"},
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
        {"name": "status", "type": "VisionStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateWritten", "type": "dateTime"},
        {"name": "prescriber", "type": "Reference"},
        {
          "name": "reason",
          "typeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "modelName": "FHIR",
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
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
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifierExtension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "product", "type": "CodeableConcept"},
        {"name": "eye", "type": "VisionEyes"},
        {"name": "sphere", "type": "decimal"},
        {"name": "cylinder", "type": "decimal"},
        {"name": "axis", "type": "integer"},
        {"name": "prism", "type": "decimal"},
        {"name": "base", "type": "VisionBase"},
        {"name": "add", "type": "decimal"},
        {"name": "power", "type": "decimal"},
        {"name": "backCurve", "type": "decimal"},
        {"name": "diameter", "type": "decimal"},
        {"name": "duration", "type": "SimpleQuantity"},
        {"name": "color", "type": "string"},
        {"name": "brand", "type": "string"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "VisionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "XPathUsageType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "base64Binary",
      "baseType": "Element",
      "retrievable": false,
      "label": "base64Binary",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "boolean",
      "baseType": "Element",
      "retrievable": false,
      "label": "boolean",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "code",
      "baseType": "string",
      "retrievable": false,
      "label": "code",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "date",
      "baseType": "Element",
      "retrievable": false,
      "label": "date",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "dateTime",
      "baseType": "Element",
      "retrievable": false,
      "label": "dateTime",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "decimal",
      "baseType": "Element",
      "retrievable": false,
      "label": "decimal",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "id",
      "baseType": "string",
      "retrievable": false,
      "label": "id",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "instant",
      "baseType": "Element",
      "retrievable": false,
      "label": "instant",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "integer",
      "baseType": "Element",
      "retrievable": false,
      "label": "integer",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "markdown",
      "baseType": "string",
      "retrievable": false,
      "label": "markdown",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "oid",
      "baseType": "uri",
      "retrievable": false,
      "label": "oid",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "positiveInt",
      "baseType": "integer",
      "retrievable": false,
      "label": "positiveInt",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "qualityType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "repositoryType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "string",
      "baseType": "Element",
      "retrievable": false,
      "label": "string",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "time",
      "baseType": "Element",
      "retrievable": false,
      "label": "time",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.Time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "unsignedInt",
      "baseType": "integer",
      "retrievable": false,
      "label": "unsignedInt",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.Integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "uri",
      "baseType": "Element",
      "retrievable": false,
      "label": "uri",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "uuid",
      "baseType": "uri",
      "retrievable": false,
      "label": "uuid",
      "element": [
        {"name": "id", "type": "string"},
        {
          "name": "extension",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "xhtml",
      "baseType": "Element",
      "retrievable": false,
      "label": "xhtml",
      "element": [
        {"name": "id", "type": "string"},
        {"name": "extension", "type": "Extension"},
        {"name": "value", "type": "System.String"}
      ]
    }
  ],
  "conversionInfo": [
    {
      "functionName": "FHIRHelpers.ToBoolean",
      "fromType": "boolean",
      "toType": "System.Boolean"
    },
    {
      "functionName": "FHIRHelpers.ToDate",
      "fromType": "date",
      "toType": "System.Date"
    },
    {
      "functionName": "FHIRHelpers.ToDateTime",
      "fromType": "instant",
      "toType": "System.DateTime"
    },
    {
      "functionName": "FHIRHelpers.ToDateTime",
      "fromType": "dateTime",
      "toType": "System.DateTime"
    },
    {
      "functionName": "FHIRHelpers.ToDecimal",
      "fromType": "decimal",
      "toType": "System.Decimal"
    },
    {
      "functionName": "FHIRHelpers.ToInteger",
      "fromType": "positiveInt",
      "toType": "System.Integer"
    },
    {
      "functionName": "FHIRHelpers.ToInteger",
      "fromType": "unsignedInt",
      "toType": "System.Integer"
    },
    {
      "functionName": "FHIRHelpers.ToInteger",
      "fromType": "integer",
      "toType": "System.Integer"
    },
    {
      "functionName": "FHIRHelpers.ToTime",
      "fromType": "time",
      "toType": "System.Time"
    },
    {
      "functionName": "FHIRHelpers.ToConcept",
      "fromType": "CodeableConcept",
      "toType": "System.Concept"
    },
    {
      "functionName": "FHIRHelpers.ToCode",
      "fromType": "Coding",
      "toType": "System.Code"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "string",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "id",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "code",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "markdown",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "uri",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "oid",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "uuid",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "base64Binary",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToRatio",
      "fromType": "Ratio",
      "toType": "System.Ratio"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AccountStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionCardinalityBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionConditionKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionGroupingBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionList",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionParticipantType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionPrecheckBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionRequiredBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionSelectionBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActivityDefinitionKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActivityParticipantType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AddressType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AddressUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AdministrativeGender",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AdverseEventCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AdverseEventCausality",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AggregationMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceClinicalStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceCriticality",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceVerificationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AppointmentStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionDirectionType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionOperatorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionResponseTypes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventAction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventAgentNetworkType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventOutcome",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BindingStrength",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BundleType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CapabilityStatementKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanActivityStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CareTeamStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ChargeItemStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClaimResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClaimStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClinicalImpressionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CodeSystemContentMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CodeSystemHierarchyMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompartmentCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompartmentType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompositionAttestationMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompositionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConceptMapEquivalence",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConceptMapGroupUnmappedMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionClinicalStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionVerificationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionalDeleteStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionalReadStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentDataMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentExceptType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentState",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConstraintSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContactPointSystem",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContactPointUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContentType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContractStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContributorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CoverageStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DataElementStringency",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DayOfWeek",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DaysOfWeek",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DetectedIssueSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DetectedIssueStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCalibrationState",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCalibrationType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricColor",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricOperationalStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceUseStatementStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DiagnosticReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DigitalMediaType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DiscriminatorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentConfidentiality",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentReferenceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EligibilityRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EligibilityResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EncounterLocationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EncounterStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EndpointStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EnrollmentRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EnrollmentResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EpisodeOfCareStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EventCapabilityMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EventTiming",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ExplanationOfBenefitStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ExtensionContext",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRAllTypes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRDefinedType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRDeviceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRSubstanceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FamilyHistoryStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FilterOperator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FlagStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GoalStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GraphCompartmentRule",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GroupType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuidanceResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuideDependencyType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuidePageKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "HTTPVerb",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IdentifierUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IdentityAssuranceLevel",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ImmunizationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "InstanceAvailability",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IssueSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IssueType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LinkType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LinkageType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ListMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ListStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LocationMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LocationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasmntPrinciple",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasureReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasureReportType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationAdministrationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationDispenseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationRequestIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationRequestPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationStatementStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationStatementTaken",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MessageSignificanceCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MimeType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NameUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NamingSystemIdentifierType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NamingSystemType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NarrativeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NutritionOrderStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ObservationRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ObservationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "OperationKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "OperationParameterUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParameterUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipantRequired",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipantStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PaymentNoticeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PaymentReconciliationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureRequestIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureRequestPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcessRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcessResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PropertyRepresentation",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PropertyType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProvenanceEntityRole",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PublicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuantityComparator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireItemType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferenceHandlingPolicy",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferenceVersionRules",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferralCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferralPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferralRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferredDocumentStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RelatedArtifactType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RequestIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RequestPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResearchStudyStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResearchSubjectStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResourceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResourceVersionPolicy",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResponseType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RestfulCapabilityMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RiskAssessmentStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchComparator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchEntryMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchModifierCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchParamType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SectionMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SlicingRules",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SlotStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SpecimenStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureDefinitionKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapContextType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapGroupTypeMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapInputMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapModelMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapSourceListMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapTargetListMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapTransform",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SubscriptionChannelType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SubscriptionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SupplyDeliveryStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SupplyRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SystemRestfulInteraction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SystemVersionProcessingMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TaskIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TaskPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TaskStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportActionResult",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportParticipantType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportResult",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestScriptRequestMethodCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TriggerType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TypeDerivationRule",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TypeRestfulInteraction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UDIEntryType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UnitsOfTime",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UnknownContentCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "Use",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "VisionBase",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "VisionEyes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "VisionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "XPathUsageType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "qualityType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "repositoryType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToInterval",
      "fromType": "Period",
      "toType": "Interval<System.DateTime>"
    },
    {
      "functionName": "FHIRHelpers.ToInterval",
      "fromType": "Range",
      "toType": "Interval<System.Quantity>"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "Quantity",
      "toType": "System.Quantity"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "Age",
      "toType": "System.Quantity"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "Count",
      "toType": "System.Quantity"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "Distance",
      "toType": "System.Quantity"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "Duration",
      "toType": "System.Quantity"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "SimpleQuantity",
      "toType": "System.Quantity"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "Money",
      "toType": "System.Quantity"
    }
  ]
});
