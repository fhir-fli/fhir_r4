// ignore_for_file: file_names

import '../../../cql.dart';

final quickmodelinfo = ModelInfo.fromJson({
  "name": "QUICK",
  "url": "http://hl7.org/fhir",
  "schemaLocation": "http://org.hl7.fhir quick.xsd",
  "targetQualifier": "quick",
  "patientClassName": "Patient",
  "patientClassIdentifier": "patient-qicore-qicore-patient",
  "patientBirthDatePropertyName": "birthDate",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Composition.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "list<System.Concept>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "detail", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "other", "type": "System.Any"},
        {"name": "type", "type": "LinkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SpecialValues",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "NutritionOrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "allergyintolerance-qicore-qicore-allergyintolerance",
      "primaryCodePath": "substance",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "recordedDate", "type": "System.DateTime"},
        {"name": "recorder", "type": "System.Any"},
        {"name": "patient", "type": "System.Any"},
        {"name": "reporter", "type": "System.Any"},
        {"name": "substance", "type": "System.Concept"},
        {"name": "status", "type": "System.String"},
        {"name": "criticality", "type": "AllergyIntoleranceCriticality"},
        {"name": "type", "type": "AllergyIntoleranceType"},
        {"name": "category", "type": "AllergyIntoleranceCategory"},
        {"name": "lastOccurence", "type": "System.DateTime"},
        {"name": "comment", "type": "System.String"},
        {"name": "event", "type": "list<QUICK.AllergyIntolerance.Event>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Timing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "list<System.DateTime>"},
        {"name": "repeat", "type": "Timing.Repeat"},
        {"name": "code", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Order.When",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "schedule", "type": "Timing"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "status", "type": "EpisodeOfCareStatus"},
        {
          "name": "statusHistory",
          "type": "list<QUICK.EpisodeOfCare.StatusHistory>"
        },
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "managingOrganization", "type": "System.Any"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "condition", "type": "list<System.Any>"},
        {"name": "referralRequest", "type": "list<System.Any>"},
        {"name": "careManager", "type": "System.Any"},
        {"name": "careTeam", "type": "list<QUICK.EpisodeOfCare.CareTeam>"}
      ]
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
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "medication-qicore-qicore-medication",
      "primaryCodePath": "code",
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "isBrand", "type": "System.Boolean"},
        {"name": "manufacturer", "type": "System.Any"},
        {"name": "kind", "type": "MedicationKind"},
        {"name": "product", "type": "Medication.Product"},
        {"name": "package", "type": "Medication.Package"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "software", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "contact", "type": "ContactPoint"},
        {"name": "endpoint", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.NotAvailable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "System.String"},
        {"name": "during", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequest.BodySite",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "siteCodeableConcept", "type": "System.Concept"},
        {"name": "siteReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "onsetAge", "type": "Age"},
        {"name": "onsetRange", "type": "interval<System.Quantity>"},
        {"name": "onsetString", "type": "System.String"},
        {"name": "note", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "System.Any"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "System.Any"},
        {"name": "requestProvider", "type": "System.Any"},
        {"name": "requestOrganization", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Batch",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "lotNumber", "type": "System.String"},
        {"name": "expirationDate", "type": "System.DateTime"}
      ]
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
      "name": "AllergyIntoleranceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "List",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "title", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "System.Any"},
        {"name": "source", "type": "System.Any"},
        {"name": "status", "type": "ListStatus"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "orderedBy", "type": "System.Concept"},
        {"name": "mode", "type": "ListMode"},
        {"name": "note", "type": "System.String"},
        {"name": "entry", "type": "list<QUICK.List.Entry>"},
        {"name": "emptyReason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment.Prediction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "outcome", "type": "System.Concept"},
        {"name": "probabilityDecimal", "type": "System.Decimal"},
        {"name": "probabilityRange", "type": "interval<System.Quantity>"},
        {"name": "probabilityCodeableConcept", "type": "System.Concept"},
        {"name": "relativeRisk", "type": "System.Decimal"},
        {"name": "whenPeriod", "type": "interval<System.DateTime>"},
        {"name": "whenRange", "type": "interval<System.Quantity>"},
        {"name": "rationale", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "base64Binary",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "xs.base64Binary"}
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.Protocol",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseSequence", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "authority", "type": "System.Any"},
        {"name": "series", "type": "System.String"}
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
      "name": "HealthcareService.ServiceType",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "specialty", "type": "list<System.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElementSpecificity",
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
      "name": "ValueSet.Filter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "property", "type": "System.String"},
        {"name": "op", "type": "FilterOperator"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Actor",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entity", "type": "System.Any"},
        {"name": "role", "type": "list<System.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "actor", "type": "System.Any"},
        {"name": "required", "type": "ParticipantRequired"},
        {"name": "status", "type": "ParticipationStatus"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DomainResource",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "Narrative"},
        {"name": "contained", "type": "list<QUICK.ResourceContainer>"},
        {"name": "extension", "type": "list<QUICK.Extension>"},
        {"name": "modifierExtension", "type": "list<QUICK.Extension>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Collection",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "collector", "type": "System.Any"},
        {"name": "comment", "type": "list<System.String>"},
        {"name": "collectedDateTime", "type": "System.DateTime"},
        {"name": "collectedPeriod", "type": "interval<System.DateTime>"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "method", "type": "System.Concept"},
        {"name": "bodySiteCodeableConcept", "type": "System.Concept"},
        {"name": "bodySiteReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "person", "type": "System.Any"},
        {"name": "role", "type": "System.Concept"}
      ]
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
      "name": "ConformanceUseContext",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem.UniqueId",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "NamingSystemIdentifierType"},
        {"name": "value", "type": "System.String"},
        {"name": "preferred", "type": "System.Boolean"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedPerson",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "relatedperson-qicore-qicore-relatedperson",
      "primaryCodePath": "relationship",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "gender", "type": "System.String"},
        {"name": "address", "type": "Address"},
        {"name": "photo", "type": "list<QUICK.Attachment>"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "encounter-qicore-qicore-encounter",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "status", "type": "EncounterState"},
        {
          "name": "statusHistory",
          "type": "list<QUICK.Encounter.StatusHistory>"
        },
        {"name": "class", "type": "System.String"},
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "episodeOfCare", "type": "System.Any"},
        {"name": "incomingReferralRequest", "type": "list<System.Any>"},
        {"name": "participant", "type": "list<QUICK.Encounter.Participant>"},
        {"name": "fulfills", "type": "System.Any"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "length", "type": "Duration"},
        {"name": "reason", "type": "list<System.Concept>"},
        {"name": "indication", "type": "list<System.Any>"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "hospitalization", "type": "Encounter.Hospitalization"},
        {"name": "location", "type": "list<QUICK.Encounter.Location>"},
        {"name": "serviceProvider", "type": "System.Any"},
        {"name": "partOf", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Network",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.String"},
        {"name": "type", "type": "AuditEventParticipantNetworkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.DosageInstruction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "additionalInstructions", "type": "System.Concept"},
        {"name": "scheduleDateTime", "type": "System.DateTime"},
        {"name": "schedulePeriod", "type": "interval<System.DateTime>"},
        {"name": "scheduleTiming", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "System.Boolean"},
        {"name": "asNeededCodeableConcept", "type": "System.Concept"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "doseRange", "type": "interval<System.Quantity>"},
        {"name": "doseQuantity", "type": "System.Quantity"},
        {"name": "rate", "type": "Ratio"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "NamingSystemType"},
        {"name": "name", "type": "System.String"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "country", "type": "System.String"},
        {"name": "category", "type": "System.Concept"},
        {"name": "responsible", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "usage", "type": "System.String"},
        {"name": "uniqueId", "type": "list<QUICK.NamingSystem.UniqueId>"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.NamingSystem.Contact>"},
        {"name": "replacedBy", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "System.Any"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "System.Any"},
        {"name": "requestProvider", "type": "System.Any"},
        {"name": "requestOrganization", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Activity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionResulting", "type": "list<System.Any>"},
        {"name": "notes", "type": "System.String"},
        {"name": "reference", "type": "System.Any"},
        {"name": "detail", "type": "CarePlan.Detail"}
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
      "name": "ObservationReliability",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireAnswers.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {"name": "subject", "type": "System.Any"},
        {"name": "group", "type": "list<QUICK.QuestionnaireAnswers.Group>"},
        {
          "name": "question",
          "type": "list<QUICK.QuestionnaireAnswers.Question>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Texture",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "type": "System.Concept"},
        {"name": "foodType", "type": "System.Concept"}
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
      "name": "Contract.Actor1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entity", "type": "System.Any"},
        {"name": "role", "type": "list<System.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Messaging",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "endpoint", "type": "System.String"},
        {"name": "reliableCache", "type": "System.Integer"},
        {"name": "documentation", "type": "System.String"},
        {"name": "event", "type": "list<QUICK.Conformance.Event>"}
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
      "name": "Observation.ReferenceRange",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "low", "type": "System.Quantity"},
        {"name": "high", "type": "System.Quantity"},
        {"name": "meaning", "type": "System.Concept"},
        {"name": "age", "type": "interval<System.Quantity>"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Subscription",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "criteria", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.ContactPoint>"},
        {"name": "reason", "type": "System.String"},
        {"name": "status", "type": "SubscriptionStatus"},
        {"name": "error", "type": "System.String"},
        {"name": "channel", "type": "Subscription.Channel"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "tag", "type": "list<System.Code>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "ref", "type": "System.Any"}
      ]
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
      "name": "ImagingStudy.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "System.Integer"},
        {"name": "uid", "type": "System.String"},
        {"name": "sopclass", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "content", "type": "list<QUICK.Attachment>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measmnt_Principle",
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
      "name": "Condition.Evidence",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "detail", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Nutrient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "type": "System.Concept"},
        {"name": "amount", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition.OccurredFollowing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "target", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Parameters.Part",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "valueBoolean", "type": "System.Boolean"},
        {"name": "valueInteger", "type": "System.Integer"},
        {"name": "valueDecimal", "type": "System.Decimal"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueInstant", "type": "System.DateTime"},
        {"name": "valueString", "type": "System.String"},
        {"name": "valueUri", "type": "System.String"},
        {"name": "valueDate", "type": "System.DateTime"},
        {"name": "valueDateTime", "type": "System.DateTime"},
        {"name": "valueTime", "type": "System.Time"},
        {"name": "valueCode", "type": "System.String"},
        {"name": "valueOid", "type": "System.String"},
        {"name": "valueUuid", "type": "uuid"},
        {"name": "valueId", "type": "System.String"},
        {"name": "valueUnsignedInt", "type": "System.Integer"},
        {"name": "valuePositiveInt", "type": "System.Integer"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueCodeableConcept", "type": "System.Concept"},
        {"name": "valueCoding", "type": "System.Code"},
        {"name": "valueQuantity", "type": "System.Quantity"},
        {"name": "valueRange", "type": "interval<System.Quantity>"},
        {"name": "valuePeriod", "type": "interval<System.DateTime>"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "System.Any"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"},
        {"name": "resource", "type": "ResourceContainer"}
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
      "name": "FlagStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Practitioner",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "practitioner-qicore-qicore-practitioner",
      "primaryCodePath": "practitionerRole.role",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "list<QUICK.Address>"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {"name": "photo", "type": "list<QUICK.Attachment>"},
        {
          "name": "practitionerRole",
          "type": "list<QUICK.Practitioner.PractitionerRole>"
        },
        {
          "name": "qualification",
          "type": "list<QUICK.Practitioner.Qualification>"
        },
        {"name": "communication", "type": "list<System.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Resource",
      "baseType": "System.Any",
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
      "name": "Medication.Product",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "form", "type": "System.Concept"},
        {"name": "ingredient", "type": "list<QUICK.Medication.Ingredient>"},
        {"name": "batch", "type": "list<QUICK.Medication.Batch>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Communication.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentString", "type": "System.String"},
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "System.Any"}
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
      "name": "OrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Animal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "species", "type": "System.Concept"},
        {"name": "breed", "type": "System.Concept"},
        {"name": "genderStatus", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.RelatedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ProcedureRelationshipType"},
        {"name": "target", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "GroupType"},
        {"name": "actual", "type": "System.Boolean"},
        {"name": "code", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "quantity", "type": "System.Integer"},
        {"name": "characteristic", "type": "list<QUICK.Group.Characteristic>"},
        {"name": "member", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Modality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Contract.ValuedItem1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entityCodeableConcept", "type": "System.Concept"},
        {"name": "entityReference", "type": "System.Any"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "Money"}
      ]
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
      "name": "Substance.Instance",
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
      "name": "ClaimResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "System.Any"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "System.Any"},
        {"name": "requestProvider", "type": "System.Any"},
        {"name": "requestOrganization", "type": "System.Any"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "payeeType", "type": "System.Code"},
        {"name": "item", "type": "list<QUICK.ClaimResponse.Item>"},
        {"name": "addItem", "type": "list<QUICK.ClaimResponse.AddItem>"},
        {"name": "error", "type": "list<QUICK.ClaimResponse.Error>"},
        {"name": "totalCost", "type": "Money"},
        {"name": "unallocDeductable", "type": "Money"},
        {"name": "totalBenefit", "type": "Money"},
        {"name": "paymentAdjustment", "type": "Money"},
        {"name": "paymentAdjustmentReason", "type": "System.Code"},
        {"name": "paymentDate", "type": "System.DateTime"},
        {"name": "paymentAmount", "type": "Money"},
        {"name": "paymentRef", "type": "Identifier"},
        {"name": "reserved", "type": "System.Code"},
        {"name": "form", "type": "System.Code"},
        {"name": "note", "type": "list<QUICK.ClaimResponse.Note>"},
        {"name": "coverage", "type": "list<QUICK.ClaimResponse.Coverage>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Contains",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "System.String"},
        {"name": "abstract", "type": "System.Boolean"},
        {"name": "version", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "contains", "type": "list<QUICK.ValueSet.Contains>"}
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
      "name": "StructureDefinition.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
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
      "name": "CompositionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.SearchParameter.Contact>"},
        {"name": "requirements", "type": "System.String"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "base", "type": "System.String"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "description", "type": "System.String"},
        {"name": "xpath", "type": "System.String"},
        {"name": "target", "type": "list<System.String>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "focal", "type": "System.Boolean"},
        {"name": "coverage", "type": "System.Any"},
        {"name": "businessArrangement", "type": "System.String"},
        {"name": "relationship", "type": "System.Code"},
        {"name": "preAuthRef", "type": "list<System.String>"},
        {"name": "claimResponse", "type": "System.Any"},
        {"name": "originalRuleset", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RemittanceOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "diagnosis", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.DateCriterion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "value", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition.Location",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "siteCodeableConcept", "type": "System.Concept"},
        {"name": "siteReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.Entity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "ProvenanceEntityRole"},
        {"name": "type", "type": "System.Code"},
        {"name": "reference", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "agent", "type": "Provenance.Agent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityRequest",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "target", "type": "System.Any"},
        {"name": "provider", "type": "System.Any"},
        {"name": "organization", "type": "System.Any"}
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
      "retrievable": false,
      "element": [
        {"name": "masterIdentifier", "type": "Identifier"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "System.Any"},
        {"name": "type", "type": "System.Concept"},
        {"name": "class", "type": "System.Concept"},
        {"name": "format", "type": "list<System.String>"},
        {"name": "author", "type": "list<System.Any>"},
        {"name": "custodian", "type": "System.Any"},
        {"name": "authenticator", "type": "System.Any"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "indexed", "type": "System.DateTime"},
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "docStatus", "type": "System.Concept"},
        {
          "name": "relatesTo",
          "type": "list<QUICK.DocumentReference.RelatesTo>"
        },
        {"name": "description", "type": "System.String"},
        {"name": "confidentiality", "type": "list<System.Concept>"},
        {"name": "content", "type": "list<QUICK.Attachment>"},
        {"name": "context", "type": "DocumentReference.Context"}
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
      "name": "ClaimResponse.Adjudication2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "concept", "type": "list<System.Code>"},
        {"name": "text", "type": "System.String"},
        {"name": "required", "type": "System.Boolean"},
        {"name": "repeats", "type": "System.Boolean"},
        {"name": "group", "type": "list<QUICK.Questionnaire.Group>"},
        {"name": "question", "type": "list<QUICK.Questionnaire.Question>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "System.String"},
        {"name": "uri", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "comments", "type": "System.String"}
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
      "name": "ClaimResponse.Adjudication1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Adjudication4",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Adjudication3",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Treatment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "System.String"},
        {"name": "procedure", "type": "System.Concept"},
        {"name": "additive", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentRequest",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "target", "type": "System.Any"},
        {"name": "provider", "type": "System.Any"},
        {"name": "organization", "type": "System.Any"},
        {"name": "subject", "type": "System.Any"},
        {"name": "coverage", "type": "System.Any"},
        {"name": "relationship", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.Attester",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "list<QUICK.CompositionAttestationMode>"},
        {"name": "time", "type": "System.DateTime"},
        {"name": "party", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport.Image",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "comment", "type": "System.String"},
        {"name": "link", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "medicationdispense-qicore-qicore-medicationdispense",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "MedicationDispenseStatus"},
        {"name": "patient", "type": "System.Any"},
        {"name": "dispenser", "type": "System.Any"},
        {"name": "authorizingPrescription", "type": "list<System.Any>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "daysSupply", "type": "System.Quantity"},
        {"name": "medication", "type": "System.Any"},
        {"name": "whenPrepared", "type": "System.DateTime"},
        {"name": "whenHandedOver", "type": "System.DateTime"},
        {"name": "destination", "type": "System.Any"},
        {"name": "receiver", "type": "list<System.Any>"},
        {"name": "note", "type": "System.String"},
        {
          "name": "dosageInstruction",
          "type": "list<QUICK.MedicationDispense.DosageInstruction>"
        },
        {"name": "substitution", "type": "MedicationDispense.Substitution"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ReferralRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "referralrequest-qicore-qicore-referralrequest",
      "primaryCodePath": "type",
      "element": [
        {"name": "status", "type": "ReferralStatus"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "specialty", "type": "System.Concept"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "patient", "type": "System.Any"},
        {"name": "requester", "type": "System.Any"},
        {"name": "recipient", "type": "list<System.Any>"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "dateSent", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "serviceRequested", "type": "list<System.Concept>"},
        {"name": "supportingInformation", "type": "list<System.Any>"},
        {"name": "fulfillmentTime", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalBaseGender",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.BodySite",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "siteCodeableConcept", "type": "System.Concept"},
        {"name": "siteReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Term",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "issued", "type": "System.DateTime"},
        {"name": "applies", "type": "interval<System.DateTime>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "subType", "type": "System.Concept"},
        {"name": "subject", "type": "System.Any"},
        {"name": "action", "type": "list<System.Concept>"},
        {"name": "actionReason", "type": "list<System.Concept>"},
        {"name": "actor", "type": "list<QUICK.Contract.Actor1>"},
        {"name": "text", "type": "System.String"},
        {"name": "valuedItem", "type": "list<QUICK.Contract.ValuedItem1>"},
        {"name": "group", "type": "list<QUICK.Contract.Term>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "useContext", "type": "list<System.Concept>"},
        {"name": "display", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.StructureDefinition.Contact>"},
        {"name": "description", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "code", "type": "list<System.Code>"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "fhirVersion", "type": "System.String"},
        {"name": "mapping", "type": "list<QUICK.StructureDefinition.Mapping>"},
        {"name": "type", "type": "StructureDefinitionType"},
        {"name": "abstract", "type": "System.Boolean"},
        {"name": "contextType", "type": "ExtensionContext"},
        {"name": "context", "type": "list<System.String>"},
        {"name": "base", "type": "System.String"},
        {"name": "snapshot", "type": "StructureDefinition.Snapshot"},
        {"name": "differential", "type": "StructureDefinition.Differential"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "VisionPrescription",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "dateWritten", "type": "System.DateTime"},
        {"name": "patient", "type": "System.Any"},
        {"name": "prescriber", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "reasonCodeableConcept", "type": "System.Concept"},
        {"name": "reasonReference", "type": "System.Any"},
        {"name": "dispense", "type": "list<QUICK.VisionPrescription.Dispense>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "System.Any"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "System.Any"},
        {"name": "requestProvider", "type": "System.Any"},
        {"name": "requestOrganization", "type": "System.Any"}
      ]
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
      "name": "Contract.ValuedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entityCodeableConcept", "type": "System.Concept"},
        {"name": "entityReference", "type": "System.Any"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner.PractitionerRole",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "managingOrganization", "type": "System.Any"},
        {"name": "role", "type": "System.Concept"},
        {"name": "specialty", "type": "list<System.Concept>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "location", "type": "list<System.Any>"},
        {"name": "healthcareService", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Map",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "codeSystem", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "equivalence", "type": "ConceptMapEquivalence"},
        {"name": "comments", "type": "System.String"},
        {"name": "product", "type": "list<QUICK.ConceptMap.DependsOn>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Parameters",
      "baseType": "Resource",
      "retrievable": false,
      "element": {
        "name": "parameter",
        "type": "list<QUICK.Parameters.Parameter>"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Rest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "RestfulConformanceMode"},
        {"name": "documentation", "type": "System.String"},
        {"name": "security", "type": "Conformance.Security"},
        {"name": "resource", "type": "list<QUICK.Conformance.Resource>"},
        {"name": "interaction", "type": "list<QUICK.Conformance.Interaction1>"},
        {"name": "operation", "type": "list<QUICK.Conformance.Operation>"},
        {"name": "documentMailbox", "type": "list<System.String>"},
        {"name": "compartment", "type": "list<System.String>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.String"},
        {"name": "profile", "type": "System.Any"},
        {"name": "interaction", "type": "list<QUICK.Conformance.Interaction>"},
        {"name": "versioning", "type": "ResourceVersionPolicy"},
        {"name": "readHistory", "type": "System.Boolean"},
        {"name": "updateCreate", "type": "System.Boolean"},
        {"name": "conditionalCreate", "type": "System.Boolean"},
        {"name": "conditionalUpdate", "type": "System.Boolean"},
        {"name": "conditionalDelete", "type": "System.Boolean"},
        {"name": "searchInclude", "type": "list<System.String>"},
        {"name": "searchParam", "type": "list<QUICK.Conformance.SearchParam>"}
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
      "name": "SearchParameter.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
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
      "name": "ListStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "reason", "type": "list<System.Concept>"},
        {"name": "responsibleParty", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResourceContainer",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "AllergyIntolerance", "type": "AllergyIntolerance"},
        {"name": "Appointment", "type": "Appointment"},
        {"name": "AppointmentResponse", "type": "AppointmentResponse"},
        {"name": "AuditEvent", "type": "AuditEvent"},
        {"name": "Basic", "type": "Basic"},
        {"name": "Binary", "type": "Binary"},
        {"name": "BodySite", "type": "BodySite"},
        {"name": "Bundle", "type": "Bundle"},
        {"name": "CarePlan", "type": "CarePlan"},
        {"name": "Claim", "type": "Claim"},
        {"name": "ClaimResponse", "type": "ClaimResponse"},
        {"name": "ClinicalImpression", "type": "ClinicalImpression"},
        {"name": "Communication", "type": "Communication"},
        {"name": "CommunicationRequest", "type": "CommunicationRequest"},
        {"name": "Composition", "type": "Composition"},
        {"name": "ConceptMap", "type": "ConceptMap"},
        {"name": "Condition", "type": "Condition"},
        {"name": "Conformance", "type": "Conformance"},
        {"name": "Contract", "type": "Contract"},
        {"name": "Contraindication", "type": "Contraindication"},
        {"name": "Coverage", "type": "Coverage"},
        {"name": "DataElement", "type": "DataElement"},
        {"name": "Device", "type": "Device"},
        {"name": "DeviceComponent", "type": "DeviceComponent"},
        {"name": "DeviceMetric", "type": "DeviceMetric"},
        {"name": "DeviceUseRequest", "type": "DeviceUseRequest"},
        {"name": "DeviceUseStatement", "type": "DeviceUseStatement"},
        {"name": "DiagnosticOrder", "type": "DiagnosticOrder"},
        {"name": "DiagnosticReport", "type": "DiagnosticReport"},
        {"name": "DocumentManifest", "type": "DocumentManifest"},
        {"name": "DocumentReference", "type": "DocumentReference"},
        {"name": "EligibilityRequest", "type": "EligibilityRequest"},
        {"name": "EligibilityResponse", "type": "EligibilityResponse"},
        {"name": "Encounter", "type": "Encounter"},
        {"name": "EnrollmentRequest", "type": "EnrollmentRequest"},
        {"name": "EnrollmentResponse", "type": "EnrollmentResponse"},
        {"name": "EpisodeOfCare", "type": "EpisodeOfCare"},
        {"name": "ExplanationOfBenefit", "type": "ExplanationOfBenefit"},
        {"name": "FamilyMemberHistory", "type": "FamilyMemberHistory"},
        {"name": "Flag", "type": "Flag"},
        {"name": "Goal", "type": "Goal"},
        {"name": "Group", "type": "Group"},
        {"name": "HealthcareService", "type": "HealthcareService"},
        {"name": "ImagingObjectSelection", "type": "ImagingObjectSelection"},
        {"name": "ImagingStudy", "type": "ImagingStudy"},
        {"name": "Immunization", "type": "Immunization"},
        {
          "name": "ImmunizationRecommendation",
          "type": "ImmunizationRecommendation"
        },
        {"name": "List", "type": "List"},
        {"name": "Location", "type": "Location"},
        {"name": "Media", "type": "Media"},
        {"name": "Medication", "type": "Medication"},
        {
          "name": "MedicationAdministration",
          "type": "MedicationAdministration"
        },
        {"name": "MedicationDispense", "type": "MedicationDispense"},
        {"name": "MedicationPrescription", "type": "MedicationPrescription"},
        {"name": "MedicationStatement", "type": "MedicationStatement"},
        {"name": "MessageHeader", "type": "MessageHeader"},
        {"name": "NamingSystem", "type": "NamingSystem"},
        {"name": "NutritionOrder", "type": "NutritionOrder"},
        {"name": "Observation", "type": "Observation"},
        {"name": "OperationDefinition", "type": "OperationDefinition"},
        {"name": "OperationOutcome", "type": "OperationOutcome"},
        {"name": "Order", "type": "Order"},
        {"name": "OrderResponse", "type": "OrderResponse"},
        {"name": "Organization", "type": "Organization"},
        {"name": "Patient", "type": "Patient"},
        {"name": "PaymentNotice", "type": "PaymentNotice"},
        {"name": "PaymentReconciliation", "type": "PaymentReconciliation"},
        {"name": "Person", "type": "Person"},
        {"name": "Practitioner", "type": "Practitioner"},
        {"name": "Procedure", "type": "Procedure"},
        {"name": "ProcedureRequest", "type": "ProcedureRequest"},
        {"name": "ProcessRequest", "type": "ProcessRequest"},
        {"name": "ProcessResponse", "type": "ProcessResponse"},
        {"name": "Provenance", "type": "Provenance"},
        {"name": "Questionnaire", "type": "Questionnaire"},
        {"name": "QuestionnaireAnswers", "type": "QuestionnaireAnswers"},
        {"name": "ReferralRequest", "type": "ReferralRequest"},
        {"name": "RelatedPerson", "type": "RelatedPerson"},
        {"name": "RiskAssessment", "type": "RiskAssessment"},
        {"name": "Schedule", "type": "Schedule"},
        {"name": "SearchParameter", "type": "SearchParameter"},
        {"name": "Slot", "type": "Slot"},
        {"name": "Specimen", "type": "Specimen"},
        {"name": "StructureDefinition", "type": "StructureDefinition"},
        {"name": "Subscription", "type": "Subscription"},
        {"name": "Substance", "type": "Substance"},
        {"name": "Supply", "type": "Supply"},
        {"name": "ValueSet", "type": "ValueSet"},
        {"name": "VisionPrescription", "type": "VisionPrescription"},
        {"name": "Parameters", "type": "Parameters"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "System.DateTime"},
        {"name": "detail", "type": "System.Any"},
        {"name": "reported", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relationship", "type": "list<System.Concept>"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "Address"},
        {"name": "gender", "type": "System.String"},
        {"name": "organization", "type": "System.Any"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Person.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "target", "type": "System.Any"},
        {"name": "assurance", "type": "IdentityAssuranceLevel"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BackboneElement",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "modifierExtension", "type": "list<QUICK.Extension>"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentString", "type": "System.String"},
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "immunization-qicore-qicore-immunization",
      "primaryCodePath": "vaccineType",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "vaccineType", "type": "System.Concept"},
        {"name": "patient", "type": "System.Any"},
        {"name": "wasNotGiven", "type": "System.Boolean"},
        {"name": "reported", "type": "System.Boolean"},
        {"name": "performer", "type": "System.Any"},
        {"name": "requester", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "manufacturer", "type": "System.Any"},
        {"name": "location", "type": "System.Any"},
        {"name": "lotNumber", "type": "System.String"},
        {"name": "expirationDate", "type": "System.DateTime"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "doseQuantity", "type": "System.Quantity"},
        {"name": "explanation", "type": "Immunization.Explanation"},
        {"name": "reaction", "type": "list<QUICK.Immunization.Reaction>"},
        {
          "name": "vaccinationProtocol",
          "type": "list<QUICK.Immunization.VaccinationProtocol>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlanActivityCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "DocumentManifest",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "masterIdentifier", "type": "Identifier"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "System.Any"},
        {"name": "recipient", "type": "list<System.Any>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "author", "type": "list<System.Any>"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "source", "type": "System.String"},
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "description", "type": "System.String"},
        {"name": "content", "type": "list<QUICK.DocumentManifest.Content>"},
        {"name": "related", "type": "list<QUICK.DocumentManifest.Related>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "System.Code"},
        {"name": "type", "type": "System.Code"},
        {"name": "referenceUri", "type": "System.String"},
        {"name": "referenceReference", "type": "System.Any"},
        {"name": "display", "type": "System.String"}
      ]
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
      "name": "SearchEntryMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Appointment",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "status", "type": "AppointmentStatus"},
        {"name": "type", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "priority", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "slot", "type": "list<System.Any>"},
        {"name": "comment", "type": "System.String"},
        {"name": "order", "type": "System.Any"},
        {"name": "participant", "type": "list<QUICK.Appointment.Participant>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "substance-qicore-qicore-substance",
      "primaryCodePath": "type",
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "instance", "type": "Substance.Instance"},
        {"name": "ingredient", "type": "list<QUICK.Substance.Ingredient>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationPrescription.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "System.Any"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "organization", "type": "System.Any"},
        {"name": "requestProvider", "type": "System.Any"},
        {"name": "requestOrganization", "type": "System.Any"},
        {"name": "detail", "type": "list<QUICK.PaymentReconciliation.Detail>"},
        {"name": "form", "type": "System.Code"},
        {"name": "total", "type": "Money"},
        {"name": "note", "type": "list<QUICK.PaymentReconciliation.Note>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataAbsentReason",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.VaccinationProtocol",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseSequence", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "authority", "type": "System.Any"},
        {"name": "series", "type": "System.String"},
        {"name": "seriesDoses", "type": "System.Integer"},
        {"name": "doseTarget", "type": "System.Concept"},
        {"name": "doseStatus", "type": "System.Concept"},
        {"name": "doseStatusReason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "NameUse"},
        {"name": "text", "type": "System.String"},
        {"name": "family", "type": "list<System.String>"},
        {"name": "given", "type": "list<System.String>"},
        {"name": "prefix", "type": "list<System.String>"},
        {"name": "suffix", "type": "list<System.String>"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "communicationrequest-qicore-qicore-communicationrequest",
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "category", "type": "System.Concept"},
        {"name": "sender", "type": "System.Any"},
        {"name": "recipient", "type": "list<System.Any>"},
        {"name": "payload", "type": "list<QUICK.CommunicationRequest.Payload>"},
        {"name": "medium", "type": "list<System.Concept>"},
        {"name": "requester", "type": "System.Any"},
        {"name": "status", "type": "System.Code"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "scheduledTime", "type": "System.DateTime"},
        {"name": "reason", "type": "list<System.Concept>"},
        {"name": "orderedOn", "type": "System.DateTime"},
        {"name": "subject", "type": "System.Any"},
        {"name": "priority", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "providedBy", "type": "System.Any"},
        {"name": "location", "type": "System.Any"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {
          "name": "serviceType",
          "type": "list<QUICK.HealthcareService.ServiceType>"
        },
        {"name": "serviceName", "type": "System.String"},
        {"name": "comment", "type": "System.String"},
        {"name": "extraDetails", "type": "System.String"},
        {"name": "photo", "type": "Attachment"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "coverageArea", "type": "list<System.Any>"},
        {"name": "serviceProvisionCode", "type": "list<System.Concept>"},
        {"name": "eligibility", "type": "System.Concept"},
        {"name": "eligibilityNote", "type": "System.String"},
        {"name": "programName", "type": "list<System.String>"},
        {"name": "characteristic", "type": "list<System.Concept>"},
        {"name": "referralMethod", "type": "list<System.Concept>"},
        {"name": "publicKey", "type": "System.String"},
        {"name": "appointmentRequired", "type": "System.Boolean"},
        {
          "name": "availableTime",
          "type": "list<QUICK.HealthcareService.AvailableTime>"
        },
        {
          "name": "notAvailable",
          "type": "list<QUICK.HealthcareService.NotAvailable>"
        },
        {"name": "availabilityExceptions", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Element",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "codeSystem", "type": "System.String"},
        {"name": "code", "type": "System.String"},
        {"name": "dependsOn", "type": "list<QUICK.ConceptMap.DependsOn>"},
        {"name": "map", "type": "list<QUICK.ConceptMap.Map>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Communication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "communication-qicore-qicore-communication",
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "category", "type": "System.Concept"},
        {"name": "sender", "type": "System.Any"},
        {"name": "recipient", "type": "list<System.Any>"},
        {"name": "payload", "type": "list<QUICK.Communication.Payload>"},
        {"name": "medium", "type": "list<System.Concept>"},
        {"name": "status", "type": "CommunicationStatus"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "sent", "type": "System.DateTime"},
        {"name": "received", "type": "System.DateTime"},
        {"name": "reason", "type": "list<System.Concept>"},
        {"name": "subject", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.TransactionResponse",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "System.String"},
        {"name": "location", "type": "System.String"},
        {"name": "etag", "type": "System.String"},
        {"name": "lastModified", "type": "System.DateTime"}
      ]
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
      "name": "Basic",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "System.Any"},
        {"name": "author", "type": "System.Any"},
        {"name": "created", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Organization.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "purpose", "type": "System.Concept"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "Address"}
      ]
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
      "name": "OperationOutcome.Issue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "severity", "type": "IssueSeverity"},
        {"name": "code", "type": "System.Concept"},
        {"name": "details", "type": "System.String"},
        {"name": "location", "type": "list<System.String>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.OperationDefinition.Contact>"},
        {"name": "description", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "kind", "type": "OperationKind"},
        {"name": "idempotent", "type": "System.Boolean"},
        {"name": "code", "type": "System.String"},
        {"name": "notes", "type": "System.String"},
        {"name": "base", "type": "System.Any"},
        {"name": "system", "type": "System.Boolean"},
        {"name": "type", "type": "list<System.String>"},
        {"name": "instance", "type": "System.Boolean"},
        {
          "name": "parameter",
          "type": "list<QUICK.OperationDefinition.Parameter>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.Question",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "type": "System.String"},
        {"name": "concept", "type": "list<System.Code>"},
        {"name": "text", "type": "System.String"},
        {"name": "type", "type": "AnswerFormat"},
        {"name": "required", "type": "System.Boolean"},
        {"name": "repeats", "type": "System.Boolean"},
        {"name": "options", "type": "System.Any"},
        {"name": "group", "type": "list<QUICK.Questionnaire.Group>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingObjectSelection.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sopClass", "type": "System.String"},
        {"name": "uid", "type": "System.String"},
        {"name": "url", "type": "System.String"},
        {"name": "frames", "type": "list<QUICK.ImagingObjectSelection.Frames>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "type", "type": "System.Concept"},
        {"name": "class", "type": "System.Concept"},
        {"name": "title", "type": "System.String"},
        {"name": "status", "type": "CompositionStatus"},
        {"name": "confidentiality", "type": "System.String"},
        {"name": "subject", "type": "System.Any"},
        {"name": "author", "type": "list<System.Any>"},
        {"name": "attester", "type": "list<QUICK.Composition.Attester>"},
        {"name": "custodian", "type": "System.Any"},
        {"name": "event", "type": "list<QUICK.Composition.Event>"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "section", "type": "list<QUICK.Composition.Section>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SampledDataDataType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Part",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "profile", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "target", "type": "list<System.Any>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "recorded", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "location", "type": "System.Any"},
        {"name": "policy", "type": "list<System.String>"},
        {"name": "agent", "type": "list<QUICK.Provenance.Agent>"},
        {"name": "entity", "type": "list<QUICK.Provenance.Entity>"},
        {"name": "signature", "type": "list<QUICK.Signature>"}
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
        {"name": "data", "type": "base64Binary"},
        {"name": "url", "type": "System.String"},
        {"name": "size", "type": "System.Integer"},
        {"name": "hash", "type": "base64Binary"},
        {"name": "title", "type": "System.String"},
        {"name": "creation", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingObjectSelection",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "System.String"},
        {"name": "patient", "type": "System.Any"},
        {"name": "title", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "author", "type": "System.Any"},
        {"name": "authoringTime", "type": "System.DateTime"},
        {"name": "study", "type": "list<QUICK.ImagingObjectSelection.Study>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireAnswers",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "questionnaire", "type": "System.Any"},
        {"name": "status", "type": "QuestionnaireAnswersStatus"},
        {"name": "subject", "type": "System.Any"},
        {"name": "author", "type": "System.Any"},
        {"name": "authored", "type": "System.DateTime"},
        {"name": "source", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "group", "type": "QuestionnaireAnswers.Group"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Package",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "container", "type": "System.Concept"},
        {"name": "content", "type": "list<QUICK.Medication.Content>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.Destination",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "target", "type": "System.Any"},
        {"name": "endpoint", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Order",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "subject", "type": "System.Any"},
        {"name": "source", "type": "System.Any"},
        {"name": "target", "type": "System.Any"},
        {"name": "reasonCodeableConcept", "type": "System.Concept"},
        {"name": "reasonReference", "type": "System.Any"},
        {"name": "authority", "type": "System.Any"},
        {"name": "when", "type": "Order.When"},
        {"name": "detail", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Location",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "location", "type": "System.Any"},
        {"name": "status", "type": "EncounterLocationStatus"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Identifier",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "IdentifierUse"},
        {"name": "type", "type": "System.Concept"},
        {"name": "system", "type": "System.String"},
        {"name": "value", "type": "System.String"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "assigner", "type": "System.Any"}
      ]
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
      "name": "ClaimResponse.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {
          "name": "adjudication",
          "type": "list<QUICK.ClaimResponse.Adjudication1>"
        },
        {"name": "subDetail", "type": "list<QUICK.ClaimResponse.SubDetail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingModality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "schedule", "type": "System.Any"},
        {"name": "freeBusyType", "type": "SlotStatus"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "overbooked", "type": "System.Boolean"},
        {"name": "comment", "type": "System.String"}
      ]
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
      "name": "AuditEventObjectType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": false,
      "identifier": "device-qicore-qicore-device",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "status", "type": "DeviceStatus"},
        {"name": "manufacturer", "type": "System.String"},
        {"name": "model", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "manufactureDate", "type": "System.DateTime"},
        {"name": "expiry", "type": "System.DateTime"},
        {"name": "udi", "type": "System.String"},
        {"name": "lotNumber", "type": "System.String"},
        {"name": "owner", "type": "System.Any"},
        {"name": "location", "type": "System.Any"},
        {"name": "patient", "type": "System.Any"},
        {"name": "contact", "type": "list<QUICK.ContactPoint>"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "request", "type": "System.Any"},
        {"name": "responce", "type": "System.Any"},
        {"name": "submitter", "type": "System.Any"},
        {"name": "payee", "type": "System.Any"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "amount", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "substance", "type": "System.Concept"},
        {"name": "certainty", "type": "AllergyIntoleranceCertainty"},
        {"name": "manifestation", "type": "list<System.Concept>"},
        {"name": "description", "type": "System.String"},
        {"name": "onset", "type": "System.DateTime"},
        {"name": "duration", "type": "Duration"},
        {"name": "severity", "type": "AllergyIntoleranceSeverity"},
        {"name": "exposureRoute", "type": "System.Concept"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "quantity", "type": "Ratio"},
        {"name": "substance", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Communication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "System.Concept"},
        {"name": "preferred", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "procedure-qicore-qicore-procedure",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "status", "type": "ProcedureStatus"},
        {"name": "category", "type": "System.Concept"},
        {"name": "type", "type": "System.Concept"},
        {"name": "bodySite", "type": "list<QUICK.Procedure.BodySite>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "performer", "type": "list<QUICK.Procedure.Performer>"},
        {"name": "performedDateTime", "type": "System.DateTime"},
        {"name": "performedPeriod", "type": "interval<System.DateTime>"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "location", "type": "System.Any"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "report", "type": "list<System.Any>"},
        {"name": "complication", "type": "list<System.Concept>"},
        {"name": "followUp", "type": "list<System.Concept>"},
        {"name": "relatedItem", "type": "list<QUICK.Procedure.RelatedItem>"},
        {"name": "notes", "type": "System.String"},
        {"name": "device", "type": "list<QUICK.Procedure.Device>"},
        {"name": "used", "type": "list<System.Any>"}
      ]
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
      "name": "ImagingStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "imagingstudy-qicore-qicore-imagingstudy",
      "primaryCodePath": "procedure",
      "element": [
        {"name": "started", "type": "System.DateTime"},
        {"name": "patient", "type": "System.Any"},
        {"name": "uid", "type": "System.String"},
        {"name": "accession", "type": "Identifier"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "order", "type": "list<System.Any>"},
        {"name": "modalityList", "type": "list<QUICK.ImagingModality>"},
        {"name": "referrer", "type": "System.Any"},
        {"name": "availability", "type": "InstanceAvailability"},
        {"name": "url", "type": "System.String"},
        {"name": "numberOfSeries", "type": "System.Integer"},
        {"name": "numberOfInstances", "type": "System.Integer"},
        {"name": "clinicalInformation", "type": "System.String"},
        {"name": "procedure", "type": "list<System.Code>"},
        {"name": "interpreter", "type": "System.Any"},
        {"name": "description", "type": "System.String"},
        {"name": "series", "type": "list<QUICK.ImagingStudy.Series>"}
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
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "observation-qicore-qicore-observation",
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "valueQuantity", "type": "System.Quantity"},
        {"name": "valueCodeableConcept", "type": "System.Concept"},
        {"name": "valueString", "type": "System.String"},
        {"name": "valueRange", "type": "interval<System.Quantity>"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueTime", "type": "System.Time"},
        {"name": "valueDateTime", "type": "System.DateTime"},
        {"name": "valuePeriod", "type": "interval<System.DateTime>"},
        {"name": "dataAbsentReason", "type": "System.Concept"},
        {"name": "interpretation", "type": "System.Concept"},
        {"name": "comments", "type": "System.String"},
        {"name": "appliesDateTime", "type": "System.DateTime"},
        {"name": "appliesPeriod", "type": "interval<System.DateTime>"},
        {"name": "issued", "type": "System.DateTime"},
        {"name": "status", "type": "ObservationStatus"},
        {"name": "reliability", "type": "ObservationReliability"},
        {"name": "bodySiteCodeableConcept", "type": "System.Concept"},
        {"name": "bodySiteReference", "type": "System.Any"},
        {"name": "method", "type": "System.Concept"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "System.Any"},
        {"name": "specimen", "type": "System.Any"},
        {"name": "performer", "type": "list<System.Any>"},
        {"name": "device", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {
          "name": "referenceRange",
          "type": "list<QUICK.Observation.ReferenceRange>"
        },
        {"name": "related", "type": "list<QUICK.Observation.Related>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "diagnosticorder-qicore-qicore-diagnosticorder",
      "primaryCodePath": "item.code",
      "element": [
        {"name": "subject", "type": "System.Any"},
        {"name": "orderer", "type": "System.Any"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "clinicalNotes", "type": "System.String"},
        {"name": "supportingInformation", "type": "list<System.Any>"},
        {"name": "specimen", "type": "list<System.Any>"},
        {"name": "status", "type": "System.String"},
        {"name": "priority", "type": "DiagnosticOrderPriority"},
        {"name": "event", "type": "list<QUICK.DiagnosticOrder.Event>"},
        {"name": "item", "type": "list<QUICK.DiagnosticOrder.Item>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Legal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Duration",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.String"},
        {"name": "code", "type": "System.String"}
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
      "name": "Conformance.Software",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "releaseDate", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireAnswersStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SupplyDispenseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Meta",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "versionId", "type": "System.String"},
        {"name": "lastUpdated", "type": "System.DateTime"},
        {"name": "profile", "type": "list<System.String>"},
        {"name": "security", "type": "list<System.Code>"},
        {"name": "tag", "type": "list<System.Code>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Constraint",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "key", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "severity", "type": "ConstraintSeverity"},
        {"name": "human", "type": "System.String"},
        {"name": "xpath", "type": "System.String"}
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
      "name": "AddressUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "immunizationrecommendation-qicore-qicore-immunizationrec",
      "primaryCodePath": "recommendation.vaccineType",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {
          "name": "recommendation",
          "type": "list<QUICK.ImmunizationRecommendation.Recommendation>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageEvent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Expansion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.String"},
        {"name": "timestamp", "type": "System.DateTime"},
        {"name": "parameter", "type": "list<QUICK.ValueSet.Parameter>"},
        {"name": "contains", "type": "list<QUICK.ValueSet.Contains>"}
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
      "name": "NarrativeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Condition.DueTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "target", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContactPoint",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "ContactPointSystem"},
        {"name": "value", "type": "System.String"},
        {"name": "use", "type": "ContactPointUse"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "EncounterState"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinitionType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Note",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "System.Integer"},
        {"name": "type", "type": "System.Code"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Timing.Repeat",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "bounds", "type": "interval<System.DateTime>"},
        {"name": "count", "type": "System.Integer"},
        {"name": "duration", "type": "System.Decimal"},
        {"name": "durationUnits", "type": "UnitsOfTime"},
        {"name": "frequency", "type": "System.Integer"},
        {"name": "frequencyMax", "type": "System.Integer"},
        {"name": "period", "type": "System.Decimal"},
        {"name": "periodMax", "type": "System.Decimal"},
        {"name": "periodUnits", "type": "UnitsOfTime"},
        {"name": "when", "type": "EventTiming"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Document",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "DocumentMode"},
        {"name": "documentation", "type": "System.String"},
        {"name": "profile", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "type", "type": "System.Code"},
        {"name": "service", "type": "System.Code"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "System.String"},
        {
          "name": "representation",
          "type": "list<QUICK.PropertyRepresentation>"
        },
        {"name": "name", "type": "System.String"},
        {"name": "label", "type": "System.String"},
        {"name": "code", "type": "list<System.Code>"},
        {"name": "slicing", "type": "ElementDefinition.Slicing"},
        {"name": "short", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "comments", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "alias", "type": "list<System.String>"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "type", "type": "list<QUICK.ElementDefinition.Type>"},
        {"name": "nameReference", "type": "System.String"},
        {"name": "defaultValueBoolean", "type": "System.Boolean"},
        {"name": "defaultValueInteger", "type": "System.Integer"},
        {"name": "defaultValueDecimal", "type": "System.Decimal"},
        {"name": "defaultValueBase64Binary", "type": "base64Binary"},
        {"name": "defaultValueInstant", "type": "System.DateTime"},
        {"name": "defaultValueString", "type": "System.String"},
        {"name": "defaultValueUri", "type": "System.String"},
        {"name": "defaultValueDate", "type": "System.DateTime"},
        {"name": "defaultValueDateTime", "type": "System.DateTime"},
        {"name": "defaultValueTime", "type": "System.Time"},
        {"name": "defaultValueCode", "type": "System.String"},
        {"name": "defaultValueOid", "type": "System.String"},
        {"name": "defaultValueUuid", "type": "uuid"},
        {"name": "defaultValueId", "type": "System.String"},
        {"name": "defaultValueUnsignedInt", "type": "System.Integer"},
        {"name": "defaultValuePositiveInt", "type": "System.Integer"},
        {"name": "defaultValueAttachment", "type": "Attachment"},
        {"name": "defaultValueIdentifier", "type": "Identifier"},
        {"name": "defaultValueCodeableConcept", "type": "System.Concept"},
        {"name": "defaultValueCoding", "type": "System.Code"},
        {"name": "defaultValueQuantity", "type": "System.Quantity"},
        {"name": "defaultValueRange", "type": "interval<System.Quantity>"},
        {"name": "defaultValuePeriod", "type": "interval<System.DateTime>"},
        {"name": "defaultValueRatio", "type": "Ratio"},
        {"name": "defaultValueReference", "type": "System.Any"},
        {"name": "defaultValueSampledData", "type": "SampledData"},
        {"name": "defaultValueSignature", "type": "Signature"},
        {"name": "defaultValueHumanName", "type": "HumanName"},
        {"name": "defaultValueAddress", "type": "Address"},
        {"name": "defaultValueContactPoint", "type": "ContactPoint"},
        {"name": "defaultValueTiming", "type": "Timing"},
        {"name": "defaultValueMeta", "type": "Meta"},
        {"name": "meaningWhenMissing", "type": "System.String"},
        {"name": "fixedBoolean", "type": "System.Boolean"},
        {"name": "fixedInteger", "type": "System.Integer"},
        {"name": "fixedDecimal", "type": "System.Decimal"},
        {"name": "fixedBase64Binary", "type": "base64Binary"},
        {"name": "fixedInstant", "type": "System.DateTime"},
        {"name": "fixedString", "type": "System.String"},
        {"name": "fixedUri", "type": "System.String"},
        {"name": "fixedDate", "type": "System.DateTime"},
        {"name": "fixedDateTime", "type": "System.DateTime"},
        {"name": "fixedTime", "type": "System.Time"},
        {"name": "fixedCode", "type": "System.String"},
        {"name": "fixedOid", "type": "System.String"},
        {"name": "fixedUuid", "type": "uuid"},
        {"name": "fixedId", "type": "System.String"},
        {"name": "fixedUnsignedInt", "type": "System.Integer"},
        {"name": "fixedPositiveInt", "type": "System.Integer"},
        {"name": "fixedAttachment", "type": "Attachment"},
        {"name": "fixedIdentifier", "type": "Identifier"},
        {"name": "fixedCodeableConcept", "type": "System.Concept"},
        {"name": "fixedCoding", "type": "System.Code"},
        {"name": "fixedQuantity", "type": "System.Quantity"},
        {"name": "fixedRange", "type": "interval<System.Quantity>"},
        {"name": "fixedPeriod", "type": "interval<System.DateTime>"},
        {"name": "fixedRatio", "type": "Ratio"},
        {"name": "fixedReference", "type": "System.Any"},
        {"name": "fixedSampledData", "type": "SampledData"},
        {"name": "fixedSignature", "type": "Signature"},
        {"name": "fixedHumanName", "type": "HumanName"},
        {"name": "fixedAddress", "type": "Address"},
        {"name": "fixedContactPoint", "type": "ContactPoint"},
        {"name": "fixedTiming", "type": "Timing"},
        {"name": "fixedMeta", "type": "Meta"},
        {"name": "patternBoolean", "type": "System.Boolean"},
        {"name": "patternInteger", "type": "System.Integer"},
        {"name": "patternDecimal", "type": "System.Decimal"},
        {"name": "patternBase64Binary", "type": "base64Binary"},
        {"name": "patternInstant", "type": "System.DateTime"},
        {"name": "patternString", "type": "System.String"},
        {"name": "patternUri", "type": "System.String"},
        {"name": "patternDate", "type": "System.DateTime"},
        {"name": "patternDateTime", "type": "System.DateTime"},
        {"name": "patternTime", "type": "System.Time"},
        {"name": "patternCode", "type": "System.String"},
        {"name": "patternOid", "type": "System.String"},
        {"name": "patternUuid", "type": "uuid"},
        {"name": "patternId", "type": "System.String"},
        {"name": "patternUnsignedInt", "type": "System.Integer"},
        {"name": "patternPositiveInt", "type": "System.Integer"},
        {"name": "patternAttachment", "type": "Attachment"},
        {"name": "patternIdentifier", "type": "Identifier"},
        {"name": "patternCodeableConcept", "type": "System.Concept"},
        {"name": "patternCoding", "type": "System.Code"},
        {"name": "patternQuantity", "type": "System.Quantity"},
        {"name": "patternRange", "type": "interval<System.Quantity>"},
        {"name": "patternPeriod", "type": "interval<System.DateTime>"},
        {"name": "patternRatio", "type": "Ratio"},
        {"name": "patternReference", "type": "System.Any"},
        {"name": "patternSampledData", "type": "SampledData"},
        {"name": "patternSignature", "type": "Signature"},
        {"name": "patternHumanName", "type": "HumanName"},
        {"name": "patternAddress", "type": "Address"},
        {"name": "patternContactPoint", "type": "ContactPoint"},
        {"name": "patternTiming", "type": "Timing"},
        {"name": "patternMeta", "type": "Meta"},
        {"name": "exampleBoolean", "type": "System.Boolean"},
        {"name": "exampleInteger", "type": "System.Integer"},
        {"name": "exampleDecimal", "type": "System.Decimal"},
        {"name": "exampleBase64Binary", "type": "base64Binary"},
        {"name": "exampleInstant", "type": "System.DateTime"},
        {"name": "exampleString", "type": "System.String"},
        {"name": "exampleUri", "type": "System.String"},
        {"name": "exampleDate", "type": "System.DateTime"},
        {"name": "exampleDateTime", "type": "System.DateTime"},
        {"name": "exampleTime", "type": "System.Time"},
        {"name": "exampleCode", "type": "System.String"},
        {"name": "exampleOid", "type": "System.String"},
        {"name": "exampleUuid", "type": "uuid"},
        {"name": "exampleId", "type": "System.String"},
        {"name": "exampleUnsignedInt", "type": "System.Integer"},
        {"name": "examplePositiveInt", "type": "System.Integer"},
        {"name": "exampleAttachment", "type": "Attachment"},
        {"name": "exampleIdentifier", "type": "Identifier"},
        {"name": "exampleCodeableConcept", "type": "System.Concept"},
        {"name": "exampleCoding", "type": "System.Code"},
        {"name": "exampleQuantity", "type": "System.Quantity"},
        {"name": "exampleRange", "type": "interval<System.Quantity>"},
        {"name": "examplePeriod", "type": "interval<System.DateTime>"},
        {"name": "exampleRatio", "type": "Ratio"},
        {"name": "exampleReference", "type": "System.Any"},
        {"name": "exampleSampledData", "type": "SampledData"},
        {"name": "exampleSignature", "type": "Signature"},
        {"name": "exampleHumanName", "type": "HumanName"},
        {"name": "exampleAddress", "type": "Address"},
        {"name": "exampleContactPoint", "type": "ContactPoint"},
        {"name": "exampleTiming", "type": "Timing"},
        {"name": "exampleMeta", "type": "Meta"},
        {"name": "maxLength", "type": "System.Integer"},
        {"name": "condition", "type": "list<System.String>"},
        {
          "name": "constraint",
          "type": "list<QUICK.ElementDefinition.Constraint>"
        },
        {"name": "mustSupport", "type": "System.Boolean"},
        {"name": "isModifier", "type": "System.Boolean"},
        {"name": "isSummary", "type": "System.Boolean"},
        {"name": "binding", "type": "ElementDefinition.Binding"},
        {"name": "mapping", "type": "list<QUICK.ElementDefinition.Mapping>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Concept",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.String"},
        {"name": "abstract", "type": "System.Boolean"},
        {"name": "display", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "designation", "type": "list<QUICK.ValueSet.Designation>"},
        {"name": "concept", "type": "list<QUICK.ValueSet.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.Investigations",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "item", "type": "list<System.Any>"}
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
      "name": "IssueSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "MaritalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DataElement.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "System.String"},
        {"name": "uri", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "comments", "type": "System.String"}
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
      "name": "HTTPVerb",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "type", "type": "System.Code"},
        {"name": "service", "type": "System.Code"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "System.Code"},
        {"name": "subDetail", "type": "list<QUICK.Claim.SubDetail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "subject", "type": "System.Any"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "condition", "type": "System.Any"},
        {"name": "performer", "type": "System.Any"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "method", "type": "System.Concept"},
        {"name": "basis", "type": "list<System.Any>"},
        {"name": "prediction", "type": "list<QUICK.RiskAssessment.Prediction>"},
        {"name": "mitigation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "action", "type": "ActionList"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "target", "type": "System.Any"},
        {"name": "provider", "type": "System.Any"},
        {"name": "organization", "type": "System.Any"},
        {"name": "request", "type": "System.Any"},
        {"name": "response", "type": "System.Any"},
        {"name": "nullify", "type": "System.Boolean"},
        {"name": "reference", "type": "System.String"},
        {"name": "item", "type": "list<QUICK.ProcessRequest.Item>"},
        {"name": "include", "type": "list<System.String>"},
        {"name": "exclude", "type": "list<System.String>"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
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
      "name": "MedicationPrescriptionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.Recommendation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "System.DateTime"},
        {"name": "vaccineType", "type": "System.Concept"},
        {"name": "doseNumber", "type": "System.Integer"},
        {"name": "forecastStatus", "type": "System.Concept"},
        {
          "name": "dateCriterion",
          "type": "list<QUICK.ImmunizationRecommendation.DateCriterion>"
        },
        {"name": "protocol", "type": "ImmunizationRecommendation.Protocol"},
        {"name": "supportingImmunization", "type": "list<System.Any>"},
        {"name": "supportingPatientInformation", "type": "list<System.Any>"}
      ]
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
      "name": "ImagingObjectSelection.Study",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "System.String"},
        {"name": "url", "type": "System.String"},
        {"name": "series", "type": "list<QUICK.ImagingObjectSelection.Series>"}
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
      "name": "Distance",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.String"},
        {"name": "code", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse.Notes",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "condition-qicore-qicore-condition",
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "asserter", "type": "System.Any"},
        {"name": "dateAsserted", "type": "System.DateTime"},
        {"name": "code", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "clinicalStatus", "type": "System.String"},
        {"name": "severity", "type": "System.Concept"},
        {"name": "onsetDateTime", "type": "System.DateTime"},
        {"name": "onsetAge", "type": "Age"},
        {"name": "onsetPeriod", "type": "interval<System.DateTime>"},
        {"name": "onsetRange", "type": "interval<System.Quantity>"},
        {"name": "onsetString", "type": "System.String"},
        {"name": "abatementDate", "type": "System.DateTime"},
        {"name": "abatementAge", "type": "Age"},
        {"name": "abatementBoolean", "type": "System.Boolean"},
        {"name": "abatementPeriod", "type": "interval<System.DateTime>"},
        {"name": "abatementRange", "type": "interval<System.Quantity>"},
        {"name": "abatementString", "type": "System.String"},
        {"name": "stage", "type": "Condition.Stage"},
        {"name": "evidence", "type": "list<QUICK.Condition.Evidence>"},
        {"name": "location", "type": "list<QUICK.Condition.Location>"},
        {"name": "dueTo", "type": "list<QUICK.Condition.DueTo>"},
        {
          "name": "occurredFollowing",
          "type": "list<QUICK.Condition.OccurredFollowing>"
        },
        {"name": "notes", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "issued", "type": "System.DateTime"},
        {"name": "applies", "type": "interval<System.DateTime>"},
        {"name": "subject", "type": "list<System.Any>"},
        {"name": "authority", "type": "list<System.Any>"},
        {"name": "domain", "type": "list<System.Any>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "subType", "type": "list<System.Concept>"},
        {"name": "action", "type": "list<System.Concept>"},
        {"name": "actionReason", "type": "list<System.Concept>"},
        {"name": "actor", "type": "list<QUICK.Contract.Actor>"},
        {"name": "valuedItem", "type": "list<QUICK.Contract.ValuedItem>"},
        {"name": "signer", "type": "list<QUICK.Contract.Signer>"},
        {"name": "term", "type": "list<QUICK.Contract.Term>"},
        {"name": "bindingAttachment", "type": "Attachment"},
        {"name": "bindingReference", "type": "System.Any"},
        {"name": "friendly", "type": "list<QUICK.Contract.Friendly>"},
        {"name": "legal", "type": "list<QUICK.Contract.Legal>"},
        {"name": "rule", "type": "list<QUICK.Contract.Rule>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Person",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "list<QUICK.HumanName>"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {"name": "address", "type": "list<QUICK.Address>"},
        {"name": "photo", "type": "Attachment"},
        {"name": "managingOrganization", "type": "System.Any"},
        {"name": "active", "type": "System.Boolean"},
        {"name": "link", "type": "list<QUICK.Person.Link>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Object",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "reference", "type": "System.Any"},
        {"name": "type", "type": "AuditEventObjectType"},
        {"name": "role", "type": "AuditEventObjectRole"},
        {"name": "lifecycle", "type": "AuditEventObjectLifecycle"},
        {"name": "sensitivity", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "query", "type": "base64Binary"},
        {"name": "detail", "type": "list<QUICK.AuditEvent.Detail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RestfulConformanceMode",
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
      "name": "Condition.Stage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "summary", "type": "System.Concept"},
        {"name": "assessment", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "familymemberhistory-qicore-qicore-familymemberhistory",
      "primaryCodePath": "relationship",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "name", "type": "System.String"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "gender", "type": "System.String"},
        {"name": "bornPeriod", "type": "interval<System.DateTime>"},
        {"name": "bornDate", "type": "System.DateTime"},
        {"name": "bornString", "type": "System.String"},
        {"name": "ageAge", "type": "Age"},
        {"name": "ageRange", "type": "interval<System.Quantity>"},
        {"name": "ageString", "type": "System.String"},
        {"name": "deceasedBoolean", "type": "System.Boolean"},
        {"name": "deceasedAge", "type": "Age"},
        {"name": "deceasedRange", "type": "interval<System.Quantity>"},
        {"name": "deceasedDate", "type": "System.DateTime"},
        {"name": "deceasedString", "type": "System.String"},
        {"name": "note", "type": "System.String"},
        {
          "name": "condition",
          "type": "list<QUICK.FamilyMemberHistory.Condition>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "valueBoolean", "type": "System.Boolean"},
        {"name": "valueInteger", "type": "System.Integer"},
        {"name": "valueDecimal", "type": "System.Decimal"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueInstant", "type": "System.DateTime"},
        {"name": "valueString", "type": "System.String"},
        {"name": "valueUri", "type": "System.String"},
        {"name": "valueDate", "type": "System.DateTime"},
        {"name": "valueDateTime", "type": "System.DateTime"},
        {"name": "valueTime", "type": "System.Time"},
        {"name": "valueCode", "type": "System.String"},
        {"name": "valueOid", "type": "System.String"},
        {"name": "valueUuid", "type": "uuid"},
        {"name": "valueId", "type": "System.String"},
        {"name": "valueUnsignedInt", "type": "System.Integer"},
        {"name": "valuePositiveInt", "type": "System.Integer"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueCodeableConcept", "type": "System.Concept"},
        {"name": "valueCoding", "type": "System.Code"},
        {"name": "valueQuantity", "type": "System.Quantity"},
        {"name": "valueRange", "type": "interval<System.Quantity>"},
        {"name": "valuePeriod", "type": "interval<System.DateTime>"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "System.Any"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "subtype", "type": "list<System.Concept>"},
        {"name": "action", "type": "AuditEventAction"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "outcome", "type": "AuditEventOutcome"},
        {"name": "outcomeDesc", "type": "System.String"},
        {"name": "purposeOfEvent", "type": "list<System.Code>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Snapshot",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "element", "type": "list<QUICK.ElementDefinition>"}
    },
    {
      "type": "ClassInfo",
      "name": "Signature",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<System.Code>"},
        {"name": "when", "type": "System.DateTime"},
        {"name": "whoBoolean", "type": "System.Boolean"},
        {"name": "whoInteger", "type": "System.Integer"},
        {"name": "whoDecimal", "type": "System.Decimal"},
        {"name": "whoBase64Binary", "type": "base64Binary"},
        {"name": "whoInstant", "type": "System.DateTime"},
        {"name": "whoString", "type": "System.String"},
        {"name": "whoUri", "type": "System.String"},
        {"name": "whoDate", "type": "System.DateTime"},
        {"name": "whoDateTime", "type": "System.DateTime"},
        {"name": "whoTime", "type": "System.Time"},
        {"name": "whoCode", "type": "System.String"},
        {"name": "whoOid", "type": "System.String"},
        {"name": "whoUuid", "type": "uuid"},
        {"name": "whoId", "type": "System.String"},
        {"name": "whoUnsignedInt", "type": "System.Integer"},
        {"name": "whoPositiveInt", "type": "System.Integer"},
        {"name": "whoAttachment", "type": "Attachment"},
        {"name": "whoIdentifier", "type": "Identifier"},
        {"name": "whoCodeableConcept", "type": "System.Concept"},
        {"name": "whoCoding", "type": "System.Code"},
        {"name": "whoQuantity", "type": "System.Quantity"},
        {"name": "whoRange", "type": "interval<System.Quantity>"},
        {"name": "whoPeriod", "type": "interval<System.DateTime>"},
        {"name": "whoRatio", "type": "Ratio"},
        {"name": "whoReference", "type": "System.Any"},
        {"name": "whoSampledData", "type": "SampledData"},
        {"name": "whoSignature", "type": "Signature"},
        {"name": "whoHumanName", "type": "HumanName"},
        {"name": "whoAddress", "type": "Address"},
        {"name": "whoContactPoint", "type": "ContactPoint"},
        {"name": "whoTiming", "type": "Timing"},
        {"name": "whoMeta", "type": "Meta"},
        {"name": "blob", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "focal", "type": "System.Boolean"},
        {"name": "coverage", "type": "System.Any"},
        {"name": "businessArrangement", "type": "System.String"},
        {"name": "relationship", "type": "System.Code"},
        {"name": "preAuthRef", "type": "list<System.String>"},
        {"name": "claimResponse", "type": "System.Any"},
        {"name": "originalRuleset", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "version", "type": "System.String"},
        {"name": "status", "type": "QuestionnaireStatus"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "group", "type": "Questionnaire.Group"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.Section",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "title", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "content", "type": "System.Any"},
        {"name": "section", "type": "list<QUICK.Composition.Section>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetric.Calibration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "DeviceMetricCalibrationType"},
        {"name": "state", "type": "DeviceMetricCalibrationState"},
        {"name": "time", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "System.Integer"},
        {"name": "modality", "type": "Modality"},
        {"name": "uid", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "numberOfInstances", "type": "System.Integer"},
        {"name": "availability", "type": "InstanceAvailability"},
        {"name": "url", "type": "System.String"},
        {"name": "bodySite", "type": "System.Code"},
        {"name": "laterality", "type": "System.Code"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "instance", "type": "list<QUICK.ImagingStudy.Instance>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner.Qualification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "code", "type": "System.Concept"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "issuer", "type": "System.Any"}
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
      "name": "AllergyIntoleranceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "individual", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Search",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "SearchEntryMode"},
        {"name": "score", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "medicationstatement-qicore-qicore-medicationstatement",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "informationSource", "type": "System.Any"},
        {"name": "dateAsserted", "type": "System.DateTime"},
        {"name": "status", "type": "System.String"},
        {"name": "wasNotGiven", "type": "System.Boolean"},
        {"name": "reasonNotGiven", "type": "list<System.Concept>"},
        {"name": "reasonForUseCodeableConcept", "type": "System.Concept"},
        {"name": "reasonForUseReference", "type": "System.Any"},
        {"name": "effectiveDateTime", "type": "System.DateTime"},
        {"name": "effectivePeriod", "type": "interval<System.DateTime>"},
        {"name": "note", "type": "System.String"},
        {"name": "medication", "type": "System.Any"},
        {"name": "dosage", "type": "list<QUICK.MedicationStatement.Dosage>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Slicing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "discriminator", "type": "list<System.String>"},
        {"name": "description", "type": "System.String"},
        {"name": "ordered", "type": "System.Boolean"},
        {"name": "rules", "type": "SlicingRules"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "lastSystemChange", "type": "System.DateTime"},
        {"name": "source", "type": "System.Any"},
        {"name": "parent", "type": "System.Any"},
        {"name": "operationalStatus", "type": "list<System.Concept>"},
        {"name": "parameterGroup", "type": "System.Concept"},
        {"name": "measurementPrinciple", "type": "Measmnt_Principle"},
        {
          "name": "productionSpecification",
          "type": "list<QUICK.DeviceComponent.ProductionSpecification>"
        },
        {"name": "languageCode", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.Note",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.String"},
        {"name": "value", "type": "base64Binary"}
      ]
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
      "name": "StructureDefinition.Differential",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "element", "type": "list<QUICK.ElementDefinition>"}
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Prosthesis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "initial", "type": "System.Boolean"},
        {"name": "priorDate", "type": "System.DateTime"},
        {"name": "priorMaterial", "type": "System.Code"}
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
      "name": "ClaimResponse.Adjudication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "System.Decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrder.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "System.String"},
        {"name": "description", "type": "System.Concept"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "actor", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "sequenceLinkId", "type": "System.Integer"}
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
      "name": "Contraindication",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "patient", "type": "System.Any"},
        {"name": "category", "type": "System.Concept"},
        {"name": "severity", "type": "System.String"},
        {"name": "implicated", "type": "list<System.Any>"},
        {"name": "detail", "type": "System.String"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "author", "type": "System.Any"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "reference", "type": "System.String"},
        {
          "name": "mitigation",
          "type": "list<QUICK.Contraindication.Mitigation>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireAnswers.Question",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "type": "System.String"},
        {"name": "text", "type": "System.String"},
        {"name": "answer", "type": "list<QUICK.QuestionnaireAnswers.Answer>"},
        {"name": "group", "type": "list<QUICK.QuestionnaireAnswers.Group>"}
      ]
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
      "name": "DeviceMetricOperationalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Observation.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ObservationRelationshipType"},
        {"name": "target", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Interaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "TypeRestfulInteraction"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDiet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "scheduled", "type": "Timing"},
        {"name": "nutrient", "type": "list<QUICK.NutritionOrder.Nutrient>"},
        {"name": "texture", "type": "list<QUICK.NutritionOrder.Texture>"},
        {"name": "fluidConsistencyType", "type": "list<System.Concept>"},
        {"name": "instruction", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "BundleType"},
        {"name": "base", "type": "System.String"},
        {"name": "total", "type": "System.Integer"},
        {"name": "link", "type": "list<QUICK.Bundle.Link>"},
        {"name": "entry", "type": "list<QUICK.Bundle.Entry>"},
        {"name": "signature", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.DependsOn",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "element", "type": "System.String"},
        {"name": "codeSystem", "type": "System.String"},
        {"name": "code", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConformanceEventMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Error",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {"name": "detailSequenceLinkId", "type": "System.Integer"},
        {"name": "subdetailSequenceLinkId", "type": "System.Integer"},
        {"name": "code", "type": "System.Code"}
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
      "name": "LinkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "BodySite",
      "baseType": "DomainResource",
      "retrievable": false,
      "identifier": "bodysite-qicore-qicore-bodysite",
      "element": [
        {"name": "patient", "type": "System.Any"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "code", "type": "System.Concept"},
        {"name": "modifier", "type": "list<System.Concept>"},
        {"name": "description", "type": "System.String"},
        {"name": "image", "type": "list<QUICK.Attachment>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contraindication.Mitigation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "action", "type": "System.Concept"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "author", "type": "System.Any"}
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
      "name": "ValueSet.Include",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "concept", "type": "list<QUICK.ValueSet.Concept1>"},
        {"name": "filter", "type": "list<QUICK.ValueSet.Filter>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "base", "type": "System.String"},
        {"name": "link", "type": "list<QUICK.Bundle.Link>"},
        {"name": "resource", "type": "ResourceContainer"},
        {"name": "search", "type": "Bundle.Search"},
        {"name": "transaction", "type": "Bundle.Transaction"},
        {"name": "transactionResponse", "type": "Bundle.TransactionResponse"}
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
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": false,
      "identifier": "specimen-qicore-qicore-specimen",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "parent", "type": "list<System.Any>"},
        {"name": "subject", "type": "System.Any"},
        {"name": "accessionIdentifier", "type": "Identifier"},
        {"name": "receivedTime", "type": "System.DateTime"},
        {"name": "collection", "type": "Specimen.Collection"},
        {"name": "treatment", "type": "list<QUICK.Specimen.Treatment>"},
        {"name": "container", "type": "list<QUICK.Specimen.Container>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Narrative",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "status", "type": "NarrativeStatus"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationKind",
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
      "name": "Age",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.String"},
        {"name": "code", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Subscription.Channel",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "SubscriptionChannelType"},
        {"name": "endpoint", "type": "System.String"},
        {"name": "payload", "type": "System.String"},
        {"name": "header", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "goal-qicore-qicore-goal",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "targetDate", "type": "System.DateTime"},
        {"name": "description", "type": "System.String"},
        {"name": "status", "type": "GoalStatus"},
        {"name": "statusDate", "type": "System.DateTime"},
        {"name": "author", "type": "System.Any"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "concern", "type": "list<System.Any>"},
        {"name": "notes", "type": "System.String"},
        {"name": "outcome", "type": "list<QUICK.Goal.Outcome>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Concept1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "designation", "type": "list<QUICK.ValueSet.Designation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.Finding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "System.Concept"},
        {"name": "cause", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {"name": "noteNumber", "type": "list<System.Integer>"},
        {
          "name": "adjudication",
          "type": "list<QUICK.ClaimResponse.Adjudication>"
        },
        {"name": "detail", "type": "list<QUICK.ClaimResponse.Detail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "System.String"},
        {"name": "schedule", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "System.Boolean"},
        {"name": "asNeededCodeableConcept", "type": "System.Concept"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "rate", "type": "Ratio"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ClaimType"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "target", "type": "System.Any"},
        {"name": "provider", "type": "System.Any"},
        {"name": "organization", "type": "System.Any"},
        {"name": "use", "type": "Use"},
        {"name": "priority", "type": "System.Code"},
        {"name": "fundsReserve", "type": "System.Code"},
        {"name": "enterer", "type": "System.Any"},
        {"name": "facility", "type": "System.Any"},
        {"name": "prescription", "type": "System.Any"},
        {"name": "originalPrescription", "type": "System.Any"},
        {"name": "payee", "type": "Claim.Payee"},
        {"name": "referral", "type": "System.Any"},
        {"name": "diagnosis", "type": "list<QUICK.Claim.Diagnosis>"},
        {"name": "condition", "type": "list<System.Code>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "coverage", "type": "list<QUICK.Claim.Coverage>"},
        {"name": "exception", "type": "list<System.Code>"},
        {"name": "school", "type": "System.String"},
        {"name": "accident", "type": "System.DateTime"},
        {"name": "accidentType", "type": "System.Code"},
        {"name": "interventionException", "type": "list<System.Code>"},
        {"name": "item", "type": "list<QUICK.Claim.Item>"},
        {"name": "additionalMaterials", "type": "list<System.Code>"},
        {"name": "missingTeeth", "type": "list<QUICK.Claim.MissingTeeth>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Supplement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "productName", "type": "System.String"},
        {"name": "scheduled", "type": "Timing"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "instruction", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetric",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "unit", "type": "System.Concept"},
        {"name": "source", "type": "System.Any"},
        {"name": "parent", "type": "System.Any"},
        {"name": "operationalStatus", "type": "DeviceMetricOperationalStatus"},
        {"name": "color", "type": "DeviceMetricColor"},
        {"name": "category", "type": "DeviceMetricCategory"},
        {"name": "measurementPeriod", "type": "Timing"},
        {"name": "calibration", "type": "list<QUICK.DeviceMetric.Calibration>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Security",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "cors", "type": "System.Boolean"},
        {"name": "service", "type": "list<System.Concept>"},
        {"name": "description", "type": "System.String"},
        {"name": "certificate", "type": "list<QUICK.Conformance.Certificate>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "medicationadministration-qicore-qicore-medicationadministration",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "status", "type": "MedicationAdministrationStatus"},
        {"name": "patient", "type": "System.Any"},
        {"name": "practitioner", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "prescription", "type": "System.Any"},
        {"name": "wasNotGiven", "type": "System.Boolean"},
        {"name": "reasonNotGiven", "type": "list<System.Concept>"},
        {"name": "reasonGiven", "type": "list<System.Concept>"},
        {"name": "effectiveTimeDateTime", "type": "System.DateTime"},
        {"name": "effectiveTimePeriod", "type": "interval<System.DateTime>"},
        {"name": "medication", "type": "System.Any"},
        {"name": "device", "type": "list<System.Any>"},
        {"name": "note", "type": "System.String"},
        {"name": "dosage", "type": "MedicationAdministration.Dosage"}
      ]
    },
    {
      "type": "SimpleTypeInfo",
      "name": "xs.base64Binary",
      "baseType": "System.Any"
    },
    {
      "type": "ClassInfo",
      "name": "Supply",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "kind", "type": "System.Concept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "SupplyStatus"},
        {"name": "orderedItem", "type": "System.Any"},
        {"name": "patient", "type": "System.Any"},
        {"name": "dispense", "type": "list<QUICK.Supply.Dispense>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "deviceuserequest-qicore-qicore-deviceuserequest",
      "primaryCodePath": "device.type",
      "element": [
        {"name": "bodySiteCodeableConcept", "type": "System.Concept"},
        {"name": "bodySiteReference", "type": "System.Any"},
        {"name": "status", "type": "DeviceUseRequestStatus"},
        {"name": "device", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "notes", "type": "list<System.String>"},
        {"name": "prnReason", "type": "list<System.Concept>"},
        {"name": "orderedOn", "type": "System.DateTime"},
        {"name": "recordedOn", "type": "System.DateTime"},
        {"name": "subject", "type": "System.Any"},
        {"name": "timingTiming", "type": "Timing"},
        {"name": "timingPeriod", "type": "interval<System.DateTime>"},
        {"name": "timingDateTime", "type": "System.DateTime"},
        {"name": "priority", "type": "DeviceUseRequestPriority"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "CarePlanActivityCategory"},
        {"name": "code", "type": "System.Concept"},
        {"name": "reasonCodeableConcept", "type": "System.Concept"},
        {"name": "reasonReference", "type": "System.Any"},
        {"name": "goal", "type": "list<System.Any>"},
        {"name": "status", "type": "CarePlanActivityStatus"},
        {"name": "statusReason", "type": "System.Concept"},
        {"name": "prohibited", "type": "System.Boolean"},
        {"name": "scheduledTiming", "type": "Timing"},
        {"name": "scheduledPeriod", "type": "interval<System.DateTime>"},
        {"name": "scheduledString", "type": "System.String"},
        {"name": "location", "type": "System.Any"},
        {"name": "performer", "type": "list<System.Any>"},
        {"name": "product", "type": "System.Any"},
        {"name": "dailyAmount", "type": "System.Quantity"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "note", "type": "System.String"}
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
      "name": "OrderResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "System.Any"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "who", "type": "System.Any"},
        {"name": "authorityCodeableConcept", "type": "System.Concept"},
        {"name": "authorityReference", "type": "System.Any"},
        {"name": "orderStatus", "type": "OrderStatus"},
        {"name": "description", "type": "System.String"},
        {"name": "fulfillment", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
        {"name": "data", "type": "SampledDataDataType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Binding",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "strength", "type": "BindingStrength"},
        {"name": "description", "type": "System.String"},
        {"name": "valueSetBoolean", "type": "System.Boolean"},
        {"name": "valueSetInteger", "type": "System.Integer"},
        {"name": "valueSetDecimal", "type": "System.Decimal"},
        {"name": "valueSetBase64Binary", "type": "base64Binary"},
        {"name": "valueSetInstant", "type": "System.DateTime"},
        {"name": "valueSetString", "type": "System.String"},
        {"name": "valueSetUri", "type": "System.String"},
        {"name": "valueSetDate", "type": "System.DateTime"},
        {"name": "valueSetDateTime", "type": "System.DateTime"},
        {"name": "valueSetTime", "type": "System.Time"},
        {"name": "valueSetCode", "type": "System.String"},
        {"name": "valueSetOid", "type": "System.String"},
        {"name": "valueSetUuid", "type": "uuid"},
        {"name": "valueSetId", "type": "System.String"},
        {"name": "valueSetUnsignedInt", "type": "System.Integer"},
        {"name": "valueSetPositiveInt", "type": "System.Integer"},
        {"name": "valueSetAttachment", "type": "Attachment"},
        {"name": "valueSetIdentifier", "type": "Identifier"},
        {"name": "valueSetCodeableConcept", "type": "System.Concept"},
        {"name": "valueSetCoding", "type": "System.Code"},
        {"name": "valueSetQuantity", "type": "System.Quantity"},
        {"name": "valueSetRange", "type": "interval<System.Quantity>"},
        {"name": "valueSetPeriod", "type": "interval<System.DateTime>"},
        {"name": "valueSetRatio", "type": "Ratio"},
        {"name": "valueSetReference", "type": "System.Any"},
        {"name": "valueSetSampledData", "type": "SampledData"},
        {"name": "valueSetSignature", "type": "Signature"},
        {"name": "valueSetHumanName", "type": "HumanName"},
        {"name": "valueSetAddress", "type": "Address"},
        {"name": "valueSetContactPoint", "type": "ContactPoint"},
        {"name": "valueSetTiming", "type": "Timing"},
        {"name": "valueSetMeta", "type": "Meta"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEventObjectRole",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Hospitalization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "preAdmissionIdentifier", "type": "Identifier"},
        {"name": "origin", "type": "System.Any"},
        {"name": "admitSource", "type": "System.Concept"},
        {"name": "dietPreference", "type": "System.Concept"},
        {"name": "specialCourtesy", "type": "list<System.Concept>"},
        {"name": "specialArrangement", "type": "list<System.Concept>"},
        {"name": "destination", "type": "System.Any"},
        {"name": "dischargeDisposition", "type": "System.Concept"},
        {"name": "dischargeDiagnosis", "type": "System.Any"},
        {"name": "reAdmission", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrderPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "ValueSet.Compose",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "import", "type": "list<System.String>"},
        {"name": "include", "type": "list<QUICK.ValueSet.Include>"},
        {"name": "exclude", "type": "list<QUICK.ValueSet.Include>"}
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
      "name": "OperationDefinition.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "use", "type": "OperationParameterUse"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {"name": "type", "type": "System.String"},
        {"name": "profile", "type": "System.Any"},
        {"name": "part", "type": "list<QUICK.OperationDefinition.Part>"}
      ]
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
      "name": "Media",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "DigitalMediaType"},
        {"name": "subtype", "type": "System.Concept"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "System.Any"},
        {"name": "operator", "type": "System.Any"},
        {"name": "view", "type": "System.Concept"},
        {"name": "deviceName", "type": "System.String"},
        {"name": "height", "type": "System.Integer"},
        {"name": "width", "type": "System.Integer"},
        {"name": "frames", "type": "System.Integer"},
        {"name": "duration", "type": "System.Integer"},
        {"name": "content", "type": "Attachment"}
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
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "organization-qicore-qicore-organization",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "list<QUICK.Address>"},
        {"name": "partOf", "type": "System.Any"},
        {"name": "contact", "type": "list<QUICK.Organization.Contact>"},
        {"name": "active", "type": "System.Boolean"}
      ]
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
      "name": "ClaimType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Signer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "party", "type": "System.Any"},
        {"name": "signature", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "System.Any"},
        {"name": "amount", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "System.String"},
        {"name": "use", "type": "System.Code"},
        {"name": "value", "type": "System.String"}
      ]
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
      "name": "Goal.Outcome",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resultCodeableConcept", "type": "System.Concept"},
        {"name": "resultReference", "type": "System.Any"}
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
      "name": "TypeRestfulInteraction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Location.Position",
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
      "name": "Parameters.Parameter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "valueBoolean", "type": "System.Boolean"},
        {"name": "valueInteger", "type": "System.Integer"},
        {"name": "valueDecimal", "type": "System.Decimal"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueInstant", "type": "System.DateTime"},
        {"name": "valueString", "type": "System.String"},
        {"name": "valueUri", "type": "System.String"},
        {"name": "valueDate", "type": "System.DateTime"},
        {"name": "valueDateTime", "type": "System.DateTime"},
        {"name": "valueTime", "type": "System.Time"},
        {"name": "valueCode", "type": "System.String"},
        {"name": "valueOid", "type": "System.String"},
        {"name": "valueUuid", "type": "uuid"},
        {"name": "valueId", "type": "System.String"},
        {"name": "valueUnsignedInt", "type": "System.Integer"},
        {"name": "valuePositiveInt", "type": "System.Integer"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueCodeableConcept", "type": "System.Concept"},
        {"name": "valueCoding", "type": "System.Code"},
        {"name": "valueQuantity", "type": "System.Quantity"},
        {"name": "valueRange", "type": "interval<System.Quantity>"},
        {"name": "valuePeriod", "type": "interval<System.DateTime>"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "System.Any"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"},
        {"name": "resource", "type": "ResourceContainer"},
        {"name": "part", "type": "list<QUICK.Parameters.Part>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AppointmentResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "appointment", "type": "System.Any"},
        {"name": "participantType", "type": "list<System.Concept>"},
        {"name": "actor", "type": "System.Any"},
        {"name": "participantStatus", "type": "ParticipantStatus"},
        {"name": "comment", "type": "System.String"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "uuid",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.RuledOut",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "System.Concept"},
        {"name": "reason", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Flag",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "flag-qicore-qicore-flag",
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "category", "type": "System.Concept"},
        {"name": "status", "type": "FlagStatus"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "author", "type": "System.Any"},
        {"name": "code", "type": "System.Concept"}
      ]
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
      "name": "MedicationAdministrationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Claim.MissingTeeth",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "tooth", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "extractionDate", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.Explanation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reason", "type": "list<System.Concept>"},
        {"name": "reasonNotGiven", "type": "list<System.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingObjectSelection.Frames",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "frameNumbers", "type": "list<System.Integer>"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.AddItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "list<System.Integer>"},
        {"name": "service", "type": "System.Code"},
        {"name": "fee", "type": "Money"},
        {"name": "noteNumberLinkId", "type": "list<System.Integer>"},
        {
          "name": "adjudication",
          "type": "list<QUICK.ClaimResponse.Adjudication3>"
        },
        {"name": "detail", "type": "list<QUICK.ClaimResponse.Detail1>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElement",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "useContext", "type": "list<System.Concept>"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "copyright", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.DataElement.Contact>"},
        {"name": "specificity", "type": "DataElementSpecificity"},
        {"name": "mapping", "type": "list<QUICK.DataElement.Mapping>"},
        {"name": "element", "type": "list<QUICK.ElementDefinition>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Transaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "method", "type": "HTTPVerb"},
        {"name": "url", "type": "System.String"},
        {"name": "ifNoneMatch", "type": "System.String"},
        {"name": "ifMatch", "type": "System.String"},
        {"name": "ifModifiedSince", "type": "System.DateTime"},
        {"name": "ifNoneExist", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.EnteralFormula",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "administrationInstructions", "type": "System.String"},
        {"name": "baseFormulaType", "type": "System.Concept"},
        {"name": "baseFormulaProductName", "type": "System.String"},
        {"name": "scheduled", "type": "Timing"},
        {"name": "additiveType", "type": "System.Concept"},
        {"name": "additiveProductName", "type": "System.String"},
        {"name": "caloricDensity", "type": "System.Quantity"},
        {"name": "routeofAdministration", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "rate", "type": "Ratio"},
        {"name": "rateAdjustment", "type": "System.Quantity"},
        {"name": "maxVolumeToDeliver", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent.ProductionSpecification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "specType", "type": "System.Concept"},
        {"name": "componentId", "type": "Identifier"},
        {"name": "productionSpec", "type": "System.String"}
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
      "name": "Conformance.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.SearchParam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "documentation", "type": "System.String"},
        {"name": "target", "type": "list<System.String>"},
        {"name": "chain", "type": "list<System.String>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationPrescription.DosageInstruction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "System.String"},
        {"name": "additionalInstructions", "type": "System.Concept"},
        {"name": "scheduledDateTime", "type": "System.DateTime"},
        {"name": "scheduledPeriod", "type": "interval<System.DateTime>"},
        {"name": "scheduledTiming", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "System.Boolean"},
        {"name": "asNeededCodeableConcept", "type": "System.Concept"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "doseRange", "type": "interval<System.Quantity>"},
        {"name": "doseQuantity", "type": "System.Quantity"},
        {"name": "rate", "type": "Ratio"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Friendly",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group.Characteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "valueCodeableConcept", "type": "System.Concept"},
        {"name": "valueBoolean", "type": "System.Boolean"},
        {"name": "valueQuantity", "type": "System.Quantity"},
        {"name": "valueRange", "type": "interval<System.Quantity>"},
        {"name": "exclude", "type": "System.Boolean"}
      ]
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
      "name": "ProcedureRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "procedurerequest-qicore-qicore-procedurerequest",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "System.Any"},
        {"name": "type", "type": "System.Concept"},
        {"name": "bodySite", "type": "list<QUICK.ProcedureRequest.BodySite>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "timingDateTime", "type": "System.DateTime"},
        {"name": "timingPeriod", "type": "interval<System.DateTime>"},
        {"name": "timingTiming", "type": "Timing"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "performer", "type": "System.Any"},
        {"name": "status", "type": "System.String"},
        {"name": "notes", "type": "list<System.String>"},
        {"name": "asNeededBoolean", "type": "System.Boolean"},
        {"name": "asNeededCodeableConcept", "type": "System.Concept"},
        {"name": "orderedOn", "type": "System.DateTime"},
        {"name": "orderer", "type": "System.Any"},
        {"name": "priority", "type": "ProcedureRequestPriority"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "System.Integer"},
        {
          "name": "adjudication",
          "type": "list<QUICK.ClaimResponse.Adjudication2>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "category", "type": "MessageSignificanceCategory"},
        {"name": "mode", "type": "ConformanceEventMode"},
        {"name": "protocol", "type": "list<System.Code>"},
        {"name": "focus", "type": "System.String"},
        {"name": "request", "type": "System.Any"},
        {"name": "response", "type": "System.Any"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relation", "type": "System.String"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "provider", "type": "System.Any"},
        {"name": "organization", "type": "System.Any"},
        {"name": "person", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Implementation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "System.String"},
        {"name": "url", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "List.Entry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "flag", "type": "list<System.Concept>"},
        {"name": "deleted", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "item", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireAnswers.Answer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "valueBoolean", "type": "System.Boolean"},
        {"name": "valueDecimal", "type": "System.Decimal"},
        {"name": "valueInteger", "type": "System.Integer"},
        {"name": "valueDate", "type": "System.DateTime"},
        {"name": "valueDateTime", "type": "System.DateTime"},
        {"name": "valueInstant", "type": "System.DateTime"},
        {"name": "valueTime", "type": "System.Time"},
        {"name": "valueString", "type": "System.String"},
        {"name": "valueUri", "type": "System.String"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueCoding", "type": "System.Code"},
        {"name": "valueQuantity", "type": "System.Quantity"},
        {"name": "valueReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Certificate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.String"},
        {"name": "blob", "type": "base64Binary"}
      ]
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
      "name": "NoteType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "daysOfWeek", "type": "list<QUICK.DaysOfWeek>"},
        {"name": "allDay", "type": "System.Boolean"},
        {"name": "availableStartTime", "type": "System.Time"},
        {"name": "availableEndTime", "type": "System.Time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "System.Any"},
        {"name": "amount", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Address",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "AddressUse"},
        {"name": "text", "type": "System.String"},
        {"name": "line", "type": "list<System.String>"},
        {"name": "city", "type": "System.String"},
        {"name": "state", "type": "System.String"},
        {"name": "postalCode", "type": "System.String"},
        {"name": "country", "type": "System.String"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "deviceusestatement-qicore-qicore-deviceusestatement",
      "primaryCodePath": "device.type",
      "element": [
        {"name": "bodySiteCodeableConcept", "type": "System.Concept"},
        {"name": "bodySiteReference", "type": "System.Any"},
        {"name": "whenUsed", "type": "interval<System.DateTime>"},
        {"name": "device", "type": "System.Any"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "notes", "type": "list<System.String>"},
        {"name": "recordedOn", "type": "System.DateTime"},
        {"name": "subject", "type": "System.Any"},
        {"name": "timingTiming", "type": "Timing"},
        {"name": "timingPeriod", "type": "interval<System.DateTime>"},
        {"name": "timingDateTime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Count",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.String"},
        {"name": "code", "type": "System.String"}
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
      "name": "Conformance.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "definition", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Binary",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
        {"name": "contentType", "type": "System.String"},
        {"name": "content", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "System.Any"},
        {"name": "status", "type": "CarePlanStatus"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "author", "type": "list<System.Any>"},
        {"name": "modified", "type": "System.DateTime"},
        {"name": "category", "type": "list<System.Concept>"},
        {"name": "concern", "type": "list<System.Any>"},
        {"name": "support", "type": "list<System.Any>"},
        {"name": "participant", "type": "list<QUICK.CarePlan.Participant>"},
        {"name": "goal", "type": "list<System.Any>"},
        {"name": "activity", "type": "list<QUICK.CarePlan.Activity>"},
        {"name": "notes", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "AuditEvent.Event"},
        {"name": "participant", "type": "list<QUICK.AuditEvent.Participant>"},
        {"name": "source", "type": "AuditEvent.Source"},
        {"name": "object", "type": "list<QUICK.AuditEvent.Object>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElement.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.RelatesTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "DocumentRelationshipType"},
        {"name": "target", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingObjectSelection.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "System.String"},
        {"name": "url", "type": "System.String"},
        {
          "name": "instance",
          "type": "list<QUICK.ImagingObjectSelection.Instance>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "site", "type": "System.String"},
        {"name": "identifier", "type": "System.String"},
        {"name": "type", "type": "list<System.Code>"}
      ]
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
      "name": "AnswerFormat",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "useContext", "type": "list<System.Concept>"},
        {"name": "immutable", "type": "System.Boolean"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.ValueSet.Contact>"},
        {"name": "description", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "extensible", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "lockedDate", "type": "System.DateTime"},
        {"name": "define", "type": "ValueSet.Define"},
        {"name": "compose", "type": "ValueSet.Compose"},
        {"name": "expansion", "type": "ValueSet.Expansion"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Interaction1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "SystemRestfulInteraction"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Type",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.String"},
        {"name": "profile", "type": "System.String"},
        {"name": "aggregation", "type": "list<QUICK.AggregationMode>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.Conformance.Contact>"},
        {"name": "description", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "software", "type": "Conformance.Software"},
        {"name": "implementation", "type": "Conformance.Implementation"},
        {"name": "fhirVersion", "type": "System.String"},
        {"name": "acceptUnknown", "type": "System.Boolean"},
        {"name": "format", "type": "list<System.String>"},
        {"name": "profile", "type": "list<System.Any>"},
        {"name": "rest", "type": "list<QUICK.Conformance.Rest>"},
        {"name": "messaging", "type": "list<QUICK.Conformance.Messaging>"},
        {"name": "document", "type": "list<QUICK.Conformance.Document>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConformanceResourceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.String"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "useContext", "type": "list<System.Concept>"},
        {"name": "publisher", "type": "System.String"},
        {"name": "contact", "type": "list<QUICK.ConceptMap.Contact>"},
        {"name": "description", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "sourceUri", "type": "System.String"},
        {"name": "sourceReference", "type": "System.Any"},
        {"name": "targetUri", "type": "System.String"},
        {"name": "targetReference", "type": "System.Any"},
        {"name": "element", "type": "list<QUICK.ConceptMap.Element>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.Device",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "action", "type": "System.Concept"},
        {"name": "manipulated", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "patient", "type": "System.Any"},
        {"name": "orderer", "type": "System.Any"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "status", "type": "NutritionOrderStatus"},
        {"name": "allergyIntolerance", "type": "list<System.Any>"},
        {"name": "foodPreferenceModifier", "type": "list<System.Concept>"},
        {"name": "excludeFoodModifier", "type": "list<System.Concept>"},
        {"name": "oralDiet", "type": "NutritionOrder.OralDiet"},
        {"name": "supplement", "type": "list<QUICK.NutritionOrder.Supplement>"},
        {"name": "enteralFormula", "type": "NutritionOrder.EnteralFormula"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Money",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.String"},
        {"name": "code", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "System.String"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "rate", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "patient-qicore-qicore-patient",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "list<QUICK.HumanName>"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {"name": "deceasedBoolean", "type": "System.Boolean"},
        {"name": "deceasedDateTime", "type": "System.DateTime"},
        {"name": "address", "type": "list<QUICK.Address>"},
        {"name": "maritalStatus", "type": "System.Concept"},
        {"name": "multipleBirthBoolean", "type": "System.Boolean"},
        {"name": "multipleBirthInteger", "type": "System.Integer"},
        {"name": "photo", "type": "list<QUICK.Attachment>"},
        {"name": "contact", "type": "list<QUICK.Patient.Contact>"},
        {"name": "animal", "type": "Patient.Animal"},
        {"name": "communication", "type": "list<QUICK.Patient.Communication>"},
        {"name": "careProvider", "type": "list<System.Any>"},
        {"name": "managingOrganization", "type": "System.Any"},
        {"name": "link", "type": "list<QUICK.Patient.Link>"},
        {"name": "active", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Detail1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "service", "type": "System.Code"},
        {"name": "fee", "type": "Money"},
        {
          "name": "adjudication",
          "type": "list<QUICK.ClaimResponse.Adjudication4>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationPrescription",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier":
          "medicationprescription-qicore-qicore-medicationprescription",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "dateWritten", "type": "System.DateTime"},
        {"name": "status", "type": "MedicationPrescriptionStatus"},
        {"name": "patient", "type": "System.Any"},
        {"name": "prescriber", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "reasonCodeableConcept", "type": "System.Concept"},
        {"name": "reasonReference", "type": "System.Any"},
        {"name": "note", "type": "System.String"},
        {"name": "medication", "type": "System.Any"},
        {
          "name": "dosageInstruction",
          "type": "list<QUICK.MedicationPrescription.DosageInstruction>"
        },
        {"name": "dispense", "type": "MedicationPrescription.Dispense"},
        {"name": "substitution", "type": "MedicationPrescription.Substitution"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "System.Any"},
        {"name": "outcome", "type": "System.Code"},
        {"name": "disposition", "type": "System.String"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "organization", "type": "System.Any"},
        {"name": "requestProvider", "type": "System.Any"},
        {"name": "requestOrganization", "type": "System.Any"},
        {"name": "form", "type": "System.Code"},
        {"name": "notes", "type": "list<QUICK.ProcessResponse.Notes>"},
        {"name": "error", "type": "list<System.Code>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Mapping",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "System.String"},
        {"name": "language", "type": "System.String"},
        {"name": "map", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Container",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "description", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "capacity", "type": "System.Quantity"},
        {"name": "specimenQuantity", "type": "System.Quantity"},
        {"name": "additiveCodeableConcept", "type": "System.Concept"},
        {"name": "additiveReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "type", "type": "System.Code"},
        {"name": "provider", "type": "System.Any"},
        {"name": "diagnosisLinkId", "type": "list<System.Integer>"},
        {"name": "service", "type": "System.Code"},
        {"name": "serviceDate", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "System.Code"},
        {"name": "bodySite", "type": "System.Code"},
        {"name": "subSite", "type": "list<System.Code>"},
        {"name": "modifier", "type": "list<System.Code>"},
        {"name": "detail", "type": "list<QUICK.Claim.Detail>"},
        {"name": "prosthesis", "type": "Claim.Prosthesis"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEventParticipantNetworkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Define",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "caseSensitive", "type": "System.Boolean"},
        {"name": "concept", "type": "list<QUICK.ValueSet.Concept>"}
      ]
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
      "name": "AllergyIntoleranceCertainty",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.String"},
        {"name": "timestamp", "type": "System.DateTime"},
        {"name": "event", "type": "System.Code"},
        {"name": "response", "type": "MessageHeader.Response"},
        {"name": "source", "type": "MessageHeader.Source"},
        {
          "name": "destination",
          "type": "list<QUICK.MessageHeader.Destination>"
        },
        {"name": "enterer", "type": "System.Any"},
        {"name": "author", "type": "System.Any"},
        {"name": "receiver", "type": "System.Any"},
        {"name": "responsible", "type": "System.Any"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "data", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": {"name": "issue", "type": "list<QUICK.OperationOutcome.Issue>"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationPrescription.Dispense",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "medication", "type": "System.Any"},
        {"name": "validityPeriod", "type": "interval<System.DateTime>"},
        {"name": "numberOfRepeatsAllowed", "type": "System.Integer"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "expectedSupplyDuration", "type": "Duration"}
      ]
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
      "name": "ReferralStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "valueString", "type": "System.String"},
        {"name": "valueBoolean", "type": "System.Boolean"},
        {"name": "valueInteger", "type": "System.Integer"},
        {"name": "valueDecimal", "type": "System.Decimal"},
        {"name": "valueUri", "type": "System.String"},
        {"name": "valueCode", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Element",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "extension", "type": "list<QUICK.Extension>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEventObjectLifecycle",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PaymentNotice",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "target", "type": "System.Any"},
        {"name": "provider", "type": "System.Any"},
        {"name": "organization", "type": "System.Any"},
        {"name": "request", "type": "System.Any"},
        {"name": "response", "type": "System.Any"},
        {"name": "paymentStatus", "type": "System.Code"}
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
      "name": "DocumentManifest.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "ref", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "patient", "type": "System.Any"},
        {"name": "assessor", "type": "System.Any"},
        {"name": "status", "type": "ClinicalImpressionStatus"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "description", "type": "System.String"},
        {"name": "previous", "type": "System.Any"},
        {"name": "problem", "type": "list<System.Any>"},
        {"name": "triggerCodeableConcept", "type": "System.Concept"},
        {"name": "triggerReference", "type": "System.Any"},
        {
          "name": "investigations",
          "type": "list<QUICK.ClinicalImpression.Investigations>"
        },
        {"name": "protocol", "type": "System.String"},
        {"name": "summary", "type": "System.String"},
        {"name": "finding", "type": "list<QUICK.ClinicalImpression.Finding>"},
        {"name": "resolved", "type": "list<System.Concept>"},
        {"name": "ruledOut", "type": "list<QUICK.ClinicalImpression.RuledOut>"},
        {"name": "prognosis", "type": "System.String"},
        {"name": "plan", "type": "list<System.Any>"},
        {"name": "action", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "list<System.Concept>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "facilityType", "type": "System.Concept"},
        {"name": "practiceSetting", "type": "System.Concept"},
        {"name": "sourcePatientInfo", "type": "System.Any"},
        {"name": "related", "type": "list<QUICK.DocumentReference.Related>"}
      ]
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
      "name": "VisionPrescription.Dispense",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "product", "type": "System.Code"},
        {"name": "eye", "type": "VisionEyes"},
        {"name": "sphere", "type": "System.Decimal"},
        {"name": "cylinder", "type": "System.Decimal"},
        {"name": "axis", "type": "System.Integer"},
        {"name": "prism", "type": "System.Decimal"},
        {"name": "base", "type": "VisionBase"},
        {"name": "add", "type": "System.Decimal"},
        {"name": "power", "type": "System.Decimal"},
        {"name": "backCurve", "type": "System.Decimal"},
        {"name": "diameter", "type": "System.Decimal"},
        {"name": "duration", "type": "System.Quantity"},
        {"name": "color", "type": "System.String"},
        {"name": "brand", "type": "System.String"},
        {"name": "notes", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrder.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "specimen", "type": "list<System.Any>"},
        {"name": "bodySiteCodeableConcept", "type": "System.Concept"},
        {"name": "bodySiteReference", "type": "System.Any"},
        {"name": "status", "type": "System.String"},
        {"name": "event", "type": "list<QUICK.DiagnosticOrder.Event>"}
      ]
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
      "name": "Supply.Dispense",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "SupplyDispenseStatus"},
        {"name": "type", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "suppliedItem", "type": "System.Any"},
        {"name": "supplier", "type": "System.Any"},
        {"name": "whenPrepared", "type": "interval<System.DateTime>"},
        {"name": "whenHandedOver", "type": "System.DateTime"},
        {"name": "destination", "type": "System.Any"},
        {"name": "receiver", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "issuer", "type": "System.Any"},
        {"name": "bin", "type": "Identifier"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "type", "type": "System.Code"},
        {"name": "subscriberId", "type": "Identifier"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "group", "type": "System.String"},
        {"name": "plan", "type": "System.String"},
        {"name": "subPlan", "type": "System.String"},
        {"name": "dependent", "type": "System.Integer"},
        {"name": "sequence", "type": "System.Integer"},
        {"name": "subscriber", "type": "System.Any"},
        {"name": "network", "type": "Identifier"},
        {"name": "contract", "type": "list<System.Any>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "list<System.Concept>"},
        {"name": "reference", "type": "System.Any"},
        {"name": "userId", "type": "System.String"},
        {"name": "altId", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "requestor", "type": "System.Boolean"},
        {"name": "location", "type": "System.Any"},
        {"name": "policy", "type": "list<System.String>"},
        {"name": "media", "type": "System.Code"},
        {"name": "network", "type": "AuditEvent.Network"},
        {"name": "purposeOfUse", "type": "list<System.Code>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "pAttachment", "type": "Attachment"},
        {"name": "pReference", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.Response",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.String"},
        {"name": "code", "type": "ResponseType"},
        {"name": "details", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "diagnosticreport-qicore-qicore-diagnosticreport",
      "primaryCodePath": "name",
      "element": [
        {"name": "name", "type": "System.Concept"},
        {"name": "status", "type": "DiagnosticReportStatus"},
        {"name": "issued", "type": "System.DateTime"},
        {"name": "subject", "type": "System.Any"},
        {"name": "performer", "type": "System.Any"},
        {"name": "encounter", "type": "System.Any"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "requestDetail", "type": "list<System.Any>"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {"name": "diagnosticDateTime", "type": "System.DateTime"},
        {"name": "diagnosticPeriod", "type": "interval<System.DateTime>"},
        {"name": "specimen", "type": "list<System.Any>"},
        {"name": "result", "type": "list<System.Any>"},
        {"name": "imagingStudy", "type": "list<System.Any>"},
        {"name": "image", "type": "list<QUICK.DiagnosticReport.Image>"},
        {"name": "conclusion", "type": "System.String"},
        {"name": "codedDiagnosis", "type": "list<System.Concept>"},
        {"name": "presentedForm", "type": "list<QUICK.Attachment>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "EpisodeOfCareStatus"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
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
      "name": "EpisodeOfCare.CareTeam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "member", "type": "System.Any"},
        {"name": "role", "type": "list<System.Concept>"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "System.Concept"},
        {"name": "member", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "actor", "type": "System.Any"},
        {"name": "planningHorizon", "type": "interval<System.DateTime>"},
        {"name": "comment", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "location-qicore-qicore-location",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "mode", "type": "LocationMode"},
        {"name": "type", "type": "System.Concept"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "Address"},
        {"name": "physicalType", "type": "System.Concept"},
        {"name": "position", "type": "Location.Position"},
        {"name": "managingOrganization", "type": "System.Any"},
        {"name": "partOf", "type": "System.Any"},
        {"name": "status", "type": "LocationStatus"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProvenanceEntityRole",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    }
  ]
});
