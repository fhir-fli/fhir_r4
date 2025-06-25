import 'package:fhir_r4_cql/fhir_r4_cql.dart';

final quickmodelinfo030 = ModelInfo.fromJson({
  "name": "QUICK",
  "url": "http://hl7.org/fhir",
  "schemaLocation": "http://org.hl7.fhir quick.xsd",
  "targetQualifier": "quick",
  "patientClassName": "Patient",
  "patientClassIdentifier": "cqf-patient",
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
        {"name": "detail", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "other", "type": "Reference"},
        {"name": "type", "type": "LinkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SpecialValues",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SpecialValues_list"}
    },
    {
      "type": "ClassInfo",
      "name": "AggregationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AggregationMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "NutritionOrderStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-allergyintolerance",
      "label": "AllergyIntolerance",
      "primaryCodePath": "substance",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "recordedDate", "type": "System.DateTime"},
        {"name": "recorder", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {"name": "substance", "type": "System.Concept"},
        {"name": "status", "type": "AllergyIntoleranceStatus"},
        {"name": "criticality", "type": "AllergyIntoleranceCriticality"},
        {"name": "type", "type": "AllergyIntoleranceType"},
        {"name": "category", "type": "AllergyIntoleranceCategory"},
        {"name": "lastOccurence", "type": "System.DateTime"},
        {"name": "comment", "type": "System.String"},
        {"name": "event", "type": "list<QUICK.AllergyIntolerance.Event>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "RestfulConformanceMode_list"},
    {
      "type": "ClassInfo",
      "name": "Timing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "list<interval<System.DateTime>>"},
        {"name": "repeat", "type": "Timing.Repeat"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEvent.Network",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.String"},
        {"name": "type", "type": "SecurityEventParticipantNetworkType"}
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
    {"type": "SimpleTypeInfo", "name": "RemittanceOutcome_list"},
    {
      "type": "ClassInfo",
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-medication",
      "label": "Medication",
      "primaryCodePath": "code",
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "code", "type": "System.Concept"},
        {"name": "isBrand", "type": "System.Boolean"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "kind", "type": "MedicationKind"},
        {"name": "product", "type": "Medication.Product"},
        {"name": "package", "type": "Medication.Package"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Profile.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "id"},
        {"name": "uri", "type": "System.Uri"},
        {"name": "name", "type": "System.String"},
        {"name": "comments", "type": "System.String"}
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
        {"name": "endpoint", "type": "System.Uri"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ResourceProfileStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "reference", "type": "System.String"},
        {"name": "display", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AllergyIntoleranceStatus_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ObservationRelationshipType_list"},
    {"type": "SimpleTypeInfo", "name": "SupplyStatus_list"},
    {
      "type": "ClassInfo",
      "name": "List",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "source", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "ordered", "type": "System.Boolean"},
        {"name": "mode", "type": "ListMode"},
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
        {"name": "relativeRisk", "type": "System.Decimal"},
        {"name": "rationale", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "base64Binary",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "base64Binary_primitive"}
    },
    {"type": "SimpleTypeInfo", "name": "CarePlanActivityCategory_list"},
    {"type": "SimpleTypeInfo", "name": "DeviceUseRequestPriority_list"},
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.Protocol",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseSequence", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Alert",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "category", "type": "System.Concept"},
        {"name": "status", "type": "AlertStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "note", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "OperationKind_list"}
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
      "name": "EventTiming",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "EventTiming_list"}
    },
    {"type": "SimpleTypeInfo", "name": "BundleEntryStatus_list"},
    {
      "type": "ClassInfo",
      "name": "ValueSet.Filter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "property", "type": "code"},
        {"name": "op", "type": "FilterOperator"},
        {"name": "value", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "actor", "type": "Reference"},
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
      "element": {"name": "value", "type": "QuestionnaireStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Collection",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "collector", "type": "Reference"},
        {"name": "comment", "type": "list<System.String>"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "method", "type": "System.Concept"},
        {"name": "sourceSite", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEvent.Object",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "reference", "type": "Reference"},
        {"name": "type", "type": "SecurityEventObjectType"},
        {"name": "role", "type": "SecurityEventObjectRole"},
        {"name": "lifecycle", "type": "SecurityEventObjectLifecycle"},
        {"name": "sensitivity", "type": "System.Concept"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "query", "type": "base64Binary"},
        {"name": "detail", "type": "list<QUICK.SecurityEvent.Detail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "person", "type": "Reference"},
        {"name": "role", "type": "System.Concept"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "IssueSeverity_list"},
    {"type": "SimpleTypeInfo", "name": "NarrativeStatus_list"},
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
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "Reference"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "gender", "type": "System.String"},
        {"name": "address", "type": "Address"},
        {"name": "photo", "type": "list<QUICK.Attachment>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest.MessagePart",
      "baseType": "BackboneElement",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-encounter",
      "label": "Encounter",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "status", "type": "EncounterState"},
        {"name": "class", "type": "EncounterClass"},
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "subject", "type": "Reference"},
        {"name": "participant", "type": "list<QUICK.Encounter.Participant>"},
        {"name": "fulfills", "type": "Reference"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "length", "type": "Duration"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "indication", "type": "Reference"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "hospitalization", "type": "Encounter.Hospitalization"},
        {"name": "location", "type": "list<QUICK.Encounter.Location>"},
        {"name": "serviceProvider", "type": "Reference"},
        {"name": "partOf", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "BindingConformance_list"},
    {
      "type": "ClassInfo",
      "name": "NamingSystem",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "NamingSystemType"},
        {"name": "name", "type": "System.String"},
        {"name": "status", "type": "NamingSystemStatus"},
        {"name": "country", "type": "code"},
        {"name": "category", "type": "System.Concept"},
        {"name": "responsible", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "usage", "type": "System.String"},
        {"name": "uniqueId", "type": "list<QUICK.NamingSystem.UniqueId>"},
        {"name": "contact", "type": "NamingSystem.Contact"},
        {"name": "replacedBy", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "Reference"},
        {"name": "requestIdentifier", "type": "list<QUICK.Identifier>"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Activity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "goal", "type": "list<System.Uri>"},
        {"name": "status", "type": "CarePlanActivityStatus"},
        {"name": "prohibited", "type": "System.Boolean"},
        {"name": "actionResulting", "type": "list<QUICK.Reference>"},
        {"name": "notes", "type": "System.String"},
        {"name": "detail", "type": "Reference"},
        {"name": "simple", "type": "CarePlan.Simple"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "System.QuantityComparator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.QuantityComparator_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ObservationReliability",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ObservationReliability_list"}
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
        {"name": "subject", "type": "Reference"},
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
      "element": {"name": "value", "type": "GroupType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistory.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "outcome", "type": "System.Concept"},
        {"name": "note", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "AllergyIntoleranceSeverity_list"},
    {
      "type": "ClassInfo",
      "name": "Conformance.Messaging",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "endpoint", "type": "System.Uri"},
        {"name": "reliableCache", "type": "System.Integer"},
        {"name": "documentation", "type": "System.String"},
        {"name": "event", "type": "list<QUICK.Conformance.Event>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Reversal",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "target", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "response", "type": "Reference"},
        {"name": "responseIdentifier", "type": "Identifier"},
        {"name": "payee", "type": "Reversal.Payee"},
        {"name": "coverage", "type": "Reversal.Coverage"},
        {"name": "nullify", "type": "System.Boolean"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "AdministrativeGender_list"},
    {"type": "SimpleTypeInfo", "name": "ParticipantStatus_list"},
    {"type": "SimpleTypeInfo", "name": "DiagnosticOrderStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Observation.ReferenceRange",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "low", "type": "System.Quantity"},
        {"name": "high", "type": "System.Quantity"},
        {"name": "meaning", "type": "System.Concept"},
        {"name": "age", "type": "Range"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DeviceUseRequestStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SlicingRules",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SlicingRules_list"}
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
        {"name": "tag", "type": "list<QUICK.Subscription.Tag>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlanStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "CarePlanStatus_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ValueSetStatus_list"},
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "System.Integer"},
        {"name": "uid", "type": "oid"},
        {"name": "sopclass", "type": "oid"},
        {"name": "type", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "url", "type": "System.Uri"},
        {"name": "attachment", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measmnt_Principle",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "Measmnt_Principle_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ContactPointSystem_list"},
    {
      "type": "ClassInfo",
      "name": "NamingSystemType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "NamingSystemType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Condition.Evidence",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "detail", "type": "list<QUICK.Reference>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SupplyDispenseStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Condition.OccurredFollowing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "codeableConcept", "type": "System.Concept"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExtensionContext",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ExtensionContext_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ProcedureRequestPriority_list"},
    {"type": "SimpleTypeInfo", "name": "CarePlanStatus_list"},
    {"type": "SimpleTypeInfo", "name": "ConditionStatus_list"},
    {"type": "SimpleTypeInfo", "name": "OrderOutcomeStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Practitioner",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-practitioner",
      "label": "Practitioner",
      "primaryCodePath": "specialty",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "list<QUICK.Address>"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {"name": "photo", "type": "list<QUICK.Attachment>"},
        {"name": "organization", "type": "Reference"},
        {"name": "role", "type": "list<System.Concept>"},
        {"name": "specialty", "type": "list<System.Concept>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "location", "type": "list<QUICK.Reference>"},
        {
          "name": "qualification",
          "type": "list<QUICK.Practitioner.Qualification>"
        },
        {"name": "communication", "type": "list<System.Concept>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "QuestionnaireStatus_list"},
    {
      "type": "ClassInfo",
      "name": "SecurityEvent.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.String"},
        {"name": "value", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Resource",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Resource.Meta"},
        {"name": "implicitRules", "type": "System.Uri"},
        {"name": "language", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Product",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "form", "type": "System.Concept"},
        {"name": "ingredient", "type": "list<QUICK.Medication.Ingredient>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InstanceAvailability",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "InstanceAvailability_list"}
    },
    {"type": "SimpleTypeInfo", "name": "AllergyIntoleranceType_list"},
    {"type": "SimpleTypeInfo", "name": "SearchParamType_list"},
    {"type": "SimpleTypeInfo", "name": "ResourceDataElementStatus_list"},
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
    {"type": "SimpleTypeInfo", "name": "BundleType_list"},
    {
      "type": "ClassInfo",
      "name": "Procedure.RelatedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ProcedureRelationshipType"},
        {"name": "target", "type": "Reference"}
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
        {"name": "member", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Modality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "Modality_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ContactPointSystem",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ContactPointSystem_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ParticipationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ParticipationStatus_list"}
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
        {"name": "request", "type": "Reference"},
        {"name": "requestIdentifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "payeeType", "type": "System.Code"},
        {"name": "item", "type": "list<QUICK.ClaimResponse.Item>"},
        {"name": "additem", "type": "list<QUICK.ClaimResponse.Additem>"},
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
        {"name": "note", "type": "list<QUICK.ClaimResponse.Note>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Contains",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "System.Uri"},
        {"name": "abstract", "type": "System.Boolean"},
        {"name": "version", "type": "System.String"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "System.String"},
        {"name": "contains", "type": "list<QUICK.ValueSet.Contains>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "additionalInstructions", "type": "System.Concept"},
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
      "name": "Resource.Meta",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "versionId", "type": "id"},
        {"name": "lastUpdated", "type": "System.DateTime"},
        {"name": "profile", "type": "list<System.Uri>"},
        {"name": "security", "type": "list<System.Code>"},
        {"name": "tag", "type": "list<System.Code>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "QuestionnaireAnswersStatus_list"},
    {
      "type": "ClassInfo",
      "name": "CompositionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "CompositionStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.Uri"},
        {"name": "name", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "requirements", "type": "System.String"},
        {"name": "base", "type": "code"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "description", "type": "System.String"},
        {"name": "xpath", "type": "System.String"},
        {"name": "target", "type": "list<QUICK.code>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "base64Binary_primitive"},
    {
      "type": "ClassInfo",
      "name": "RemittanceOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "RemittanceOutcome_list"}
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
        {"name": "code", "type": "System.Concept"},
        {"name": "detail", "type": "System.String"}
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
        {"name": "reference", "type": "System.Uri"},
        {"name": "display", "type": "System.String"},
        {"name": "agent", "type": "Provenance.Agent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequestMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ProcedureRequestMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DocumentMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "masterIdentifier", "type": "Identifier"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "type", "type": "System.Concept"},
        {"name": "class", "type": "System.Concept"},
        {"name": "author", "type": "list<QUICK.Reference>"},
        {"name": "custodian", "type": "Reference"},
        {"name": "policyManager", "type": "System.Uri"},
        {"name": "authenticator", "type": "Reference"},
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
        {"name": "primaryLanguage", "type": "code"},
        {"name": "mimeType", "type": "code"},
        {"name": "format", "type": "list<System.Uri>"},
        {"name": "size", "type": "System.Integer"},
        {"name": "hash", "type": "base64Binary"},
        {"name": "location", "type": "System.Uri"},
        {"name": "service", "type": "DocumentReference.Service"},
        {"name": "context", "type": "DocumentReference.Context"}
      ]
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
      "name": "ResourceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ResourceType_list"}
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
        {"name": "additive", "type": "list<QUICK.Reference>"}
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
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport.Image",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "comment", "type": "System.String"},
        {"name": "link", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-medicationdispense",
      "label": "MedicationDispense",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "MedicationDispenseStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "dispenser", "type": "Reference"},
        {"name": "authorizingPrescription", "type": "list<QUICK.Reference>"},
        {"name": "dispense", "type": "list<QUICK.MedicationDispense.Dispense>"},
        {"name": "substitution", "type": "MedicationDispense.Substitution"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConformanceStatementStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ConformanceStatementStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ReferralRequest",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "ReferralStatus"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "specialty", "type": "System.Concept"},
        {"name": "priority", "type": "System.Concept"},
        {"name": "patient", "type": "Reference"},
        {"name": "requester", "type": "Reference"},
        {"name": "recipient", "type": "list<QUICK.Reference>"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateSent", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "serviceRequested", "type": "list<System.Concept>"},
        {"name": "supportingInformation", "type": "list<QUICK.Reference>"},
        {"name": "fulfillmentTime", "type": "interval<System.DateTime>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "AggregationMode_list"},
    {"type": "SimpleTypeInfo", "name": "CommunicationRequestMode_list"},
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.Detail",
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
        {"name": "subDetail", "type": "list<QUICK.OralHealthClaim.SubDetail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Term",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "System.Concept"},
        {"name": "subtype", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "text", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SystemRestfulInteraction_list"},
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "Reference"},
        {"name": "requestIdentifier", "type": "list<QUICK.Identifier>"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "System.String"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"}
      ]
    },
    {
      "type": "SimpleTypeInfo",
      "name": "SecurityEventParticipantNetworkType_list"
    },
    {
      "type": "ClassInfo",
      "name": "ResponseType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ResponseType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEvent.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "subtype", "type": "list<System.Concept>"},
        {"name": "action", "type": "SecurityEventAction"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "outcome", "type": "SecurityEventOutcome"},
        {"name": "outcomeDesc", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MediaType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "MediaType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Map",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "codeSystem", "type": "System.Uri"},
        {"name": "code", "type": "code"},
        {"name": "equivalence", "type": "ConceptMapEquivalence"},
        {"name": "comments", "type": "System.String"},
        {"name": "product", "type": "list<QUICK.ConceptMap.DependsOn>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEvent.Source",
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
        {"name": "documentMailbox", "type": "list<System.Uri>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "LinkType_list"},
    {
      "type": "ClassInfo",
      "name": "Conformance.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"},
        {"name": "interaction", "type": "list<QUICK.Conformance.Interaction>"},
        {"name": "versioning", "type": "ResourceVersionPolicy"},
        {"name": "readHistory", "type": "System.Boolean"},
        {"name": "updateCreate", "type": "System.Boolean"},
        {"name": "searchInclude", "type": "list<System.String>"},
        {"name": "searchParam", "type": "list<QUICK.Conformance.SearchParam>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Deleted",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "id", "type": "id"},
        {"name": "versionId", "type": "id"},
        {"name": "instant", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DiagnosticOrderStatus_list"}
    },
    {"type": "SimpleTypeInfo", "name": "MessageSignificanceCategory_list"},
    {
      "type": "ClassInfo",
      "name": "BundleType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "BundleType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "reason", "type": "list<System.Concept>"},
        {"name": "responsibleParty", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResourceContainer",
      "retrievable": false,
      "element": [
        {"name": "Alert", "type": "Alert"},
        {"name": "AllergyIntolerance", "type": "AllergyIntolerance"},
        {"name": "Appointment", "type": "Appointment"},
        {"name": "AppointmentResponse", "type": "AppointmentResponse"},
        {"name": "Availability", "type": "Availability"},
        {"name": "Basic", "type": "Basic"},
        {"name": "Binary", "type": "Binary"},
        {"name": "Bundle", "type": "Bundle"},
        {"name": "CarePlan", "type": "CarePlan"},
        {"name": "ClaimResponse", "type": "ClaimResponse"},
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
        {"name": "DeviceUseRequest", "type": "DeviceUseRequest"},
        {"name": "DeviceUseStatement", "type": "DeviceUseStatement"},
        {"name": "DiagnosticOrder", "type": "DiagnosticOrder"},
        {"name": "DiagnosticReport", "type": "DiagnosticReport"},
        {"name": "DocumentManifest", "type": "DocumentManifest"},
        {"name": "DocumentReference", "type": "DocumentReference"},
        {"name": "Eligibility", "type": "Eligibility"},
        {"name": "EligibilityResponse", "type": "EligibilityResponse"},
        {"name": "Encounter", "type": "Encounter"},
        {"name": "ExplanationOfBenefit", "type": "ExplanationOfBenefit"},
        {"name": "ExtensionDefinition", "type": "ExtensionDefinition"},
        {"name": "FamilyHistory", "type": "FamilyHistory"},
        {"name": "Group", "type": "Group"},
        {"name": "HealthcareService", "type": "HealthcareService"},
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
        {"name": "OralHealthClaim", "type": "OralHealthClaim"},
        {"name": "Order", "type": "Order"},
        {"name": "OrderResponse", "type": "OrderResponse"},
        {"name": "Organization", "type": "Organization"},
        {"name": "Other", "type": "Other"},
        {"name": "Patient", "type": "Patient"},
        {"name": "Practitioner", "type": "Practitioner"},
        {"name": "Procedure", "type": "Procedure"},
        {"name": "ProcedureRequest", "type": "ProcedureRequest"},
        {"name": "Profile", "type": "Profile"},
        {"name": "Provenance", "type": "Provenance"},
        {"name": "Query", "type": "Query"},
        {"name": "Questionnaire", "type": "Questionnaire"},
        {"name": "QuestionnaireAnswers", "type": "QuestionnaireAnswers"},
        {"name": "ReferralRequest", "type": "ReferralRequest"},
        {"name": "RelatedPerson", "type": "RelatedPerson"},
        {"name": "Reversal", "type": "Reversal"},
        {"name": "RiskAssessment", "type": "RiskAssessment"},
        {"name": "SearchParameter", "type": "SearchParameter"},
        {"name": "SecurityEvent", "type": "SecurityEvent"},
        {"name": "Slot", "type": "Slot"},
        {"name": "Specimen", "type": "Specimen"},
        {"name": "Subscription", "type": "Subscription"},
        {"name": "Substance", "type": "Substance"},
        {"name": "Supply", "type": "Supply"},
        {"name": "SupportingDocumentation", "type": "SupportingDocumentation"},
        {"name": "ValueSet", "type": "ValueSet"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ConformanceEventMode_list"},
    {
      "type": "ClassInfo",
      "name": "Immunization.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "System.DateTime"},
        {"name": "detail", "type": "Reference"},
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
        {"name": "organization", "type": "Reference"},
        {"name": "period", "type": "interval<System.DateTime>"}
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
      "name": "Reversal.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "person", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "DiagnosticOrderPriority_list"},
    {
      "type": "ClassInfo",
      "name": "Immunization",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-immunization",
      "label": "Immunization",
      "primaryCodePath": "vaccineType",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "vaccineType", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "refusedIndicator", "type": "System.Boolean"},
        {"name": "reported", "type": "System.Boolean"},
        {"name": "performer", "type": "Reference"},
        {"name": "requester", "type": "Reference"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "location", "type": "Reference"},
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
      "element": {"name": "value", "type": "CarePlanActivityCategory_list"}
    },
    {"type": "SimpleTypeInfo", "name": "EventTiming_list"},
    {
      "type": "ClassInfo",
      "name": "Other",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "created", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "masterIdentifier", "type": "Identifier"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "list<QUICK.Reference>"},
        {"name": "recipient", "type": "list<QUICK.Reference>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "author", "type": "list<QUICK.Reference>"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "source", "type": "System.Uri"},
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "supercedes", "type": "Reference"},
        {"name": "description", "type": "System.String"},
        {"name": "confidentiality", "type": "System.Concept"},
        {"name": "content", "type": "list<QUICK.Reference>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "code_primitive"},
    {
      "type": "ClassInfo",
      "name": "Provenance.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "System.Code"},
        {"name": "type", "type": "System.Code"},
        {"name": "reference", "type": "System.Uri"},
        {"name": "display", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SecurityEventObjectRole_list"},
    {
      "type": "ClassInfo",
      "name": "Subscription.Tag",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "term", "type": "System.Uri"},
        {"name": "scheme", "type": "System.Uri"},
        {"name": "description", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "priority", "type": "System.Integer"},
        {"name": "status", "type": "code"},
        {"name": "type", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "description", "type": "System.String"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "slot", "type": "list<QUICK.Reference>"},
        {"name": "location", "type": "Reference"},
        {"name": "comment", "type": "System.String"},
        {"name": "order", "type": "Reference"},
        {"name": "participant", "type": "list<QUICK.Appointment.Participant>"},
        {"name": "lastModifiedBy", "type": "Reference"},
        {"name": "lastModified", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-substance",
      "label": "Substance",
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
    {"type": "SimpleTypeInfo", "name": "NamingSystemIdentifierType_list"},
    {"type": "SimpleTypeInfo", "name": "CarePlanGoalStatus_list"},
    {
      "type": "ClassInfo",
      "name": "DataAbsentReason",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DataAbsentReason_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.VaccinationProtocol",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseSequence", "type": "System.Integer"},
        {"name": "description", "type": "System.String"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "System.String"},
        {"name": "seriesDoses", "type": "System.Integer"},
        {"name": "doseTarget", "type": "System.Concept"},
        {"name": "doseStatus", "type": "System.Concept"},
        {"name": "doseStatusReason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupportingDocumentation.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "type": "System.Integer"},
        {"name": "dateTime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-communicationrequest",
      "label": "CommunicationRequest",
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "category", "type": "System.Concept"},
        {"name": "sender", "type": "Reference"},
        {"name": "recipient", "type": "list<QUICK.Reference>"},
        {
          "name": "messagePart",
          "type": "list<QUICK.CommunicationRequest.MessagePart>"
        },
        {"name": "medium", "type": "list<System.Concept>"},
        {"name": "requester", "type": "Reference"},
        {"name": "status", "type": "CommunicationRequestStatus"},
        {"name": "mode", "type": "CommunicationRequestMode"},
        {"name": "encounter", "type": "Reference"},
        {"name": "scheduledTime", "type": "System.DateTime"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "orderedOn", "type": "System.DateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "priority", "type": "System.Concept"}
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
      "name": "HealthcareService",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "location", "type": "Reference"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {
          "name": "serviceType",
          "type": "list<QUICK.HealthcareService.ServiceType>"
        },
        {"name": "serviceName", "type": "System.String"},
        {"name": "comment", "type": "System.String"},
        {"name": "extraDetails", "type": "System.String"},
        {"name": "freeProvisionCode", "type": "System.Concept"},
        {"name": "eligibility", "type": "System.Concept"},
        {"name": "eligibilityNote", "type": "System.String"},
        {"name": "appointmentRequired", "type": "System.Concept"},
        {"name": "imageURI", "type": "System.Uri"},
        {
          "name": "availableTime",
          "type": "list<QUICK.HealthcareService.AvailableTime>"
        },
        {
          "name": "notAvailableTime",
          "type": "list<QUICK.HealthcareService.NotAvailableTime>"
        },
        {"name": "availabilityExceptions", "type": "System.String"},
        {"name": "publicKey", "type": "System.String"},
        {"name": "programName", "type": "list<System.String>"},
        {"name": "contactPoint", "type": "list<QUICK.ContactPoint>"},
        {"name": "characteristic", "type": "list<System.Concept>"},
        {"name": "referralMethod", "type": "list<System.Concept>"},
        {"name": "setting", "type": "list<System.Concept>"},
        {"name": "targetGroup", "type": "list<System.Concept>"},
        {"name": "coverageArea", "type": "list<System.Concept>"},
        {"name": "catchmentArea", "type": "list<System.Concept>"},
        {"name": "serviceCode", "type": "list<System.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Element",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "codeSystem", "type": "System.Uri"},
        {"name": "code", "type": "code"},
        {"name": "dependsOn", "type": "list<QUICK.ConceptMap.DependsOn>"},
        {"name": "map", "type": "list<QUICK.ConceptMap.Map>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "AddressUse_list"},
    {"type": "SimpleTypeInfo", "name": "MedicationPrescriptionStatus_list"},
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AllergyIntoleranceSeverity_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Basic",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "code", "type": "System.Concept"},
        {"name": "subject", "type": "Reference"},
        {"name": "author", "type": "Reference"},
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
        {"name": "address", "type": "Address"},
        {"name": "gender", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AlertStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AlertStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "UnitsOfTime",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "UnitsOfTime_list"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome.Issue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "severity", "type": "IssueSeverity"},
        {"name": "type", "type": "System.Code"},
        {"name": "details", "type": "System.String"},
        {"name": "location", "type": "list<System.String>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.Uri"},
        {"name": "version", "type": "System.String"},
        {"name": "title", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "description", "type": "System.String"},
        {"name": "code", "type": "list<System.Code>"},
        {"name": "status", "type": "ResourceProfileStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "kind", "type": "OperationKind"},
        {"name": "name", "type": "code"},
        {"name": "notes", "type": "System.String"},
        {"name": "base", "type": "Reference"},
        {"name": "system", "type": "System.Boolean"},
        {"name": "type", "type": "list<QUICK.code>"},
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
        {"name": "options", "type": "Reference"},
        {"name": "group", "type": "list<QUICK.Questionnaire.Group>"}
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
        {"name": "confidentiality", "type": "System.Code"},
        {"name": "subject", "type": "Reference"},
        {"name": "author", "type": "list<QUICK.Reference>"},
        {"name": "attester", "type": "list<QUICK.Composition.Attester>"},
        {"name": "custodian", "type": "Reference"},
        {"name": "event", "type": "list<QUICK.Composition.Event>"},
        {"name": "encounter", "type": "Reference"},
        {"name": "section", "type": "list<QUICK.Composition.Section>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExtensionDefinition.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "id"},
        {"name": "uri", "type": "System.Uri"},
        {"name": "name", "type": "System.String"},
        {"name": "comments", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SampledDataDataType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SampledDataDataType_primitive"}
    },
    {
      "type": "ClassInfo",
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "target", "type": "list<QUICK.Reference>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "recorded", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "location", "type": "Reference"},
        {"name": "policy", "type": "list<System.Uri>"},
        {"name": "agent", "type": "list<QUICK.Provenance.Agent>"},
        {"name": "entity", "type": "list<QUICK.Provenance.Entity>"},
        {"name": "integritySignature", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "code",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "code_primitive"}
    },
    {
      "type": "ClassInfo",
      "name": "Attachment",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "contentType", "type": "code"},
        {"name": "language", "type": "code"},
        {"name": "data", "type": "base64Binary"},
        {"name": "url", "type": "System.Uri"},
        {"name": "size", "type": "System.Integer"},
        {"name": "hash", "type": "base64Binary"},
        {"name": "title", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "id_primitive"},
    {
      "type": "ClassInfo",
      "name": "QuestionnaireAnswers",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "questionnaire", "type": "Reference"},
        {"name": "status", "type": "QuestionnaireAnswersStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "authored", "type": "System.DateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
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
        {"name": "target", "type": "Reference"},
        {"name": "endpoint", "type": "System.Uri"}
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
        {"name": "subject", "type": "Reference"},
        {"name": "source", "type": "Reference"},
        {"name": "target", "type": "Reference"},
        {"name": "authority", "type": "Reference"},
        {"name": "when", "type": "Order.When"},
        {"name": "detail", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Location",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "location", "type": "Reference"},
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
        {"name": "label", "type": "System.String"},
        {"name": "system", "type": "System.Uri"},
        {"name": "value", "type": "System.String"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "assigner", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "UnitsOfTime_list"},
    {
      "type": "ClassInfo",
      "name": "NameUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "NameUse_list"}
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
        {"name": "subdetail", "type": "list<QUICK.ClaimResponse.Subdetail>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SlotStatus_list"},
    {
      "type": "ClassInfo",
      "name": "ImagingModality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ImagingModality_list"}
    },
    {"type": "SimpleTypeInfo", "name": "OperationKind_list"},
    {
      "type": "ClassInfo",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "availability", "type": "Reference"},
        {"name": "freeBusyType", "type": "SlotStatus"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "overbooked", "type": "System.Boolean"},
        {"name": "comment", "type": "System.String"},
        {"name": "lastModified", "type": "System.DateTime"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "MedicationKind_list"},
    {"type": "SimpleTypeInfo", "name": "AnswerFormat_list"},
    {"type": "SimpleTypeInfo", "name": "ObservationReliability_list"},
    {
      "type": "ClassInfo",
      "name": "PropertyRepresentation",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "PropertyRepresentation_list"}
    },
    {"type": "SimpleTypeInfo", "name": "Use_list"},
    {
      "type": "ClassInfo",
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "manufacturer", "type": "System.String"},
        {"name": "model", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "expiry", "type": "System.DateTime"},
        {"name": "udi", "type": "System.String"},
        {"name": "lotNumber", "type": "System.String"},
        {"name": "owner", "type": "Reference"},
        {"name": "location", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "contact", "type": "list<QUICK.ContactPoint>"},
        {"name": "url", "type": "System.Uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEventParticipantNetworkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {
        "name": "value",
        "type": "SecurityEventParticipantNetworkType_list"
      }
    },
    {
      "type": "ClassInfo",
      "name": "AdministrativeGender",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AdministrativeGender_list"}
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
        {"name": "substance", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-procedure",
      "label": "Procedure",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "Reference"},
        {"name": "type", "type": "System.Concept"},
        {"name": "bodySite", "type": "list<System.Concept>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "performer", "type": "list<QUICK.Procedure.Performer>"},
        {"name": "date", "type": "interval<System.DateTime>"},
        {"name": "encounter", "type": "Reference"},
        {"name": "outcome", "type": "System.String"},
        {"name": "report", "type": "list<QUICK.Reference>"},
        {"name": "complication", "type": "list<System.Concept>"},
        {"name": "followUp", "type": "System.String"},
        {"name": "relatedItem", "type": "list<QUICK.Procedure.RelatedItem>"},
        {"name": "notes", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ProcedureRequestPriority_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "started", "type": "System.DateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "uid", "type": "oid"},
        {"name": "accession", "type": "Identifier"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "order", "type": "list<QUICK.Reference>"},
        {"name": "modalityList", "type": "list<QUICK.ImagingModality>"},
        {"name": "referrer", "type": "Reference"},
        {"name": "availability", "type": "InstanceAvailability"},
        {"name": "url", "type": "System.Uri"},
        {"name": "numberOfSeries", "type": "System.Integer"},
        {"name": "numberOfInstances", "type": "System.Integer"},
        {"name": "clinicalInformation", "type": "System.String"},
        {"name": "procedure", "type": "list<System.Code>"},
        {"name": "interpreter", "type": "Reference"},
        {"name": "description", "type": "System.String"},
        {"name": "series", "type": "list<QUICK.ImagingStudy.Series>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispenseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "MedicationDispenseStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-observation",
      "label": "Observation",
      "primaryCodePath": "name",
      "element": [
        {"name": "name", "type": "System.Concept"},
        {"name": "valueQuantity", "type": "System.Quantity"},
        {"name": "dataAbsentReason", "type": "DataAbsentReason"},
        {"name": "interpretation", "type": "System.Concept"},
        {"name": "comments", "type": "System.String"},
        {"name": "issued", "type": "System.DateTime"},
        {"name": "status", "type": "ObservationStatus"},
        {"name": "reliability", "type": "ObservationReliability"},
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "subject", "type": "Reference"},
        {"name": "specimen", "type": "Reference"},
        {"name": "performer", "type": "list<QUICK.Reference>"},
        {"name": "encounter", "type": "Reference"},
        {
          "name": "referenceRange",
          "type": "list<QUICK.Observation.ReferenceRange>"
        },
        {"name": "related", "type": "list<QUICK.Observation.Related>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEventOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SecurityEventOutcome_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ReferralStatus_list"},
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-diagnosticorder",
      "label": "DiagnosticOrder",
      "primaryCodePath": "item[].code",
      "element": [
        {"name": "subject", "type": "Reference"},
        {"name": "orderer", "type": "Reference"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "encounter", "type": "Reference"},
        {"name": "clinicalNotes", "type": "System.String"},
        {"name": "supportingInformation", "type": "list<QUICK.Reference>"},
        {"name": "specimen", "type": "list<QUICK.Reference>"},
        {"name": "status", "type": "DiagnosticOrderStatus"},
        {"name": "priority", "type": "DiagnosticOrderPriority"},
        {"name": "event", "type": "list<QUICK.DiagnosticOrder.Event>"},
        {"name": "item", "type": "list<QUICK.DiagnosticOrder.Item>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Duration",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id_primitive"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "System.QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.Uri"},
        {"name": "code", "type": "code"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "CompositionAttestationMode_list"},
    {
      "type": "ClassInfo",
      "name": "ObservationRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ObservationRelationshipType_list"}
    },
    {"type": "SimpleTypeInfo", "name": "oid_primitive"},
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
      "element": {"name": "value", "type": "QuestionnaireAnswersStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SupplyDispenseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SupplyDispenseStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Constraint",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "key", "type": "id"},
        {"name": "name", "type": "System.String"},
        {"name": "severity", "type": "ConstraintSeverity"},
        {"name": "human", "type": "System.String"},
        {"name": "xpath", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "oid",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "oid_primitive"}
    },
    {
      "type": "ClassInfo",
      "name": "CompositionAttestationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "CompositionAttestationMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "AddressUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AddressUse_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ConformanceStatementStatus_list"},
    {
      "type": "ClassInfo",
      "name": "DocumentReferenceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DocumentReferenceStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-immunization-recommendation",
      "label": "ImmunizationRecommendation",
      "primaryCodePath": "recommendation[].vaccineType",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "Reference"},
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
      "element": {"name": "value", "type": "MessageEvent_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Period",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ResponseType_list"},
    {
      "type": "ClassInfo",
      "name": "ValueSet.Expansion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "timestamp", "type": "System.DateTime"},
        {"name": "contains", "type": "list<QUICK.ValueSet.Contains>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Simple",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "CarePlanActivityCategory"},
        {"name": "code", "type": "System.Concept"},
        {"name": "location", "type": "Reference"},
        {"name": "performer", "type": "list<QUICK.Reference>"},
        {"name": "product", "type": "Reference"},
        {"name": "dailyAmount", "type": "System.Quantity"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "details", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Goal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "System.String"},
        {"name": "status", "type": "CarePlanGoalStatus"},
        {"name": "notes", "type": "System.String"},
        {"name": "concern", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExtensionDefinition",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.Uri"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "System.String"},
        {"name": "display", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "description", "type": "System.String"},
        {"name": "code", "type": "list<System.Code>"},
        {"name": "status", "type": "ResourceProfileStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "requirements", "type": "System.String"},
        {"name": "mapping", "type": "list<QUICK.ExtensionDefinition.Mapping>"},
        {"name": "contextType", "type": "ExtensionContext"},
        {"name": "context", "type": "list<System.String>"},
        {"name": "element", "type": "list<QUICK.ElementDefinition>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NarrativeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "NarrativeStatus_list"}
    },
    {"type": "SimpleTypeInfo", "name": "AllergyIntoleranceStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Condition.DueTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "codeableConcept", "type": "System.Concept"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "GroupType_list"},
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
    {"type": "SimpleTypeInfo", "name": "NamingSystemStatus_list"},
    {
      "type": "ClassInfo",
      "name": "NamingSystem.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ProvenanceEntityRole_list"},
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "diagnosis", "type": "System.Code"}
      ]
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
    {"type": "SimpleTypeInfo", "name": "Measmnt_Principle_list"},
    {
      "type": "ClassInfo",
      "name": "Conformance.Document",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "DocumentMode"},
        {"name": "documentation", "type": "System.String"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Timing.Repeat",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "frequency", "type": "System.Integer"},
        {"name": "when", "type": "EventTiming"},
        {"name": "duration", "type": "System.Decimal"},
        {"name": "units", "type": "UnitsOfTime"},
        {"name": "count", "type": "System.Integer"},
        {"name": "end", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Subdetail",
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
        {"name": "slicing", "type": "ElementDefinition.Slicing"},
        {"name": "short", "type": "System.String"},
        {"name": "formal", "type": "System.String"},
        {"name": "comments", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "synonym", "type": "list<System.String>"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "type", "type": "list<QUICK.ElementDefinition.Type>"},
        {"name": "nameReference", "type": "System.String"},
        {"name": "meaningWhenMissing", "type": "System.String"},
        {"name": "maxLength", "type": "System.Integer"},
        {"name": "condition", "type": "list<QUICK.id>"},
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
      "name": "SupportingDocumentation",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "target", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "request", "type": "Reference"},
        {"name": "responseIdentifier", "type": "Identifier"},
        {"name": "response", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {"name": "detail", "type": "list<QUICK.SupportingDocumentation.Detail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Concept",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "abstract", "type": "System.Boolean"},
        {"name": "display", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "designation", "type": "list<QUICK.ValueSet.Designation>"},
        {"name": "concept", "type": "list<QUICK.ValueSet.Concept>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "AllergyIntoleranceCertainty_list"},
    {
      "type": "ClassInfo",
      "name": "FilterOperator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "FilterOperator_list"}
    },
    {
      "type": "ClassInfo",
      "name": "IssueSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "IssueSeverity_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SlotStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SlotStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "MaritalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "MaritalStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "DataElement.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uri", "type": "System.Uri"},
        {"name": "name", "type": "System.String"},
        {"name": "comments", "type": "System.String"},
        {"name": "map", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "DocumentMode_list"},
    {"type": "SimpleTypeInfo", "name": "OperationParameterUse_list"},
    {
      "type": "ClassInfo",
      "name": "RiskAssessment",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "subject", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "condition", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "method", "type": "System.Concept"},
        {"name": "basis", "type": "list<QUICK.Reference>"},
        {"name": "prediction", "type": "list<QUICK.RiskAssessment.Prediction>"},
        {"name": "mitigation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElement.Binding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "isExtensible", "type": "System.Boolean"},
        {"name": "conformance", "type": "BindingConformance"},
        {"name": "description", "type": "System.String"},
        {"name": "valueSet", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "DiagnosticReportStatus_list"},
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "target", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "use", "type": "Use"},
        {"name": "priority", "type": "System.Code"},
        {"name": "fundsReserve", "type": "System.Code"},
        {"name": "enterer", "type": "Reference"},
        {"name": "facility", "type": "Reference"},
        {"name": "payee", "type": "OralHealthClaim.Payee"},
        {"name": "referral", "type": "Reference"},
        {"name": "diagnosis", "type": "list<QUICK.OralHealthClaim.Diagnosis>"},
        {"name": "condition", "type": "list<System.Code>"},
        {"name": "patient", "type": "Reference"},
        {"name": "coverage", "type": "list<QUICK.OralHealthClaim.Coverage>"},
        {"name": "exception", "type": "list<System.Code>"},
        {"name": "school", "type": "System.String"},
        {"name": "accident", "type": "System.DateTime"},
        {"name": "accidentType", "type": "System.Code"},
        {"name": "interventionException", "type": "list<System.Code>"},
        {
          "name": "missingteeth",
          "type": "list<QUICK.OralHealthClaim.Missingteeth>"
        },
        {"name": "orthoPlan", "type": "OralHealthClaim.OrthoPlan"},
        {"name": "item", "type": "list<QUICK.OralHealthClaim.Item>"},
        {"name": "additionalMaterials", "type": "list<System.Code>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Availability",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "actor", "type": "Reference"},
        {"name": "planningHorizon", "type": "interval<System.DateTime>"},
        {"name": "comment", "type": "System.String"},
        {"name": "lastModified", "type": "System.DateTime"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "NutritionOrderStatus_list"},
    {
      "type": "ClassInfo",
      "name": "MedicationPrescriptionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "MedicationPrescriptionStatus_list"}
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
        {"name": "supportingImmunization", "type": "list<QUICK.Reference>"},
        {
          "name": "supportingPatientInformation",
          "type": "list<QUICK.Reference>"
        }
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ProcedureRequestMode_list"},
    {"type": "SimpleTypeInfo", "name": "SecurityEventObjectLifecycle_list"},
    {"type": "SimpleTypeInfo", "name": "EncounterClass_list"},
    {
      "type": "ClassInfo",
      "name": "ConceptMapEquivalence",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ConceptMapEquivalence_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Distance",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id_primitive"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "System.QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.Uri"},
        {"name": "code", "type": "code"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SubscriptionChannelType_list"},
    {"type": "SimpleTypeInfo", "name": "DeviceUseRequestStatus_list"},
    {"type": "SimpleTypeInfo", "name": "SampledDataDataType_primitive"},
    {"type": "SimpleTypeInfo", "name": "CompositionStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-condition",
      "label": "Condition",
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "asserter", "type": "Reference"},
        {"name": "dateAsserted", "type": "System.DateTime"},
        {"name": "onsetDateTime", "type": "System.DateTime"},
        {"name": "abatementDateTime", "type": "System.DateTime"},
        {"name": "code", "type": "System.Concept"},
        {"name": "category", "type": "System.Concept"},
        {"name": "status", "type": "ConditionStatus"},
        {"name": "certainty", "type": "System.Concept"},
        {"name": "severity", "type": "System.Concept"},
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
        {"name": "subject", "type": "list<QUICK.Reference>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "subtype", "type": "list<System.Concept>"},
        {"name": "issued", "type": "System.DateTime"},
        {"name": "applies", "type": "interval<System.DateTime>"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "Money"},
        {"name": "author", "type": "list<QUICK.Reference>"},
        {"name": "grantor", "type": "list<QUICK.Reference>"},
        {"name": "grantee", "type": "list<QUICK.Reference>"},
        {"name": "witness", "type": "list<QUICK.Reference>"},
        {"name": "executor", "type": "list<QUICK.Reference>"},
        {"name": "notary", "type": "list<QUICK.Reference>"},
        {"name": "signer", "type": "list<QUICK.Contract.Signer>"},
        {"name": "term", "type": "list<QUICK.Contract.Term>"},
        {"name": "friendly", "type": "Attachment"},
        {"name": "legal", "type": "Attachment"},
        {"name": "rule", "type": "Attachment"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ConstraintSeverity_list"},
    {
      "type": "ClassInfo",
      "name": "RestfulConformanceMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "RestfulConformanceMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SearchParamType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SearchParamType_list"}
    },
    {"type": "SimpleTypeInfo", "name": "IdentifierUse_list"},
    {"type": "SimpleTypeInfo", "name": "ParticipantRequired_list"},
    {
      "type": "ClassInfo",
      "name": "Condition.Stage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "summary", "type": "System.Concept"},
        {"name": "assessment", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SupplyStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "IdentifierUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "IdentifierUse_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "url", "type": "System.Uri"}
    },
    {"type": "SimpleTypeInfo", "name": "QueryOutcome_list"},
    {
      "type": "ClassInfo",
      "name": "Specimen.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relationship", "type": "HierarchicalRelationshipType"},
        {"name": "target", "type": "list<QUICK.Reference>"}
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
        {"name": "section", "type": "list<QUICK.Composition.Section>"},
        {"name": "content", "type": "Reference"}
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
        {"name": "uid", "type": "oid"},
        {"name": "description", "type": "System.String"},
        {"name": "numberOfInstances", "type": "System.Integer"},
        {"name": "availability", "type": "InstanceAvailability"},
        {"name": "url", "type": "System.Uri"},
        {"name": "bodySite", "type": "System.Code"},
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
        {"name": "issuer", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationParameterUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "OperationParameterUse_list"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AllergyIntoleranceCategory_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "individual", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-medicationstatement",
      "label": "MedicationStatement",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "Reference"},
        {"name": "wasNotGiven", "type": "System.Boolean"},
        {"name": "reasonNotGiven", "type": "list<System.Concept>"},
        {"name": "whenGiven", "type": "interval<System.DateTime>"},
        {"name": "medication", "type": "Reference"},
        {"name": "device", "type": "list<QUICK.Reference>"},
        {"name": "dosage", "type": "list<QUICK.MedicationStatement.Dosage>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Slicing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "discriminator", "type": "list<QUICK.id>"},
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
        {"name": "source", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
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
      "name": "NamingSystemStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "NamingSystemStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "CarePlanGoalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "CarePlanGoalStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Service",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Concept"},
        {"name": "address", "type": "System.String"},
        {"name": "parameter", "type": "list<QUICK.DocumentReference.Parameter>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Use",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "Use_list"}
    },
    {
      "type": "ClassInfo",
      "name": "BindingConformance",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "BindingConformance_list"}
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
        {"name": "status", "type": "DiagnosticOrderStatus"},
        {"name": "description", "type": "System.Concept"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contraindication",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "patient", "type": "Reference"},
        {"name": "category", "type": "System.Concept"},
        {"name": "severity", "type": "code"},
        {"name": "implicated", "type": "list<QUICK.Reference>"},
        {"name": "detail", "type": "System.String"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "reference", "type": "System.Uri"},
        {
          "name": "mitigation",
          "type": "list<QUICK.Contraindication.Mitigation>"
        }
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
      "element": {"name": "value", "type": "ConstraintSeverity_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Reversal.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "focal", "type": "System.Boolean"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "System.String"},
        {"name": "relationship", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ObservationRelationshipType"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SecurityEventAction_list"},
    {
      "type": "ClassInfo",
      "name": "time",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "time_primitive"}
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEventAction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SecurityEventAction_list"}
    },
    {"type": "SimpleTypeInfo", "name": "AllergyIntoleranceCriticality_list"},
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
        {"name": "code", "type": "list<System.Concept>"},
        {"name": "nutrients", "type": "list<QUICK.NutritionOrder.Nutrients>"},
        {"name": "texture", "type": "list<QUICK.NutritionOrder.Texture>"},
        {"name": "fluidConsistencyType", "type": "list<System.Concept>"},
        {"name": "description", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "person", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "DataType_list"},
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.Prosthesis",
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
      "name": "Bundle",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "BundleType"},
        {"name": "base", "type": "System.Uri"},
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
        {"name": "element", "type": "System.Uri"},
        {"name": "codeSystem", "type": "System.Uri"},
        {"name": "code", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConformanceEventMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ConformanceEventMode_list"}
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
      "name": "LinkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "LinkType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Contraindication.Mitigation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "action", "type": "System.Concept"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystemIdentifierType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "NamingSystemIdentifierType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEvent.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "list<System.Concept>"},
        {"name": "reference", "type": "Reference"},
        {"name": "userId", "type": "System.String"},
        {"name": "altId", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "requestor", "type": "System.Boolean"},
        {"name": "media", "type": "System.Code"},
        {"name": "network", "type": "SecurityEvent.Network"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Include",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "System.Uri"},
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
        {"name": "base", "type": "System.Uri"},
        {"name": "status", "type": "BundleEntryStatus"},
        {"name": "search", "type": "System.Uri"},
        {"name": "score", "type": "System.Decimal"},
        {"name": "deleted", "type": "Bundle.Deleted"},
        {"name": "resource", "type": "ResourceContainer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-familyhistory",
      "label": "FamilyHistory",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "note", "type": "System.String"},
        {"name": "relation", "type": "list<QUICK.FamilyHistory.Relation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ListMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "type", "type": "System.Concept"},
        {"name": "source", "type": "list<QUICK.Specimen.Source>"},
        {"name": "subject", "type": "Reference"},
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
      "element": {"name": "value", "type": "MedicationKind_list"}
    },
    {
      "type": "ClassInfo",
      "name": "FHIRDefinedType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "FHIRDefinedType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Profile.Snapshot",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "element", "type": "list<QUICK.ElementDefinition>"}
    },
    {"type": "SimpleTypeInfo", "name": "HierarchicalRelationshipType_list"},
    {
      "type": "ClassInfo",
      "name": "Subscription.Channel",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "SubscriptionChannelType"},
        {"name": "url", "type": "System.Uri"},
        {"name": "payload", "type": "System.String"},
        {"name": "header", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Age",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id_primitive"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "System.QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.Uri"},
        {"name": "code", "type": "code"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "AlertStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Query.Response",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.Uri"},
        {"name": "outcome", "type": "QueryOutcome"},
        {"name": "total", "type": "System.Integer"},
        {"name": "parameter", "type": "list<QUICK.Extension>"},
        {"name": "first", "type": "list<QUICK.Extension>"},
        {"name": "previous", "type": "list<QUICK.Extension>"},
        {"name": "next", "type": "list<QUICK.Extension>"},
        {"name": "last", "type": "list<QUICK.Extension>"},
        {"name": "reference", "type": "list<QUICK.Reference>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ResourceVersionPolicy_list"},
    {
      "type": "ClassInfo",
      "name": "SecurityEventObjectType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SecurityEventObjectType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Concept1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "display", "type": "System.String"},
        {"name": "designation", "type": "list<QUICK.ValueSet.Designation>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "MediaType_list"},
    {"type": "SimpleTypeInfo", "name": "MaritalStatus_list"},
    {"type": "SimpleTypeInfo", "name": "MedicationAdministrationStatus_list"},
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
      "name": "ResourceProfileStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ResourceProfileStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "schedule", "type": "Timing"},
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "rate", "type": "Ratio"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ResourceType_list"},
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Supplement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<System.Concept>"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "name", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "TypeRestfulInteraction_list"},
    {"type": "SimpleTypeInfo", "name": "ProcedureRelationshipType_list"},
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
      "name": "ValueSetStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ValueSetStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-medicationadministration",
      "label": "MedicationAdministration",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "status", "type": "MedicationAdministrationStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "practitioner", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "prescription", "type": "Reference"},
        {"name": "wasNotGiven", "type": "System.Boolean"},
        {"name": "reasonNotGiven", "type": "list<System.Concept>"},
        {"name": "medication", "type": "Reference"},
        {"name": "device", "type": "list<QUICK.Reference>"},
        {
          "name": "dosage",
          "type": "list<QUICK.MedicationAdministration.Dosage>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.OrthoPlan",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "start", "type": "System.DateTime"},
        {"name": "examFee", "type": "Money"},
        {"name": "diagnosticFee", "type": "Money"},
        {"name": "initialPayment", "type": "Money"},
        {"name": "durationMonths", "type": "System.Integer"},
        {"name": "paymentCount", "type": "System.Integer"},
        {"name": "periodicPayment", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Eligibility",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "ruleset", "type": "System.Code"},
        {"name": "originalRuleset", "type": "System.Code"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "target", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"}
      ]
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
        {"name": "orderedItem", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "dispense", "type": "list<QUICK.Supply.Dispense>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequest",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "bodySite", "type": "list<System.Concept>"},
        {"name": "status", "type": "DeviceUseRequestStatus"},
        {"name": "mode", "type": "DeviceUseRequestMode"},
        {"name": "device", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "notes", "type": "list<System.String>"},
        {"name": "prnReason", "type": "list<System.Concept>"},
        {"name": "orderedOn", "type": "System.DateTime"},
        {"name": "recordedOn", "type": "System.DateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "priority", "type": "DeviceUseRequestPriority"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.SubDetail",
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
      "name": "OrderResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "request", "type": "Reference"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "who", "type": "Reference"},
        {"name": "code", "type": "OrderOutcomeStatus"},
        {"name": "description", "type": "System.String"},
        {"name": "fulfillment", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DeviceUseRequestPriority_list"}
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
        {"name": "isExtensible", "type": "System.Boolean"},
        {"name": "conformance", "type": "BindingConformance"},
        {"name": "description", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Hospitalization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "preAdmissionIdentifier", "type": "Identifier"},
        {"name": "origin", "type": "Reference"},
        {"name": "admitSource", "type": "System.Concept"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "accomodation", "type": "list<QUICK.Encounter.Accomodation>"},
        {"name": "diet", "type": "System.Concept"},
        {"name": "specialCourtesy", "type": "list<System.Concept>"},
        {"name": "specialArrangement", "type": "list<System.Concept>"},
        {"name": "destination", "type": "Reference"},
        {"name": "dischargeDisposition", "type": "System.Concept"},
        {"name": "dischargeDiagnosis", "type": "Reference"},
        {"name": "reAdmission", "type": "System.Boolean"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SlicingRules_list"},
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrderPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DiagnosticOrderPriority_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEvent",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "SecurityEvent.Event"},
        {
          "name": "participant",
          "type": "list<QUICK.SecurityEvent.Participant>"
        },
        {"name": "source", "type": "SecurityEvent.Source"},
        {"name": "object", "type": "list<QUICK.SecurityEvent.Object>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlanActivityStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "CarePlanActivityStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "import", "type": "list<System.Uri>"},
        {"name": "include", "type": "list<QUICK.ValueSet.Include>"},
        {"name": "exclude", "type": "list<QUICK.ValueSet.Include>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.Dispense",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "MedicationDispenseStatus"},
        {"name": "type", "type": "System.Concept"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "medication", "type": "Reference"},
        {"name": "whenPrepared", "type": "System.DateTime"},
        {"name": "whenHandedOver", "type": "System.DateTime"},
        {"name": "destination", "type": "Reference"},
        {"name": "receiver", "type": "list<QUICK.Reference>"},
        {"name": "dosage", "type": "list<QUICK.MedicationDispense.Dosage>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LocationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "LocationMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "code"},
        {"name": "use", "type": "OperationParameterUse"},
        {"name": "min", "type": "System.Integer"},
        {"name": "max", "type": "System.String"},
        {"name": "documentation", "type": "System.String"},
        {"name": "type", "type": "System.Code"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QueryOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "QueryOutcome_list"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceCriticality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AllergyIntoleranceCriticality_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Media",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "MediaType"},
        {"name": "subtype", "type": "System.Concept"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "created", "type": "System.DateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "operator", "type": "Reference"},
        {"name": "view", "type": "System.Concept"},
        {"name": "deviceName", "type": "System.String"},
        {"name": "height", "type": "System.Integer"},
        {"name": "width", "type": "System.Integer"},
        {"name": "frames", "type": "System.Integer"},
        {"name": "duration", "type": "System.Integer"},
        {"name": "content", "type": "Attachment"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "DocumentReferenceStatus_list"},
    {
      "type": "ClassInfo",
      "name": "CommunicationRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "CommunicationRequestStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistory.Relation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "relationship", "type": "System.Concept"},
        {"name": "note", "type": "System.String"},
        {"name": "condition", "type": "list<QUICK.FamilyHistory.Condition>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResourceDataElementStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ResourceDataElementStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "list<QUICK.Address>"},
        {"name": "partOf", "type": "Reference"},
        {"name": "contact", "type": "list<QUICK.Organization.Contact>"},
        {"name": "location", "type": "list<QUICK.Reference>"},
        {"name": "active", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AllergyIntoleranceType_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ImagingModality_list"},
    {
      "type": "ClassInfo",
      "name": "Contract.Signer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "System.Code"},
        {"name": "singnature", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "Reference"},
        {"name": "amount", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "code"},
        {"name": "use", "type": "System.Code"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DocumentRelationshipType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "SubscriptionChannelType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SubscriptionChannelType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "TypeRestfulInteraction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "TypeRestfulInteraction_list"}
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
    {"type": "SimpleTypeInfo", "name": "ParticipationStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Parameters.Parameter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "resource", "type": "ResourceContainer"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "PropertyRepresentation_list"},
    {
      "type": "ClassInfo",
      "name": "AppointmentResponse",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "appointment", "type": "Reference"},
        {"name": "participantType", "type": "list<System.Concept>"},
        {"name": "individual", "type": "list<QUICK.Reference>"},
        {"name": "participantStatus", "type": "ParticipantStatus"},
        {"name": "comment", "type": "System.String"},
        {"name": "start", "type": "System.DateTime"},
        {"name": "end", "type": "System.DateTime"},
        {"name": "lastModifiedBy", "type": "Reference"},
        {"name": "lastModified", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "uuid",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "uuid_primitive"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "value", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "AllergyIntoleranceCategory_list"},
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Additem",
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
      "name": "ContactPointUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ContactPointUse_list"}
    },
    {"type": "SimpleTypeInfo", "name": "LocationMode_list"},
    {
      "type": "ClassInfo",
      "name": "MedicationAdministrationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {
        "name": "value",
        "type": "MedicationAdministrationStatus_list"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.Explanation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reason", "type": "list<System.Concept>"},
        {"name": "refusalReason", "type": "list<System.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataElement",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "status", "type": "ResourceDataElementStatus"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "name", "type": "System.String"},
        {"name": "category", "type": "list<System.Concept>"},
        {"name": "code", "type": "list<System.Code>"},
        {"name": "question", "type": "System.String"},
        {"name": "definition", "type": "System.String"},
        {"name": "comments", "type": "System.String"},
        {"name": "requirements", "type": "System.String"},
        {"name": "synonym", "type": "list<System.String>"},
        {"name": "type", "type": "code"},
        {"name": "maxLength", "type": "System.Integer"},
        {"name": "units", "type": "System.Concept"},
        {"name": "binding", "type": "DataElement.Binding"},
        {"name": "mapping", "type": "list<QUICK.DataElement.Mapping>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "FilterOperator_list"},
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.EnteralFormula",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "baseFormulaType", "type": "System.Concept"},
        {"name": "additiveType", "type": "list<System.Concept>"},
        {"name": "caloricDensity", "type": "list<System.Quantity>"},
        {"name": "routeofAdministration", "type": "list<System.Concept>"},
        {"name": "rate", "type": "list<System.Quantity>"},
        {"name": "baseFormulaName", "type": "System.String"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ExtensionContext_list"},
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
      "element": {"name": "value", "type": "DiagnosticReportStatus_list"}
    },
    {"type": "SimpleTypeInfo", "name": "CommunicationRequestStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Conformance.SearchParam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "definition", "type": "System.Uri"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "documentation", "type": "System.String"},
        {"name": "target", "type": "list<QUICK.code>"},
        {"name": "chain", "type": "list<System.String>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Profile",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "System.Uri"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "description", "type": "System.String"},
        {"name": "code", "type": "list<System.Code>"},
        {"name": "status", "type": "ResourceProfileStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "requirements", "type": "System.String"},
        {"name": "fhirVersion", "type": "id"},
        {"name": "mapping", "type": "list<QUICK.Profile.Mapping>"},
        {"name": "type", "type": "code"},
        {"name": "base", "type": "System.Uri"},
        {"name": "snapshot", "type": "Profile.Snapshot"},
        {"name": "differential", "type": "Profile.Snapshot"}
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
        {"name": "site", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "doseQuantity", "type": "System.Quantity"},
        {"name": "rate", "type": "Ratio"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "type", "type": "System.Code"},
        {"name": "provider", "type": "Reference"},
        {"name": "service", "type": "System.Code"},
        {"name": "serviceDate", "type": "System.DateTime"},
        {"name": "quantity", "type": "System.Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "System.Decimal"},
        {"name": "points", "type": "System.Decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "System.Code"},
        {"name": "bodySite", "type": "System.Code"},
        {"name": "subsite", "type": "list<System.Code>"},
        {"name": "modifier", "type": "list<System.Code>"},
        {"name": "detail", "type": "list<QUICK.OralHealthClaim.Detail>"},
        {"name": "prosthesis", "type": "OralHealthClaim.Prosthesis"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group.Characteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "exclude", "type": "System.Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OrderOutcomeStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "OrderOutcomeStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "HierarchicalRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "HierarchicalRelationshipType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "BundleEntryStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "BundleEntryStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ParticipantStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ParticipantStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-procedurerequest",
      "label": "ProcedureRequest",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "type", "type": "System.Concept"},
        {"name": "bodySite", "type": "list<System.Concept>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "encounter", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "status", "type": "System.String"},
        {"name": "mode", "type": "ProcedureRequestMode"},
        {"name": "notes", "type": "list<System.String>"},
        {"name": "orderedOn", "type": "System.DateTime"},
        {"name": "orderer", "type": "Reference"},
        {"name": "priority", "type": "ProcedureRequestPriority"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "InstanceAvailability_list"},
    {"type": "SimpleTypeInfo", "name": "MessageEvent_list"},
    {"type": "SimpleTypeInfo", "name": "NamingSystemType_list"},
    {
      "type": "ClassInfo",
      "name": "EncounterClass",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "EncounterClass_list"}
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Nutrients",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "modifier", "type": "System.Concept"}
    },
    {
      "type": "ClassInfo",
      "name": "DataType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DataType_list"}
    },
    {"type": "SimpleTypeInfo", "name": "CarePlanActivityStatus_list"},
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
        {"name": "focus", "type": "code"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "documentation", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "System.Integer"},
        {"name": "focal", "type": "System.Boolean"},
        {"name": "coverage", "type": "Reference"},
        {"name": "businessArrangement", "type": "System.String"},
        {"name": "relationship", "type": "System.Code"},
        {"name": "preauthref", "type": "list<System.String>"},
        {"name": "claimResponse", "type": "Reference"},
        {"name": "originalRuleset", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relation", "type": "System.String"},
        {"name": "url", "type": "System.Uri"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "LocationStatus_list"},
    {
      "type": "ClassInfo",
      "name": "Conformance.Implementation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "System.String"},
        {"name": "url", "type": "System.Uri"}
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
        {"name": "item", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Range",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "low", "type": "System.Quantity"},
        {"name": "high", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "EncounterState_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ProcedureRelationshipType_list"}
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireAnswers.Answer",
      "baseType": "BackboneElement",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Certificate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "blob", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LocationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "LocationStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "daysOfWeek", "type": "list<System.Concept>"},
        {"name": "allDay", "type": "System.Boolean"},
        {"name": "availableStartTime", "type": "System.DateTime"},
        {"name": "availableEndTime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "Reference"},
        {"name": "amount", "type": "System.Quantity"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ObservationStatus_list"},
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
    {"type": "SimpleTypeInfo", "name": "SecurityEventOutcome_list"},
    {
      "type": "ClassInfo",
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "bodySite", "type": "list<System.Concept>"},
        {"name": "whenUsed", "type": "interval<System.DateTime>"},
        {"name": "device", "type": "Reference"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "indication", "type": "list<System.Concept>"},
        {"name": "notes", "type": "list<System.String>"},
        {"name": "recordedOn", "type": "System.DateTime"},
        {"name": "subject", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Count",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id_primitive"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "System.QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.Uri"},
        {"name": "code", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Query",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.Uri"},
        {"name": "parameter", "type": "list<QUICK.Extension>"},
        {"name": "response", "type": "Query.Response"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageSignificanceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "MessageSignificanceCategory_list"}
    },
    {"type": "SimpleTypeInfo", "name": "System.QuantityComparator_list"},
    {
      "type": "ClassInfo",
      "name": "Conformance.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "System.String"},
        {"name": "definition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Binary",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
        {"name": "contentType", "type": "code"},
        {"name": "content", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-careplan",
      "label": "CarePlan",
      "primaryCodePath": "concern.code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "patient", "type": "Reference"},
        {"name": "status", "type": "CarePlanStatus"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "modified", "type": "System.DateTime"},
        {"name": "concern", "type": "list<QUICK.Reference>"},
        {"name": "participant", "type": "list<QUICK.CarePlan.Participant>"},
        {"name": "goal", "type": "list<QUICK.CarePlan.Goal>"},
        {"name": "activity", "type": "list<QUICK.CarePlan.Activity>"},
        {"name": "notes", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.RelatesTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "DocumentRelationshipType"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SubscriptionStatus_list"},
    {"type": "SimpleTypeInfo", "name": "Modality_list"},
    {
      "type": "ClassInfo",
      "name": "SystemRestfulInteraction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SystemRestfulInteraction_list"}
    },
    {
      "type": "ClassInfo",
      "name": "AnswerFormat",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AnswerFormat_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.Uri"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "purpose", "type": "System.String"},
        {"name": "immutable", "type": "System.Boolean"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "description", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "status", "type": "ValueSetStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "extensible", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "stableDate", "type": "System.DateTime"},
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
        {"name": "code", "type": "code"},
        {"name": "profile", "type": "System.Uri"},
        {"name": "aggregation", "type": "list<QUICK.AggregationMode>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "description", "type": "System.String"},
        {"name": "status", "type": "ConformanceStatementStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "software", "type": "Conformance.Software"},
        {"name": "implementation", "type": "Conformance.Implementation"},
        {"name": "fhirVersion", "type": "id"},
        {"name": "acceptUnknown", "type": "System.Boolean"},
        {"name": "format", "type": "list<QUICK.code>"},
        {"name": "profile", "type": "list<QUICK.Reference>"},
        {"name": "rest", "type": "list<QUICK.Conformance.Rest>"},
        {"name": "messaging", "type": "list<QUICK.Conformance.Messaging>"},
        {"name": "document", "type": "list<QUICK.Conformance.Document>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "System.String"},
        {"name": "version", "type": "System.String"},
        {"name": "name", "type": "System.String"},
        {"name": "publisher", "type": "System.String"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "description", "type": "System.String"},
        {"name": "copyright", "type": "System.String"},
        {"name": "status", "type": "ValueSetStatus"},
        {"name": "experimental", "type": "System.Boolean"},
        {"name": "date", "type": "System.DateTime"},
        {"name": "element", "type": "list<QUICK.ConceptMap.Element>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "DataAbsentReason_list"},
    {"type": "SimpleTypeInfo", "name": "FHIRDefinedType_list"},
    {
      "type": "ClassInfo",
      "name": "NutritionOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-nutritionorder",
      "label": "NutritionOrder",
      "primaryCodePath":
          "item[].oralDiet.type|item[].supplement.type|item[].enteralFormula.baseFormulaType|item[].enteralFormula.additiveType",
      "element": [
        {"name": "subject", "type": "Reference"},
        {"name": "orderer", "type": "Reference"},
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateTime", "type": "System.DateTime"},
        {"name": "allergyIntolerance", "type": "list<QUICK.Reference>"},
        {"name": "foodPreferenceModifier", "type": "list<System.Concept>"},
        {"name": "excludeFoodModifier", "type": "list<System.Concept>"},
        {"name": "item", "type": "list<QUICK.NutritionOrder.Item>"},
        {"name": "status", "type": "NutritionOrderStatus"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "SpecialValues_list"},
    {
      "type": "ClassInfo",
      "name": "Money",
      "baseType": "System.Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id_primitive"},
        {"name": "value", "type": "System.Decimal"},
        {"name": "comparator", "type": "System.QuantityComparator"},
        {"name": "units", "type": "System.String"},
        {"name": "system", "type": "System.Uri"},
        {"name": "code", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-patient",
      "label": "Patient",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "list<QUICK.HumanName>"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "gender", "type": "System.String"},
        {"name": "birthDate", "type": "System.DateTime"},
        {"name": "address", "type": "list<QUICK.Address>"},
        {"name": "maritalStatus", "type": "System.Concept"},
        {"name": "photo", "type": "list<QUICK.Attachment>"},
        {"name": "contact", "type": "list<QUICK.Patient.Contact>"},
        {"name": "animal", "type": "Patient.Animal"},
        {"name": "communication", "type": "list<System.Concept>"},
        {"name": "careProvider", "type": "list<QUICK.Reference>"},
        {"name": "managingOrganization", "type": "Reference"},
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
      "identifier": "cqf-medicationprescription",
      "label": "MedicationPrescription",
      "primaryCodePath": "medication.code",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "dateWritten", "type": "System.DateTime"},
        {"name": "status", "type": "MedicationPrescriptionStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "prescriber", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "medication", "type": "Reference"},
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
      "name": "ElementDefinition.Mapping",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "id"},
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
        {"name": "specimenQuantity", "type": "System.Quantity"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "System.Uri"},
    {
      "type": "ClassInfo",
      "name": "ValueSet.Define",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "System.Uri"},
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
      "element": {"name": "value", "type": "ObservationStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntoleranceCertainty",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "AllergyIntoleranceCertainty_list"}
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "id"},
        {"name": "timestamp", "type": "System.DateTime"},
        {"name": "event", "type": "System.Code"},
        {"name": "response", "type": "MessageHeader.Response"},
        {"name": "source", "type": "MessageHeader.Source"},
        {
          "name": "destination",
          "type": "list<QUICK.MessageHeader.Destination>"
        },
        {"name": "enterer", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "receiver", "type": "Reference"},
        {"name": "responsible", "type": "Reference"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "data", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": {"name": "issue", "type": "list<QUICK.OperationOutcome.Issue>"}
    },
    {"type": "SimpleTypeInfo", "name": "NameUse_list"},
    {
      "type": "ClassInfo",
      "name": "ConditionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ConditionStatus_list"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationPrescription.Dispense",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "medication", "type": "Reference"},
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
      "element": {"name": "value", "type": "ResourceVersionPolicy_list"}
    },
    {
      "type": "ClassInfo",
      "name": "ReferralStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ReferralStatus_list"}
    },
    {"type": "SimpleTypeInfo", "name": "ConceptMapEquivalence_list"},
    {
      "type": "ClassInfo",
      "name": "Element",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id_primitive"},
        {"name": "extension", "type": "list<QUICK.Extension>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ParticipantRequired",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ParticipantRequired_list"}
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "isInEffect", "type": "System.Boolean"},
        {"name": "oralDiet", "type": "NutritionOrder.OralDiet"},
        {"name": "supplement", "type": "NutritionOrder.Supplement"},
        {"name": "enteralFormula", "type": "NutritionOrder.EnteralFormula"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "id",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "id_primitive"}
    },
    {"type": "SimpleTypeInfo", "name": "time_primitive"},
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "list<System.Concept>"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "facilityType", "type": "System.Concept"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "MedicationDispenseStatus_list"},
    {"type": "SimpleTypeInfo", "name": "ContactPointUse_list"},
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrder.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Concept"},
        {"name": "specimen", "type": "list<QUICK.Reference>"},
        {"name": "bodySite", "type": "System.Concept"},
        {"name": "status", "type": "DiagnosticOrderStatus"},
        {"name": "event", "type": "list<QUICK.DiagnosticOrder.Event>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "EncounterState_list"},
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequestMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "DeviceUseRequestMode_list"}
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.NotAvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "System.String"},
        {"name": "startDate", "type": "System.DateTime"},
        {"name": "endDate", "type": "System.DateTime"}
      ]
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
        {"name": "suppliedItem", "type": "Reference"},
        {"name": "supplier", "type": "Reference"},
        {"name": "whenPrepared", "type": "interval<System.DateTime>"},
        {"name": "whenHandedOver", "type": "interval<System.DateTime>"},
        {"name": "destination", "type": "Reference"},
        {"name": "receiver", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": false,
      "element": [
        {"name": "issuer", "type": "Reference"},
        {"name": "period", "type": "interval<System.DateTime>"},
        {"name": "type", "type": "System.Code"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "group", "type": "System.String"},
        {"name": "plan", "type": "System.String"},
        {"name": "subplan", "type": "System.String"},
        {"name": "dependent", "type": "System.Integer"},
        {"name": "sequence", "type": "System.Integer"},
        {"name": "subscriber", "type": "Reference"},
        {"name": "network", "type": "Identifier"},
        {"name": "contract", "type": "list<QUICK.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.Response",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "id"},
        {"name": "code", "type": "ResponseType"},
        {"name": "details", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OralHealthClaim.Missingteeth",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "tooth", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "extractiondate", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SecurityEventObjectRole",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SecurityEventObjectRole_list"}
    },
    {"type": "SimpleTypeInfo", "name": "uuid_primitive"},
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-diagnosticreport",
      "label": "DiagnosticReport",
      "primaryCodePath": "name",
      "element": [
        {"name": "name", "type": "System.Concept"},
        {"name": "status", "type": "DiagnosticReportStatus"},
        {"name": "issued", "type": "System.DateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "requestDetail", "type": "list<QUICK.Reference>"},
        {"name": "serviceCategory", "type": "System.Concept"},
        {"name": "specimen", "type": "list<QUICK.Reference>"},
        {"name": "result", "type": "list<QUICK.Reference>"},
        {"name": "imagingStudy", "type": "list<QUICK.Reference>"},
        {"name": "image", "type": "list<QUICK.DiagnosticReport.Image>"},
        {"name": "conclusion", "type": "System.String"},
        {"name": "codedDiagnosis", "type": "list<System.Concept>"},
        {"name": "presentedForm", "type": "list<QUICK.Attachment>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubscriptionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SubscriptionStatus_list"}
    },
    {"type": "SimpleTypeInfo", "name": "DeviceUseRequestMode_list"},
    {
      "type": "ClassInfo",
      "name": "SecurityEventObjectLifecycle",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "SecurityEventObjectLifecycle_list"}
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Accomodation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "bed", "type": "Reference"},
        {"name": "period", "type": "interval<System.DateTime>"}
      ]
    },
    {"type": "SimpleTypeInfo", "name": "ListMode_list"},
    {
      "type": "ClassInfo",
      "name": "CarePlan.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "System.Concept"},
        {"name": "member", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequestMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "CommunicationRequestMode_list"}
    },
    {"type": "SimpleTypeInfo", "name": "DocumentRelationshipType_list"},
    {
      "type": "ClassInfo",
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "identifier": "cqf-location",
      "label": "Location",
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<QUICK.Identifier>"},
        {"name": "name", "type": "System.String"},
        {"name": "description", "type": "System.String"},
        {"name": "type", "type": "System.Concept"},
        {"name": "telecom", "type": "list<QUICK.ContactPoint>"},
        {"name": "address", "type": "Address"},
        {"name": "physicalType", "type": "System.Concept"},
        {"name": "position", "type": "Location.Position"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "status", "type": "LocationStatus"},
        {"name": "partOf", "type": "Reference"},
        {"name": "mode", "type": "LocationMode"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProvenanceEntityRole",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "ProvenanceEntityRole_list"}
    },
    {"type": "SimpleTypeInfo", "name": "SecurityEventObjectType_list"}
  ]
});
