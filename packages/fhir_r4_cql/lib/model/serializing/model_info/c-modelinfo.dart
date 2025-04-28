// ignore_for_file: file_names

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


final cmodelinfo = ModelInfo.fromJson({
  "name": "FHIR",
  "url": "http://hl7.org/fhir",
  "targetQualifier": "fhir",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate.value",
  "version": "4.0.1",
  "requiredModelInfo": {"name": "System", "version": "1.0.0"},
  "typeInfo": [
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Account",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Account",
      "label": "Account",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "AccountStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "name", "elementType": "string"},
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "servicePeriod", "elementType": "Period"},
        {
          "name": "coverage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "elementType": "Reference"},
        {"name": "description", "elementType": "string"},
        {
          "name": "guarantor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "partOf", "elementType": "Reference"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "subject"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Account.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "coverage", "elementType": "Reference"},
        {"name": "priority", "elementType": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Account.Guarantor",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "party", "elementType": "Reference"},
        {"name": "onHold", "elementType": "boolean"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AccountStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionCardinalityBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionConditionKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionGroupingBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionPrecheckBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionRequiredBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActionSelectionBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActivityDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ActivityDefinition",
      "label": "ActivityDefinition",
      "primaryCodePath": "topic",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "usage", "elementType": "string"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "elementType": "ActivityDefinitionKind"},
        {"name": "profile", "elementType": "canonical"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "intent", "elementType": "RequestIntent"},
        {"name": "priority", "elementType": "RequestPriority"},
        {"name": "doNotPerform", "elementType": "boolean"},
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {
          "name": "dosage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimenRequirement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "observationRequirement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "observationResultRequirement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "transform", "elementType": "canonical"},
        {
          "name": "dynamicValue",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActivityDefinition.DynamicValue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "expression", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActivityDefinition.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "ActivityParticipantType"},
        {"name": "role", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActivityDefinitionKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ActivityParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Address",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Address",
      "label": "Address",
      "element": [
        {"name": "use", "elementType": "AddressUse"},
        {"name": "type", "elementType": "AddressType"},
        {"name": "text", "elementType": "string"},
        {
          "name": "line",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "city", "elementType": "string"},
        {"name": "district", "elementType": "string"},
        {"name": "state", "elementType": "string"},
        {"name": "postalCode", "elementType": "string"},
        {"name": "country", "elementType": "string"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AddressType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AddressUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AdministrativeGender",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AdverseEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
      "label": "AdverseEvent",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "actuality", "elementType": "AdverseEventActuality"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "event", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "detected", "elementType": "dateTime"},
        {"name": "recordedDate", "elementType": "dateTime"},
        {
          "name": "resultingCondition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "elementType": "Reference"},
        {"name": "seriousness", "elementType": "CodeableConcept"},
        {"name": "severity", "elementType": "CodeableConcept"},
        {"name": "outcome", "elementType": "CodeableConcept"},
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
        {"context": "RelatedPerson", "relatedKeyElement": "recorder"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AdverseEvent.SuspectEntity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "instance", "elementType": "Reference"},
        {
          "name": "causality",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AdverseEvent.SuspectEntity.Causality",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "assessment", "elementType": "CodeableConcept"},
        {"name": "productRelatedness", "elementType": "string"},
        {"name": "author", "elementType": "Reference"},
        {"name": "method", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AdverseEventActuality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Age",
      "baseType": "Quantity",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Age",
      "label": "Age"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AggregationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
      "label": "AllergyIntolerance",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "clinicalStatus", "elementType": "CodeableConcept"},
        {"name": "verificationStatus", "elementType": "CodeableConcept"},
        {"name": "type", "elementType": "AllergyIntoleranceType"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "criticality", "elementType": "AllergyIntoleranceCriticality"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "recordedDate", "elementType": "dateTime"},
        {"name": "recorder", "elementType": "Reference"},
        {"name": "asserter", "elementType": "Reference"},
        {"name": "lastOccurrence", "elementType": "dateTime"},
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
        {"context": "RelatedPerson", "relatedKeyElement": "asserter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AllergyIntolerance.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "substance", "elementType": "CodeableConcept"},
        {
          "name": "manifestation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "onset", "elementType": "dateTime"},
        {"name": "severity", "elementType": "AllergyIntoleranceSeverity"},
        {"name": "exposureRoute", "elementType": "CodeableConcept"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AllergyIntoleranceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AllergyIntoleranceCriticality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AllergyIntoleranceSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AllergyIntoleranceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
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
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "time", "elementType": "dateTime"},
        {"name": "text", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Appointment",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Appointment",
      "label": "Appointment",
      "primaryCodePath": "serviceType",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "AppointmentStatus"},
        {"name": "cancelationReason", "elementType": "CodeableConcept"},
        {
          "name": "serviceCategory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviceType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentType", "elementType": "CodeableConcept"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "elementType": "unsignedInt"},
        {"name": "description", "elementType": "string"},
        {
          "name": "supportingInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "start", "elementType": "instant"},
        {"name": "end", "elementType": "instant"},
        {"name": "minutesDuration", "elementType": "positiveInt"},
        {
          "name": "slot",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "created", "elementType": "dateTime"},
        {"name": "comment", "elementType": "string"},
        {"name": "patientInstruction", "elementType": "string"},
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "requestedPeriod",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Device", "relatedKeyElement": "actor"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Appointment.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "elementType": "Reference"},
        {"name": "required", "elementType": "ParticipantRequired"},
        {"name": "status", "elementType": "ParticipationStatus"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AppointmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/AppointmentResponse",
      "label": "AppointmentResponse",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointment", "elementType": "Reference"},
        {"name": "start", "elementType": "instant"},
        {"name": "end", "elementType": "instant"},
        {
          "name": "participantType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "actor", "elementType": "Reference"},
        {"name": "participantStatus", "elementType": "ParticipantStatus"},
        {"name": "comment", "elementType": "string"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Device", "relatedKeyElement": "actor"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AppointmentStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AssertionDirectionType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AssertionOperatorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AssertionResponseTypes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Attachment",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Attachment",
      "label": "Attachment",
      "element": [
        {"name": "contentType", "elementType": "MimeType"},
        {"name": "language", "elementType": "code"},
        {"name": "data", "elementType": "base64Binary"},
        {"name": "url", "elementType": "url"},
        {"name": "size", "elementType": "unsignedInt"},
        {"name": "hash", "elementType": "base64Binary"},
        {"name": "title", "elementType": "string"},
        {"name": "creation", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/AuditEvent",
      "label": "AuditEvent",
      "element": [
        {"name": "type", "elementType": "Coding"},
        {
          "name": "subtype",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "elementType": "AuditEventAction"},
        {"name": "period", "elementType": "Period"},
        {"name": "recorded", "elementType": "instant"},
        {"name": "outcome", "elementType": "AuditEventOutcome"},
        {"name": "outcomeDesc", "elementType": "string"},
        {
          "name": "purposeOfEvent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "agent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "elementType": "AuditEvent.Source"},
        {
          "name": "entity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "who"},
        {"context": "Device", "relatedKeyElement": "who"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEvent.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "role",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "who", "elementType": "Reference"},
        {"name": "altId", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "requestor", "elementType": "boolean"},
        {"name": "location", "elementType": "Reference"},
        {
          "name": "policy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "media", "elementType": "Coding"},
        {"name": "network", "elementType": "AuditEvent.Agent.Network"},
        {
          "name": "purposeOfUse",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEvent.Agent.Network",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "address", "elementType": "string"},
        {"name": "type", "elementType": "AuditEventAgentNetworkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEvent.Entity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "what", "elementType": "Reference"},
        {"name": "type", "elementType": "Coding"},
        {"name": "role", "elementType": "Coding"},
        {"name": "lifecycle", "elementType": "Coding"},
        {
          "name": "securityLabel",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "query", "elementType": "base64Binary"},
        {
          "name": "detail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEvent.Entity.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "string"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "base64Binary", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEvent.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "site", "elementType": "string"},
        {"name": "observer", "elementType": "Reference"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEventAction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEventAgentNetworkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "AuditEventOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
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
      "namespace": "FHIR",
      "name": "Basic",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Basic",
      "label": "Basic",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "created", "elementType": "date"},
        {"name": "author", "elementType": "Reference"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "author"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Binary",
      "baseType": "Resource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Binary",
      "label": "Binary",
      "element": [
        {"name": "contentType", "elementType": "MimeType"},
        {"name": "securityContext", "elementType": "Reference"},
        {"name": "data", "elementType": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BindingStrength",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProduct",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct",
      "label": "BiologicallyDerivedProduct",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "productCategory",
          "elementType": "BiologicallyDerivedProductCategory"
        },
        {"name": "productCode", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "BiologicallyDerivedProductStatus"},
        {
          "name": "request",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "integer"},
        {
          "name": "parent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "collection",
          "elementType": "BiologicallyDerivedProduct.Collection"
        },
        {
          "name": "processing",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manipulation",
          "elementType": "BiologicallyDerivedProduct.Manipulation"
        },
        {
          "name": "storage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProduct.Collection",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "collector", "elementType": "Reference"},
        {"name": "source", "elementType": "Reference"},
        {
          "name": "collected",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProduct.Manipulation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {
          "name": "time",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProduct.Processing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "procedure", "elementType": "CodeableConcept"},
        {"name": "additive", "elementType": "Reference"},
        {
          "name": "time",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProduct.Storage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "temperature", "elementType": "decimal"},
        {
          "name": "scale",
          "elementType": "BiologicallyDerivedProductStorageScale"
        },
        {"name": "duration", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProductCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProductStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BiologicallyDerivedProductStorageScale",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BodyStructure",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/BodyStructure",
      "label": "BodyStructure",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {"name": "morphology", "elementType": "CodeableConcept"},
        {"name": "location", "elementType": "CodeableConcept"},
        {
          "name": "locationQualifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {
          "name": "image",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Bundle",
      "baseType": "Resource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Bundle",
      "label": "Bundle",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "type", "elementType": "BundleType"},
        {"name": "timestamp", "elementType": "instant"},
        {"name": "total", "elementType": "unsignedInt"},
        {
          "name": "link",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entry",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "signature", "elementType": "Signature"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Bundle.Entry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "link",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Bundle.Link",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {"name": "fullUrl", "elementType": "uri"},
        {"name": "resource", "elementType": "Resource"},
        {"name": "search", "elementType": "Bundle.Entry.Search"},
        {"name": "request", "elementType": "Bundle.Entry.Request"},
        {"name": "response", "elementType": "Bundle.Entry.Response"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Bundle.Entry.Request",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "method", "elementType": "HTTPVerb"},
        {"name": "url", "elementType": "uri"},
        {"name": "ifNoneMatch", "elementType": "string"},
        {"name": "ifModifiedSince", "elementType": "instant"},
        {"name": "ifMatch", "elementType": "string"},
        {"name": "ifNoneExist", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Bundle.Entry.Response",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "elementType": "string"},
        {"name": "location", "elementType": "uri"},
        {"name": "etag", "elementType": "string"},
        {"name": "lastModified", "elementType": "instant"},
        {"name": "outcome", "elementType": "Resource"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Bundle.Entry.Search",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "elementType": "SearchEntryMode"},
        {"name": "score", "elementType": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Bundle.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relation", "elementType": "string"},
        {"name": "url", "elementType": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "BundleType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/CapabilityStatement",
      "label": "CapabilityStatement",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "kind", "elementType": "CapabilityStatementKind"},
        {
          "name": "instantiates",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "imports",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "software", "elementType": "CapabilityStatement.Software"},
        {
          "name": "implementation",
          "elementType": "CapabilityStatement.Implementation"
        },
        {"name": "fhirVersion", "elementType": "FHIRVersion"},
        {
          "name": "format",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "patchFormat",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "implementationGuide",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rest",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "messaging",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "document",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Document",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "elementType": "DocumentMode"},
        {"name": "documentation", "elementType": "markdown"},
        {"name": "profile", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Implementation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "url", "elementType": "url"},
        {"name": "custodian", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Messaging",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reliableCache", "elementType": "unsignedInt"},
        {"name": "documentation", "elementType": "markdown"},
        {
          "name": "supportedMessage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Messaging.Endpoint",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "protocol", "elementType": "Coding"},
        {"name": "address", "elementType": "url"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Messaging.SupportedMessage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "elementType": "EventCapabilityMode"},
        {"name": "definition", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Rest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "elementType": "RestfulCapabilityMode"},
        {"name": "documentation", "elementType": "markdown"},
        {
          "name": "security",
          "elementType": "CapabilityStatement.Rest.Security"
        },
        {
          "name": "resource",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "interaction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchParam",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "CapabilityStatement.Rest.Resource.SearchParam",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "operation",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "CapabilityStatement.Rest.Resource.Operation",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "compartment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Rest.Interaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "SystemRestfulInteraction"},
        {"name": "documentation", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Rest.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "ResourceType"},
        {"name": "profile", "elementType": "canonical"},
        {
          "name": "supportedProfile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "documentation", "elementType": "markdown"},
        {
          "name": "interaction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "versioning", "elementType": "ResourceVersionPolicy"},
        {"name": "readHistory", "elementType": "boolean"},
        {"name": "updateCreate", "elementType": "boolean"},
        {"name": "conditionalCreate", "elementType": "boolean"},
        {"name": "conditionalRead", "elementType": "ConditionalReadStatus"},
        {"name": "conditionalUpdate", "elementType": "boolean"},
        {"name": "conditionalDelete", "elementType": "ConditionalDeleteStatus"},
        {
          "name": "referencePolicy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchInclude",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchRevInclude",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "searchParam",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "operation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Rest.Resource.Interaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "TypeRestfulInteraction"},
        {"name": "documentation", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Rest.Resource.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "definition", "elementType": "canonical"},
        {"name": "documentation", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Rest.Resource.SearchParam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "definition", "elementType": "canonical"},
        {"name": "type", "elementType": "SearchParamType"},
        {"name": "documentation", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Rest.Security",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "cors", "elementType": "boolean"},
        {
          "name": "service",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatement.Software",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "version", "elementType": "string"},
        {"name": "releaseDate", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CapabilityStatementKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/CarePlan",
      "label": "CarePlan",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
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
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "CarePlanStatus"},
        {"name": "intent", "elementType": "CarePlanIntent"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"},
        {"name": "created", "elementType": "dateTime"},
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
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CarePlan.Activity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "outcomeCodeableConcept",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
      "namespace": "FHIR",
      "name": "CarePlan.Activity.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "kind", "elementType": "CarePlanActivityKind"},
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goal",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "CarePlanActivityStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {"name": "doNotPerform", "elementType": "boolean"},
        {
          "name": "scheduled",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
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
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "dailyAmount", "elementType": "SimpleQuantity"},
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "description", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CarePlanActivityKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CarePlanActivityStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CarePlanIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CarePlanStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CareTeam",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/CareTeam",
      "label": "CareTeam",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "CareTeamStatus"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "string"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"},
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "member"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CareTeam.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "role",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "member", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CareTeamStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CatalogEntry",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/CatalogEntry",
      "label": "CatalogEntry",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "orderable", "elementType": "boolean"},
        {"name": "referencedItem", "elementType": "Reference"},
        {
          "name": "additionalIdentifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "classification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "validityPeriod", "elementType": "Period"},
        {"name": "validTo", "elementType": "dateTime"},
        {"name": "lastUpdated", "elementType": "dateTime"},
        {
          "name": "additionalCharacteristic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "additionalClassification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedEntry",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CatalogEntry.RelatedEntry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relationtype", "elementType": "CatalogEntryRelationType"},
        {"name": "item", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CatalogEntryRelationType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItem",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ChargeItem",
      "label": "ChargeItem",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definitionUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "definitionCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ChargeItemStatus"},
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "context", "elementType": "Reference"},
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "performingOrganization", "elementType": "Reference"},
        {"name": "requestingOrganization", "elementType": "Reference"},
        {"name": "costCenter", "elementType": "Reference"},
        {"name": "quantity", "elementType": "Quantity"},
        {
          "name": "bodysite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "factorOverride", "elementType": "decimal"},
        {"name": "priceOverride", "elementType": "Money"},
        {"name": "overrideReason", "elementType": "string"},
        {"name": "enterer", "elementType": "Reference"},
        {"name": "enteredDate", "elementType": "dateTime"},
        {
          "name": "reason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "service",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "account",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "enterer"},
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Encounter", "relatedKeyElement": "context"},
        {"context": "Device", "relatedKeyElement": "enterer"},
        {"context": "Device", "relatedKeyElement": "actor"},
        {"context": "RelatedPerson", "relatedKeyElement": "enterer"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItem.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "elementType": "CodeableConcept"},
        {"name": "actor", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItemDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition",
      "label": "ChargeItemDefinition",
      "primaryCodePath": "code",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {
          "name": "derivedFromUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "replaces",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "instance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "applicability",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "propertyGroup",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItemDefinition.Applicability",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "language", "elementType": "string"},
        {"name": "expression", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItemDefinition.PropertyGroup",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "applicability",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ChargeItemDefinition.Applicability",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "priceComponent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItemDefinition.PropertyGroup.PriceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementType": "ChargeItemDefinitionPriceComponentType"
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "amount", "elementType": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItemDefinitionPriceComponentType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ChargeItemStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Claim",
      "label": "Claim",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ClaimStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subType", "elementType": "CodeableConcept"},
        {"name": "use", "elementType": "Use"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "billablePeriod", "elementType": "Period"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "enterer", "elementType": "Reference"},
        {"name": "insurer", "elementType": "Reference"},
        {"name": "provider", "elementType": "Reference"},
        {"name": "priority", "elementType": "CodeableConcept"},
        {"name": "fundsReserve", "elementType": "CodeableConcept"},
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
        {"name": "total", "elementType": "Money"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "enterer"},
        {"context": "Practitioner", "relatedKeyElement": "provider"},
        {"context": "Practitioner", "relatedKeyElement": "party"},
        {"context": "Practitioner", "relatedKeyElement": "provider"},
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
      "namespace": "FHIR",
      "name": "Claim.Accident",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "elementType": "date"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.CareTeam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "provider", "elementType": "Reference"},
        {"name": "responsible", "elementType": "boolean"},
        {"name": "role", "elementType": "CodeableConcept"},
        {"name": "qualification", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {
          "name": "diagnosis",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "onAdmission", "elementType": "CodeableConcept"},
        {"name": "packageCode", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "focal", "elementType": "boolean"},
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "coverage", "elementType": "Reference"},
        {"name": "businessArrangement", "elementType": "string"},
        {
          "name": "preAuthRef",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "claimResponse", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {
          "name": "careTeamSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosisSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "informationSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "elementType": "CodeableConcept"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviced",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {
          "name": "subSite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
      "namespace": "FHIR",
      "name": "Claim.Item.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "revenue", "elementType": "CodeableConcept"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
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
      "namespace": "FHIR",
      "name": "Claim.Item.Detail.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "revenue", "elementType": "CodeableConcept"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "party", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "elementType": "dateTime"},
        {
          "name": "procedure",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "claim", "elementType": "Reference"},
        {"name": "relationship", "elementType": "CodeableConcept"},
        {"name": "reference", "elementType": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Claim.SupportingInfo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "reason", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
      "label": "ClaimResponse",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ClaimResponseStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subType", "elementType": "CodeableConcept"},
        {"name": "use", "elementType": "Use"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "insurer", "elementType": "Reference"},
        {"name": "requestor", "elementType": "Reference"},
        {"name": "request", "elementType": "Reference"},
        {"name": "outcome", "elementType": "RemittanceOutcome"},
        {"name": "disposition", "elementType": "string"},
        {"name": "preAuthRef", "elementType": "string"},
        {"name": "preAuthPeriod", "elementType": "Period"},
        {"name": "payeeType", "elementType": "CodeableConcept"},
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "addItem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ClaimResponse.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "total",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "payment", "elementType": "ClaimResponse.Payment"},
        {"name": "fundsReserve", "elementType": "CodeableConcept"},
        {"name": "formCode", "elementType": "CodeableConcept"},
        {"name": "form", "elementType": "Attachment"},
        {
          "name": "processNote",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communicationRequest",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "error",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "requestor"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.AddItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "itemSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detailSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subdetailSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "provider",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviced",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {
          "name": "subSite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ClaimResponse.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "detail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.AddItem.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ClaimResponse.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "subDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.AddItem.Detail.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ClaimResponse.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.Error",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "itemSequence", "elementType": "positiveInt"},
        {"name": "detailSequence", "elementType": "positiveInt"},
        {"name": "subDetailSequence", "elementType": "positiveInt"},
        {"name": "code", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "focal", "elementType": "boolean"},
        {"name": "coverage", "elementType": "Reference"},
        {"name": "businessArrangement", "elementType": "string"},
        {"name": "claimResponse", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "itemSequence", "elementType": "positiveInt"},
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
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
      "namespace": "FHIR",
      "name": "ClaimResponse.Item.Adjudication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "reason", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "Money"},
        {"name": "value", "elementType": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.Item.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "detailSequence", "elementType": "positiveInt"},
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ClaimResponse.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "subDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.Item.Detail.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "subDetailSequence", "elementType": "positiveInt"},
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ClaimResponse.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.Payment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "adjustment", "elementType": "Money"},
        {"name": "adjustmentReason", "elementType": "CodeableConcept"},
        {"name": "date", "elementType": "date"},
        {"name": "amount", "elementType": "Money"},
        {"name": "identifier", "elementType": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.ProcessNote",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "elementType": "positiveInt"},
        {"name": "type", "elementType": "NoteType"},
        {"name": "text", "elementType": "string"},
        {"name": "language", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponse.Total",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClaimStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClinicalImpression",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
      "label": "ClinicalImpression",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ClinicalImpressionStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "assessor", "elementType": "Reference"},
        {"name": "previous", "elementType": "Reference"},
        {
          "name": "problem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "investigation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "protocol",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "summary", "elementType": "string"},
        {
          "name": "finding",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prognosisCodeableConcept",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prognosisReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "assessor"},
        {"context": "Encounter", "relatedKeyElement": "encounter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClinicalImpression.Finding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "itemCodeableConcept", "elementType": "CodeableConcept"},
        {"name": "itemReference", "elementType": "Reference"},
        {"name": "basis", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClinicalImpression.Investigation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ClinicalImpressionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSearchSupport",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/CodeSystem",
      "label": "CodeSystem",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "caseSensitive", "elementType": "boolean"},
        {"name": "valueSet", "elementType": "canonical"},
        {
          "name": "hierarchyMeaning",
          "elementType": "CodeSystemHierarchyMeaning"
        },
        {"name": "compositional", "elementType": "boolean"},
        {"name": "versionNeeded", "elementType": "boolean"},
        {"name": "content", "elementType": "CodeSystemContentMode"},
        {"name": "supplements", "elementType": "canonical"},
        {"name": "count", "elementType": "unsignedInt"},
        {
          "name": "filter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "concept",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystem.Concept",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {"name": "display", "elementType": "string"},
        {"name": "definition", "elementType": "string"},
        {
          "name": "designation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "concept",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "CodeSystem.Concept",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystem.Concept.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "elementType": "code"},
        {"name": "use", "elementType": "Coding"},
        {"name": "value", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystem.Concept.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystem.Filter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {"name": "description", "elementType": "string"},
        {
          "name": "operator",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystem.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {"name": "uri", "elementType": "uri"},
        {"name": "description", "elementType": "string"},
        {"name": "type", "elementType": "PropertyType"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystemContentMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeSystemHierarchyMeaning",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CodeableConcept",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
      "label": "CodeableConcept",
      "element": [
        {
          "name": "coding",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Coding",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Coding",
      "label": "Coding",
      "primaryCodePath": "code",
      "element": [
        {"name": "system", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "code", "elementType": "code"},
        {"name": "display", "elementType": "string"},
        {"name": "userSelected", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Communication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Communication",
      "label": "Communication",
      "primaryCodePath": "reasonCode",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
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
          "name": "inResponseTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "CommunicationStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "elementType": "CommunicationPriority"},
        {
          "name": "medium",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "topic", "elementType": "CodeableConcept"},
        {
          "name": "about",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "encounter", "elementType": "Reference"},
        {"name": "sent", "elementType": "dateTime"},
        {"name": "received", "elementType": "dateTime"},
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sender", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "sender"},
        {"context": "Device", "relatedKeyElement": "recipient"},
        {"context": "RelatedPerson", "relatedKeyElement": "sender"},
        {"context": "RelatedPerson", "relatedKeyElement": "recipient"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Communication.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "string", "type": "NamedTypeSpecifier"},
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CommunicationPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/CommunicationRequest",
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
        {"name": "status", "elementType": "CommunicationRequestStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "elementType": "CommunicationPriority"},
        {"name": "doNotPerform", "elementType": "boolean"},
        {
          "name": "medium",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "authoredOn", "elementType": "dateTime"},
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sender", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
      "namespace": "FHIR",
      "name": "CommunicationRequest.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "string", "type": "NamedTypeSpecifier"},
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CommunicationRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CommunicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CompartmentCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CompartmentDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/CompartmentDefinition",
      "label": "CompartmentDefinition",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "code", "elementType": "CompartmentType"},
        {"name": "search", "elementType": "boolean"},
        {
          "name": "resource",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CompartmentDefinition.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "ResourceType"},
        {
          "name": "param",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "documentation", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CompartmentType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Composition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Composition",
      "label": "Composition",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "status", "elementType": "CompositionStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "elementType": "string"},
        {"name": "confidentiality", "elementType": "DocumentConfidentiality"},
        {
          "name": "attester",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "custodian", "elementType": "Reference"},
        {
          "name": "relatesTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "event",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "section",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "subject"},
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Practitioner", "relatedKeyElement": "party"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "author"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Composition.Attester",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "elementType": "CompositionAttestationMode"},
        {"name": "time", "elementType": "dateTime"},
        {"name": "party", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Composition.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"},
        {
          "name": "detail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Composition.RelatesTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "DocumentRelationshipType"},
        {
          "name": "target",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Composition.Section",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "title", "elementType": "string"},
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "focus", "elementType": "Reference"},
        {"name": "text", "elementType": "Narrative"},
        {"name": "mode", "elementType": "SectionMode"},
        {"name": "orderedBy", "elementType": "CodeableConcept"},
        {
          "name": "entry",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "emptyReason", "elementType": "CodeableConcept"},
        {
          "name": "section",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Composition.Section",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CompositionAttestationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CompositionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ConceptMap",
      "label": "ConceptMap",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {
          "name": "source",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "target",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "group",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMap.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "source", "elementType": "uri"},
        {"name": "sourceVersion", "elementType": "string"},
        {"name": "target", "elementType": "uri"},
        {"name": "targetVersion", "elementType": "string"},
        {
          "name": "element",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "unmapped", "elementType": "ConceptMap.Group.Unmapped"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMap.Group.Element",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {"name": "display", "elementType": "string"},
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMap.Group.Element.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {"name": "display", "elementType": "string"},
        {"name": "equivalence", "elementType": "ConceptMapEquivalence"},
        {"name": "comment", "elementType": "string"},
        {
          "name": "dependsOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "product",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ConceptMap.Group.Element.Target.DependsOn",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMap.Group.Element.Target.DependsOn",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "property", "elementType": "uri"},
        {"name": "system", "elementType": "canonical"},
        {"name": "value", "elementType": "string"},
        {"name": "display", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMap.Group.Unmapped",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "elementType": "ConceptMapGroupUnmappedMode"},
        {"name": "code", "elementType": "code"},
        {"name": "display", "elementType": "string"},
        {"name": "url", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMapEquivalence",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConceptMapGroupUnmappedMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Condition",
      "label": "Condition",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "clinicalStatus", "elementType": "CodeableConcept"},
        {"name": "verificationStatus", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "severity", "elementType": "CodeableConcept"},
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "bodySite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "abatement",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "recordedDate", "elementType": "dateTime"},
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
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "asserter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Condition.Evidence",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
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
      "namespace": "FHIR",
      "name": "Condition.Stage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "summary", "elementType": "CodeableConcept"},
        {
          "name": "assessment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConditionalDeleteStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConditionalReadStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Consent",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Consent",
      "label": "Consent",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ConsentState"},
        {"name": "scope", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"},
        {"name": "dateTime", "elementType": "dateTime"},
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "organization",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "source",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "policy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "policyRule", "elementType": "CodeableConcept"},
        {
          "name": "verification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "provision", "elementType": "Consent.Provision"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Consent.Policy",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "authority", "elementType": "uri"},
        {"name": "uri", "elementType": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Consent.Provision",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "ConsentProvisionType"},
        {"name": "period", "elementType": "Period"},
        {
          "name": "actor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabel",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "purpose",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "class",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "dataPeriod", "elementType": "Period"},
        {
          "name": "data",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "provision",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Consent.Provision",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Consent.Provision.Actor",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "elementType": "CodeableConcept"},
        {"name": "reference", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Consent.Provision.Data",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "meaning", "elementType": "ConsentDataMeaning"},
        {"name": "reference", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Consent.Verification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "verified", "elementType": "boolean"},
        {"name": "verifiedWith", "elementType": "Reference"},
        {"name": "verificationDate", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConsentDataMeaning",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConsentProvisionType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConsentState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ConstraintSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ContactDetail",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ContactDetail",
      "label": "ContactDetail",
      "element": [
        {"name": "name", "elementType": "string"},
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ContactPoint",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ContactPoint",
      "label": "ContactPoint",
      "element": [
        {"name": "system", "elementType": "ContactPointSystem"},
        {"name": "value", "elementType": "string"},
        {"name": "use", "elementType": "ContactPointUse"},
        {"name": "rank", "elementType": "positiveInt"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ContactPointSystem",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ContactPointUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Contract",
      "label": "Contract",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "status", "elementType": "ContractStatus"},
        {"name": "legalState", "elementType": "CodeableConcept"},
        {"name": "instantiatesCanonical", "elementType": "Reference"},
        {"name": "instantiatesUri", "elementType": "uri"},
        {"name": "contentDerivative", "elementType": "CodeableConcept"},
        {"name": "issued", "elementType": "dateTime"},
        {"name": "applies", "elementType": "Period"},
        {"name": "expirationType", "elementType": "CodeableConcept"},
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "authority",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "domain",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "site",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {
          "name": "alias",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "author", "elementType": "Reference"},
        {"name": "scope", "elementType": "CodeableConcept"},
        {
          "name": "topic",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "subType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contentDefinition",
          "elementType": "Contract.ContentDefinition"
        },
        {
          "name": "term",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "signer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "friendly",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "legal",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rule",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "legallyBinding",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.ContentDefinition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subType", "elementType": "CodeableConcept"},
        {"name": "publisher", "elementType": "Reference"},
        {"name": "publicationDate", "elementType": "dateTime"},
        {
          "name": "publicationStatus",
          "elementType": "ContractPublicationStatus"
        },
        {"name": "copyright", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Friendly",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Legal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "content",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Signer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "Coding"},
        {"name": "party", "elementType": "Reference"},
        {
          "name": "signature",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "issued", "elementType": "dateTime"},
        {"name": "applies", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subType", "elementType": "CodeableConcept"},
        {"name": "text", "elementType": "string"},
        {
          "name": "securityLabel",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "offer", "elementType": "Contract.Term.Offer"},
        {
          "name": "asset",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "group",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Contract.Term",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doNotPerform", "elementType": "boolean"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "intent", "elementType": "CodeableConcept"},
        {
          "name": "linkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "context", "elementType": "Reference"},
        {
          "name": "contextLinkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "requester",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "requesterLinkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "performerType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "performerRole", "elementType": "CodeableConcept"},
        {"name": "performer", "elementType": "Reference"},
        {
          "name": "performerLinkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonLinkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabelNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Action.Subject",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "reference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Asset",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "scope", "elementType": "CodeableConcept"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "typeReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subtype",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "relationship", "elementType": "Coding"},
        {
          "name": "context",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "condition", "elementType": "string"},
        {
          "name": "periodType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "period",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "usePeriod",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "elementType": "string"},
        {
          "name": "linkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "answer",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Contract.Term.Offer.Answer",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "securityLabelNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valuedItem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Asset.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reference", "elementType": "Reference"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Asset.ValuedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "entity",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "effectiveTime", "elementType": "dateTime"},
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "points", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {"name": "payment", "elementType": "string"},
        {"name": "paymentDate", "elementType": "dateTime"},
        {"name": "responsible", "elementType": "Reference"},
        {"name": "recipient", "elementType": "Reference"},
        {
          "name": "linkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabelNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Offer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "party",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "topic", "elementType": "Reference"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "decision", "elementType": "CodeableConcept"},
        {
          "name": "decisionMode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "answer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "text", "elementType": "string"},
        {
          "name": "linkId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabelNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Offer.Answer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "value",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "boolean", "type": "NamedTypeSpecifier"},
            {"name": "decimal", "type": "NamedTypeSpecifier"},
            {"name": "integer", "type": "NamedTypeSpecifier"},
            {"name": "date", "type": "NamedTypeSpecifier"},
            {"name": "dateTime", "type": "NamedTypeSpecifier"},
            {"name": "time", "type": "NamedTypeSpecifier"},
            {"name": "string", "type": "NamedTypeSpecifier"},
            {"name": "uri", "type": "NamedTypeSpecifier"},
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Coding", "type": "NamedTypeSpecifier"},
            {
              "name": "{urn:hl7-org:elm-types:r1}Quantity",
              "type": "NamedTypeSpecifier"
            },
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.Offer.Party",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "reference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "role", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contract.Term.SecurityLabel",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "number",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "classification", "elementType": "Coding"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "control",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ContractPublicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ContractStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Contributor",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Contributor",
      "label": "Contributor",
      "element": [
        {"name": "type", "elementType": "ContributorType"},
        {"name": "name", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ContributorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Count",
      "baseType": "Quantity",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Count",
      "label": "Count"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Coverage",
      "label": "Coverage",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "CoverageStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "policyHolder", "elementType": "Reference"},
        {"name": "subscriber", "elementType": "Reference"},
        {"name": "subscriberId", "elementType": "string"},
        {"name": "beneficiary", "elementType": "Reference"},
        {"name": "dependent", "elementType": "string"},
        {"name": "relationship", "elementType": "CodeableConcept"},
        {"name": "period", "elementType": "Period"},
        {
          "name": "payor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "class",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "order", "elementType": "positiveInt"},
        {"name": "network", "elementType": "string"},
        {
          "name": "costToBeneficiary",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subrogation", "elementType": "boolean"},
        {
          "name": "contract",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "RelatedPerson", "relatedKeyElement": "policyHolder"},
        {"context": "RelatedPerson", "relatedKeyElement": "subscriber"},
        {"context": "RelatedPerson", "relatedKeyElement": "payor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Coverage.Class",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "value", "elementType": "string"},
        {"name": "name", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Coverage.CostToBeneficiary",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "exception",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Coverage.CostToBeneficiary.Exception",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest",
      "label": "CoverageEligibilityRequest",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "EligibilityRequestStatus"},
        {"name": "priority", "elementType": "CodeableConcept"},
        {
          "name": "purpose",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "serviced",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "created", "elementType": "dateTime"},
        {"name": "enterer", "elementType": "Reference"},
        {"name": "provider", "elementType": "Reference"},
        {"name": "insurer", "elementType": "Reference"},
        {"name": "facility", "elementType": "Reference"},
        {
          "name": "supportingInfo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "enterer"},
        {"context": "Practitioner", "relatedKeyElement": "provider"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityRequest.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "focal", "elementType": "boolean"},
        {"name": "coverage", "elementType": "Reference"},
        {"name": "businessArrangement", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityRequest.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "supportingInfoSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "provider", "elementType": "Reference"},
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "facility", "elementType": "Reference"},
        {
          "name": "diagnosis",
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
      "namespace": "FHIR",
      "name": "CoverageEligibilityRequest.Item.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "diagnosis",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityRequest.SupportingInfo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "information", "elementType": "Reference"},
        {"name": "appliesToAll", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse",
      "label": "CoverageEligibilityResponse",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "EligibilityResponseStatus"},
        {
          "name": "purpose",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "serviced",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "created", "elementType": "dateTime"},
        {"name": "requestor", "elementType": "Reference"},
        {"name": "request", "elementType": "Reference"},
        {"name": "outcome", "elementType": "RemittanceOutcome"},
        {"name": "disposition", "elementType": "string"},
        {"name": "insurer", "elementType": "Reference"},
        {
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "preAuthRef", "elementType": "string"},
        {"name": "form", "elementType": "CodeableConcept"},
        {
          "name": "error",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "requestor"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityResponse.Error",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "code", "elementType": "CodeableConcept"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityResponse.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "coverage", "elementType": "Reference"},
        {"name": "inforce", "elementType": "boolean"},
        {"name": "benefitPeriod", "elementType": "Period"},
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityResponse.Insurance.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "provider", "elementType": "Reference"},
        {"name": "excluded", "elementType": "boolean"},
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "network", "elementType": "CodeableConcept"},
        {"name": "unit", "elementType": "CodeableConcept"},
        {"name": "term", "elementType": "CodeableConcept"},
        {
          "name": "benefit",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authorizationRequired", "elementType": "boolean"},
        {
          "name": "authorizationSupporting",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authorizationUrl", "elementType": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageEligibilityResponse.Insurance.Item.Benefit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "allowed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "used",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CoverageStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "CurrencyCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DataElement constraint on ElementDefinition data type",
      "baseType": "ElementDefinition",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-de",
      "label": "DataElement constraint on ElementDefinition data type",
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "sliceName", "elementType": "string"},
        {"name": "sliceIsConstraining", "elementType": "boolean"},
        {"name": "label", "elementType": "string"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "elementType": "markdown"},
        {"name": "comment", "elementType": "markdown"},
        {"name": "requirements", "elementType": "markdown"},
        {
          "name": "alias",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "min", "elementType": "unsignedInt"},
        {"name": "max", "elementType": "string"},
        {"name": "base", "elementType": "ElementDefinition.Base"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "defaultValue",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        },
        {"name": "meaningWhenMissing", "elementType": "markdown"},
        {"name": "orderMeaning", "elementType": "string"},
        {
          "name": "example",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "minValue",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "maxValue",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "maxLength", "elementType": "integer"},
        {
          "name": "condition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "constraint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mustSupport", "elementType": "boolean"},
        {"name": "isModifierReason", "elementType": "string"},
        {"name": "binding", "elementType": "ElementDefinition.Binding"},
        {
          "name": "mapping",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DataRequirement",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DataRequirement",
      "label": "DataRequirement",
      "element": [
        {"name": "type", "elementType": "FHIRAllTypes"},
        {
          "name": "profile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "mustSupport",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "codeFilter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dateFilter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "limit", "elementType": "positiveInt"},
        {
          "name": "sort",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DataRequirement.CodeFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "searchParam", "elementType": "string"},
        {"name": "valueSet", "elementType": "canonical"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DataRequirement.DateFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "searchParam", "elementType": "string"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DataRequirement.Sort",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "direction", "elementType": "SortDirection"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DayOfWeek",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DaysOfWeek",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DetectedIssue",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DetectedIssue",
      "label": "DetectedIssue",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "DetectedIssueStatus"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "severity", "elementType": "DetectedIssueSeverity"},
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "identified",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "author", "elementType": "Reference"},
        {
          "name": "implicated",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "evidence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "detail", "elementType": "string"},
        {"name": "reference", "elementType": "uri"},
        {
          "name": "mitigation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Device", "relatedKeyElement": "author"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DetectedIssue.Evidence",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
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
      "namespace": "FHIR",
      "name": "DetectedIssue.Mitigation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "action", "elementType": "CodeableConcept"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "author", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DetectedIssueSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DetectedIssueStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Device",
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
        {"name": "status", "elementType": "FHIRDeviceStatus"},
        {
          "name": "statusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "distinctIdentifier", "elementType": "string"},
        {"name": "manufacturer", "elementType": "string"},
        {"name": "manufactureDate", "elementType": "dateTime"},
        {"name": "expirationDate", "elementType": "dateTime"},
        {"name": "lotNumber", "elementType": "string"},
        {"name": "serialNumber", "elementType": "string"},
        {
          "name": "deviceName",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "modelNumber", "elementType": "string"},
        {"name": "partNumber", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
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
        {"name": "url", "elementType": "uri"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "safety",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "parent", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Device.DeviceName",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "type", "elementType": "DeviceNameType"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Device.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "valueQuantity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valueCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Device.Specialization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "systemType", "elementType": "CodeableConcept"},
        {"name": "version", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Device.UdiCarrier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "deviceIdentifier", "elementType": "string"},
        {"name": "issuer", "elementType": "uri"},
        {"name": "jurisdiction", "elementType": "uri"},
        {"name": "carrierAIDC", "elementType": "base64Binary"},
        {"name": "carrierHRF", "elementType": "string"},
        {"name": "entryType", "elementType": "UDIEntryType"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Device.Version",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "component", "elementType": "Identifier"},
        {"name": "value", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DeviceDefinition",
      "label": "DeviceDefinition",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "udiDeviceIdentifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturer",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "deviceName",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "modelNumber", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "specialization",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "version",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "safety",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "shelfLifeStorage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "physicalCharacteristics",
          "elementType": "ProdCharacteristic"
        },
        {
          "name": "languageCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "capability",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "elementType": "Reference"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "url", "elementType": "uri"},
        {"name": "onlineInformation", "elementType": "uri"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "Quantity"},
        {"name": "parentDevice", "elementType": "Reference"},
        {
          "name": "material",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceDefinition.Capability",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "description",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceDefinition.DeviceName",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "type", "elementType": "DeviceNameType"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceDefinition.Material",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "substance", "elementType": "CodeableConcept"},
        {"name": "alternate", "elementType": "boolean"},
        {"name": "allergenicIndicator", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceDefinition.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "valueQuantity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valueCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceDefinition.Specialization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "systemType", "elementType": "string"},
        {"name": "version", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceDefinition.UdiDeviceIdentifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "deviceIdentifier", "elementType": "string"},
        {"name": "issuer", "elementType": "uri"},
        {"name": "jurisdiction", "elementType": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceMetric",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DeviceMetric",
      "label": "DeviceMetric",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "unit", "elementType": "CodeableConcept"},
        {"name": "source", "elementType": "Reference"},
        {"name": "parent", "elementType": "Reference"},
        {
          "name": "operationalStatus",
          "elementType": "DeviceMetricOperationalStatus"
        },
        {"name": "color", "elementType": "DeviceMetricColor"},
        {"name": "category", "elementType": "DeviceMetricCategory"},
        {"name": "measurementPeriod", "elementType": "Timing"},
        {
          "name": "calibration",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceMetric.Calibration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "DeviceMetricCalibrationType"},
        {"name": "state", "elementType": "DeviceMetricCalibrationState"},
        {"name": "time", "elementType": "instant"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceMetricCalibrationState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceMetricCalibrationType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceMetricCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceMetricColor",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceMetricOperationalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceNameType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
      "label": "DeviceRequest",
      "primaryCodePath": "codeCodeableConcept",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"name": "status", "elementType": "DeviceRequestStatus"},
        {"name": "intent", "elementType": "RequestIntent"},
        {"name": "priority", "elementType": "RequestPriority"},
        {
          "name": "code",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
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
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "authoredOn", "elementType": "dateTime"},
        {"name": "requester", "elementType": "Reference"},
        {"name": "performerType", "elementType": "CodeableConcept"},
        {"name": "performer", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "code as Reference)"},
        {"context": "Device", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "requester"},
        {"context": "Device", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceRequest.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement",
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
        {"name": "status", "elementType": "DeviceUseStatementStatus"},
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
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "recordedOn", "elementType": "dateTime"},
        {"name": "source", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Device",
        "relatedKeyElement": "device"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DeviceUseStatementStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DiagnosticReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
      "label": "DiagnosticReport",
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
        {"name": "status", "elementType": "DiagnosticReportStatus"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "issued", "elementType": "instant"},
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
        {"name": "conclusion", "elementType": "string"},
        {
          "name": "conclusionCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "presentedForm",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "performer"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "subject"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DiagnosticReport.Media",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "comment", "elementType": "string"},
        {"name": "link", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DiagnosticReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DiscriminatorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Distance",
      "baseType": "Quantity",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Distance",
      "label": "Distance"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentConfidentiality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DocumentManifest",
      "label": "DocumentManifest",
      "element": [
        {"name": "masterIdentifier", "elementType": "Identifier"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "DocumentReferenceStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "created", "elementType": "dateTime"},
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "elementType": "uri"},
        {"name": "description", "elementType": "string"},
        {
          "name": "content",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "related",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "subject"},
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Practitioner", "relatedKeyElement": "recipient"},
        {"context": "Encounter", "relatedKeyElement": "ref"},
        {"context": "Device", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "recipient"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentManifest.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "ref", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentReference",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/DocumentReference",
      "label": "DocumentReference",
      "element": [
        {"name": "masterIdentifier", "elementType": "Identifier"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "DocumentReferenceStatus"},
        {"name": "docStatus", "elementType": "ReferredDocumentStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "date", "elementType": "instant"},
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
        {"name": "description", "elementType": "string"},
        {
          "name": "securityLabel",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "context", "elementType": "DocumentReference.Context"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "subject"},
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Practitioner", "relatedKeyElement": "authenticator"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "author"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentReference.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "attachment", "elementType": "Attachment"},
        {"name": "format", "elementType": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentReference.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "encounter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "event",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"},
        {"name": "facilityType", "elementType": "CodeableConcept"},
        {"name": "practiceSetting", "elementType": "CodeableConcept"},
        {"name": "sourcePatientInfo", "elementType": "Reference"},
        {
          "name": "related",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentReference.RelatesTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "DocumentRelationshipType"},
        {"name": "target", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentReferenceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "DocumentRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
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
      "namespace": "FHIR",
      "name": "Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Dosage",
      "label": "Dosage",
      "element": [
        {"name": "sequence", "elementType": "integer"},
        {"name": "text", "elementType": "string"},
        {
          "name": "additionalInstruction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patientInstruction", "elementType": "string"},
        {"name": "timing", "elementType": "Timing"},
        {
          "name": "asNeeded",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "site", "elementType": "CodeableConcept"},
        {"name": "route", "elementType": "CodeableConcept"},
        {"name": "method", "elementType": "CodeableConcept"},
        {
          "name": "doseAndRate",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maxDosePerPeriod", "elementType": "Ratio"},
        {"name": "maxDosePerAdministration", "elementType": "SimpleQuantity"},
        {"name": "maxDosePerLifetime", "elementType": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Dosage.DoseAndRate",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "dose",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"}
            ]
          }
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
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Duration",
      "baseType": "Quantity",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Duration",
      "label": "Duration"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EffectEvidenceSynthesis",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/EffectEvidenceSynthesis",
      "label": "EffectEvidenceSynthesis",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "synthesisType", "elementType": "CodeableConcept"},
        {"name": "studyType", "elementType": "CodeableConcept"},
        {"name": "population", "elementType": "Reference"},
        {"name": "exposure", "elementType": "Reference"},
        {"name": "exposureAlternative", "elementType": "Reference"},
        {"name": "outcome", "elementType": "Reference"},
        {
          "name": "sampleSize",
          "elementType": "EffectEvidenceSynthesis.SampleSize"
        },
        {
          "name": "resultsByExposure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "effectEstimate",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "certainty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EffectEvidenceSynthesis.Certainty",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "rating",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "certaintySubcomponent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EffectEvidenceSynthesis.Certainty.CertaintySubcomponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "rating",
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
      "namespace": "FHIR",
      "name": "EffectEvidenceSynthesis.EffectEstimate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "variantState", "elementType": "CodeableConcept"},
        {"name": "value", "elementType": "decimal"},
        {"name": "unitOfMeasure", "elementType": "CodeableConcept"},
        {
          "name": "precisionEstimate",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EffectEvidenceSynthesis.EffectEstimate.PrecisionEstimate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "level", "elementType": "decimal"},
        {"name": "from", "elementType": "decimal"},
        {"name": "to", "elementType": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EffectEvidenceSynthesis.ResultsByExposure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "exposureState", "elementType": "ExposureState"},
        {"name": "variantState", "elementType": "CodeableConcept"},
        {"name": "riskEvidenceSynthesis", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EffectEvidenceSynthesis.SampleSize",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "numberOfStudies", "elementType": "integer"},
        {"name": "numberOfParticipants", "elementType": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Element",
      "label": "Element",
      "element": [
        {"name": "id", "elementType": "System.String"},
        {
          "name": "extension",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ElementDefinition",
      "label": "ElementDefinition",
      "element": [
        {"name": "path", "elementType": "string"},
        {
          "name": "representation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sliceName", "elementType": "string"},
        {"name": "sliceIsConstraining", "elementType": "boolean"},
        {"name": "label", "elementType": "string"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "slicing", "elementType": "ElementDefinition.Slicing"},
        {"name": "short", "elementType": "string"},
        {"name": "definition", "elementType": "markdown"},
        {"name": "comment", "elementType": "markdown"},
        {"name": "requirements", "elementType": "markdown"},
        {
          "name": "alias",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "min", "elementType": "unsignedInt"},
        {"name": "max", "elementType": "string"},
        {"name": "base", "elementType": "ElementDefinition.Base"},
        {"name": "contentReference", "elementType": "uri"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "defaultValue",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        },
        {"name": "meaningWhenMissing", "elementType": "markdown"},
        {"name": "orderMeaning", "elementType": "string"},
        {
          "name": "fixed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        },
        {
          "name": "pattern",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        },
        {
          "name": "example",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "minValue",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "maxValue",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "maxLength", "elementType": "integer"},
        {
          "name": "condition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "constraint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mustSupport", "elementType": "boolean"},
        {"name": "isModifier", "elementType": "boolean"},
        {"name": "isModifierReason", "elementType": "string"},
        {"name": "isSummary", "elementType": "boolean"},
        {"name": "binding", "elementType": "ElementDefinition.Binding"},
        {
          "name": "mapping",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Base",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "min", "elementType": "unsignedInt"},
        {"name": "max", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Binding",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "strength", "elementType": "BindingStrength"},
        {"name": "description", "elementType": "string"},
        {"name": "valueSet", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Constraint",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "key", "elementType": "id"},
        {"name": "requirements", "elementType": "string"},
        {"name": "severity", "elementType": "ConstraintSeverity"},
        {"name": "human", "elementType": "string"},
        {"name": "expression", "elementType": "string"},
        {"name": "xpath", "elementType": "string"},
        {"name": "source", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Example",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "label", "elementType": "string"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Mapping",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "identity", "elementType": "id"},
        {"name": "language", "elementType": "MimeType"},
        {"name": "map", "elementType": "string"},
        {"name": "comment", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Slicing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "discriminator",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "ordered", "elementType": "boolean"},
        {"name": "rules", "elementType": "SlicingRules"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Slicing.Discriminator",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "DiscriminatorType"},
        {"name": "path", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ElementDefinition.Type",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "uri"},
        {
          "name": "targetProfile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "versioning", "elementType": "ReferenceVersionRules"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EligibilityRequestPurpose",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EligibilityRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EligibilityResponsePurpose",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EligibilityResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EnableWhenBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Encounter",
      "label": "Encounter",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "EncounterStatus"},
        {
          "name": "statusHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "class", "elementType": "Coding"},
        {
          "name": "classHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "serviceType", "elementType": "CodeableConcept"},
        {"name": "priority", "elementType": "CodeableConcept"},
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
        {"name": "period", "elementType": "Period"},
        {"name": "length", "elementType": "Duration"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"context": "RelatedPerson", "relatedKeyElement": "individual"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Encounter.ClassHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "class", "elementType": "Coding"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Encounter.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "condition", "elementType": "Reference"},
        {"name": "use", "elementType": "CodeableConcept"},
        {"name": "rank", "elementType": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Encounter.Hospitalization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "preAdmissionIdentifier", "elementType": "Identifier"},
        {"name": "origin", "elementType": "Reference"},
        {"name": "admitSource", "elementType": "CodeableConcept"},
        {"name": "reAdmission", "elementType": "CodeableConcept"},
        {
          "name": "dietPreference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialCourtesy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialArrangement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "destination", "elementType": "Reference"},
        {"name": "dischargeDisposition", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Encounter.Location",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "location", "elementType": "Reference"},
        {"name": "status", "elementType": "EncounterLocationStatus"},
        {"name": "physicalType", "elementType": "CodeableConcept"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Encounter.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"},
        {"name": "individual", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Encounter.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "elementType": "EncounterStatus"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EncounterLocationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EncounterStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Endpoint",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Endpoint",
      "label": "Endpoint",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "EndpointStatus"},
        {"name": "connectionType", "elementType": "Coding"},
        {"name": "name", "elementType": "string"},
        {"name": "managingOrganization", "elementType": "Reference"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"},
        {
          "name": "payloadType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "payloadMimeType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "elementType": "url"},
        {
          "name": "header",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EndpointStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EnrollmentRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/EnrollmentRequest",
      "label": "EnrollmentRequest",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "EnrollmentRequestStatus"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "insurer", "elementType": "Reference"},
        {"name": "provider", "elementType": "Reference"},
        {"name": "candidate", "elementType": "Reference"},
        {"name": "coverage", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EnrollmentRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EnrollmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/EnrollmentResponse",
      "label": "EnrollmentResponse",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "EnrollmentResponseStatus"},
        {"name": "request", "elementType": "Reference"},
        {"name": "outcome", "elementType": "RemittanceOutcome"},
        {"name": "disposition", "elementType": "string"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "organization", "elementType": "Reference"},
        {"name": "requestProvider", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EnrollmentResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EpisodeOfCare",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
      "label": "EpisodeOfCare",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "EpisodeOfCareStatus"},
        {
          "name": "statusHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosis",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"},
        {"name": "managingOrganization", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"},
        {
          "name": "referralRequest",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "careManager", "elementType": "Reference"},
        {
          "name": "team",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "account",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "where(resolve() is Practitioner)"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EpisodeOfCare.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "condition", "elementType": "Reference"},
        {"name": "role", "elementType": "CodeableConcept"},
        {"name": "rank", "elementType": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EpisodeOfCare.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "elementType": "EpisodeOfCareStatus"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EpisodeOfCareStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EventCapabilityMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EventDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/EventDefinition",
      "label": "EventDefinition",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "usage", "elementType": "string"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "trigger",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EventTiming",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Evidence",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Evidence",
      "label": "Evidence",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "shortTitle", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "exposureBackground", "elementType": "Reference"},
        {
          "name": "exposureVariant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "outcome",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EvidenceVariable",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/EvidenceVariable",
      "label": "EvidenceVariable",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "shortTitle", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "EvidenceVariableType"},
        {
          "name": "characteristic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EvidenceVariable.Characteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {
          "name": "definition",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Expression", "type": "NamedTypeSpecifier"},
              {"name": "DataRequirement", "type": "NamedTypeSpecifier"},
              {"name": "TriggerDefinition", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "usageContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "exclude", "elementType": "boolean"},
        {
          "name": "participantEffective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "timeFromStart", "elementType": "Duration"},
        {"name": "groupMeasure", "elementType": "GroupMeasure"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "EvidenceVariableType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ExampleScenario",
      "label": "ExampleScenario",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "elementType": "markdown"},
        {"name": "purpose", "elementType": "markdown"},
        {
          "name": "actor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "process",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "workflow",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Actor",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actorId", "elementType": "string"},
        {"name": "type", "elementType": "ExampleScenarioActorType"},
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resourceId", "elementType": "string"},
        {"name": "resourceType", "elementType": "FHIRResourceType"},
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "markdown"},
        {
          "name": "version",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "containedInstance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Instance.ContainedInstance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resourceId", "elementType": "string"},
        {"name": "versionId", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Instance.Version",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "versionId", "elementType": "string"},
        {"name": "description", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Process",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "title", "elementType": "string"},
        {"name": "description", "elementType": "markdown"},
        {"name": "preConditions", "elementType": "markdown"},
        {"name": "postConditions", "elementType": "markdown"},
        {
          "name": "step",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Process.Step",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "process",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExampleScenario.Process",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {"name": "pause", "elementType": "boolean"},
        {
          "name": "operation",
          "elementType": "ExampleScenario.Process.Step.Operation"
        },
        {
          "name": "alternative",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Process.Step.Alternative",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "title", "elementType": "string"},
        {"name": "description", "elementType": "markdown"},
        {
          "name": "step",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExampleScenario.Process.Step",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenario.Process.Step.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "elementType": "string"},
        {"name": "type", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "initiator", "elementType": "string"},
        {"name": "receiver", "elementType": "string"},
        {"name": "description", "elementType": "markdown"},
        {"name": "initiatorActive", "elementType": "boolean"},
        {"name": "receiverActive", "elementType": "boolean"},
        {
          "name": "request",
          "elementType": "ExampleScenario.Instance.ContainedInstance"
        },
        {
          "name": "response",
          "elementType": "ExampleScenario.Instance.ContainedInstance"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExampleScenarioActorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ExplanationOfBenefit",
      "label": "ExplanationOfBenefit",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ExplanationOfBenefitStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subType", "elementType": "CodeableConcept"},
        {"name": "use", "elementType": "Use"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "billablePeriod", "elementType": "Period"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "enterer", "elementType": "Reference"},
        {"name": "insurer", "elementType": "Reference"},
        {"name": "provider", "elementType": "Reference"},
        {"name": "priority", "elementType": "CodeableConcept"},
        {"name": "fundsReserveRequested", "elementType": "CodeableConcept"},
        {"name": "fundsReserve", "elementType": "CodeableConcept"},
        {
          "name": "related",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prescription", "elementType": "Reference"},
        {"name": "originalPrescription", "elementType": "Reference"},
        {"name": "payee", "elementType": "ExplanationOfBenefit.Payee"},
        {"name": "referral", "elementType": "Reference"},
        {"name": "facility", "elementType": "Reference"},
        {"name": "claim", "elementType": "Reference"},
        {"name": "claimResponse", "elementType": "Reference"},
        {"name": "outcome", "elementType": "RemittanceOutcome"},
        {"name": "disposition", "elementType": "string"},
        {
          "name": "preAuthRef",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "preAuthRefPeriod",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
        {"name": "precedence", "elementType": "positiveInt"},
        {
          "name": "insurance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "accident", "elementType": "ExplanationOfBenefit.Accident"},
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "addItem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExplanationOfBenefit.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "total",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "payment", "elementType": "ExplanationOfBenefit.Payment"},
        {"name": "formCode", "elementType": "CodeableConcept"},
        {"name": "form", "elementType": "Attachment"},
        {
          "name": "processNote",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "benefitPeriod", "elementType": "Period"},
        {
          "name": "benefitBalance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "enterer"},
        {"context": "Practitioner", "relatedKeyElement": "provider"},
        {"context": "Practitioner", "relatedKeyElement": "party"},
        {"context": "Practitioner", "relatedKeyElement": "provider"},
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
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Accident",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "elementType": "date"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.AddItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "itemSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detailSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subDetailSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "provider",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviced",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {
          "name": "subSite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExplanationOfBenefit.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "detail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.AddItem.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExplanationOfBenefit.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "subDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.AddItem.Detail.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExplanationOfBenefit.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.BenefitBalance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "excluded", "elementType": "boolean"},
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "network", "elementType": "CodeableConcept"},
        {"name": "unit", "elementType": "CodeableConcept"},
        {"name": "term", "elementType": "CodeableConcept"},
        {
          "name": "financial",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.BenefitBalance.Financial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "allowed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "used",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.CareTeam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "provider", "elementType": "Reference"},
        {"name": "responsible", "elementType": "boolean"},
        {"name": "role", "elementType": "CodeableConcept"},
        {"name": "qualification", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {
          "name": "diagnosis",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "onAdmission", "elementType": "CodeableConcept"},
        {"name": "packageCode", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "focal", "elementType": "boolean"},
        {"name": "coverage", "elementType": "Reference"},
        {
          "name": "preAuthRef",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {
          "name": "careTeamSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosisSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "informationSequence",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "revenue", "elementType": "CodeableConcept"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviced",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "location",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {
          "name": "subSite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "encounter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
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
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Item.Adjudication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "reason", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "Money"},
        {"name": "value", "elementType": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Item.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "revenue", "elementType": "CodeableConcept"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExplanationOfBenefit.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "subDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Item.Detail.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "revenue", "elementType": "CodeableConcept"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "productOrService", "elementType": "CodeableConcept"},
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "unitPrice", "elementType": "Money"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "net", "elementType": "Money"},
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "noteNumber",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ExplanationOfBenefit.Item.Adjudication",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "party", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Payment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "adjustment", "elementType": "Money"},
        {"name": "adjustmentReason", "elementType": "CodeableConcept"},
        {"name": "date", "elementType": "date"},
        {"name": "amount", "elementType": "Money"},
        {"name": "identifier", "elementType": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "elementType": "dateTime"},
        {
          "name": "procedure",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "udi",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.ProcessNote",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "elementType": "positiveInt"},
        {"name": "type", "elementType": "NoteType"},
        {"name": "text", "elementType": "string"},
        {"name": "language", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "claim", "elementType": "Reference"},
        {"name": "relationship", "elementType": "CodeableConcept"},
        {"name": "reference", "elementType": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.SupportingInfo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "reason", "elementType": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefit.Total",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExplanationOfBenefitStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExposureState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Expression",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Expression",
      "label": "Expression",
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "name", "elementType": "id"},
        {"name": "language", "elementType": "code"},
        {"name": "expression", "elementType": "string"},
        {"name": "reference", "elementType": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Extension",
      "label": "Extension",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ExtensionContextType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FHIRAllTypes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FHIRDefinedType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FHIRDeviceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FHIRResourceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FHIRSubstanceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FHIRVersion",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FamilyHistoryStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FamilyMemberHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory",
      "label": "FamilyMemberHistory",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "FamilyHistoryStatus"},
        {"name": "dataAbsentReason", "elementType": "CodeableConcept"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "name", "elementType": "string"},
        {"name": "relationship", "elementType": "CodeableConcept"},
        {"name": "sex", "elementType": "CodeableConcept"},
        {
          "name": "born",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "age",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "estimatedAge", "elementType": "boolean"},
        {
          "name": "deceased",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FamilyMemberHistory.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "outcome", "elementType": "CodeableConcept"},
        {"name": "contributedToDeath", "elementType": "boolean"},
        {
          "name": "onset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FilterOperator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Flag",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Flag",
      "label": "Flag",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "FlagStatus"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "author", "elementType": "Reference"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Device", "relatedKeyElement": "author"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "FlagStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Goal",
      "label": "Goal",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "lifecycleStatus", "elementType": "GoalLifecycleStatus"},
        {"name": "achievementStatus", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "start",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "statusDate", "elementType": "date"},
        {"name": "statusReason", "elementType": "string"},
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
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "outcomeReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Goal.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "measure", "elementType": "CodeableConcept"},
        {
          "name": "detail",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {
          "name": "due",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GoalLifecycleStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GraphCompartmentRule",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GraphCompartmentUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GraphDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/GraphDefinition",
      "label": "GraphDefinition",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "start", "elementType": "ResourceType"},
        {"name": "profile", "elementType": "canonical"},
        {
          "name": "link",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GraphDefinition.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "sliceName", "elementType": "string"},
        {"name": "min", "elementType": "integer"},
        {"name": "max", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GraphDefinition.Link.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "ResourceType"},
        {"name": "params", "elementType": "string"},
        {"name": "profile", "elementType": "canonical"},
        {
          "name": "compartment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "link",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "GraphDefinition.Link",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GraphDefinition.Link.Target.Compartment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "use", "elementType": "GraphCompartmentUse"},
        {"name": "code", "elementType": "CompartmentCode"},
        {"name": "rule", "elementType": "GraphCompartmentRule"},
        {"name": "expression", "elementType": "string"},
        {"name": "description", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Group",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Group",
      "label": "Group",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {"name": "type", "elementType": "GroupType"},
        {"name": "actual", "elementType": "boolean"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "name", "elementType": "string"},
        {"name": "quantity", "elementType": "unsignedInt"},
        {"name": "managingEntity", "elementType": "Reference"},
        {
          "name": "characteristic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "member",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "entity"},
        {"context": "Device", "relatedKeyElement": "entity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Group.Characteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "exclude", "elementType": "boolean"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Group.Member",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entity", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"},
        {"name": "inactive", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GroupMeasure",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GroupType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GuidanceResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/GuidanceResponse",
      "label": "GuidanceResponse",
      "primaryCodePath": "module",
      "element": [
        {"name": "requestIdentifier", "elementType": "Identifier"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "module",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "status", "elementType": "GuidanceResponseStatus"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "occurrenceDateTime", "elementType": "dateTime"},
        {"name": "performer", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
          "name": "evaluationMessage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "outputParameters", "elementType": "Reference"},
        {"name": "result", "elementType": "Reference"},
        {
          "name": "dataRequirement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GuidanceResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GuidePageGeneration",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "GuideParameterCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "HTTPVerb",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "HealthcareService",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/HealthcareService",
      "label": "HealthcareService",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {"name": "providedBy", "elementType": "Reference"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "location",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "string"},
        {"name": "comment", "elementType": "string"},
        {"name": "extraDetails", "elementType": "markdown"},
        {"name": "photo", "elementType": "Attachment"},
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "coverageArea",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviceProvisionCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "eligibility",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "program",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "characteristic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "referralMethod",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentRequired", "elementType": "boolean"},
        {
          "name": "availableTime",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "notAvailable",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "availabilityExceptions", "elementType": "string"},
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "HealthcareService.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "daysOfWeek",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allDay", "elementType": "boolean"},
        {"name": "availableStartTime", "elementType": "time"},
        {"name": "availableEndTime", "elementType": "time"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "HealthcareService.Eligibility",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "comment", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "HealthcareService.NotAvailable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "during", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/HumanName",
      "label": "HumanName",
      "element": [
        {"name": "use", "elementType": "NameUse"},
        {"name": "text", "elementType": "string"},
        {"name": "family", "elementType": "string"},
        {
          "name": "given",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prefix",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "suffix",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Identifier",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Identifier",
      "label": "Identifier",
      "element": [
        {"name": "use", "elementType": "IdentifierUse"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "system", "elementType": "uri"},
        {"name": "value", "elementType": "string"},
        {"name": "period", "elementType": "Period"},
        {"name": "assigner", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "IdentifierUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "IdentityAssuranceLevel",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImagingStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
      "label": "ImagingStudy",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ImagingStudyStatus"},
        {
          "name": "modality",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "started", "elementType": "dateTime"},
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
        {"name": "numberOfSeries", "elementType": "unsignedInt"},
        {"name": "numberOfInstances", "elementType": "unsignedInt"},
        {"name": "procedureReference", "elementType": "Reference"},
        {
          "name": "procedureCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {
          "name": "series",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImagingStudy.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "elementType": "id"},
        {"name": "number", "elementType": "unsignedInt"},
        {"name": "modality", "elementType": "Coding"},
        {"name": "description", "elementType": "string"},
        {"name": "numberOfInstances", "elementType": "unsignedInt"},
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "elementType": "Coding"},
        {"name": "laterality", "elementType": "Coding"},
        {
          "name": "specimen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "started", "elementType": "dateTime"},
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
      "namespace": "FHIR",
      "name": "ImagingStudy.Series.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "elementType": "id"},
        {"name": "sopClass", "elementType": "Coding"},
        {"name": "number", "elementType": "unsignedInt"},
        {"name": "title", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImagingStudy.Series.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "elementType": "CodeableConcept"},
        {"name": "actor", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImagingStudyStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Immunization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Immunization",
      "label": "Immunization",
      "primaryCodePath": "vaccineCode",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ImmunizationStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {"name": "vaccineCode", "elementType": "CodeableConcept"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "recorded", "elementType": "dateTime"},
        {"name": "primarySource", "elementType": "boolean"},
        {"name": "reportOrigin", "elementType": "CodeableConcept"},
        {"name": "location", "elementType": "Reference"},
        {"name": "manufacturer", "elementType": "Reference"},
        {"name": "lotNumber", "elementType": "string"},
        {"name": "expirationDate", "elementType": "date"},
        {"name": "site", "elementType": "CodeableConcept"},
        {"name": "route", "elementType": "CodeableConcept"},
        {"name": "doseQuantity", "elementType": "SimpleQuantity"},
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
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "isSubpotent", "elementType": "boolean"},
        {
          "name": "subpotentReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "education",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programEligibility",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fundingSource", "elementType": "CodeableConcept"},
        {
          "name": "reaction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "protocolApplied",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "actor"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Immunization.Education",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "documentType", "elementType": "string"},
        {"name": "reference", "elementType": "uri"},
        {"name": "publicationDate", "elementType": "dateTime"},
        {"name": "presentationDate", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Immunization.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "elementType": "CodeableConcept"},
        {"name": "actor", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Immunization.ProtocolApplied",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "series", "elementType": "string"},
        {"name": "authority", "elementType": "Reference"},
        {
          "name": "targetDisease",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "doseNumber",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "seriesDoses",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Immunization.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "elementType": "dateTime"},
        {"name": "detail", "elementType": "Reference"},
        {"name": "reported", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImmunizationEvaluation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation",
      "label": "ImmunizationEvaluation",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ImmunizationEvaluationStatus"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "authority", "elementType": "Reference"},
        {"name": "targetDisease", "elementType": "CodeableConcept"},
        {"name": "immunizationEvent", "elementType": "Reference"},
        {"name": "doseStatus", "elementType": "CodeableConcept"},
        {
          "name": "doseStatusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "series", "elementType": "string"},
        {
          "name": "doseNumber",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "seriesDoses",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImmunizationEvaluationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
      "label": "ImmunizationRecommendation",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "authority", "elementType": "Reference"},
        {
          "name": "recommendation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImmunizationRecommendation.Recommendation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "vaccineCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "targetDisease", "elementType": "CodeableConcept"},
        {
          "name": "contraindicatedVaccineCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "forecastStatus", "elementType": "CodeableConcept"},
        {
          "name": "forecastReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dateCriterion",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "series", "elementType": "string"},
        {
          "name": "doseNumber",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "seriesDoses",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
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
      "namespace": "FHIR",
      "name": "ImmunizationRecommendation.Recommendation.DateCriterion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "value", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImmunizationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ImplementationGuide",
      "label": "ImplementationGuide",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "elementType": "markdown"},
        {"name": "packageId", "elementType": "id"},
        {"name": "license", "elementType": "SPDXLicense"},
        {
          "name": "fhirVersion",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dependsOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "global",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "elementType": "ImplementationGuide.Definition"},
        {"name": "manifest", "elementType": "ImplementationGuide.Manifest"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Definition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "grouping",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "resource",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "page", "elementType": "ImplementationGuide.Definition.Page"},
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "template",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Definition.Grouping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Definition.Page",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "name",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "title", "elementType": "string"},
        {"name": "generation", "elementType": "GuidePageGeneration"},
        {
          "name": "page",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ImplementationGuide.Definition.Page",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Definition.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "GuideParameterCode"},
        {"name": "value", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Definition.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reference", "elementType": "Reference"},
        {
          "name": "fhirVersion",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {
          "name": "example",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "groupingId", "elementType": "id"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Definition.Template",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {"name": "source", "elementType": "string"},
        {"name": "scope", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.DependsOn",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uri", "elementType": "canonical"},
        {"name": "packageId", "elementType": "id"},
        {"name": "version", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Global",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "ResourceType"},
        {"name": "profile", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Manifest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "rendering", "elementType": "url"},
        {
          "name": "resource",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "page",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "image",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "other",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Manifest.Page",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {
          "name": "anchor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ImplementationGuide.Manifest.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reference", "elementType": "Reference"},
        {
          "name": "example",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "relativePath", "elementType": "url"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/InsurancePlan",
      "label": "InsurancePlan",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "PublicationStatus"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "string"},
        {
          "name": "alias",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"},
        {"name": "ownedBy", "elementType": "Reference"},
        {"name": "administeredBy", "elementType": "Reference"},
        {
          "name": "coverageArea",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "network",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "coverage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "plan",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "purpose", "elementType": "CodeableConcept"},
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
      "namespace": "FHIR",
      "name": "InsurancePlan.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "network",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "benefit",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Coverage.Benefit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "requirement", "elementType": "string"},
        {
          "name": "limit",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Coverage.Benefit.Limit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "value", "elementType": "Quantity"},
        {"name": "code", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Plan",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "coverageArea",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "network",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "generalCost",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specificCost",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Plan.GeneralCost",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "groupSize", "elementType": "positiveInt"},
        {"name": "cost", "elementType": "Money"},
        {"name": "comment", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Plan.SpecificCost",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {
          "name": "benefit",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Plan.SpecificCost.Benefit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "cost",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InsurancePlan.Plan.SpecificCost.Benefit.Cost",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "applicability", "elementType": "CodeableConcept"},
        {
          "name": "qualifiers",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "elementType": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Invoice",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Invoice",
      "label": "Invoice",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "InvoiceStatus"},
        {"name": "cancelledReason", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "recipient", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "issuer", "elementType": "Reference"},
        {"name": "account", "elementType": "Reference"},
        {
          "name": "lineItem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "totalPriceComponent",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Invoice.LineItem.PriceComponent",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {"name": "totalNet", "elementType": "Money"},
        {"name": "totalGross", "elementType": "Money"},
        {"name": "paymentTerms", "elementType": "markdown"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Device", "relatedKeyElement": "actor"},
        {"context": "RelatedPerson", "relatedKeyElement": "recipient"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Invoice.LineItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "elementType": "positiveInt"},
        {
          "name": "chargeItem",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "priceComponent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Invoice.LineItem.PriceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "InvoicePriceComponentType"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "amount", "elementType": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Invoice.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "elementType": "CodeableConcept"},
        {"name": "actor", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InvoicePriceComponentType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "InvoiceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "IssueSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "IssueType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Library",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Library",
      "label": "Library",
      "primaryCodePath": "topic",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "usage", "elementType": "string"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dataRequirement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "content",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "LinkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Linkage",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Linkage",
      "label": "Linkage",
      "element": [
        {"name": "active", "elementType": "boolean"},
        {"name": "author", "elementType": "Reference"},
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "author"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Linkage.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "LinkageType"},
        {"name": "resource", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "LinkageType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "List",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/List",
      "label": "List",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ListStatus"},
        {"name": "mode", "elementType": "ListMode"},
        {"name": "title", "elementType": "string"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "source", "elementType": "Reference"},
        {"name": "orderedBy", "elementType": "CodeableConcept"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "entry",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "emptyReason", "elementType": "CodeableConcept"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "source"},
        {"context": "Device", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "source"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "List.Entry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "flag", "elementType": "CodeableConcept"},
        {"name": "deleted", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "item", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ListStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Location",
      "label": "Location",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "LocationStatus"},
        {"name": "operationalStatus", "elementType": "Coding"},
        {"name": "name", "elementType": "string"},
        {
          "name": "alias",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "mode", "elementType": "LocationMode"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "elementType": "Address"},
        {"name": "physicalType", "elementType": "CodeableConcept"},
        {"name": "position", "elementType": "Location.Position"},
        {"name": "managingOrganization", "elementType": "Reference"},
        {"name": "partOf", "elementType": "Reference"},
        {
          "name": "hoursOfOperation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "availabilityExceptions", "elementType": "string"},
        {
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Location.HoursOfOperation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "daysOfWeek",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allDay", "elementType": "boolean"},
        {"name": "openingTime", "elementType": "time"},
        {"name": "closingTime", "elementType": "time"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Location.Position",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "longitude", "elementType": "decimal"},
        {"name": "latitude", "elementType": "decimal"},
        {"name": "altitude", "elementType": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "LocationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "LocationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MarketingStatus",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MarketingStatus",
      "label": "MarketingStatus",
      "element": [
        {"name": "country", "elementType": "CodeableConcept"},
        {"name": "jurisdiction", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "dateRange", "elementType": "Period"},
        {"name": "restoreDate", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Measure",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Measure",
      "label": "Measure",
      "primaryCodePath": "topic",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "usage", "elementType": "string"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "disclaimer", "elementType": "markdown"},
        {"name": "scoring", "elementType": "CodeableConcept"},
        {"name": "compositeScoring", "elementType": "CodeableConcept"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "riskAdjustment", "elementType": "string"},
        {"name": "rateAggregation", "elementType": "string"},
        {"name": "rationale", "elementType": "markdown"},
        {"name": "clinicalRecommendationStatement", "elementType": "markdown"},
        {"name": "improvementNotation", "elementType": "CodeableConcept"},
        {
          "name": "definition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "guidance", "elementType": "markdown"},
        {
          "name": "group",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "supplementalData",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Measure.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {
          "name": "population",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "stratifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Measure.Group.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {"name": "criteria", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Measure.Group.Stratifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {"name": "criteria", "elementType": "Expression"},
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Measure.Group.Stratifier.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {"name": "criteria", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Measure.SupplementalData",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "usage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "criteria", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MeasureReport",
      "label": "MeasureReport",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "MeasureReportStatus"},
        {"name": "type", "elementType": "MeasureReportType"},
        {"name": "measure", "elementType": "canonical"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "reporter", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"},
        {"name": "improvementNotation", "elementType": "CodeableConcept"},
        {
          "name": "group",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "evaluatedResource",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReport.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "population",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measureScore", "elementType": "Quantity"},
        {
          "name": "stratifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReport.Group.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "count", "elementType": "integer"},
        {"name": "subjectResults", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReport.Group.Stratifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "stratum",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReport.Group.Stratifier.Stratum",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "value", "elementType": "CodeableConcept"},
        {
          "name": "component",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "population",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measureScore", "elementType": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReport.Group.Stratifier.Stratum.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "value", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReport.Group.Stratifier.Stratum.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "count", "elementType": "integer"},
        {"name": "subjectResults", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MeasureReportType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Media",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Media",
      "label": "Media",
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
        {"name": "status", "elementType": "MediaStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "modality", "elementType": "CodeableConcept"},
        {"name": "view", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "created",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "issued", "elementType": "instant"},
        {"name": "operator", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {"name": "deviceName", "elementType": "string"},
        {"name": "device", "elementType": "Reference"},
        {"name": "height", "elementType": "positiveInt"},
        {"name": "width", "elementType": "positiveInt"},
        {"name": "frames", "elementType": "positiveInt"},
        {"name": "duration", "elementType": "decimal"},
        {"name": "content", "elementType": "Attachment"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "subject"},
        {"context": "Practitioner", "relatedKeyElement": "operator"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "subject"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MediaStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Medication",
      "label": "Medication",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "MedicationStatus"},
        {"name": "manufacturer", "elementType": "Reference"},
        {"name": "form", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "Ratio"},
        {
          "name": "ingredient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "batch", "elementType": "Medication.Batch"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Medication.Batch",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "lotNumber", "elementType": "string"},
        {"name": "expirationDate", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Medication.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "isActive", "elementType": "boolean"},
        {"name": "strength", "elementType": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationAdministration",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
      "label": "MedicationAdministration",
      "primaryCodePath": "medication",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "MedicationAdministrationStatus"},
        {
          "name": "statusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "elementType": "CodeableConcept"},
        {
          "name": "medication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
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
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"context": "Encounter", "relatedKeyElement": "context"},
        {"context": "Device", "relatedKeyElement": "device"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationAdministration.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "elementType": "string"},
        {"name": "site", "elementType": "CodeableConcept"},
        {"name": "route", "elementType": "CodeableConcept"},
        {"name": "method", "elementType": "CodeableConcept"},
        {"name": "dose", "elementType": "SimpleQuantity"},
        {
          "name": "rate",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationAdministration.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "elementType": "CodeableConcept"},
        {"name": "actor", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationAdministrationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationDispense",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
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
        {"name": "status", "elementType": "MedicationDispenseStatus"},
        {
          "name": "statusReason",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "category", "elementType": "CodeableConcept"},
        {
          "name": "medication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
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
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "daysSupply", "elementType": "SimpleQuantity"},
        {"name": "whenPrepared", "elementType": "dateTime"},
        {"name": "whenHandedOver", "elementType": "dateTime"},
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
        {"context": "Practitioner", "relatedKeyElement": "receiver"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationDispense.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "elementType": "CodeableConcept"},
        {"name": "actor", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationDispense.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "wasSubstituted", "elementType": "boolean"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "reason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "responsibleParty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationDispenseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicationKnowledge",
      "label": "MedicationKnowledge",
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "MedicationKnowledgeStatus"},
        {"name": "manufacturer", "elementType": "Reference"},
        {"name": "doseForm", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "SimpleQuantity"},
        {
          "name": "synonym",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedMedicationKnowledge",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "associatedMedication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "productType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "monograph",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ingredient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "preparationInstruction", "elementType": "markdown"},
        {
          "name": "intendedRoute",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "cost",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "monitoringProgram",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "administrationGuidelines",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "medicineClassification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "packaging", "elementType": "MedicationKnowledge.Packaging"},
        {
          "name": "drugCharacteristic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contraindication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "regulatory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "kinetics",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.AdministrationGuidelines",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "dosage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "indication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "patientCharacteristics",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.AdministrationGuidelines.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "dosage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name":
          "MedicationKnowledge.AdministrationGuidelines.PatientCharacteristics",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "characteristic",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "value",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Cost",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "source", "elementType": "string"},
        {"name": "cost", "elementType": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.DrugCharacteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"},
              {"name": "base64Binary", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "isActive", "elementType": "boolean"},
        {"name": "strength", "elementType": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Kinetics",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "areaUnderCurve",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "lethalDose50",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "halfLifePeriod", "elementType": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.MedicineClassification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "classification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.MonitoringProgram",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "name", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Monograph",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "source", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Packaging",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "quantity", "elementType": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Regulatory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "regulatoryAuthority", "elementType": "Reference"},
        {
          "name": "substitution",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "schedule",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "maxDispense",
          "elementType": "MedicationKnowledge.Regulatory.MaxDispense"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Regulatory.MaxDispense",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "period", "elementType": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Regulatory.Schedule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "schedule", "elementType": "CodeableConcept"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.Regulatory.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "allowed", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledge.RelatedMedicationKnowledge",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "reference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationKnowledgeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
      "label": "MedicationRequest",
      "primaryCodePath": "medication",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "MedicationRequestStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {"name": "intent", "elementType": "MedicationRequestIntent"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "elementType": "MedicationRequestPriority"},
        {"name": "doNotPerform", "elementType": "boolean"},
        {
          "name": "reported",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "medication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "supportingInformation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "authoredOn", "elementType": "dateTime"},
        {"name": "requester", "elementType": "Reference"},
        {"name": "performer", "elementType": "Reference"},
        {"name": "performerType", "elementType": "CodeableConcept"},
        {"name": "recorder", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "elementType": "Identifier"},
        {"name": "courseOfTherapyType", "elementType": "CodeableConcept"},
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
        {"context": "Encounter", "relatedKeyElement": "encounter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationRequest.DispenseRequest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "initialFill",
          "elementType": "MedicationRequest.DispenseRequest.InitialFill"
        },
        {"name": "dispenseInterval", "elementType": "Duration"},
        {"name": "validityPeriod", "elementType": "Period"},
        {"name": "numberOfRepeatsAllowed", "elementType": "unsignedInt"},
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "expectedSupplyDuration", "elementType": "Duration"},
        {"name": "performer", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationRequest.DispenseRequest.InitialFill",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "duration", "elementType": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationRequest.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "allowed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "reason", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationRequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
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
        {"name": "status", "elementType": "MedicationStatementStatus"},
        {
          "name": "statusReason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "category", "elementType": "CodeableConcept"},
        {
          "name": "medication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "context", "elementType": "Reference"},
        {
          "name": "effective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "dateAsserted", "elementType": "dateTime"},
        {"name": "informationSource", "elementType": "Reference"},
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"context": "RelatedPerson", "relatedKeyElement": "informationSource"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationStatementStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProduct",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MedicinalProduct",
      "label": "MedicinalProduct",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "domain", "elementType": "Coding"},
        {
          "name": "combinedPharmaceuticalDoseForm",
          "elementType": "CodeableConcept"
        },
        {"name": "legalStatusOfSupply", "elementType": "CodeableConcept"},
        {
          "name": "additionalMonitoringIndicator",
          "elementType": "CodeableConcept"
        },
        {
          "name": "specialMeasures",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "paediatricUseIndicator", "elementType": "CodeableConcept"},
        {
          "name": "productClassification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "marketingStatus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "pharmaceuticalProduct",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "packagedMedicinalProduct",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "attachedDocument",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "masterFile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "clinicalTrial",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "name",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "crossReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturingBusinessOperation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialDesignation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProduct.ManufacturingBusinessOperation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "operationType", "elementType": "CodeableConcept"},
        {"name": "authorisationReferenceNumber", "elementType": "Identifier"},
        {"name": "effectiveDate", "elementType": "dateTime"},
        {"name": "confidentialityIndicator", "elementType": "CodeableConcept"},
        {
          "name": "manufacturer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "regulator", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProduct.Name",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "productName", "elementType": "string"},
        {
          "name": "namePart",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "countryLanguage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProduct.Name.CountryLanguage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "country", "elementType": "CodeableConcept"},
        {"name": "jurisdiction", "elementType": "CodeableConcept"},
        {"name": "language", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProduct.Name.NamePart",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "part", "elementType": "string"},
        {"name": "type", "elementType": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProduct.SpecialDesignation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "intendedUse", "elementType": "CodeableConcept"},
        {
          "name": "indication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "species", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductAuthorization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization",
      "label": "MedicinalProductAuthorization",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "elementType": "Reference"},
        {
          "name": "country",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "statusDate", "elementType": "dateTime"},
        {"name": "restoreDate", "elementType": "dateTime"},
        {"name": "validityPeriod", "elementType": "Period"},
        {"name": "dataExclusivityPeriod", "elementType": "Period"},
        {"name": "dateOfFirstAuthorization", "elementType": "dateTime"},
        {"name": "internationalBirthDate", "elementType": "dateTime"},
        {"name": "legalBasis", "elementType": "CodeableConcept"},
        {
          "name": "jurisdictionalAuthorization",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "holder", "elementType": "Reference"},
        {"name": "regulator", "elementType": "Reference"},
        {
          "name": "procedure",
          "elementType": "MedicinalProductAuthorization.Procedure"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductAuthorization.JurisdictionalAuthorization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "country", "elementType": "CodeableConcept"},
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "legalStatusOfSupply", "elementType": "CodeableConcept"},
        {"name": "validityPeriod", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductAuthorization.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "date",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "application",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "MedicinalProductAuthorization.Procedure",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductContraindication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductContraindication",
      "label": "MedicinalProductContraindication",
      "element": [
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "disease", "elementType": "CodeableConcept"},
        {"name": "diseaseStatus", "elementType": "CodeableConcept"},
        {
          "name": "comorbidity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "therapeuticIndication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "otherTherapy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "population",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductContraindication.OtherTherapy",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "therapyRelationshipType", "elementType": "CodeableConcept"},
        {
          "name": "medication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductIndication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication",
      "label": "MedicinalProductIndication",
      "element": [
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "diseaseSymptomProcedure", "elementType": "CodeableConcept"},
        {"name": "diseaseStatus", "elementType": "CodeableConcept"},
        {
          "name": "comorbidity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "intendedEffect", "elementType": "CodeableConcept"},
        {"name": "duration", "elementType": "Quantity"},
        {
          "name": "otherTherapy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "undesirableEffect",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "population",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductIndication.OtherTherapy",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "therapyRelationshipType", "elementType": "CodeableConcept"},
        {
          "name": "medication",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductIngredient",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient",
      "label": "MedicinalProductIngredient",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "role", "elementType": "CodeableConcept"},
        {"name": "allergenicIndicator", "elementType": "boolean"},
        {
          "name": "manufacturer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specifiedSubstance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "substance",
          "elementType": "MedicinalProductIngredient.Substance"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductIngredient.SpecifiedSubstance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "group", "elementType": "CodeableConcept"},
        {"name": "confidentiality", "elementType": "CodeableConcept"},
        {
          "name": "strength",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductIngredient.SpecifiedSubstance.Strength",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "presentation", "elementType": "Ratio"},
        {"name": "presentationLowLimit", "elementType": "Ratio"},
        {"name": "concentration", "elementType": "Ratio"},
        {"name": "concentrationLowLimit", "elementType": "Ratio"},
        {"name": "measurementPoint", "elementType": "string"},
        {
          "name": "country",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "referenceStrength",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name":
          "MedicinalProductIngredient.SpecifiedSubstance.Strength.ReferenceStrength",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "substance", "elementType": "CodeableConcept"},
        {"name": "strength", "elementType": "Ratio"},
        {"name": "strengthLowLimit", "elementType": "Ratio"},
        {"name": "measurementPoint", "elementType": "string"},
        {
          "name": "country",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductIngredient.Substance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "strength",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "MedicinalProductIngredient.SpecifiedSubstance.Strength",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductInteraction",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductInteraction",
      "label": "MedicinalProductInteraction",
      "element": [
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {
          "name": "interactant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "effect", "elementType": "CodeableConcept"},
        {"name": "incidence", "elementType": "CodeableConcept"},
        {"name": "management", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductInteraction.Interactant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "item",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "Reference", "type": "NamedTypeSpecifier"},
            {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductManufactured",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured",
      "label": "MedicinalProductManufactured",
      "element": [
        {"name": "manufacturedDoseForm", "elementType": "CodeableConcept"},
        {"name": "unitOfPresentation", "elementType": "CodeableConcept"},
        {"name": "quantity", "elementType": "Quantity"},
        {
          "name": "manufacturer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ingredient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "physicalCharacteristics",
          "elementType": "ProdCharacteristic"
        },
        {
          "name": "otherCharacteristics",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductPackaged",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged",
      "label": "MedicinalProductPackaged",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "legalStatusOfSupply", "elementType": "CodeableConcept"},
        {
          "name": "marketingStatus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "marketingAuthorization", "elementType": "Reference"},
        {
          "name": "manufacturer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "batchIdentifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "packageItem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductPackaged.BatchIdentifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "outerPackaging", "elementType": "Identifier"},
        {"name": "immediatePackaging", "elementType": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductPackaged.PackageItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "quantity", "elementType": "Quantity"},
        {
          "name": "material",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "alternateMaterial",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "device",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturedItem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "packageItem",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "MedicinalProductPackaged.PackageItem",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "physicalCharacteristics",
          "elementType": "ProdCharacteristic"
        },
        {
          "name": "otherCharacteristics",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "shelfLifeStorage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductPharmaceutical",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical",
      "label": "MedicinalProductPharmaceutical",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "administrableDoseForm", "elementType": "CodeableConcept"},
        {"name": "unitOfPresentation", "elementType": "CodeableConcept"},
        {
          "name": "ingredient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "device",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "characteristics",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "routeOfAdministration",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductPharmaceutical.Characteristics",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductPharmaceutical.RouteOfAdministration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "firstDose", "elementType": "Quantity"},
        {"name": "maxSingleDose", "elementType": "Quantity"},
        {"name": "maxDosePerDay", "elementType": "Quantity"},
        {"name": "maxDosePerTreatmentPeriod", "elementType": "Ratio"},
        {"name": "maxTreatmentPeriod", "elementType": "Duration"},
        {
          "name": "targetSpecies",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name":
          "MedicinalProductPharmaceutical.RouteOfAdministration.TargetSpecies",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "withdrawalPeriod",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name":
          "MedicinalProductPharmaceutical.RouteOfAdministration.TargetSpecies.WithdrawalPeriod",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "tissue", "elementType": "CodeableConcept"},
        {"name": "value", "elementType": "Quantity"},
        {"name": "supportingInformation", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MedicinalProductUndesirableEffect",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/MedicinalProductUndesirableEffect",
      "label": "MedicinalProductUndesirableEffect",
      "element": [
        {
          "name": "subject",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "symptomConditionEffect", "elementType": "CodeableConcept"},
        {"name": "classification", "elementType": "CodeableConcept"},
        {"name": "frequencyOfOccurrence", "elementType": "CodeableConcept"},
        {
          "name": "population",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MessageDefinition",
      "label": "MessageDefinition",
      "primaryCodePath": "event",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {
          "name": "replaces",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "base", "elementType": "canonical"},
        {
          "name": "parent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "event",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "category", "elementType": "MessageSignificanceCategory"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "responseRequired",
          "elementType": "Messageheader_Response_Request"
        },
        {
          "name": "allowedResponse",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "graph",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageDefinition.AllowedResponse",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "message", "elementType": "canonical"},
        {"name": "situation", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageDefinition.Focus",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "ResourceType"},
        {"name": "profile", "elementType": "canonical"},
        {"name": "min", "elementType": "unsignedInt"},
        {"name": "max", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageHeader",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MessageHeader",
      "label": "MessageHeader",
      "element": [
        {
          "name": "event",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "destination",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sender", "elementType": "Reference"},
        {"name": "enterer", "elementType": "Reference"},
        {"name": "author", "elementType": "Reference"},
        {"name": "source", "elementType": "MessageHeader.Source"},
        {"name": "responsible", "elementType": "Reference"},
        {"name": "reason", "elementType": "CodeableConcept"},
        {"name": "response", "elementType": "MessageHeader.Response"},
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "elementType": "canonical"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "receiver"},
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Practitioner", "relatedKeyElement": "responsible"},
        {"context": "Practitioner", "relatedKeyElement": "enterer"},
        {"context": "Device", "relatedKeyElement": "target"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageHeader.Destination",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "target", "elementType": "Reference"},
        {"name": "endpoint", "elementType": "url"},
        {"name": "receiver", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageHeader.Response",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "id"},
        {"name": "code", "elementType": "ResponseType"},
        {"name": "details", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageHeader.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "software", "elementType": "string"},
        {"name": "version", "elementType": "string"},
        {"name": "contact", "elementType": "ContactPoint"},
        {"name": "endpoint", "elementType": "url"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MessageSignificanceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Messageheader_Response_Request",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Meta",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Meta",
      "label": "Meta",
      "element": [
        {"name": "versionId", "elementType": "id"},
        {"name": "lastUpdated", "elementType": "instant"},
        {"name": "source", "elementType": "uri"},
        {
          "name": "profile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "security",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "tag",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MimeType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
      "label": "MolecularSequence",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "SequenceType"},
        {"name": "coordinateSystem", "elementType": "integer"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "specimen", "elementType": "Reference"},
        {"name": "device", "elementType": "Reference"},
        {"name": "performer", "elementType": "Reference"},
        {"name": "quantity", "elementType": "Quantity"},
        {
          "name": "referenceSeq",
          "elementType": "MolecularSequence.ReferenceSeq"
        },
        {
          "name": "variant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "observedSeq", "elementType": "string"},
        {
          "name": "quality",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "readCoverage", "elementType": "integer"},
        {
          "name": "repository",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "pointer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "structureVariant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.Quality",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "QualityType"},
        {"name": "standardSequence", "elementType": "CodeableConcept"},
        {"name": "start", "elementType": "integer"},
        {"name": "end", "elementType": "integer"},
        {"name": "score", "elementType": "Quantity"},
        {"name": "method", "elementType": "CodeableConcept"},
        {"name": "truthTP", "elementType": "decimal"},
        {"name": "queryTP", "elementType": "decimal"},
        {"name": "truthFN", "elementType": "decimal"},
        {"name": "queryFP", "elementType": "decimal"},
        {"name": "gtFP", "elementType": "decimal"},
        {"name": "precision", "elementType": "decimal"},
        {"name": "recall", "elementType": "decimal"},
        {"name": "fScore", "elementType": "decimal"},
        {"name": "roc", "elementType": "MolecularSequence.Quality.Roc"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.Quality.Roc",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "score",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "numTP",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "numFP",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "numFN",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "precision",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "sensitivity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "fMeasure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.ReferenceSeq",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "chromosome", "elementType": "CodeableConcept"},
        {"name": "genomeBuild", "elementType": "string"},
        {"name": "orientation", "elementType": "OrientationType"},
        {"name": "referenceSeqId", "elementType": "CodeableConcept"},
        {"name": "referenceSeqPointer", "elementType": "Reference"},
        {"name": "referenceSeqString", "elementType": "string"},
        {"name": "strand", "elementType": "StrandType"},
        {"name": "windowStart", "elementType": "integer"},
        {"name": "windowEnd", "elementType": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.Repository",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "RepositoryType"},
        {"name": "url", "elementType": "uri"},
        {"name": "name", "elementType": "string"},
        {"name": "datasetId", "elementType": "string"},
        {"name": "variantsetId", "elementType": "string"},
        {"name": "readsetId", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.StructureVariant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "variantType", "elementType": "CodeableConcept"},
        {"name": "exact", "elementType": "boolean"},
        {"name": "length", "elementType": "integer"},
        {
          "name": "outer",
          "elementType": "MolecularSequence.StructureVariant.Outer"
        },
        {
          "name": "inner",
          "elementType": "MolecularSequence.StructureVariant.Inner"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.StructureVariant.Inner",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "start", "elementType": "integer"},
        {"name": "end", "elementType": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.StructureVariant.Outer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "start", "elementType": "integer"},
        {"name": "end", "elementType": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MolecularSequence.Variant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "start", "elementType": "integer"},
        {"name": "end", "elementType": "integer"},
        {"name": "observedAllele", "elementType": "string"},
        {"name": "referenceAllele", "elementType": "string"},
        {"name": "cigar", "elementType": "string"},
        {"name": "variantPointer", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Money",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Money",
      "label": "Money",
      "element": [
        {"name": "value", "elementType": "decimal"},
        {"name": "currency", "elementType": "CurrencyCode"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "MoneyQuantity",
      "baseType": "Quantity",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/MoneyQuantity",
      "label": "MoneyQuantity",
      "primaryCodePath": "code",
      "element": [
        {"name": "value", "elementType": "decimal"},
        {"name": "comparator", "elementType": "QuantityComparator"},
        {"name": "unit", "elementType": "string"},
        {"name": "system", "elementType": "uri"},
        {"name": "code", "elementType": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NameUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NamingSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/NamingSystem",
      "label": "NamingSystem",
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "kind", "elementType": "NamingSystemType"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "responsible", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "usage", "elementType": "string"},
        {
          "name": "uniqueId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NamingSystem.UniqueId",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "NamingSystemIdentifierType"},
        {"name": "value", "elementType": "string"},
        {"name": "preferred", "elementType": "boolean"},
        {"name": "comment", "elementType": "string"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NamingSystemIdentifierType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NamingSystemType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Narrative",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Narrative",
      "label": "Narrative",
      "element": [
        {"name": "status", "elementType": "NarrativeStatus"},
        {"name": "div", "elementType": "xhtml"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NarrativeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NoteType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritiionOrderIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritionOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
      "label": "NutritionOrder",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "NutritionOrderStatus"},
        {"name": "intent", "elementType": "NutritiionOrderIntent"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "dateTime", "elementType": "dateTime"},
        {"name": "orderer", "elementType": "Reference"},
        {
          "name": "allergyIntolerance",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "foodPreferenceModifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "excludeFoodModifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "oralDiet", "elementType": "NutritionOrder.OralDiet"},
        {
          "name": "supplement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "enteralFormula",
          "elementType": "NutritionOrder.EnteralFormula"
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "orderer"},
        {"context": "Encounter", "relatedKeyElement": "encounter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritionOrder.EnteralFormula",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "baseFormulaType", "elementType": "CodeableConcept"},
        {"name": "baseFormulaProductName", "elementType": "string"},
        {"name": "additiveType", "elementType": "CodeableConcept"},
        {"name": "additiveProductName", "elementType": "string"},
        {"name": "caloricDensity", "elementType": "SimpleQuantity"},
        {"name": "routeofAdministration", "elementType": "CodeableConcept"},
        {
          "name": "administration",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maxVolumeToDeliver", "elementType": "SimpleQuantity"},
        {"name": "administrationInstruction", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritionOrder.EnteralFormula.Administration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "schedule", "elementType": "Timing"},
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {
          "name": "rate",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"},
              {
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
      "namespace": "FHIR",
      "name": "NutritionOrder.OralDiet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "schedule",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "nutrient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "texture",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "fluidConsistencyType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "instruction", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritionOrder.OralDiet.Nutrient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritionOrder.OralDiet.Texture",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "elementType": "CodeableConcept"},
        {"name": "foodType", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritionOrder.Supplement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "productName", "elementType": "string"},
        {
          "name": "schedule",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "instruction", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "NutritionOrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Observation",
      "label": "Observation",
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
        {"name": "status", "elementType": "ObservationStatus"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
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
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "issued", "elementType": "instant"},
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
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"name": "SampledData", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "dataAbsentReason", "elementType": "CodeableConcept"},
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {"name": "method", "elementType": "CodeableConcept"},
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
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "subject"},
        {"context": "Device", "relatedKeyElement": "device"},
        {"context": "RelatedPerson", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Observation.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"name": "SampledData", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "dataAbsentReason", "elementType": "CodeableConcept"},
        {
          "name": "interpretation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
      "namespace": "FHIR",
      "name": "Observation.ReferenceRange",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "low", "elementType": "SimpleQuantity"},
        {"name": "high", "elementType": "SimpleQuantity"},
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "appliesTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "age", "elementType": "Range"},
        {"name": "text", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ObservationDataType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ObservationDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ObservationDefinition",
      "label": "ObservationDefinition",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "permittedDataType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "multipleResultsAllowed", "elementType": "boolean"},
        {"name": "method", "elementType": "CodeableConcept"},
        {"name": "preferredReportName", "elementType": "string"},
        {
          "name": "quantitativeDetails",
          "elementType": "ObservationDefinition.QuantitativeDetails"
        },
        {
          "name": "qualifiedInterval",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "validCodedValueSet", "elementType": "Reference"},
        {"name": "normalCodedValueSet", "elementType": "Reference"},
        {"name": "abnormalCodedValueSet", "elementType": "Reference"},
        {"name": "criticalCodedValueSet", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ObservationDefinition.QualifiedInterval",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "ObservationRangeCategory"},
        {"name": "range", "elementType": "Range"},
        {"name": "context", "elementType": "CodeableConcept"},
        {
          "name": "appliesTo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "elementType": "AdministrativeGender"},
        {"name": "age", "elementType": "Range"},
        {"name": "gestationalAge", "elementType": "Range"},
        {"name": "condition", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ObservationDefinition.QuantitativeDetails",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "customaryUnit", "elementType": "CodeableConcept"},
        {"name": "unit", "elementType": "CodeableConcept"},
        {"name": "conversionFactor", "elementType": "decimal"},
        {"name": "decimalPrecision", "elementType": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ObservationRangeCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ObservationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/OperationDefinition",
      "label": "OperationDefinition",
      "primaryCodePath": "code",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "kind", "elementType": "OperationKind"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "affectsState", "elementType": "boolean"},
        {"name": "code", "elementType": "code"},
        {"name": "comment", "elementType": "markdown"},
        {"name": "base", "elementType": "canonical"},
        {
          "name": "resource",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "elementType": "boolean"},
        {"name": "type", "elementType": "boolean"},
        {"name": "instance", "elementType": "boolean"},
        {"name": "inputProfile", "elementType": "canonical"},
        {"name": "outputProfile", "elementType": "canonical"},
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "overload",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationDefinition.Overload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "parameterName",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "comment", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationDefinition.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "code"},
        {"name": "use", "elementType": "OperationParameterUse"},
        {"name": "min", "elementType": "integer"},
        {"name": "max", "elementType": "string"},
        {"name": "documentation", "elementType": "string"},
        {"name": "type", "elementType": "FHIRAllTypes"},
        {
          "name": "targetProfile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "searchType", "elementType": "SearchParamType"},
        {
          "name": "binding",
          "elementType": "OperationDefinition.Parameter.Binding"
        },
        {
          "name": "referencedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "part",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "OperationDefinition.Parameter",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationDefinition.Parameter.Binding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "strength", "elementType": "BindingStrength"},
        {"name": "valueSet", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationDefinition.Parameter.ReferencedFrom",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "source", "elementType": "string"},
        {"name": "sourceId", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationOutcome",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/OperationOutcome",
      "label": "OperationOutcome",
      "primaryCodePath": "issue.code",
      "element": {
        "name": "issue",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationOutcome.Issue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "severity", "elementType": "IssueSeverity"},
        {"name": "code", "elementType": "IssueType"},
        {"name": "details", "elementType": "CodeableConcept"},
        {"name": "diagnostics", "elementType": "string"},
        {
          "name": "location",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "expression",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OperationParameterUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Organization",
      "label": "Organization",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "string"},
        {
          "name": "alias",
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
      "namespace": "FHIR",
      "name": "Organization.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "purpose", "elementType": "CodeableConcept"},
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
      "namespace": "FHIR",
      "name": "OrganizationAffiliation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/OrganizationAffiliation",
      "label": "OrganizationAffiliation",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {"name": "period", "elementType": "Period"},
        {"name": "organization", "elementType": "Reference"},
        {"name": "participatingOrganization", "elementType": "Reference"},
        {
          "name": "network",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
          "name": "endpoint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "OrientationType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ParameterDefinition",
      "baseType": "Element",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ParameterDefinition",
      "label": "ParameterDefinition",
      "element": [
        {"name": "name", "elementType": "code"},
        {"name": "use", "elementType": "ParameterUse"},
        {"name": "min", "elementType": "integer"},
        {"name": "max", "elementType": "string"},
        {"name": "documentation", "elementType": "string"},
        {"name": "type", "elementType": "FHIRAllTypes"},
        {"name": "profile", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ParameterUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Parameters",
      "baseType": "Resource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Parameters",
      "label": "Parameters",
      "element": {
        "name": "parameter",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Parameters.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        },
        {"name": "resource", "elementType": "Resource"},
        {
          "name": "part",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Parameters.Parameter",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ParticipantRequired",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ParticipantStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ParticipationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Patient",
      "label": "Patient",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {
          "name": "name",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "elementType": "AdministrativeGender"},
        {"name": "birthDate", "elementType": "date"},
        {
          "name": "deceased",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "address",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maritalStatus", "elementType": "CodeableConcept"},
        {
          "name": "multipleBirth",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"}
            ]
          }
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
        {"context": "RelatedPerson", "relatedKeyElement": "other"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Patient.Communication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "elementType": "CodeableConcept"},
        {"name": "preferred", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Patient.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "relationship",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "elementType": "HumanName"},
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "elementType": "Address"},
        {"name": "gender", "elementType": "AdministrativeGender"},
        {"name": "organization", "elementType": "Reference"},
        {"name": "period", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Patient.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "other", "elementType": "Reference"},
        {"name": "type", "elementType": "LinkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PaymentNotice",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/PaymentNotice",
      "label": "PaymentNotice",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "PaymentNoticeStatus"},
        {"name": "request", "elementType": "Reference"},
        {"name": "response", "elementType": "Reference"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "provider", "elementType": "Reference"},
        {"name": "payment", "elementType": "Reference"},
        {"name": "paymentDate", "elementType": "date"},
        {"name": "payee", "elementType": "Reference"},
        {"name": "recipient", "elementType": "Reference"},
        {"name": "amount", "elementType": "Money"},
        {"name": "paymentStatus", "elementType": "CodeableConcept"}
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "provider"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PaymentNoticeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PaymentReconciliation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/PaymentReconciliation",
      "label": "PaymentReconciliation",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "PaymentReconciliationStatus"},
        {"name": "period", "elementType": "Period"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "paymentIssuer", "elementType": "Reference"},
        {"name": "request", "elementType": "Reference"},
        {"name": "requestor", "elementType": "Reference"},
        {"name": "outcome", "elementType": "RemittanceOutcome"},
        {"name": "disposition", "elementType": "string"},
        {"name": "paymentDate", "elementType": "date"},
        {"name": "paymentAmount", "elementType": "Money"},
        {"name": "paymentIdentifier", "elementType": "Identifier"},
        {
          "name": "detail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "formCode", "elementType": "CodeableConcept"},
        {
          "name": "processNote",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "requestor"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PaymentReconciliation.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "predecessor", "elementType": "Identifier"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "request", "elementType": "Reference"},
        {"name": "submitter", "elementType": "Reference"},
        {"name": "response", "elementType": "Reference"},
        {"name": "date", "elementType": "date"},
        {"name": "responsible", "elementType": "Reference"},
        {"name": "payee", "elementType": "Reference"},
        {"name": "amount", "elementType": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PaymentReconciliation.ProcessNote",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "NoteType"},
        {"name": "text", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PaymentReconciliationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Period",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Period",
      "label": "Period",
      "element": [
        {"name": "start", "elementType": "dateTime"},
        {"name": "end", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Person",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Person",
      "label": "Person",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "name",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "elementType": "AdministrativeGender"},
        {"name": "birthDate", "elementType": "date"},
        {
          "name": "address",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "photo", "elementType": "Attachment"},
        {"name": "managingOrganization", "elementType": "Reference"},
        {"name": "active", "elementType": "boolean"},
        {
          "name": "link",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {
          "context": "Practitioner",
          "relatedKeyElement": "where(resolve() is Practitioner)"
        },
        {"context": "RelatedPerson", "relatedKeyElement": "target"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Person.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "target", "elementType": "Reference"},
        {"name": "assurance", "elementType": "IdentityAssuranceLevel"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/PlanDefinition",
      "label": "PlanDefinition",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "usage", "elementType": "string"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goal",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "prefix", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "textEquivalent", "elementType": "string"},
        {"name": "priority", "elementType": "RequestPriority"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "documentation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "goalId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "trigger",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "input",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "output",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedAction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "groupingBehavior", "elementType": "ActionGroupingBehavior"},
        {"name": "selectionBehavior", "elementType": "ActionSelectionBehavior"},
        {"name": "requiredBehavior", "elementType": "ActionRequiredBehavior"},
        {"name": "precheckBehavior", "elementType": "ActionPrecheckBehavior"},
        {
          "name": "cardinalityBehavior",
          "elementType": "ActionCardinalityBehavior"
        },
        {
          "name": "definition",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "transform", "elementType": "canonical"},
        {
          "name": "dynamicValue",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "PlanDefinition.Action",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition.Action.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "kind", "elementType": "ActionConditionKind"},
        {"name": "expression", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition.Action.DynamicValue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "path", "elementType": "string"},
        {"name": "expression", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition.Action.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "ActionParticipantType"},
        {"name": "role", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition.Action.RelatedAction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionId", "elementType": "id"},
        {"name": "relationship", "elementType": "ActionRelationshipType"},
        {
          "name": "offset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition.Goal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "CodeableConcept"},
        {"name": "priority", "elementType": "CodeableConcept"},
        {"name": "start", "elementType": "CodeableConcept"},
        {
          "name": "addresses",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "documentation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PlanDefinition.Goal.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "measure", "elementType": "CodeableConcept"},
        {
          "name": "detail",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "due", "elementType": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Population",
      "label": "Population",
      "element": [
        {
          "name": "age",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "gender", "elementType": "CodeableConcept"},
        {"name": "race", "elementType": "CodeableConcept"},
        {"name": "physiologicalCondition", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Practitioner",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Practitioner",
      "label": "Practitioner",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
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
        {"name": "gender", "elementType": "AdministrativeGender"},
        {"name": "birthDate", "elementType": "date"},
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
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Practitioner.Qualification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "period", "elementType": "Period"},
        {"name": "issuer", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PractitionerRole",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
      "label": "PractitionerRole",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {"name": "period", "elementType": "Period"},
        {"name": "practitioner", "elementType": "Reference"},
        {"name": "organization", "elementType": "Reference"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
        {"name": "availabilityExceptions", "elementType": "string"},
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
      "namespace": "FHIR",
      "name": "PractitionerRole.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "daysOfWeek",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allDay", "elementType": "boolean"},
        {"name": "availableStartTime", "elementType": "time"},
        {"name": "availableEndTime", "elementType": "time"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PractitionerRole.NotAvailable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "during", "elementType": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Procedure",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Procedure",
      "label": "Procedure",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
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
        {"name": "status", "elementType": "ProcedureStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "performed",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"}
            ]
          }
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
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "outcome", "elementType": "CodeableConcept"},
        {
          "name": "report",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "complication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "complicationDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "followUp",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Procedure.FocalDevice",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "action", "elementType": "CodeableConcept"},
        {"name": "manipulated", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Procedure.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "elementType": "CodeableConcept"},
        {"name": "actor", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ProcedureStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ProdCharacteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ProdCharacteristic",
      "label": "ProdCharacteristic",
      "element": [
        {"name": "height", "elementType": "Quantity"},
        {"name": "width", "elementType": "Quantity"},
        {"name": "depth", "elementType": "Quantity"},
        {"name": "weight", "elementType": "Quantity"},
        {"name": "nominalVolume", "elementType": "Quantity"},
        {"name": "externalDiameter", "elementType": "Quantity"},
        {"name": "shape", "elementType": "string"},
        {
          "name": "color",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "imprint",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "image",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "scoring", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ProductShelfLife",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ProductShelfLife",
      "label": "ProductShelfLife",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "period", "elementType": "Quantity"},
        {
          "name": "specialPrecautionsForStorage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PropertyRepresentation",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PropertyType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Provenance",
      "label": "Provenance",
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
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "recorded", "elementType": "instant"},
        {
          "name": "policy",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "elementType": "Reference"},
        {
          "name": "reason",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "activity", "elementType": "CodeableConcept"},
        {
          "name": "agent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "who"},
        {"context": "Device", "relatedKeyElement": "who"},
        {"context": "RelatedPerson", "relatedKeyElement": "who"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Provenance.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "role",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "who", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Provenance.Entity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "elementType": "ProvenanceEntityRole"},
        {"name": "what", "elementType": "Reference"},
        {
          "name": "agent",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "Provenance.Agent",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ProvenanceEntityRole",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "PublicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "QualityType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Quantity",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Quantity",
      "label": "Quantity",
      "primaryCodePath": "code",
      "element": [
        {"name": "value", "elementType": "decimal"},
        {"name": "comparator", "elementType": "QuantityComparator"},
        {"name": "unit", "elementType": "string"},
        {"name": "system", "elementType": "uri"},
        {"name": "code", "elementType": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "QuantityComparator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Questionnaire",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Questionnaire",
      "label": "Questionnaire",
      "primaryCodePath": "name",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {
          "name": "derivedFrom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {
          "name": "subjectType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "item",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Questionnaire.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "elementType": "string"},
        {"name": "definition", "elementType": "uri"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prefix", "elementType": "string"},
        {"name": "text", "elementType": "string"},
        {"name": "type", "elementType": "QuestionnaireItemType"},
        {
          "name": "enableWhen",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "enableBehavior", "elementType": "EnableWhenBehavior"},
        {"name": "required", "elementType": "boolean"},
        {"name": "repeats", "elementType": "boolean"},
        {"name": "readOnly", "elementType": "boolean"},
        {"name": "maxLength", "elementType": "integer"},
        {"name": "answerValueSet", "elementType": "canonical"},
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
      "namespace": "FHIR",
      "name": "Questionnaire.Item.AnswerOption",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "initialSelected", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Questionnaire.Item.EnableWhen",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "question", "elementType": "string"},
        {"name": "operator", "elementType": "QuestionnaireItemOperator"},
        {
          "name": "answer",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Questionnaire.Item.Initial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "value",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "boolean", "type": "NamedTypeSpecifier"},
            {"name": "decimal", "type": "NamedTypeSpecifier"},
            {"name": "integer", "type": "NamedTypeSpecifier"},
            {"name": "date", "type": "NamedTypeSpecifier"},
            {"name": "dateTime", "type": "NamedTypeSpecifier"},
            {"name": "time", "type": "NamedTypeSpecifier"},
            {"name": "string", "type": "NamedTypeSpecifier"},
            {"name": "uri", "type": "NamedTypeSpecifier"},
            {"name": "Attachment", "type": "NamedTypeSpecifier"},
            {"name": "Coding", "type": "NamedTypeSpecifier"},
            {
              "name": "{urn:hl7-org:elm-types:r1}Quantity",
              "type": "NamedTypeSpecifier"
            },
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "QuestionnaireItemOperator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "QuestionnaireItemType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
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
        {"name": "questionnaire", "elementType": "canonical"},
        {"name": "status", "elementType": "QuestionnaireResponseStatus"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "authored", "elementType": "dateTime"},
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
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "source"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "QuestionnaireResponse.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "elementType": "string"},
        {"name": "definition", "elementType": "uri"},
        {"name": "text", "elementType": "string"},
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
      "namespace": "FHIR",
      "name": "QuestionnaireResponse.Item.Answer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
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
      "namespace": "FHIR",
      "name": "QuestionnaireResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Range",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Range",
      "label": "Range",
      "element": [
        {"name": "low", "elementType": "SimpleQuantity"},
        {"name": "high", "elementType": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Ratio",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Ratio",
      "label": "Ratio",
      "element": [
        {"name": "numerator", "elementType": "Quantity"},
        {"name": "denominator", "elementType": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Reference",
      "label": "Reference",
      "element": [
        {"name": "reference", "elementType": "string"},
        {"name": "type", "elementType": "uri"},
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "display", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ReferenceHandlingPolicy",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ReferenceVersionRules",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ReferredDocumentStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RelatedArtifact",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/RelatedArtifact",
      "label": "RelatedArtifact",
      "element": [
        {"name": "type", "elementType": "RelatedArtifactType"},
        {"name": "label", "elementType": "string"},
        {"name": "display", "elementType": "string"},
        {"name": "citation", "elementType": "markdown"},
        {"name": "url", "elementType": "url"},
        {"name": "document", "elementType": "Attachment"},
        {"name": "resource", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RelatedArtifactType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RelatedPerson",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
      "label": "RelatedPerson",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {"name": "patient", "elementType": "Reference"},
        {
          "name": "relationship",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "name",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "telecom",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "gender", "elementType": "AdministrativeGender"},
        {"name": "birthDate", "elementType": "date"},
        {
          "name": "address",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "photo",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"},
        {
          "name": "communication",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RelatedPerson.Communication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "elementType": "CodeableConcept"},
        {"name": "preferred", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RemittanceOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RepositoryType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RequestGroup",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/RequestGroup",
      "label": "RequestGroup",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
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
        {"name": "status", "elementType": "RequestStatus"},
        {"name": "intent", "elementType": "RequestIntent"},
        {"name": "priority", "elementType": "RequestPriority"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "authoredOn", "elementType": "dateTime"},
        {"name": "author", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
          "name": "action",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "participant"},
        {"context": "Practitioner", "relatedKeyElement": "author"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "author"},
        {"context": "RelatedPerson", "relatedKeyElement": "participant"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RequestGroup.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "prefix", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "textEquivalent", "elementType": "string"},
        {"name": "priority", "elementType": "RequestPriority"},
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "documentation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedAction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "groupingBehavior", "elementType": "ActionGroupingBehavior"},
        {"name": "selectionBehavior", "elementType": "ActionSelectionBehavior"},
        {"name": "requiredBehavior", "elementType": "ActionRequiredBehavior"},
        {"name": "precheckBehavior", "elementType": "ActionPrecheckBehavior"},
        {
          "name": "cardinalityBehavior",
          "elementType": "ActionCardinalityBehavior"
        },
        {"name": "resource", "elementType": "Reference"},
        {
          "name": "action",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "RequestGroup.Action",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RequestGroup.Action.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "kind", "elementType": "ActionConditionKind"},
        {"name": "expression", "elementType": "Expression"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RequestGroup.Action.RelatedAction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionId", "elementType": "id"},
        {"name": "relationship", "elementType": "ActionRelationshipType"},
        {
          "name": "offset",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ResearchDefinition",
      "label": "ResearchDefinition",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "shortTitle", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "comment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "usage", "elementType": "string"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "population", "elementType": "Reference"},
        {"name": "exposure", "elementType": "Reference"},
        {"name": "exposureAlternative", "elementType": "Reference"},
        {"name": "outcome", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchElementDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/ResearchElementDefinition",
      "label": "ResearchElementDefinition",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "shortTitle", "elementType": "string"},
        {"name": "subtitle", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {
          "name": "subject",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "comment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "usage", "elementType": "string"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "library",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "ResearchElementType"},
        {"name": "variableType", "elementType": "VariableType"},
        {
          "name": "characteristic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchElementDefinition.Characteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "definition",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "Expression", "type": "NamedTypeSpecifier"},
              {"name": "DataRequirement", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "usageContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "exclude", "elementType": "boolean"},
        {"name": "unitOfMeasure", "elementType": "CodeableConcept"},
        {"name": "studyEffectiveDescription", "elementType": "string"},
        {
          "name": "studyEffective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "studyEffectiveTimeFromStart", "elementType": "Duration"},
        {"name": "studyEffectiveGroupMeasure", "elementType": "GroupMeasure"},
        {"name": "participantEffectiveDescription", "elementType": "string"},
        {
          "name": "participantEffective",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "participantEffectiveTimeFromStart",
          "elementType": "Duration"
        },
        {
          "name": "participantEffectiveGroupMeasure",
          "elementType": "GroupMeasure"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchElementType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ResearchStudy",
      "label": "ResearchStudy",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "title", "elementType": "string"},
        {
          "name": "protocol",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ResearchStudyStatus"},
        {"name": "primaryPurposeType", "elementType": "CodeableConcept"},
        {"name": "phase", "elementType": "CodeableConcept"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "focus",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "keyword",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "location",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "enrollment",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "elementType": "Period"},
        {"name": "sponsor", "elementType": "Reference"},
        {"name": "principalInvestigator", "elementType": "Reference"},
        {
          "name": "site",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reasonStopped", "elementType": "CodeableConcept"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "arm",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "objective",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": {
        "context": "Practitioner",
        "relatedKeyElement": "principalInvestigator"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchStudy.Arm",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchStudy.Objective",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchStudyStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchSubject",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ResearchSubject",
      "label": "ResearchSubject",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "ResearchSubjectStatus"},
        {"name": "period", "elementType": "Period"},
        {"name": "study", "elementType": "Reference"},
        {"name": "individual", "elementType": "Reference"},
        {"name": "assignedArm", "elementType": "string"},
        {"name": "actualArm", "elementType": "string"},
        {"name": "consent", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResearchSubjectStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Resource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Resource",
      "label": "Resource",
      "element": [
        {"name": "id", "elementType": "System.String"},
        {"name": "meta", "elementType": "Meta"},
        {"name": "implicitRules", "elementType": "uri"},
        {"name": "language", "elementType": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResourceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResourceVersionPolicy",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ResponseType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RestfulCapabilityMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskAssessment",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/RiskAssessment",
      "label": "RiskAssessment",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "basedOn", "elementType": "Reference"},
        {"name": "parent", "elementType": "Reference"},
        {"name": "status", "elementType": "RiskAssessmentStatus"},
        {"name": "method", "elementType": "CodeableConcept"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "condition", "elementType": "Reference"},
        {"name": "performer", "elementType": "Reference"},
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basis",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "prediction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "mitigation", "elementType": "string"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "performer"},
        {"context": "Device", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskAssessment.Prediction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "outcome", "elementType": "CodeableConcept"},
        {
          "name": "probability",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "qualitativeRisk", "elementType": "CodeableConcept"},
        {"name": "relativeRisk", "elementType": "decimal"},
        {
          "name": "when",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "rationale", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskAssessmentStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskEvidenceSynthesis",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/RiskEvidenceSynthesis",
      "label": "RiskEvidenceSynthesis",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "elementType": "markdown"},
        {"name": "approvalDate", "elementType": "date"},
        {"name": "lastReviewDate", "elementType": "date"},
        {"name": "effectivePeriod", "elementType": "Period"},
        {
          "name": "topic",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "editor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reviewer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "endorser",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedArtifact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "synthesisType", "elementType": "CodeableConcept"},
        {"name": "studyType", "elementType": "CodeableConcept"},
        {"name": "population", "elementType": "Reference"},
        {"name": "exposure", "elementType": "Reference"},
        {"name": "outcome", "elementType": "Reference"},
        {
          "name": "sampleSize",
          "elementType": "RiskEvidenceSynthesis.SampleSize"
        },
        {
          "name": "riskEstimate",
          "elementType": "RiskEvidenceSynthesis.RiskEstimate"
        },
        {
          "name": "certainty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskEvidenceSynthesis.Certainty",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "rating",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "certaintySubcomponent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskEvidenceSynthesis.Certainty.CertaintySubcomponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "rating",
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
      "namespace": "FHIR",
      "name": "RiskEvidenceSynthesis.RiskEstimate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "value", "elementType": "decimal"},
        {"name": "unitOfMeasure", "elementType": "CodeableConcept"},
        {"name": "denominatorCount", "elementType": "integer"},
        {"name": "numeratorCount", "elementType": "integer"},
        {
          "name": "precisionEstimate",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskEvidenceSynthesis.RiskEstimate.PrecisionEstimate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "level", "elementType": "decimal"},
        {"name": "from", "elementType": "decimal"},
        {"name": "to", "elementType": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "RiskEvidenceSynthesis.SampleSize",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "numberOfStudies", "elementType": "integer"},
        {"name": "numberOfParticipants", "elementType": "integer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SPDXLicense",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SampledData",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SampledData",
      "label": "SampledData",
      "element": [
        {"name": "origin", "elementType": "SimpleQuantity"},
        {"name": "period", "elementType": "decimal"},
        {"name": "factor", "elementType": "decimal"},
        {"name": "lowerLimit", "elementType": "decimal"},
        {"name": "upperLimit", "elementType": "decimal"},
        {"name": "dimensions", "elementType": "positiveInt"},
        {"name": "data", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Schedule",
      "label": "Schedule",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "elementType": "boolean"},
        {
          "name": "serviceCategory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviceType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "actor",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "planningHorizon", "elementType": "Period"},
        {"name": "comment", "elementType": "string"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "actor"},
        {"context": "Device", "relatedKeyElement": "actor"},
        {"context": "RelatedPerson", "relatedKeyElement": "actor"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SearchComparator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SearchEntryMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SearchModifierCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SearchParamType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SearchParameter",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SearchParameter",
      "label": "SearchParameter",
      "primaryCodePath": "target",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "derivedFrom", "elementType": "canonical"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "code", "elementType": "code"},
        {
          "name": "base",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "SearchParamType"},
        {"name": "expression", "elementType": "string"},
        {"name": "xpath", "elementType": "string"},
        {"name": "xpathUsage", "elementType": "XPathUsageType"},
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "multipleOr", "elementType": "boolean"},
        {"name": "multipleAnd", "elementType": "boolean"},
        {
          "name": "comparator",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "chain",
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
      "namespace": "FHIR",
      "name": "SearchParameter.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "definition", "elementType": "canonical"},
        {"name": "expression", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SectionMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SequenceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ServiceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
      "label": "ServiceRequest",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesCanonical",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiatesUri",
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
        {"name": "requisition", "elementType": "Identifier"},
        {"name": "status", "elementType": "ServiceRequestStatus"},
        {"name": "intent", "elementType": "ServiceRequestIntent"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "elementType": "ServiceRequestPriority"},
        {"name": "doNotPerform", "elementType": "boolean"},
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "orderDetail",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
              {"name": "Range", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "subject", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "asNeeded",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "authoredOn", "elementType": "dateTime"},
        {"name": "requester", "elementType": "Reference"},
        {"name": "performerType", "elementType": "CodeableConcept"},
        {
          "name": "performer",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "locationCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "locationReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
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
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patientInstruction", "elementType": "string"},
        {
          "name": "relevantHistory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "performer"},
        {"context": "Practitioner", "relatedKeyElement": "requester"},
        {"context": "Encounter", "relatedKeyElement": "encounter"},
        {"context": "Device", "relatedKeyElement": "performer"},
        {"context": "Device", "relatedKeyElement": "requester"},
        {"context": "RelatedPerson", "relatedKeyElement": "performer"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ServiceRequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ServiceRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ServiceRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Signature",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Signature",
      "label": "Signature",
      "element": [
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "when", "elementType": "instant"},
        {"name": "who", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"},
        {"name": "targetFormat", "elementType": "MimeType"},
        {"name": "sigFormat", "elementType": "MimeType"},
        {"name": "data", "elementType": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SimpleQuantity",
      "baseType": "Quantity",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SimpleQuantity",
      "label": "SimpleQuantity",
      "primaryCodePath": "code",
      "element": [
        {"name": "value", "elementType": "decimal"},
        {"name": "unit", "elementType": "string"},
        {"name": "system", "elementType": "uri"},
        {"name": "code", "elementType": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SlicingRules",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Slot",
      "label": "Slot",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviceCategory",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "serviceType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specialty",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "appointmentType", "elementType": "CodeableConcept"},
        {"name": "schedule", "elementType": "Reference"},
        {"name": "status", "elementType": "SlotStatus"},
        {"name": "start", "elementType": "instant"},
        {"name": "end", "elementType": "instant"},
        {"name": "overbooked", "elementType": "boolean"},
        {"name": "comment", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SlotStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SortDirection",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Specimen",
      "label": "Specimen",
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "accessionIdentifier", "elementType": "Identifier"},
        {"name": "status", "elementType": "SpecimenStatus"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "subject", "elementType": "Reference"},
        {"name": "receivedTime", "elementType": "dateTime"},
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
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "collector"},
        {"context": "Device", "relatedKeyElement": "subject"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
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
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "duration", "elementType": "Duration"},
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {"name": "method", "elementType": "CodeableConcept"},
        {"name": "bodySite", "elementType": "CodeableConcept"},
        {
          "name": "fastingStatus",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Specimen.Container",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "capacity", "elementType": "SimpleQuantity"},
        {"name": "specimenQuantity", "elementType": "SimpleQuantity"},
        {
          "name": "additive",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Specimen.Processing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "procedure", "elementType": "CodeableConcept"},
        {
          "name": "additive",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "time",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SpecimenContainedPreference",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SpecimenDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/SpecimenDefinition",
      "label": "SpecimenDefinition",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "typeCollected", "elementType": "CodeableConcept"},
        {
          "name": "patientPreparation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "timeAspect", "elementType": "string"},
        {
          "name": "collection",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "typeTested",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SpecimenDefinition.TypeTested",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "isDerived", "elementType": "boolean"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "preference", "elementType": "SpecimenContainedPreference"},
        {
          "name": "container",
          "elementType": "SpecimenDefinition.TypeTested.Container"
        },
        {"name": "requirement", "elementType": "string"},
        {"name": "retentionTime", "elementType": "Duration"},
        {
          "name": "rejectionCriterion",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "handling",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SpecimenDefinition.TypeTested.Container",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "material", "elementType": "CodeableConcept"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "cap", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {"name": "capacity", "elementType": "SimpleQuantity"},
        {
          "name": "minimumVolume",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "SimpleQuantity", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "additive",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "preparation", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SpecimenDefinition.TypeTested.Container.Additive",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "additive",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
            {"name": "Reference", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SpecimenDefinition.TypeTested.Handling",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "temperatureQualifier", "elementType": "CodeableConcept"},
        {"name": "temperatureRange", "elementType": "Range"},
        {"name": "maxDuration", "elementType": "Duration"},
        {"name": "instruction", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SpecimenStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Status",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StrandType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/StructureDefinition",
      "label": "StructureDefinition",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {
          "name": "keyword",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fhirVersion", "elementType": "FHIRVersion"},
        {
          "name": "mapping",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "kind", "elementType": "StructureDefinitionKind"},
        {"name": "abstract", "elementType": "boolean"},
        {
          "name": "context",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contextInvariant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "elementType": "uri"},
        {"name": "baseDefinition", "elementType": "canonical"},
        {"name": "derivation", "elementType": "TypeDerivationRule"},
        {"name": "snapshot", "elementType": "StructureDefinition.Snapshot"},
        {
          "name": "differential",
          "elementType": "StructureDefinition.Differential"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureDefinition.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "ExtensionContextType"},
        {"name": "expression", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureDefinition.Differential",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "element",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureDefinition.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identity", "elementType": "id"},
        {"name": "uri", "elementType": "uri"},
        {"name": "name", "elementType": "string"},
        {"name": "comment", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureDefinition.Snapshot",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "element",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureDefinitionKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/StructureMap",
      "label": "StructureMap",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {
          "name": "structure",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "import",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "group",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "id"},
        {"name": "extends", "elementType": "id"},
        {"name": "typeMode", "elementType": "StructureMapGroupTypeMode"},
        {"name": "documentation", "elementType": "string"},
        {
          "name": "input",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rule",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Group.Input",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "id"},
        {"name": "type", "elementType": "string"},
        {"name": "mode", "elementType": "StructureMapInputMode"},
        {"name": "documentation", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Group.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "id"},
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "rule",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "StructureMap.Group.Rule",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "dependent",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "documentation", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Group.Rule.Dependent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "id"},
        {
          "name": "variable",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Group.Rule.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "context", "elementType": "id"},
        {"name": "min", "elementType": "integer"},
        {"name": "max", "elementType": "string"},
        {"name": "type", "elementType": "string"},
        {
          "name": "defaultValue",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        },
        {"name": "element", "elementType": "string"},
        {"name": "listMode", "elementType": "StructureMapSourceListMode"},
        {"name": "variable", "elementType": "id"},
        {"name": "condition", "elementType": "string"},
        {"name": "check", "elementType": "string"},
        {"name": "logMessage", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Group.Rule.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "context", "elementType": "id"},
        {"name": "contextType", "elementType": "StructureMapContextType"},
        {"name": "element", "elementType": "string"},
        {"name": "variable", "elementType": "id"},
        {
          "name": "listMode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "listRuleId", "elementType": "id"},
        {"name": "transform", "elementType": "StructureMapTransform"},
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Group.Rule.Target.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "value",
        "elementTypeSpecifier": {
          "type": "ChoiceTypeSpecifier",
          "choice": [
            {"name": "id", "type": "NamedTypeSpecifier"},
            {"name": "string", "type": "NamedTypeSpecifier"},
            {"name": "boolean", "type": "NamedTypeSpecifier"},
            {"name": "integer", "type": "NamedTypeSpecifier"},
            {"name": "decimal", "type": "NamedTypeSpecifier"}
          ]
        }
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMap.Structure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "url", "elementType": "canonical"},
        {"name": "mode", "elementType": "StructureMapModelMode"},
        {"name": "alias", "elementType": "string"},
        {"name": "documentation", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMapContextType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMapGroupTypeMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMapInputMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMapModelMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMapSourceListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMapTargetListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "StructureMapTransform",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Subscription",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Subscription",
      "label": "Subscription",
      "element": [
        {"name": "status", "elementType": "SubscriptionStatus"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "end", "elementType": "instant"},
        {"name": "reason", "elementType": "string"},
        {"name": "criteria", "elementType": "string"},
        {"name": "error", "elementType": "string"},
        {"name": "channel", "elementType": "Subscription.Channel"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Subscription.Channel",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "SubscriptionChannelType"},
        {"name": "endpoint", "elementType": "url"},
        {"name": "payload", "elementType": "MimeType"},
        {
          "name": "header",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubscriptionChannelType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubscriptionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Substance",
      "label": "Substance",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "FHIRSubstanceStatus"},
        {
          "name": "category",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
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
      "namespace": "FHIR",
      "name": "Substance.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "quantity", "elementType": "Ratio"},
        {
          "name": "substance",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Substance.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "expiry", "elementType": "dateTime"},
        {"name": "quantity", "elementType": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceAmount",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SubstanceAmount",
      "label": "SubstanceAmount",
      "element": [
        {
          "name": "amount",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "amountType", "elementType": "CodeableConcept"},
        {"name": "amountText", "elementType": "string"},
        {
          "name": "referenceRange",
          "elementType": "SubstanceAmount.ReferenceRange"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceAmount.ReferenceRange",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "lowLimit", "elementType": "Quantity"},
        {"name": "highLimit", "elementType": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceNucleicAcid",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid",
      "label": "SubstanceNucleicAcid",
      "element": [
        {"name": "sequenceType", "elementType": "CodeableConcept"},
        {"name": "numberOfSubunits", "elementType": "integer"},
        {"name": "areaOfHybridisation", "elementType": "string"},
        {"name": "oligoNucleotideType", "elementType": "CodeableConcept"},
        {
          "name": "subunit",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceNucleicAcid.Subunit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "subunit", "elementType": "integer"},
        {"name": "sequence", "elementType": "string"},
        {"name": "length", "elementType": "integer"},
        {"name": "sequenceAttachment", "elementType": "Attachment"},
        {"name": "fivePrime", "elementType": "CodeableConcept"},
        {"name": "threePrime", "elementType": "CodeableConcept"},
        {
          "name": "linkage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "sugar",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceNucleicAcid.Subunit.Linkage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "connectivity", "elementType": "string"},
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "name", "elementType": "string"},
        {"name": "residueSite", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceNucleicAcid.Subunit.Sugar",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "name", "elementType": "string"},
        {"name": "residueSite", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstancePolymer",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SubstancePolymer",
      "label": "SubstancePolymer",
      "element": [
        {"name": "class", "elementType": "CodeableConcept"},
        {"name": "geometry", "elementType": "CodeableConcept"},
        {
          "name": "copolymerConnectivity",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "monomerSet",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "repeat",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstancePolymer.MonomerSet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ratioType", "elementType": "CodeableConcept"},
        {
          "name": "startingMaterial",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstancePolymer.MonomerSet.StartingMaterial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "material", "elementType": "CodeableConcept"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "isDefining", "elementType": "boolean"},
        {"name": "amount", "elementType": "SubstanceAmount"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstancePolymer.Repeat",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "numberOfUnits", "elementType": "integer"},
        {"name": "averageMolecularFormula", "elementType": "string"},
        {"name": "repeatUnitAmountType", "elementType": "CodeableConcept"},
        {
          "name": "repeatUnit",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstancePolymer.Repeat.RepeatUnit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "orientationOfPolymerisation",
          "elementType": "CodeableConcept"
        },
        {"name": "repeatUnit", "elementType": "string"},
        {"name": "amount", "elementType": "SubstanceAmount"},
        {
          "name": "degreeOfPolymerisation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "structuralRepresentation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstancePolymer.Repeat.RepeatUnit.DegreeOfPolymerisation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "degree", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "SubstanceAmount"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstancePolymer.Repeat.RepeatUnit.StructuralRepresentation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "representation", "elementType": "string"},
        {"name": "attachment", "elementType": "Attachment"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceProtein",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SubstanceProtein",
      "label": "SubstanceProtein",
      "element": [
        {"name": "sequenceType", "elementType": "CodeableConcept"},
        {"name": "numberOfSubunits", "elementType": "integer"},
        {
          "name": "disulfideLinkage",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subunit",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceProtein.Subunit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "subunit", "elementType": "integer"},
        {"name": "sequence", "elementType": "string"},
        {"name": "length", "elementType": "integer"},
        {"name": "sequenceAttachment", "elementType": "Attachment"},
        {"name": "nTerminalModificationId", "elementType": "Identifier"},
        {"name": "nTerminalModification", "elementType": "string"},
        {"name": "cTerminalModificationId", "elementType": "Identifier"},
        {"name": "cTerminalModification", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceReferenceInformation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation",
      "label": "SubstanceReferenceInformation",
      "element": [
        {"name": "comment", "elementType": "string"},
        {
          "name": "gene",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "geneElement",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "classification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceReferenceInformation.Classification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "domain", "elementType": "CodeableConcept"},
        {"name": "classification", "elementType": "CodeableConcept"},
        {
          "name": "subtype",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceReferenceInformation.Gene",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "geneSequenceOrigin", "elementType": "CodeableConcept"},
        {"name": "gene", "elementType": "CodeableConcept"},
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceReferenceInformation.GeneElement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "element", "elementType": "Identifier"},
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceReferenceInformation.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "target", "elementType": "Identifier"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "interaction", "elementType": "CodeableConcept"},
        {"name": "organism", "elementType": "CodeableConcept"},
        {"name": "organismType", "elementType": "CodeableConcept"},
        {
          "name": "amount",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "amountType", "elementType": "CodeableConcept"},
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSourceMaterial",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial",
      "label": "SubstanceSourceMaterial",
      "element": [
        {"name": "sourceMaterialClass", "elementType": "CodeableConcept"},
        {"name": "sourceMaterialType", "elementType": "CodeableConcept"},
        {"name": "sourceMaterialState", "elementType": "CodeableConcept"},
        {"name": "organismId", "elementType": "Identifier"},
        {"name": "organismName", "elementType": "string"},
        {
          "name": "parentSubstanceId",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "parentSubstanceName",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "countryOfOrigin",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "geographicalLocation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "developmentStage", "elementType": "CodeableConcept"},
        {
          "name": "fractionDescription",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "organism", "elementType": "SubstanceSourceMaterial.Organism"},
        {
          "name": "partDescription",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSourceMaterial.FractionDescription",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "fraction", "elementType": "string"},
        {"name": "materialType", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSourceMaterial.Organism",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "family", "elementType": "CodeableConcept"},
        {"name": "genus", "elementType": "CodeableConcept"},
        {"name": "species", "elementType": "CodeableConcept"},
        {"name": "intraspecificType", "elementType": "CodeableConcept"},
        {"name": "intraspecificDescription", "elementType": "string"},
        {
          "name": "author",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "hybrid",
          "elementType": "SubstanceSourceMaterial.Organism.Hybrid"
        },
        {
          "name": "organismGeneral",
          "elementType": "SubstanceSourceMaterial.Organism.OrganismGeneral"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSourceMaterial.Organism.Author",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "authorType", "elementType": "CodeableConcept"},
        {"name": "authorDescription", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSourceMaterial.Organism.Hybrid",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "maternalOrganismId", "elementType": "string"},
        {"name": "maternalOrganismName", "elementType": "string"},
        {"name": "paternalOrganismId", "elementType": "string"},
        {"name": "paternalOrganismName", "elementType": "string"},
        {"name": "hybridType", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSourceMaterial.Organism.OrganismGeneral",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "kingdom", "elementType": "CodeableConcept"},
        {"name": "phylum", "elementType": "CodeableConcept"},
        {"name": "class", "elementType": "CodeableConcept"},
        {"name": "order", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSourceMaterial.PartDescription",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "part", "elementType": "CodeableConcept"},
        {"name": "partLocation", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/SubstanceSpecification",
      "label": "SubstanceSpecification",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "domain", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "comment", "elementType": "string"},
        {
          "name": "moiety",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "referenceInformation", "elementType": "Reference"},
        {
          "name": "structure",
          "elementType": "SubstanceSpecification.Structure"
        },
        {
          "name": "code",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "name",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "molecularWeight",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name":
                  "SubstanceSpecification.Structure.Isotope.MolecularWeight",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "relationship",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "nucleicAcid", "elementType": "Reference"},
        {"name": "polymer", "elementType": "Reference"},
        {"name": "protein", "elementType": "Reference"},
        {"name": "sourceMaterial", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Code",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "statusDate", "elementType": "dateTime"},
        {"name": "comment", "elementType": "string"},
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Moiety",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "elementType": "CodeableConcept"},
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "name", "elementType": "string"},
        {"name": "stereochemistry", "elementType": "CodeableConcept"},
        {"name": "opticalActivity", "elementType": "CodeableConcept"},
        {"name": "molecularFormula", "elementType": "string"},
        {
          "name": "amount",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Name",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "preferred", "elementType": "boolean"},
        {
          "name": "language",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "domain",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "synonym",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "SubstanceSpecification.Name",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "translation",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "SubstanceSpecification.Name",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "official",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Name.Official",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "authority", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "CodeableConcept"},
        {"name": "date", "elementType": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "parameters", "elementType": "string"},
        {
          "name": "definingSubstance",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {
          "name": "amount",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Relationship",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "substance",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "relationship", "elementType": "CodeableConcept"},
        {"name": "isDefining", "elementType": "boolean"},
        {
          "name": "amount",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Ratio",
                "type": "NamedTypeSpecifier"
              },
              {"name": "string", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "amountRatioLowLimit", "elementType": "Ratio"},
        {"name": "amountType", "elementType": "CodeableConcept"},
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Structure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "stereochemistry", "elementType": "CodeableConcept"},
        {"name": "opticalActivity", "elementType": "CodeableConcept"},
        {"name": "molecularFormula", "elementType": "string"},
        {"name": "molecularFormulaByMoiety", "elementType": "string"},
        {
          "name": "isotope",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "molecularWeight",
          "elementType":
              "SubstanceSpecification.Structure.Isotope.MolecularWeight"
        },
        {
          "name": "source",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "representation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Structure.Isotope",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "name", "elementType": "CodeableConcept"},
        {"name": "substitution", "elementType": "CodeableConcept"},
        {"name": "halfLife", "elementType": "Quantity"},
        {
          "name": "molecularWeight",
          "elementType":
              "SubstanceSpecification.Structure.Isotope.MolecularWeight"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Structure.Isotope.MolecularWeight",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "method", "elementType": "CodeableConcept"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "amount", "elementType": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SubstanceSpecification.Structure.Representation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "representation", "elementType": "string"},
        {"name": "attachment", "elementType": "Attachment"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SupplyDelivery",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SupplyDelivery",
      "label": "SupplyDelivery",
      "primaryCodePath": "type",
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
        {"name": "status", "elementType": "SupplyDeliveryStatus"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "type", "elementType": "CodeableConcept"},
        {"name": "suppliedItem", "elementType": "SupplyDelivery.SuppliedItem"},
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "supplier", "elementType": "Reference"},
        {"name": "destination", "elementType": "Reference"},
        {
          "name": "receiver",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "supplier"},
        {"context": "Practitioner", "relatedKeyElement": "receiver"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SupplyDelivery.SuppliedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "quantity", "elementType": "SimpleQuantity"},
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SupplyDeliveryStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SupplyRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/SupplyRequest",
      "label": "SupplyRequest",
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "SupplyRequestStatus"},
        {"name": "category", "elementType": "CodeableConcept"},
        {"name": "priority", "elementType": "RequestPriority"},
        {
          "name": "item",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "quantity", "elementType": "Quantity"},
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "occurrence",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {"name": "Timing", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "authoredOn", "elementType": "dateTime"},
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "supplier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonCode",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "deliverFrom", "elementType": "Reference"},
        {"name": "deliverTo", "elementType": "Reference"}
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "requester"},
        {"context": "Device", "relatedKeyElement": "requester"},
        {"context": "RelatedPerson", "relatedKeyElement": "requester"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SupplyRequest.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SupplyRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "SystemRestfulInteraction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Task",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Task",
      "label": "Task",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "instantiatesCanonical", "elementType": "canonical"},
        {"name": "instantiatesUri", "elementType": "uri"},
        {
          "name": "basedOn",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "elementType": "Identifier"},
        {
          "name": "partOf",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "TaskStatus"},
        {"name": "statusReason", "elementType": "CodeableConcept"},
        {"name": "businessStatus", "elementType": "CodeableConcept"},
        {"name": "intent", "elementType": "TaskIntent"},
        {"name": "priority", "elementType": "TaskPriority"},
        {"name": "code", "elementType": "CodeableConcept"},
        {"name": "description", "elementType": "string"},
        {"name": "focus", "elementType": "Reference"},
        {"name": "for", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "executionPeriod", "elementType": "Period"},
        {"name": "authoredOn", "elementType": "dateTime"},
        {"name": "lastModified", "elementType": "dateTime"},
        {"name": "requester", "elementType": "Reference"},
        {
          "name": "performerType",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "elementType": "Reference"},
        {"name": "location", "elementType": "Reference"},
        {"name": "reasonCode", "elementType": "CodeableConcept"},
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
      "namespace": "FHIR",
      "name": "Task.Input",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Task.Output",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "CodeableConcept"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "base64Binary", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "canonical", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "id", "type": "NamedTypeSpecifier"},
              {"name": "instant", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "markdown", "type": "NamedTypeSpecifier"},
              {"name": "oid", "type": "NamedTypeSpecifier"},
              {"name": "positiveInt", "type": "NamedTypeSpecifier"},
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "time", "type": "NamedTypeSpecifier"},
              {"name": "unsignedInt", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "url", "type": "NamedTypeSpecifier"},
              {"name": "uuid", "type": "NamedTypeSpecifier"},
              {"name": "Address", "type": "NamedTypeSpecifier"},
              {"name": "Age", "type": "NamedTypeSpecifier"},
              {"name": "Annotation", "type": "NamedTypeSpecifier"},
              {"name": "Attachment", "type": "NamedTypeSpecifier"},
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {"name": "Coding", "type": "NamedTypeSpecifier"},
              {"name": "ContactPoint", "type": "NamedTypeSpecifier"},
              {"name": "Count", "type": "NamedTypeSpecifier"},
              {"name": "Distance", "type": "NamedTypeSpecifier"},
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "HumanName", "type": "NamedTypeSpecifier"},
              {"name": "Identifier", "type": "NamedTypeSpecifier"},
              {"name": "Money", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
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
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Task.Restriction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "repetitions", "elementType": "positiveInt"},
        {"name": "period", "elementType": "Period"},
        {
          "name": "recipient",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TaskIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TaskPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TaskStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/TerminologyCapabilities",
      "label": "TerminologyCapabilities",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "kind", "elementType": "CapabilityStatementKind"},
        {"name": "software", "elementType": "TerminologyCapabilities.Software"},
        {
          "name": "implementation",
          "elementType": "TerminologyCapabilities.Implementation"
        },
        {"name": "lockedDate", "elementType": "boolean"},
        {
          "name": "codeSystem",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "expansion",
          "elementType": "TerminologyCapabilities.Expansion"
        },
        {"name": "codeSearch", "elementType": "CodeSearchSupport"},
        {
          "name": "validateCode",
          "elementType": "TerminologyCapabilities.ValidateCode"
        },
        {
          "name": "translation",
          "elementType": "TerminologyCapabilities.Translation"
        },
        {"name": "closure", "elementType": "TerminologyCapabilities.Closure"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.Closure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "translation", "elementType": "boolean"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.CodeSystem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uri", "elementType": "canonical"},
        {
          "name": "version",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subsumption", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.CodeSystem.Version",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "string"},
        {"name": "isDefault", "elementType": "boolean"},
        {"name": "compositional", "elementType": "boolean"},
        {
          "name": "language",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "filter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.CodeSystem.Version.Filter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {
          "name": "op",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.Expansion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "hierarchical", "elementType": "boolean"},
        {"name": "paging", "elementType": "boolean"},
        {"name": "incomplete", "elementType": "boolean"},
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "textFilter", "elementType": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.Expansion.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "code"},
        {"name": "documentation", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.Implementation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "elementType": "string"},
        {"name": "url", "elementType": "url"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.Software",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "version", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.Translation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "needsMap", "elementType": "boolean"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TerminologyCapabilities.ValidateCode",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "translations", "elementType": "boolean"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/TestReport",
      "label": "TestReport",
      "element": [
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "name", "elementType": "string"},
        {"name": "status", "elementType": "TestReportStatus"},
        {"name": "testScript", "elementType": "Reference"},
        {"name": "result", "elementType": "TestReportResult"},
        {"name": "score", "elementType": "decimal"},
        {"name": "tester", "elementType": "string"},
        {"name": "issued", "elementType": "dateTime"},
        {
          "name": "participant",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "setup", "elementType": "TestReport.Setup"},
        {
          "name": "test",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "teardown", "elementType": "TestReport.Teardown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "TestReportParticipantType"},
        {"name": "uri", "elementType": "uri"},
        {"name": "display", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Setup",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Setup.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "operation",
          "elementType": "TestReport.Setup.Action.Operation"
        },
        {"name": "assert", "elementType": "TestReport.Setup.Action.Assert"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Setup.Action.Assert",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "result", "elementType": "TestReportActionResult"},
        {"name": "message", "elementType": "markdown"},
        {"name": "detail", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Setup.Action.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "result", "elementType": "TestReportActionResult"},
        {"name": "message", "elementType": "markdown"},
        {"name": "detail", "elementType": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Teardown",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Teardown.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "operation",
        "elementType": "TestReport.Setup.Action.Operation"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Test",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {
          "name": "action",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReport.Test.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "operation",
          "elementType": "TestReport.Setup.Action.Operation"
        },
        {"name": "assert", "elementType": "TestReport.Setup.Action.Assert"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReportActionResult",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReportParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReportResult",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/TestScript",
      "label": "TestScript",
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "identifier", "elementType": "Identifier"},
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {
          "name": "origin",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "destination",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "metadata", "elementType": "TestScript.Metadata"},
        {
          "name": "fixture",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "profile",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "variable",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "setup", "elementType": "TestScript.Setup"},
        {
          "name": "test",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "teardown", "elementType": "TestScript.Teardown"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Destination",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "index", "elementType": "integer"},
        {"name": "profile", "elementType": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Fixture",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "autocreate", "elementType": "boolean"},
        {"name": "autodelete", "elementType": "boolean"},
        {"name": "resource", "elementType": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Metadata",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "link",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "capability",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Metadata.Capability",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "required", "elementType": "boolean"},
        {"name": "validated", "elementType": "boolean"},
        {"name": "description", "elementType": "string"},
        {
          "name": "origin",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "destination", "elementType": "integer"},
        {
          "name": "link",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "capabilities", "elementType": "canonical"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Metadata.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "url", "elementType": "uri"},
        {"name": "description", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Origin",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "index", "elementType": "integer"},
        {"name": "profile", "elementType": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Setup",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Setup.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "operation",
          "elementType": "TestScript.Setup.Action.Operation"
        },
        {"name": "assert", "elementType": "TestScript.Setup.Action.Assert"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Setup.Action.Assert",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "label", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "direction", "elementType": "AssertionDirectionType"},
        {"name": "compareToSourceId", "elementType": "string"},
        {"name": "compareToSourceExpression", "elementType": "string"},
        {"name": "compareToSourcePath", "elementType": "string"},
        {"name": "contentType", "elementType": "MimeType"},
        {"name": "expression", "elementType": "string"},
        {"name": "headerField", "elementType": "string"},
        {"name": "minimumId", "elementType": "string"},
        {"name": "navigationLinks", "elementType": "boolean"},
        {"name": "operator", "elementType": "AssertionOperatorType"},
        {"name": "path", "elementType": "string"},
        {"name": "requestMethod", "elementType": "TestScriptRequestMethodCode"},
        {"name": "requestURL", "elementType": "string"},
        {"name": "resource", "elementType": "FHIRDefinedType"},
        {"name": "response", "elementType": "AssertionResponseTypes"},
        {"name": "responseCode", "elementType": "string"},
        {"name": "sourceId", "elementType": "id"},
        {"name": "validateProfileId", "elementType": "id"},
        {"name": "value", "elementType": "string"},
        {"name": "warningOnly", "elementType": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Setup.Action.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "elementType": "Coding"},
        {"name": "resource", "elementType": "FHIRDefinedType"},
        {"name": "label", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "accept", "elementType": "MimeType"},
        {"name": "contentType", "elementType": "MimeType"},
        {"name": "destination", "elementType": "integer"},
        {"name": "encodeRequestUrl", "elementType": "boolean"},
        {"name": "method", "elementType": "TestScriptRequestMethodCode"},
        {"name": "origin", "elementType": "integer"},
        {"name": "params", "elementType": "string"},
        {
          "name": "requestHeader",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "requestId", "elementType": "id"},
        {"name": "responseId", "elementType": "id"},
        {"name": "sourceId", "elementType": "id"},
        {"name": "targetId", "elementType": "id"},
        {"name": "url", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Setup.Action.Operation.RequestHeader",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "field", "elementType": "string"},
        {"name": "value", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Teardown",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Teardown.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "operation",
        "elementType": "TestScript.Setup.Action.Operation"
      }
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Test",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {
          "name": "action",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Test.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "operation",
          "elementType": "TestScript.Setup.Action.Operation"
        },
        {"name": "assert", "elementType": "TestScript.Setup.Action.Assert"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScript.Variable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {"name": "defaultValue", "elementType": "string"},
        {"name": "description", "elementType": "string"},
        {"name": "expression", "elementType": "string"},
        {"name": "headerField", "elementType": "string"},
        {"name": "hint", "elementType": "string"},
        {"name": "path", "elementType": "string"},
        {"name": "sourceId", "elementType": "id"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TestScriptRequestMethodCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Timing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/Timing",
      "label": "Timing",
      "primaryCodePath": "code",
      "element": [
        {
          "name": "event",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "repeat", "elementType": "Timing.Repeat"},
        {"name": "code", "elementType": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Timing.Repeat",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "bounds",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Duration", "type": "NamedTypeSpecifier"},
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "Period", "type": "NamedTypeSpecifier"}
            ]
          }
        },
        {"name": "count", "elementType": "positiveInt"},
        {"name": "countMax", "elementType": "positiveInt"},
        {"name": "duration", "elementType": "decimal"},
        {"name": "durationMax", "elementType": "decimal"},
        {"name": "durationUnit", "elementType": "UnitsOfTime"},
        {"name": "frequency", "elementType": "positiveInt"},
        {"name": "frequencyMax", "elementType": "positiveInt"},
        {"name": "period", "elementType": "decimal"},
        {"name": "periodMax", "elementType": "decimal"},
        {"name": "periodUnit", "elementType": "UnitsOfTime"},
        {
          "name": "dayOfWeek",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "timeOfDay",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "when",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "offset", "elementType": "unsignedInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TriggerDefinition",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/TriggerDefinition",
      "label": "TriggerDefinition",
      "element": [
        {"name": "type", "elementType": "TriggerType"},
        {"name": "name", "elementType": "string"},
        {
          "name": "timing",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "Timing", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"},
              {"name": "date", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"}
            ]
          }
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
      "namespace": "FHIR",
      "name": "TriggerType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TypeDerivationRule",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "TypeRestfulInteraction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "UDIEntryType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "UnitsOfTime",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "UsageContext",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/UsageContext",
      "label": "UsageContext",
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "elementType": "Coding"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "CodeableConcept", "type": "NamedTypeSpecifier"},
              {
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              },
              {"name": "Range", "type": "NamedTypeSpecifier"},
              {"name": "Reference", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "Use",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "http://hl7.org/fhir/StructureDefinition/ValueSet",
      "label": "ValueSet",
      "element": [
        {"name": "url", "elementType": "uri"},
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "elementType": "string"},
        {"name": "name", "elementType": "string"},
        {"name": "title", "elementType": "string"},
        {"name": "status", "elementType": "PublicationStatus"},
        {"name": "experimental", "elementType": "boolean"},
        {"name": "date", "elementType": "dateTime"},
        {"name": "publisher", "elementType": "string"},
        {
          "name": "contact",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "elementType": "markdown"},
        {
          "name": "useContext",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "immutable", "elementType": "boolean"},
        {"name": "purpose", "elementType": "markdown"},
        {"name": "copyright", "elementType": "markdown"},
        {"name": "compose", "elementType": "ValueSet.Compose"},
        {"name": "expansion", "elementType": "ValueSet.Expansion"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Compose",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "lockedDate", "elementType": "date"},
        {"name": "inactive", "elementType": "boolean"},
        {
          "name": "include",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "exclude",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ValueSet.Compose.Include",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Compose.Include",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "elementType": "uri"},
        {"name": "version", "elementType": "string"},
        {
          "name": "concept",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "filter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valueSet",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Compose.Include.Concept",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "elementType": "code"},
        {"name": "display", "elementType": "string"},
        {
          "name": "designation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Compose.Include.Concept.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "elementType": "code"},
        {"name": "use", "elementType": "Coding"},
        {"name": "value", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Compose.Include.Filter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "property", "elementType": "code"},
        {"name": "op", "elementType": "FilterOperator"},
        {"name": "value", "elementType": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Expansion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "elementType": "uri"},
        {"name": "timestamp", "elementType": "dateTime"},
        {"name": "total", "elementType": "integer"},
        {"name": "offset", "elementType": "integer"},
        {
          "name": "parameter",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contains",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Expansion.Contains",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "elementType": "uri"},
        {"name": "abstract", "elementType": "boolean"},
        {"name": "inactive", "elementType": "boolean"},
        {"name": "version", "elementType": "string"},
        {"name": "code", "elementType": "code"},
        {"name": "display", "elementType": "string"},
        {
          "name": "designation",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ValueSet.Compose.Include.Concept.Designation",
              "type": "NamedTypeSpecifier"
            }
          }
        },
        {
          "name": "contains",
          "elementTypeSpecifier": {
            "type": "ListTypeSpecifier",
            "elementTypeSpecifier": {
              "name": "ValueSet.Expansion.Contains",
              "type": "NamedTypeSpecifier"
            }
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "ValueSet.Expansion.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "elementType": "string"},
        {
          "name": "value",
          "elementTypeSpecifier": {
            "type": "ChoiceTypeSpecifier",
            "choice": [
              {"name": "string", "type": "NamedTypeSpecifier"},
              {"name": "boolean", "type": "NamedTypeSpecifier"},
              {"name": "integer", "type": "NamedTypeSpecifier"},
              {"name": "decimal", "type": "NamedTypeSpecifier"},
              {"name": "uri", "type": "NamedTypeSpecifier"},
              {"name": "code", "type": "NamedTypeSpecifier"},
              {"name": "dateTime", "type": "NamedTypeSpecifier"}
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VariableType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VerificationResult",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/VerificationResult",
      "label": "VerificationResult",
      "element": [
        {
          "name": "target",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "targetLocation",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "need", "elementType": "CodeableConcept"},
        {"name": "status", "elementType": "Status"},
        {"name": "statusDate", "elementType": "dateTime"},
        {"name": "validationType", "elementType": "CodeableConcept"},
        {
          "name": "validationProcess",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "frequency", "elementType": "Timing"},
        {"name": "lastPerformed", "elementType": "dateTime"},
        {"name": "nextScheduled", "elementType": "date"},
        {"name": "failureAction", "elementType": "CodeableConcept"},
        {
          "name": "primarySource",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "attestation",
          "elementType": "VerificationResult.Attestation"
        },
        {
          "name": "validator",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VerificationResult.Attestation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "who", "elementType": "Reference"},
        {"name": "onBehalfOf", "elementType": "Reference"},
        {"name": "communicationMethod", "elementType": "CodeableConcept"},
        {"name": "date", "elementType": "date"},
        {"name": "sourceIdentityCertificate", "elementType": "string"},
        {"name": "proxyIdentityCertificate", "elementType": "string"},
        {"name": "proxySignature", "elementType": "Signature"},
        {"name": "sourceSignature", "elementType": "Signature"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VerificationResult.PrimarySource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "who", "elementType": "Reference"},
        {
          "name": "type",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "communicationMethod",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "validationStatus", "elementType": "CodeableConcept"},
        {"name": "validationDate", "elementType": "dateTime"},
        {"name": "canPushUpdates", "elementType": "CodeableConcept"},
        {
          "name": "pushTypeAvailable",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VerificationResult.Validator",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "organization", "elementType": "Reference"},
        {"name": "identityCertificate", "elementType": "string"},
        {"name": "attestationSignature", "elementType": "Signature"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VisionBase",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VisionEyes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VisionPrescription",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/VisionPrescription",
      "label": "VisionPrescription",
      "element": [
        {
          "name": "identifier",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "elementType": "VisionStatus"},
        {"name": "created", "elementType": "dateTime"},
        {"name": "patient", "elementType": "Reference"},
        {"name": "encounter", "elementType": "Reference"},
        {"name": "dateWritten", "elementType": "dateTime"},
        {"name": "prescriber", "elementType": "Reference"},
        {
          "name": "lensSpecification",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ],
      "contextRelationship": [
        {"context": "Practitioner", "relatedKeyElement": "prescriber"},
        {"context": "Encounter", "relatedKeyElement": "encounter"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VisionPrescription.LensSpecification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "product", "elementType": "CodeableConcept"},
        {"name": "eye", "elementType": "VisionEyes"},
        {"name": "sphere", "elementType": "decimal"},
        {"name": "cylinder", "elementType": "decimal"},
        {"name": "axis", "elementType": "integer"},
        {
          "name": "prism",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "add", "elementType": "decimal"},
        {"name": "power", "elementType": "decimal"},
        {"name": "backCurve", "elementType": "decimal"},
        {"name": "diameter", "elementType": "decimal"},
        {"name": "duration", "elementType": "SimpleQuantity"},
        {"name": "color", "elementType": "string"},
        {"name": "brand", "elementType": "string"},
        {
          "name": "note",
          "elementTypeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VisionPrescription.LensSpecification.Prism",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "amount", "elementType": "decimal"},
        {"name": "base", "elementType": "VisionBase"}
      ]
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "VisionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "XPathUsageType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "allowedUnits",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-allowedUnits",
      "label": "allowedUnits"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "base64Binary",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/base64Binary",
      "label": "base64Binary",
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "boolean",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/boolean",
      "label": "boolean",
      "element": {"name": "value", "elementType": "System.Boolean"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "canonical",
      "baseType": "uri",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/canonical",
      "label": "canonical"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "code",
      "baseType": "string",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/code",
      "label": "code"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "date",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/date",
      "label": "date",
      "element": {"name": "value", "elementType": "System.Date"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "dateTime",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/dateTime",
      "label": "dateTime",
      "element": {"name": "value", "elementType": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "decimal",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/decimal",
      "label": "decimal",
      "element": {"name": "value", "elementType": "System.Decimal"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "id",
      "baseType": "string",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/id",
      "label": "id"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "instant",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/instant",
      "label": "instant",
      "element": {"name": "value", "elementType": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "integer",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/integer",
      "label": "integer",
      "element": {"name": "value", "elementType": "System.Integer"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "markdown",
      "baseType": "string",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/markdown",
      "label": "markdown"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "oid",
      "baseType": "uri",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/oid",
      "label": "oid"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "positiveInt",
      "baseType": "integer",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/positiveInt",
      "label": "positiveInt"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "question",
      "baseType": "string",
      "retrievable": false,
      "identifier":
          "http://hl7.org/fhir/StructureDefinition/elementdefinition-question",
      "label": "question"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "string",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/string",
      "label": "string",
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "time",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/time",
      "label": "time",
      "element": {"name": "value", "elementType": "System.Time"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "unsignedInt",
      "baseType": "integer",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/unsignedInt",
      "label": "unsignedInt"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "uri",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/uri",
      "label": "uri",
      "element": {"name": "value", "elementType": "System.String"}
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "url",
      "baseType": "uri",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/url",
      "label": "url"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "uuid",
      "baseType": "uri",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/uuid",
      "label": "uuid"
    },
    {
      "type": "ClassInfo",
      "namespace": "FHIR",
      "name": "xhtml",
      "baseType": "Element",
      "retrievable": false,
      "identifier": "http://hl7.org/fhir/StructureDefinition/xhtml",
      "label": "xhtml",
      "element": {"name": "value", "elementType": "System.String"}
    }
  ],
  "conversionInfo": [
    {
      "functionName": "FHIRHelpers.ToCode",
      "fromType": "Coding",
      "toType": "System.Code"
    },
    {
      "functionName": "FHIRHelpers.ToConcept",
      "fromType": "CodeableConcept",
      "toType": "System.Concept"
    },
    {
      "functionName": "FHIRHelpers.ToQuantity",
      "fromType": "Quantity",
      "toType": "System.Quantity"
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
      "functionName": "FHIRHelpers.ToRatio",
      "fromType": "Ratio",
      "toType": "System.Ratio"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EnrollmentRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestScriptRequestMethodCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SortDirection",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BiologicallyDerivedProductStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UnitsOfTime",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AddressType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IssueSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CareTeamStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureDefinitionKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EncounterStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PublicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRVersion",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanActivityKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapSourceListMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchComparator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ChargeItemStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "xhtml",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionParticipantType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "InvoiceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanActivityStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceNameType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionOperatorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DaysOfWeek",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IssueType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapContextType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FamilyHistoryStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ExtensionContextType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionResponseTypes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RequestIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EnrollmentResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "string",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionRequiredBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GraphCompartmentUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AccountStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationDispenseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParameterUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClaimStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IdentifierUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapTargetListMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ExposureState",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportParticipantType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BindingStrength",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RequestPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MimeType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QualityType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipantRequired",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "XPathUsageType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CoverageStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FilterOperator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NamingSystemType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResearchSubjectStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapTransform",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResponseType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToDecimal",
      "fromType": "decimal",
      "toType": "System.Decimal"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AggregationMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SystemRestfulInteraction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "Messageheader_Response_Request",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NutritiionOrderIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationKnowledgeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AdverseEventActuality",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SubscriptionChannelType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActivityDefinitionKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionDirectionType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentState",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceCriticality",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationRequestPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PropertyRepresentation",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TriggerType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompositionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AppointmentStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MessageSignificanceCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ListMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResearchElementType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TaskPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ObservationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PaymentNoticeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResourceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PaymentReconciliationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToBoolean",
      "fromType": "boolean",
      "toType": "System.Boolean"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapGroupTypeMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "OrientationType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SupplyRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EncounterLocationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionalDeleteStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContractPublicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NutritionOrderStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ImmunizationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "uri",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "Use",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IdentityAssuranceLevel",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricColor",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToTime",
      "fromType": "time",
      "toType": "System.Time"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionalReadStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "OperationKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SubscriptionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GoalLifecycleStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ObservationDataType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentReferenceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LocationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SectionMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NoteType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CodeSystemContentMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRDeviceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContactPointSystem",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SlotStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PropertyType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TypeDerivationRule",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuidanceResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RelatedArtifactType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SequenceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferredDocumentStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MediaStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompartmentType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "InvoicePriceComponentType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCalibrationState",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GroupType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EnableWhenBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TaskIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ImmunizationEvaluationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToDate",
      "fromType": "date",
      "toType": "System.Date"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ExampleScenarioActorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProvenanceEntityRole",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EligibilityRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SpecimenStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CurrencyCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RestfulCapabilityMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DetectedIssueSeverity",
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
      "fromType": "ConsentDataMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuidePageGeneration",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClaimResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "VariableType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RepositoryType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportResult",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConceptMapGroupUnmappedMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToDateTime",
      "fromType": "instant",
      "toType": "System.DateTime"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClinicalImpressionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EligibilityResponsePurpose",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NarrativeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ImagingStudyStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EndpointStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BiologicallyDerivedProductCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResourceVersionPolicy",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToDateTime",
      "fromType": "dateTime",
      "toType": "System.DateTime"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationAdministrationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionCardinalityBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationRequestIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GroupMeasure",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NamingSystemIdentifierType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRResourceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RiskAssessmentStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompartmentCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DiscriminatorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapInputMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LinkageType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferenceHandlingPolicy",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResearchStudyStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRDefinedType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventOutcome",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SpecimenContainedPreference",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConstraintSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EventCapabilityMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CodeSearchSupport",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ObservationRangeCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UDIEntryType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestReportActionResult",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ChargeItemDefinitionPriceComponentType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CapabilityStatementKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActivityParticipantType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EventTiming",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchParamType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionGroupingBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapModelMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TaskStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ServiceRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BiologicallyDerivedProductStorageScale",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GraphCompartmentRule",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ServiceRequestIntent",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SlicingRules",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ExplanationOfBenefitStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuideParameterCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CatalogEntryRelationType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LinkType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRAllTypes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConceptMapEquivalence",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventAction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EligibilityResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchModifierCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "OperationParameterUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentProvisionType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionConditionKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipantStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AdministrativeGender",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireItemType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCalibrationType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EvidenceVariableType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionSelectionBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SupplyDeliveryStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DiagnosticReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FlagStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SPDXLicense",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ListStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "base64Binary",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceUseStatementStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventAgentNetworkType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AddressUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContactPointUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricOperationalStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContributorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferenceVersionRules",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DetectedIssueStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasureReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchEntryMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NameUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LocationMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToInteger",
      "fromType": "integer",
      "toType": "System.Integer"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRSubstanceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireItemOperator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "HTTPVerb",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EpisodeOfCareStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RemittanceOutcome",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StrandType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "Status",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationStatementStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EligibilityRequestPurpose",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ServiceRequestPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuantityComparator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasureReportType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionPrecheckBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DayOfWeek",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CompositionAttestationMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TypeRestfulInteraction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContractStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CodeSystemHierarchyMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "VisionBase",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BundleType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentConfidentiality",
      "toType": "System.String"
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
