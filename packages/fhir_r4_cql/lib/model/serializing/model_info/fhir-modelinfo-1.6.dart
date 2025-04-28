import 'package:fhir_r4_cql/fhir_r4_cql.dart';


final fhirmodelinfo16 = ModelInfo.fromJson({
  "name": "FHIR",
  "url": "http://hl7.org/fhir",
  "targetQualifier": "fhir",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate.value",
  "version": "1.6",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Count",
      "baseType": "Quantity",
      "retrievable": false
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
      "name": "NamingSystem.UniqueId",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "NamingSystemIdentifierType"},
        {"name": "value", "type": "string"},
        {"name": "preferred", "type": "boolean"},
        {"name": "comment", "type": "string"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "date",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Date"}
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
      "name": "DetectedIssue.Mitigation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "action", "type": "CodeableConcept"},
        {"name": "date", "type": "dateTime"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "example", "type": "boolean"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "acronym", "type": "string"},
        {"name": "sourceUri", "type": "uri"},
        {"name": "sourceReference", "type": "Reference"},
        {"name": "exampleFor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "string"},
        {"name": "siteCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteReference", "type": "Reference"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "dose", "type": "Quantity"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateQuantity", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.Finding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "itemCodeableConcept", "type": "CodeableConcept"},
        {"name": "itemReference", "type": "Reference"},
        {"name": "cause", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GuidanceResponse.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionIdentifier", "type": "Identifier"},
        {"name": "label", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "textEquivalent", "type": "string"},
        {"name": "concept", "type": "list<FHIR.CodeableConcept>"},
        {"name": "documentation", "type": "list<FHIR.RelatedResource>"},
        {"name": "relatedAction", "type": "GuidanceResponse.RelatedAction"},
        {"name": "timingDateTime", "type": "dateTime"},
        {"name": "timingPeriod", "type": "Period"},
        {"name": "timingDuration", "type": "Duration"},
        {"name": "timingRange", "type": "Range"},
        {"name": "participant", "type": "list<FHIR.Reference>"},
        {"name": "type", "type": "Coding"},
        {"name": "groupingBehavior", "type": "code"},
        {"name": "selectionBehavior", "type": "code"},
        {"name": "requiredBehavior", "type": "code"},
        {"name": "precheckBehavior", "type": "code"},
        {"name": "cardinalityBehavior", "type": "code"},
        {"name": "resource", "type": "Reference"},
        {"name": "action", "type": "list<FHIR.GuidanceResponse.Action>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionPrecheckBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Task.Fulfillment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "repetitions", "type": "positiveInt"},
        {"name": "period", "type": "Period"},
        {"name": "recipients", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.TestScript.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "copyright", "type": "string"},
        {"name": "origin", "type": "list<FHIR.TestScript.Origin>"},
        {"name": "destination", "type": "list<FHIR.TestScript.Destination>"},
        {"name": "metadata", "type": "TestScript.Metadata"},
        {"name": "fixture", "type": "list<FHIR.TestScript.Fixture>"},
        {"name": "profile", "type": "list<FHIR.Reference>"},
        {"name": "variable", "type": "list<FHIR.TestScript.Variable>"},
        {"name": "rule", "type": "list<FHIR.TestScript.Rule>"},
        {"name": "ruleset", "type": "list<FHIR.TestScript.Ruleset>"},
        {"name": "setup", "type": "TestScript.Setup"},
        {"name": "test", "type": "list<FHIR.TestScript.Test>"},
        {"name": "teardown", "type": "TestScript.Teardown"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
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
        {"name": "url", "type": "uri"},
        {"name": "size", "type": "unsignedInt"},
        {"name": "hash", "type": "base64Binary"},
        {"name": "title", "type": "string"},
        {"name": "creation", "type": "dateTime"}
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
      "name": "UnitsOfTime",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"}
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
      "name": "ExpansionProfile.Designation2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"}
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
      "name": "Bundle.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relation", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ClaimResponseStatus"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "requestProviderIdentifier", "type": "Identifier"},
        {"name": "requestProviderReference", "type": "Reference"},
        {"name": "requestOrganizationIdentifier", "type": "Identifier"},
        {"name": "requestOrganizationReference", "type": "Reference"},
        {"name": "outcome", "type": "Coding"},
        {"name": "disposition", "type": "string"},
        {"name": "payeeType", "type": "Coding"},
        {"name": "item", "type": "list<FHIR.ClaimResponse.Item>"},
        {"name": "addItem", "type": "list<FHIR.ClaimResponse.AddItem>"},
        {"name": "error", "type": "list<FHIR.ClaimResponse.Error>"},
        {"name": "totalCost", "type": "Money"},
        {"name": "totalCost", "type": "Money"},
        {"name": "unallocDeductable", "type": "Money"},
        {"name": "totalBenefit", "type": "Money"},
        {"name": "payment", "type": "ClaimResponse.Payment"},
        {"name": "reserved", "type": "Coding"},
        {"name": "form", "type": "Coding"},
        {"name": "note", "type": "list<FHIR.ClaimResponse.Note>"},
        {"name": "coverage", "type": "list<FHIR.ClaimResponse.Coverage>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "positiveInt"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrderCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Param",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "display", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.StructureDefinition.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "copyright", "type": "string"},
        {"name": "code", "type": "list<FHIR.Coding>"},
        {"name": "fhirVersion", "type": "id"},
        {"name": "mapping", "type": "list<FHIR.StructureDefinition.Mapping>"},
        {"name": "kind", "type": "StructureDefinitionKind"},
        {"name": "abstract", "type": "boolean"},
        {"name": "contextType", "type": "ExtensionContext"},
        {"name": "context", "type": "list<FHIR.string>"},
        {"name": "type", "type": "code"},
        {"name": "baseDefinition", "type": "uri"},
        {"name": "derivation", "type": "TypeDerivationRule"},
        {"name": "snapshot", "type": "StructureDefinition.Snapshot"},
        {"name": "differential", "type": "StructureDefinition.Differential"}
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
      "name": "HealthcareService.NotAvailable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "during", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.VaccinationProtocol",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseSequence", "type": "positiveInt"},
        {"name": "description", "type": "string"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "string"},
        {"name": "seriesDoses", "type": "positiveInt"},
        {"name": "targetDisease", "type": "list<FHIR.CodeableConcept>"},
        {"name": "doseStatus", "type": "CodeableConcept"},
        {"name": "doseStatusReason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "Coding"},
        {"name": "category", "type": "MessageSignificanceCategory"},
        {"name": "mode", "type": "ConformanceEventMode"},
        {"name": "focus", "type": "code"},
        {"name": "request", "type": "Reference"},
        {"name": "response", "type": "Reference"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Package",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "container", "type": "CodeableConcept"},
        {"name": "content", "type": "list<FHIR.Medication.Content>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "daysOfWeek", "type": "list<FHIR.code>"},
        {"name": "allDay", "type": "boolean"},
        {"name": "availableStartTime", "type": "time"},
        {"name": "availableEndTime", "type": "time"}
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
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "bodySiteCodeableConcept", "type": "CodeableConcept"},
        {"name": "bodySiteReference", "type": "Reference"},
        {"name": "whenUsed", "type": "Period"},
        {"name": "device", "type": "Reference"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "indication", "type": "list<FHIR.CodeableConcept>"},
        {"name": "notes", "type": "list<FHIR.string>"},
        {"name": "recordedOn", "type": "dateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "timingTiming", "type": "Timing"},
        {"name": "timingPeriod", "type": "Period"},
        {"name": "timingDateTime", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.Stratifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "criteria", "type": "string"},
        {"name": "path", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "status", "type": "ProcedureStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "notPerformed", "type": "boolean"},
        {"name": "reasonNotPerformed", "type": "list<FHIR.CodeableConcept>"},
        {"name": "bodySite", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonReference", "type": "list<FHIR.Reference>"},
        {"name": "reasonCode", "type": "list<FHIR.CodeableConcept>"},
        {"name": "performer", "type": "list<FHIR.Procedure.Performer>"},
        {"name": "performedDateTime", "type": "dateTime"},
        {"name": "performedPeriod", "type": "Period"},
        {"name": "encounter", "type": "Reference"},
        {"name": "location", "type": "Reference"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "report", "type": "list<FHIR.Reference>"},
        {"name": "complication", "type": "list<FHIR.CodeableConcept>"},
        {"name": "followUp", "type": "list<FHIR.CodeableConcept>"},
        {"name": "request", "type": "Reference"},
        {"name": "notes", "type": "list<FHIR.Annotation>"},
        {"name": "focalDevice", "type": "list<FHIR.Procedure.FocalDevice>"},
        {"name": "usedReference", "type": "list<FHIR.Reference>"},
        {"name": "usedCode", "type": "list<FHIR.CodeableConcept>"},
        {"name": "component", "type": "list<FHIR.Reference>"}
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
      "name": "EligibilityResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "EligibilityResponseStatus"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "string"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "requestProviderIdentifier", "type": "Identifier"},
        {"name": "requestProviderReference", "type": "Reference"},
        {"name": "requestOrganizationIdentifier", "type": "Identifier"},
        {"name": "requestOrganizationReference", "type": "Reference"},
        {"name": "inforce", "type": "boolean"},
        {"name": "contract", "type": "Reference"},
        {"name": "form", "type": "Coding"},
        {
          "name": "benefitBalance",
          "type": "list<FHIR.EligibilityResponse.BenefitBalance>"
        },
        {"name": "error", "type": "list<FHIR.EligibilityResponse.Error>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.SearchParameter.Contact>"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "code", "type": "code"},
        {"name": "base", "type": "code"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "description", "type": "markdown"},
        {"name": "expression", "type": "string"},
        {"name": "xpath", "type": "string"},
        {"name": "xpathUsage", "type": "XPathUsageType"},
        {"name": "target", "type": "list<FHIR.code>"},
        {"name": "component", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataRequirement.CodeFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "valueSetString", "type": "string"},
        {"name": "valueSetReference", "type": "Reference"},
        {"name": "valueCode", "type": "list<FHIR.code>"},
        {"name": "valueCoding", "type": "list<FHIR.Coding>"},
        {"name": "valueCodeableConcept", "type": "list<FHIR.CodeableConcept>"}
      ]
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
      "name": "DataElementStringency",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.BaseLocation1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "serviceType",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "AppointmentStatus"},
        {"name": "serviceCategory", "type": "CodeableConcept"},
        {"name": "serviceType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "specialty", "type": "list<FHIR.CodeableConcept>"},
        {"name": "appointmentType", "type": "CodeableConcept"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "priority", "type": "unsignedInt"},
        {"name": "description", "type": "string"},
        {"name": "start", "type": "instant"},
        {"name": "end", "type": "instant"},
        {"name": "minutesDuration", "type": "positiveInt"},
        {"name": "slot", "type": "list<FHIR.Reference>"},
        {"name": "created", "type": "dateTime"},
        {"name": "comment", "type": "string"},
        {"name": "participant", "type": "list<FHIR.Appointment.Participant>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "type", "type": "Coding"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Assert",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "label", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "direction", "type": "AssertionDirectionType"},
        {"name": "compareToSourceId", "type": "string"},
        {"name": "compareToSourcePath", "type": "string"},
        {"name": "contentType", "type": "ContentType"},
        {"name": "headerField", "type": "string"},
        {"name": "minimumId", "type": "string"},
        {"name": "navigationLinks", "type": "boolean"},
        {"name": "operator", "type": "AssertionOperatorType"},
        {"name": "path", "type": "string"},
        {"name": "requestURL", "type": "string"},
        {"name": "resource", "type": "code"},
        {"name": "response", "type": "AssertionResponseTypes"},
        {"name": "responseCode", "type": "string"},
        {"name": "rule", "type": "TestScript.Rule2"},
        {"name": "ruleset", "type": "TestScript.Ruleset1"},
        {"name": "sourceId", "type": "id"},
        {"name": "validateProfileId", "type": "id"},
        {"name": "value", "type": "string"},
        {"name": "warningOnly", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Ruleset1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "rulesetId", "type": "id"},
        {"name": "rule", "type": "list<FHIR.TestScript.Rule3>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ExpansionProfile.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "codeSystem", "type": "ExpansionProfile.CodeSystem"},
        {"name": "includeDesignations", "type": "boolean"},
        {"name": "designation", "type": "ExpansionProfile.Designation"},
        {"name": "includeDefinition", "type": "boolean"},
        {"name": "includeInactive", "type": "boolean"},
        {"name": "excludeNested", "type": "boolean"},
        {"name": "excludeNotForUI", "type": "boolean"},
        {"name": "excludePostCoordinated", "type": "boolean"},
        {"name": "displayLanguage", "type": "code"},
        {"name": "limitedExpansion", "type": "boolean"}
      ]
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
      "name": "ExplanationOfBenefit.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "date", "type": "dateTime"},
        {"name": "procedureCoding", "type": "Coding"},
        {"name": "procedureReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.ValuedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entityCodeableConcept", "type": "CodeableConcept"},
        {"name": "entityReference", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "dateTime"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"}
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
      "name": "ElementDefinition.Binding",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "strength", "type": "BindingStrength"},
        {"name": "description", "type": "string"},
        {"name": "valueSetUri", "type": "uri"},
        {"name": "valueSetReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "include", "type": "ExpansionProfile.Include1"},
        {"name": "exclude", "type": "ExpansionProfile.Exclude1"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
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
      "name": "StructureDefinitionKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "measure", "type": "Reference"},
        {"name": "type", "type": "MeasureReportType"},
        {"name": "patient", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "status", "type": "MeasureReportStatus"},
        {"name": "date", "type": "dateTime"},
        {"name": "reportingOrganization", "type": "Reference"},
        {"name": "group", "type": "list<FHIR.MeasureReport.Group>"},
        {"name": "evaluatedResources", "type": "Reference"}
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
      "name": "ElementDefinition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "representation", "type": "list<FHIR.PropertyRepresentation>"},
        {"name": "name", "type": "string"},
        {"name": "label", "type": "string"},
        {"name": "code", "type": "list<FHIR.Coding>"},
        {"name": "slicing", "type": "ElementDefinition.Slicing"},
        {"name": "short", "type": "string"},
        {"name": "definition", "type": "markdown"},
        {"name": "comments", "type": "markdown"},
        {"name": "requirements", "type": "markdown"},
        {"name": "alias", "type": "list<FHIR.string>"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "base", "type": "ElementDefinition.Base"},
        {"name": "contentReference", "type": "uri"},
        {"name": "type", "type": "list<FHIR.ElementDefinition.Type>"},
        {"name": "defaultValueBase64Binary", "type": "base64Binary"},
        {"name": "defaultValueBoolean", "type": "boolean"},
        {"name": "defaultValueCode", "type": "code"},
        {"name": "defaultValueDate", "type": "date"},
        {"name": "defaultValueDateTime", "type": "dateTime"},
        {"name": "defaultValueDecimal", "type": "decimal"},
        {"name": "defaultValueId", "type": "id"},
        {"name": "defaultValueInstant", "type": "instant"},
        {"name": "defaultValueInteger", "type": "integer"},
        {"name": "defaultValueMarkdown", "type": "markdown"},
        {"name": "defaultValueOid", "type": "oid"},
        {"name": "defaultValuePositiveInt", "type": "positiveInt"},
        {"name": "defaultValueString", "type": "string"},
        {"name": "defaultValueTime", "type": "time"},
        {"name": "defaultValueUnsignedInt", "type": "unsignedInt"},
        {"name": "defaultValueUri", "type": "uri"},
        {"name": "defaultValueAddress", "type": "Address"},
        {"name": "defaultValueAge", "type": "Age"},
        {"name": "defaultValueAnnotation", "type": "Annotation"},
        {"name": "defaultValueAttachment", "type": "Attachment"},
        {"name": "defaultValueCodeableConcept", "type": "CodeableConcept"},
        {"name": "defaultValueCoding", "type": "Coding"},
        {"name": "defaultValueContactPoint", "type": "ContactPoint"},
        {"name": "defaultValueCount", "type": "Count"},
        {"name": "defaultValueDistance", "type": "Distance"},
        {"name": "defaultValueDuration", "type": "Duration"},
        {"name": "defaultValueHumanName", "type": "HumanName"},
        {"name": "defaultValueIdentifier", "type": "Identifier"},
        {"name": "defaultValueMoney", "type": "Money"},
        {"name": "defaultValuePeriod", "type": "Period"},
        {"name": "defaultValueQuantity", "type": "Quantity"},
        {"name": "defaultValueRange", "type": "Range"},
        {"name": "defaultValueRatio", "type": "Ratio"},
        {"name": "defaultValueReference", "type": "Reference"},
        {"name": "defaultValueSampledData", "type": "SampledData"},
        {"name": "defaultValueSignature", "type": "Signature"},
        {"name": "defaultValueTiming", "type": "Timing"},
        {"name": "defaultValueMeta", "type": "Meta"},
        {"name": "meaningWhenMissing", "type": "markdown"},
        {"name": "fixedBase64Binary", "type": "base64Binary"},
        {"name": "fixedBoolean", "type": "boolean"},
        {"name": "fixedCode", "type": "code"},
        {"name": "fixedDate", "type": "date"},
        {"name": "fixedDateTime", "type": "dateTime"},
        {"name": "fixedDecimal", "type": "decimal"},
        {"name": "fixedId", "type": "id"},
        {"name": "fixedInstant", "type": "instant"},
        {"name": "fixedInteger", "type": "integer"},
        {"name": "fixedMarkdown", "type": "markdown"},
        {"name": "fixedOid", "type": "oid"},
        {"name": "fixedPositiveInt", "type": "positiveInt"},
        {"name": "fixedString", "type": "string"},
        {"name": "fixedTime", "type": "time"},
        {"name": "fixedUnsignedInt", "type": "unsignedInt"},
        {"name": "fixedUri", "type": "uri"},
        {"name": "fixedAddress", "type": "Address"},
        {"name": "fixedAge", "type": "Age"},
        {"name": "fixedAnnotation", "type": "Annotation"},
        {"name": "fixedAttachment", "type": "Attachment"},
        {"name": "fixedCodeableConcept", "type": "CodeableConcept"},
        {"name": "fixedCoding", "type": "Coding"},
        {"name": "fixedContactPoint", "type": "ContactPoint"},
        {"name": "fixedCount", "type": "Count"},
        {"name": "fixedDistance", "type": "Distance"},
        {"name": "fixedDuration", "type": "Duration"},
        {"name": "fixedHumanName", "type": "HumanName"},
        {"name": "fixedIdentifier", "type": "Identifier"},
        {"name": "fixedMoney", "type": "Money"},
        {"name": "fixedPeriod", "type": "Period"},
        {"name": "fixedQuantity", "type": "Quantity"},
        {"name": "fixedRange", "type": "Range"},
        {"name": "fixedRatio", "type": "Ratio"},
        {"name": "fixedReference", "type": "Reference"},
        {"name": "fixedSampledData", "type": "SampledData"},
        {"name": "fixedSignature", "type": "Signature"},
        {"name": "fixedTiming", "type": "Timing"},
        {"name": "fixedMeta", "type": "Meta"},
        {"name": "patternBase64Binary", "type": "base64Binary"},
        {"name": "patternBoolean", "type": "boolean"},
        {"name": "patternCode", "type": "code"},
        {"name": "patternDate", "type": "date"},
        {"name": "patternDateTime", "type": "dateTime"},
        {"name": "patternDecimal", "type": "decimal"},
        {"name": "patternId", "type": "id"},
        {"name": "patternInstant", "type": "instant"},
        {"name": "patternInteger", "type": "integer"},
        {"name": "patternMarkdown", "type": "markdown"},
        {"name": "patternOid", "type": "oid"},
        {"name": "patternPositiveInt", "type": "positiveInt"},
        {"name": "patternString", "type": "string"},
        {"name": "patternTime", "type": "time"},
        {"name": "patternUnsignedInt", "type": "unsignedInt"},
        {"name": "patternUri", "type": "uri"},
        {"name": "patternAddress", "type": "Address"},
        {"name": "patternAge", "type": "Age"},
        {"name": "patternAnnotation", "type": "Annotation"},
        {"name": "patternAttachment", "type": "Attachment"},
        {"name": "patternCodeableConcept", "type": "CodeableConcept"},
        {"name": "patternCoding", "type": "Coding"},
        {"name": "patternContactPoint", "type": "ContactPoint"},
        {"name": "patternCount", "type": "Count"},
        {"name": "patternDistance", "type": "Distance"},
        {"name": "patternDuration", "type": "Duration"},
        {"name": "patternHumanName", "type": "HumanName"},
        {"name": "patternIdentifier", "type": "Identifier"},
        {"name": "patternMoney", "type": "Money"},
        {"name": "patternPeriod", "type": "Period"},
        {"name": "patternQuantity", "type": "Quantity"},
        {"name": "patternRange", "type": "Range"},
        {"name": "patternRatio", "type": "Ratio"},
        {"name": "patternReference", "type": "Reference"},
        {"name": "patternSampledData", "type": "SampledData"},
        {"name": "patternSignature", "type": "Signature"},
        {"name": "patternTiming", "type": "Timing"},
        {"name": "patternMeta", "type": "Meta"},
        {"name": "exampleBase64Binary", "type": "base64Binary"},
        {"name": "exampleBoolean", "type": "boolean"},
        {"name": "exampleCode", "type": "code"},
        {"name": "exampleDate", "type": "date"},
        {"name": "exampleDateTime", "type": "dateTime"},
        {"name": "exampleDecimal", "type": "decimal"},
        {"name": "exampleId", "type": "id"},
        {"name": "exampleInstant", "type": "instant"},
        {"name": "exampleInteger", "type": "integer"},
        {"name": "exampleMarkdown", "type": "markdown"},
        {"name": "exampleOid", "type": "oid"},
        {"name": "examplePositiveInt", "type": "positiveInt"},
        {"name": "exampleString", "type": "string"},
        {"name": "exampleTime", "type": "time"},
        {"name": "exampleUnsignedInt", "type": "unsignedInt"},
        {"name": "exampleUri", "type": "uri"},
        {"name": "exampleAddress", "type": "Address"},
        {"name": "exampleAge", "type": "Age"},
        {"name": "exampleAnnotation", "type": "Annotation"},
        {"name": "exampleAttachment", "type": "Attachment"},
        {"name": "exampleCodeableConcept", "type": "CodeableConcept"},
        {"name": "exampleCoding", "type": "Coding"},
        {"name": "exampleContactPoint", "type": "ContactPoint"},
        {"name": "exampleCount", "type": "Count"},
        {"name": "exampleDistance", "type": "Distance"},
        {"name": "exampleDuration", "type": "Duration"},
        {"name": "exampleHumanName", "type": "HumanName"},
        {"name": "exampleIdentifier", "type": "Identifier"},
        {"name": "exampleMoney", "type": "Money"},
        {"name": "examplePeriod", "type": "Period"},
        {"name": "exampleQuantity", "type": "Quantity"},
        {"name": "exampleRange", "type": "Range"},
        {"name": "exampleRatio", "type": "Ratio"},
        {"name": "exampleReference", "type": "Reference"},
        {"name": "exampleSampledData", "type": "SampledData"},
        {"name": "exampleSignature", "type": "Signature"},
        {"name": "exampleTiming", "type": "Timing"},
        {"name": "exampleMeta", "type": "Meta"},
        {"name": "minValueDate", "type": "date"},
        {"name": "minValueDateTime", "type": "dateTime"},
        {"name": "minValueInstant", "type": "instant"},
        {"name": "minValueTime", "type": "time"},
        {"name": "minValueDecimal", "type": "decimal"},
        {"name": "minValueInteger", "type": "integer"},
        {"name": "minValuePositiveInt", "type": "positiveInt"},
        {"name": "minValueUnsignedInt", "type": "unsignedInt"},
        {"name": "minValueQuantity", "type": "Quantity"},
        {"name": "maxValueDate", "type": "date"},
        {"name": "maxValueDateTime", "type": "dateTime"},
        {"name": "maxValueInstant", "type": "instant"},
        {"name": "maxValueTime", "type": "time"},
        {"name": "maxValueDecimal", "type": "decimal"},
        {"name": "maxValueInteger", "type": "integer"},
        {"name": "maxValuePositiveInt", "type": "positiveInt"},
        {"name": "maxValueUnsignedInt", "type": "unsignedInt"},
        {"name": "maxValueQuantity", "type": "Quantity"},
        {"name": "maxLength", "type": "integer"},
        {"name": "condition", "type": "list<FHIR.id>"},
        {
          "name": "constraint",
          "type": "list<FHIR.ElementDefinition.Constraint>"
        },
        {"name": "mustSupport", "type": "boolean"},
        {"name": "isModifier", "type": "boolean"},
        {"name": "isSummary", "type": "boolean"},
        {"name": "binding", "type": "ElementDefinition.Binding"},
        {"name": "mapping", "type": "list<FHIR.ElementDefinition.Mapping>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.Input",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueId", "type": "id"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueMarkdown", "type": "markdown"},
        {"name": "valueOid", "type": "oid"},
        {"name": "valuePositiveInt", "type": "positiveInt"},
        {"name": "valueString", "type": "string"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueUnsignedInt", "type": "unsignedInt"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueAge", "type": "Age"},
        {"name": "valueAnnotation", "type": "Annotation"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueCount", "type": "Count"},
        {"name": "valueDistance", "type": "Distance"},
        {"name": "valueDuration", "type": "Duration"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueMoney", "type": "Money"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.Attester",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "list<FHIR.CompositionAttestationMode>"},
        {"name": "time", "type": "dateTime"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "udiCarrier", "type": "Identifier"},
        {"name": "status", "type": "DeviceStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "lotNumber", "type": "string"},
        {"name": "manufacturer", "type": "string"},
        {"name": "manufactureDate", "type": "dateTime"},
        {"name": "expirationDate", "type": "dateTime"},
        {"name": "model", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "patient", "type": "Reference"},
        {"name": "owner", "type": "Reference"},
        {"name": "contact", "type": "list<FHIR.ContactPoint>"},
        {"name": "location", "type": "Reference"},
        {"name": "url", "type": "uri"},
        {"name": "note", "type": "list<FHIR.Annotation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "value", "type": "string"},
        {"name": "count", "type": "integer"},
        {"name": "patients", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "bodySite", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {"name": "scheduledDateTime", "type": "dateTime"},
        {"name": "scheduledPeriod", "type": "Period"},
        {"name": "scheduledTiming", "type": "Timing"},
        {"name": "encounter", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "status", "type": "ProcedureRequestStatus"},
        {"name": "notes", "type": "list<FHIR.Annotation>"},
        {"name": "asNeededBoolean", "type": "boolean"},
        {"name": "asNeededCodeableConcept", "type": "CodeableConcept"},
        {"name": "orderedOn", "type": "dateTime"},
        {"name": "orderer", "type": "Reference"},
        {"name": "priority", "type": "ProcedureRequestPriority"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Capability",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "required", "type": "boolean"},
        {"name": "validated", "type": "boolean"},
        {"name": "description", "type": "string"},
        {"name": "origin", "type": "list<FHIR.integer>"},
        {"name": "destination", "type": "integer"},
        {"name": "link", "type": "list<FHIR.uri>"},
        {"name": "conformance", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Group1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "value", "type": "string"},
        {"name": "population", "type": "list<FHIR.MeasureReport.Population1>"},
        {"name": "measureScore", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome.Issue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "severity", "type": "IssueSeverity"},
        {"name": "code", "type": "IssueType"},
        {"name": "details", "type": "CodeableConcept"},
        {"name": "diagnostics", "type": "string"},
        {"name": "location", "type": "list<FHIR.string>"},
        {"name": "expression", "type": "list<FHIR.string>"}
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
      "name": "GuidanceResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "requestId", "type": "id"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "module", "type": "Reference"},
        {"name": "status", "type": "GuidanceResponseStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "occurrenceDateTime", "type": "dateTime"},
        {"name": "performer", "type": "Reference"},
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "evaluationMessage", "type": "list<FHIR.Reference>"},
        {"name": "outputParameters", "type": "Reference"},
        {"name": "action", "type": "list<FHIR.GuidanceResponse.Action>"},
        {"name": "dataRequirement", "type": "list<FHIR.DataRequirement>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetric",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "unit", "type": "CodeableConcept"},
        {"name": "source", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {"name": "operationalStatus", "type": "DeviceMetricOperationalStatus"},
        {"name": "color", "type": "DeviceMetricColor"},
        {"name": "category", "type": "DeviceMetricCategory"},
        {"name": "measurementPeriod", "type": "Timing"},
        {"name": "calibration", "type": "list<FHIR.DeviceMetric.Calibration>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.BaseLocation1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"},
        {"name": "documentation", "type": "markdown"},
        {"name": "interaction", "type": "list<FHIR.Conformance.Interaction>"},
        {"name": "versioning", "type": "ResourceVersionPolicy"},
        {"name": "readHistory", "type": "boolean"},
        {"name": "updateCreate", "type": "boolean"},
        {"name": "conditionalCreate", "type": "boolean"},
        {"name": "conditionalRead", "type": "ConditionalReadStatus"},
        {"name": "conditionalUpdate", "type": "boolean"},
        {"name": "conditionalDelete", "type": "ConditionalDeleteStatus"},
        {"name": "searchInclude", "type": "list<FHIR.string>"},
        {"name": "searchRevInclude", "type": "list<FHIR.string>"},
        {"name": "searchParam", "type": "list<FHIR.Conformance.SearchParam>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Flag",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "status", "type": "FlagStatus"},
        {"name": "period", "type": "Period"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "code", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionRequest.Administration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "schedule", "type": "Timing"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "rateQuantity", "type": "Quantity"},
        {"name": "rateRatio", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Messaging",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "endpoint", "type": "list<FHIR.Conformance.Endpoint>"},
        {"name": "reliableCache", "type": "unsignedInt"},
        {"name": "documentation", "type": "string"},
        {"name": "event", "type": "list<FHIR.Conformance.Event>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "EnrollmentRequestStatus"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "insurerIdentifier", "type": "Identifier"},
        {"name": "insurerReference", "type": "Reference"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "subjectIdentifier", "type": "Identifier"},
        {"name": "subjectReference", "type": "Reference"},
        {"name": "coverage", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareTeam",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "CodeableConcept"},
        {"name": "type", "type": "list<FHIR.CodeableConcept>"},
        {"name": "name", "type": "string"},
        {"name": "subject", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "participant", "type": "list<FHIR.CareTeam.Participant>"},
        {"name": "managingOrganization", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionRelationshipAnchor",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DataElement",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "date", "type": "dateTime"},
        {"name": "name", "type": "string"},
        {"name": "contact", "type": "list<FHIR.DataElement.Contact>"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "copyright", "type": "string"},
        {"name": "stringency", "type": "DataElementStringency"},
        {"name": "mapping", "type": "list<FHIR.DataElement.Mapping>"},
        {"name": "element", "type": "list<FHIR.ElementDefinition>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "quantity", "type": "Ratio"},
        {"name": "substanceCodeableConcept", "type": "CodeableConcept"},
        {"name": "substanceReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "operation", "type": "TestScript.Operation"},
        {"name": "assert", "type": "TestScript.Assert"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.SearchParam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "definition", "type": "uri"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "documentation", "type": "string"},
        {"name": "target", "type": "list<FHIR.code>"},
        {"name": "modifier", "type": "list<FHIR.SearchModifierCode>"},
        {"name": "chain", "type": "list<FHIR.string>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.Study",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "imagingStudy", "type": "Reference"},
        {
          "name": "baseLocation",
          "type": "list<FHIR.ImagingManifest.BaseLocation>"
        },
        {"name": "series", "type": "list<FHIR.ImagingManifest.Series>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "allowed", "type": "boolean"},
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "date", "type": "dateTime"},
        {"name": "procedureCoding", "type": "Coding"},
        {"name": "procedureReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "valueId", "type": "id"},
        {"name": "valueString", "type": "string"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueDecimal", "type": "decimal"}
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
      "name": "ElementDefinition.Constraint",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "key", "type": "id"},
        {"name": "requirements", "type": "string"},
        {"name": "severity", "type": "ConstraintSeverity"},
        {"name": "human", "type": "string"},
        {"name": "expression", "type": "string"},
        {"name": "xpath", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
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
      "name": "ConformanceResourceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Destination",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "index", "type": "integer"},
        {"name": "profile", "type": "Coding"}
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
      "name": "Measure.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "MeasurePopulationType"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "criteria", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "positiveInt"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication>"
        },
        {"name": "subDetail", "type": "list<FHIR.ClaimResponse.SubDetail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ProcessRequestStatus"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "action", "type": "ActionList"},
        {"name": "created", "type": "dateTime"},
        {"name": "targetIdentifier", "type": "Identifier"},
        {"name": "targetReference", "type": "Reference"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "responseIdentifier", "type": "Identifier"},
        {"name": "responseReference", "type": "Reference"},
        {"name": "nullify", "type": "boolean"},
        {"name": "reference", "type": "string"},
        {"name": "item", "type": "list<FHIR.ProcessRequest.Item>"},
        {"name": "include", "type": "list<FHIR.string>"},
        {"name": "exclude", "type": "list<FHIR.string>"},
        {"name": "period", "type": "Period"}
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
      "name": "AuditEvent.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "string"},
        {"name": "value", "type": "base64Binary"}
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
      "name": "TestScript.Test",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "action", "type": "list<FHIR.TestScript.Action1>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Note",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "positiveInt"},
        {"name": "type", "type": "Coding"},
        {"name": "text", "type": "string"},
        {"name": "language", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "claimIdentifier", "type": "Identifier"},
        {"name": "claimReference", "type": "Reference"},
        {"name": "relationship", "type": "Coding"},
        {"name": "reference", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Age",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "CareTeam.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "member", "type": "Reference"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "number", "type": "unsignedInt"},
        {"name": "modality", "type": "Coding"},
        {"name": "description", "type": "string"},
        {"name": "numberOfInstances", "type": "unsignedInt"},
        {"name": "availability", "type": "InstanceAvailability"},
        {
          "name": "baseLocation",
          "type": "list<FHIR.ImagingStudy.BaseLocation1>"
        },
        {"name": "bodySite", "type": "Coding"},
        {"name": "laterality", "type": "Coding"},
        {"name": "started", "type": "dateTime"},
        {"name": "instance", "type": "list<FHIR.ImagingStudy.Instance>"}
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
      "name": "Composition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "date", "type": "dateTime"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "class", "type": "CodeableConcept"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "CompositionStatus"},
        {"name": "confidentiality", "type": "code"},
        {"name": "subject", "type": "Reference"},
        {"name": "author", "type": "list<FHIR.Reference>"},
        {"name": "attester", "type": "list<FHIR.Composition.Attester>"},
        {"name": "custodian", "type": "Reference"},
        {"name": "event", "type": "list<FHIR.Composition.Event>"},
        {"name": "encounter", "type": "Reference"},
        {"name": "section", "type": "list<FHIR.Composition.Section>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Snapshot",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "element", "type": "list<FHIR.ElementDefinition>"}
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.RelatedPlan",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CarePlanRelationship"},
        {"name": "plan", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.DateCriterion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "value", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Endpoint",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "EndpointStatus"},
        {"name": "name", "type": "string"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "contact", "type": "list<FHIR.ContactPoint>"},
        {"name": "connectionType", "type": "Coding"},
        {"name": "method", "type": "list<FHIR.Coding>"},
        {"name": "period", "type": "Period"},
        {"name": "address", "type": "uri"},
        {"name": "payloadFormat", "type": "string"},
        {"name": "payloadType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "header", "type": "list<FHIR.string>"},
        {"name": "publicKey", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Agent1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actor", "type": "Reference"},
        {"name": "role", "type": "list<FHIR.CodeableConcept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Stratifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "group", "type": "list<FHIR.MeasureReport.Group1>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "medicationCodeableConcept",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "MedicationOrderStatus"},
        {"name": "medicationCodeableConcept", "type": "CodeableConcept"},
        {"name": "medicationReference", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateWritten", "type": "dateTime"},
        {"name": "prescriber", "type": "Reference"},
        {"name": "reasonCode", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonReference", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "category", "type": "MedicationOrderCategory"},
        {
          "name": "dosageInstruction",
          "type": "list<FHIR.MedicationOrder.DosageInstruction>"
        },
        {"name": "dispenseRequest", "type": "MedicationOrder.DispenseRequest"},
        {"name": "substitution", "type": "MedicationOrder.Substitution"},
        {"name": "priorPrescription", "type": "Reference"},
        {
          "name": "eventHistory",
          "type": "list<FHIR.MedicationOrder.EventHistory>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionSelectionBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "instant",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "Communication.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentString", "type": "string"},
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "type": "string"},
        {"name": "text", "type": "string"},
        {"name": "subject", "type": "Reference"},
        {"name": "answer", "type": "list<FHIR.QuestionnaireResponse.Answer>"},
        {"name": "item", "type": "list<FHIR.QuestionnaireResponse.Item>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "code"},
        {"name": "experimental", "type": "boolean"},
        {"name": "description", "type": "string"},
        {"name": "purpose", "type": "string"},
        {"name": "usage", "type": "string"},
        {"name": "publicationDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "coverage", "type": "list<FHIR.UsageContext>"},
        {"name": "topic", "type": "list<FHIR.CodeableConcept>"},
        {"name": "contributor", "type": "list<FHIR.Contributor>"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ContactDetail>"},
        {"name": "copyright", "type": "string"},
        {"name": "relatedResource", "type": "list<FHIR.RelatedResource>"},
        {"name": "library", "type": "list<FHIR.Reference>"},
        {"name": "category", "type": "ActivityDefinitionCategory"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "timingCodeableConcept", "type": "CodeableConcept"},
        {"name": "timingTiming", "type": "Timing"},
        {"name": "location", "type": "Reference"},
        {"name": "participantType", "type": "list<FHIR.code>"},
        {"name": "productReference", "type": "Reference"},
        {"name": "productCodeableConcept", "type": "CodeableConcept"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "transform", "type": "Reference"},
        {
          "name": "dynamicValue",
          "type": "list<FHIR.ActivityDefinition.DynamicValue>"
        }
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
      "name": "AssertionOperatorType",
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
        {"name": "product", "type": "Coding"},
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
        {"name": "duration", "type": "Quantity"},
        {"name": "color", "type": "string"},
        {"name": "brand", "type": "string"},
        {"name": "notes", "type": "string"}
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
      "name": "ConformanceEventMode",
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
      "name": "ContentType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.CodeSystem2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.CodeSystem1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "number", "type": "unsignedInt"},
        {"name": "sopClass", "type": "oid"},
        {"name": "title", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "valueString", "type": "string"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueCode", "type": "code"}
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
      "name": "Claim.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "claimIdentifier", "type": "Identifier"},
        {"name": "claimReference", "type": "Reference"},
        {"name": "relationship", "type": "Coding"},
        {"name": "reference", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Accident",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "date"},
        {"name": "type", "type": "Coding"},
        {"name": "locationAddress", "type": "Address"},
        {"name": "locationReference", "type": "Reference"}
      ]
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
      "name": "MedicationOrder.DispenseRequest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "validityPeriod", "type": "Period"},
        {"name": "numberOfRepeatsAllowed", "type": "positiveInt"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "expectedSupplyDuration", "type": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatementCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "type", "type": "Coding"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
        },
        {
          "name": "subDetail",
          "type": "list<FHIR.ExplanationOfBenefit.SubDetail>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule3",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ruleId", "type": "id"},
        {"name": "param", "type": "list<FHIR.TestScript.Param3>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ruleId", "type": "id"},
        {"name": "param", "type": "list<FHIR.TestScript.Param2>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "positiveInt",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Integer"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ValueSet.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "lockedDate", "type": "date"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "immutable", "type": "boolean"},
        {"name": "requirements", "type": "markdown"},
        {"name": "copyright", "type": "string"},
        {"name": "extensible", "type": "boolean"},
        {"name": "compose", "type": "ValueSet.Compose"},
        {"name": "expansion", "type": "ValueSet.Expansion"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Input",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "id"},
        {"name": "type", "type": "string"},
        {"name": "mode", "type": "StructureMapInputMode"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Origin",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "index", "type": "integer"},
        {"name": "profile", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ruleId", "type": "id"},
        {"name": "param", "type": "list<FHIR.TestScript.Param1>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Linkage",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "author", "type": "Reference"},
        {"name": "item", "type": "list<FHIR.Linkage.Item>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Signature",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<FHIR.Coding>"},
        {"name": "when", "type": "instant"},
        {"name": "whoUri", "type": "uri"},
        {"name": "whoReference", "type": "Reference"},
        {"name": "onBehalfOfUri", "type": "uri"},
        {"name": "onBehalfOfReference", "type": "Reference"},
        {"name": "contentType", "type": "code"},
        {"name": "blob", "type": "base64Binary"}
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
      "name": "ClinicalImpressionStatus",
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
      "name": "DocumentReference.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "encounter", "type": "Reference"},
        {"name": "event", "type": "list<FHIR.CodeableConcept>"},
        {"name": "period", "type": "Period"},
        {"name": "facilityType", "type": "CodeableConcept"},
        {"name": "practiceSetting", "type": "CodeableConcept"},
        {"name": "sourcePatientInfo", "type": "Reference"},
        {"name": "related", "type": "list<FHIR.DocumentReference.Related>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "code"},
        {"name": "experimental", "type": "boolean"},
        {"name": "description", "type": "string"},
        {"name": "purpose", "type": "string"},
        {"name": "usage", "type": "string"},
        {"name": "publicationDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "coverage", "type": "list<FHIR.UsageContext>"},
        {"name": "topic", "type": "list<FHIR.CodeableConcept>"},
        {"name": "contributor", "type": "list<FHIR.Contributor>"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ContactDetail>"},
        {"name": "copyright", "type": "string"},
        {"name": "relatedResource", "type": "list<FHIR.RelatedResource>"},
        {"name": "library", "type": "list<FHIR.Reference>"},
        {"name": "disclaimer", "type": "markdown"},
        {"name": "scoring", "type": "MeasureScoring"},
        {"name": "type", "type": "list<FHIR.MeasureType>"},
        {"name": "riskAdjustment", "type": "string"},
        {"name": "rateAggregation", "type": "string"},
        {"name": "rationale", "type": "markdown"},
        {"name": "clinicalRecommendationStatement", "type": "markdown"},
        {"name": "improvementNotation", "type": "string"},
        {"name": "definition", "type": "markdown"},
        {"name": "guidance", "type": "markdown"},
        {"name": "set", "type": "string"},
        {"name": "group", "type": "list<FHIR.Measure.Group>"},
        {
          "name": "supplementalData",
          "type": "list<FHIR.Measure.SupplementalData>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": {"name": "issue", "type": "list<FHIR.OperationOutcome.Issue>"}
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner.Qualification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "period", "type": "Period"},
        {"name": "issuer", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Signer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "party", "type": "Reference"},
        {"name": "signature", "type": "list<FHIR.Signature>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner.Role",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "organization", "type": "Reference"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "specialty", "type": "list<FHIR.CodeableConcept>"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "period", "type": "Period"},
        {"name": "location", "type": "list<FHIR.Reference>"},
        {"name": "healthcareService", "type": "list<FHIR.Reference>"},
        {"name": "endpoint", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ProcessResponseStatus"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "outcome", "type": "Coding"},
        {"name": "disposition", "type": "string"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "requestProviderIdentifier", "type": "Identifier"},
        {"name": "requestProviderReference", "type": "Reference"},
        {"name": "requestOrganizationIdentifier", "type": "Identifier"},
        {"name": "requestOrganizationReference", "type": "Reference"},
        {"name": "form", "type": "Coding"},
        {"name": "notes", "type": "list<FHIR.ProcessResponse.Notes>"},
        {"name": "error", "type": "list<FHIR.Coding>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.Explanation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonNotGiven", "type": "list<FHIR.CodeableConcept>"}
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
      "name": "NutritionRequest.Nutrient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "type": "CodeableConcept"},
        {"name": "amount", "type": "Quantity"}
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
      "name": "Contract.Friendly",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "count", "type": "integer"},
        {"name": "patients", "type": "Reference"}
      ]
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
      "name": "ClaimResponse.Adjudication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "reason", "type": "Coding"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "decimal"}
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
      "name": "ConsentExceptType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Container",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "description", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "capacity", "type": "Quantity"},
        {"name": "specimenQuantity", "type": "Quantity"},
        {"name": "additiveCodeableConcept", "type": "CodeableConcept"},
        {"name": "additiveReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "string",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "NutritionRequest.Texture",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "type": "CodeableConcept"},
        {"name": "foodType", "type": "CodeableConcept"}
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
      "name": "GuidePageKind",
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
      "name": "Provenance.RelatedAgent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "target", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Element",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "extension", "type": "list<FHIR.Extension>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ExplanationOfBenefitStatus"},
        {"name": "authorIdentifier", "type": "Identifier"},
        {"name": "authorReference", "type": "Reference"},
        {"name": "claimIdentifier", "type": "Identifier"},
        {"name": "claimReference", "type": "Reference"},
        {"name": "claimResponseIdentifier", "type": "Identifier"},
        {"name": "claimResponseReference", "type": "Reference"},
        {"name": "type", "type": "Coding"},
        {"name": "subType", "type": "list<FHIR.Coding>"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "billablePeriod", "type": "Period"},
        {"name": "outcome", "type": "Coding"},
        {"name": "disposition", "type": "string"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "facilityIdentifier", "type": "Identifier"},
        {"name": "facilityReference", "type": "Reference"},
        {"name": "related", "type": "list<FHIR.ExplanationOfBenefit.Related>"},
        {"name": "prescriptionIdentifier", "type": "Identifier"},
        {"name": "prescriptionReference", "type": "Reference"},
        {"name": "originalPrescriptionIdentifier", "type": "Identifier"},
        {"name": "originalPrescriptionReference", "type": "Reference"},
        {"name": "payee", "type": "ExplanationOfBenefit.Payee"},
        {"name": "referralIdentifier", "type": "Identifier"},
        {"name": "referralReference", "type": "Reference"},
        {
          "name": "information",
          "type": "list<FHIR.ExplanationOfBenefit.Information>"
        },
        {
          "name": "diagnosis",
          "type": "list<FHIR.ExplanationOfBenefit.Diagnosis>"
        },
        {
          "name": "procedure",
          "type": "list<FHIR.ExplanationOfBenefit.Procedure>"
        },
        {"name": "patientIdentifier", "type": "Identifier"},
        {"name": "patientReference", "type": "Reference"},
        {"name": "precedence", "type": "positiveInt"},
        {"name": "coverage", "type": "ExplanationOfBenefit.Coverage"},
        {"name": "accident", "type": "ExplanationOfBenefit.Accident"},
        {"name": "employmentImpacted", "type": "Period"},
        {"name": "hospitalization", "type": "Period"},
        {"name": "item", "type": "list<FHIR.ExplanationOfBenefit.Item>"},
        {"name": "addItem", "type": "list<FHIR.ExplanationOfBenefit.AddItem>"},
        {
          "name": "missingTeeth",
          "type": "list<FHIR.ExplanationOfBenefit.MissingTeeth>"
        },
        {"name": "totalCost", "type": "Money"},
        {"name": "unallocDeductable", "type": "Money"},
        {"name": "totalBenefit", "type": "Money"},
        {"name": "payment", "type": "ExplanationOfBenefit.Payment"},
        {"name": "form", "type": "Coding"},
        {"name": "note", "type": "list<FHIR.ExplanationOfBenefit.Note>"},
        {
          "name": "benefitBalance",
          "type": "list<FHIR.ExplanationOfBenefit.BenefitBalance>"
        }
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
      "name": "ImagingManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "patient", "type": "Reference"},
        {"name": "authoringTime", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "title", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "study", "type": "list<FHIR.ImagingManifest.Study>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "dateTime",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.DateTime"}
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
      "name": "CodeSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.CodeSystem.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "copyright", "type": "string"},
        {"name": "caseSensitive", "type": "boolean"},
        {"name": "valueSet", "type": "uri"},
        {"name": "hierarchyMeaning", "type": "CodeSystemHierarchyMeaning"},
        {"name": "compositional", "type": "boolean"},
        {"name": "versionNeeded", "type": "boolean"},
        {"name": "content", "type": "CodeSystemContentMode"},
        {"name": "count", "type": "unsignedInt"},
        {"name": "filter", "type": "list<FHIR.CodeSystem.Filter>"},
        {"name": "property", "type": "list<FHIR.CodeSystem.Property>"},
        {"name": "concept", "type": "list<FHIR.CodeSystem.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Location",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "location", "type": "Reference"},
        {"name": "status", "type": "EncounterLocationStatus"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "careTeam", "type": "list<FHIR.Claim.CareTeam>"},
        {"name": "diagnosisLinkId", "type": "list<FHIR.positiveInt>"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "servicedDate", "type": "date"},
        {"name": "servicedPeriod", "type": "Period"},
        {"name": "locationCoding", "type": "Coding"},
        {"name": "locationAddress", "type": "Address"},
        {"name": "locationReference", "type": "Reference"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"},
        {"name": "bodySite", "type": "Coding"},
        {"name": "subSite", "type": "list<FHIR.Coding>"},
        {"name": "detail", "type": "list<FHIR.Claim.Detail>"},
        {"name": "prosthesis", "type": "Claim.Prosthesis"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "List.Entry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "flag", "type": "CodeableConcept"},
        {"name": "deleted", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "item", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relationship", "type": "list<FHIR.CodeableConcept>"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "address", "type": "Address"},
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "organization", "type": "Reference"},
        {"name": "period", "type": "Period"}
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
      "name": "ExplanationOfBenefit.Financial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "benefitUnsignedInt", "type": "unsignedInt"},
        {"name": "benefitString", "type": "string"},
        {"name": "benefitMoney", "type": "Money"},
        {"name": "benefitUsedUnsignedInt", "type": "unsignedInt"},
        {"name": "benefitUsedMoney", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Prosthesis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "initial", "type": "boolean"},
        {"name": "priorDate", "type": "date"},
        {"name": "priorMaterial", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "status", "type": "CarePlanStatus"},
        {"name": "context", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "author", "type": "list<FHIR.Reference>"},
        {"name": "modified", "type": "dateTime"},
        {"name": "category", "type": "list<FHIR.CodeableConcept>"},
        {"name": "description", "type": "string"},
        {"name": "addresses", "type": "list<FHIR.Reference>"},
        {"name": "support", "type": "list<FHIR.Reference>"},
        {"name": "relatedPlan", "type": "list<FHIR.CarePlan.RelatedPlan>"},
        {"name": "careTeam", "type": "list<FHIR.Reference>"},
        {"name": "goal", "type": "list<FHIR.Reference>"},
        {"name": "activity", "type": "list<FHIR.CarePlan.Activity>"},
        {"name": "note", "type": "Annotation"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Subscription",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "criteria", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ContactPoint>"},
        {"name": "reason", "type": "string"},
        {"name": "status", "type": "SubscriptionStatus"},
        {"name": "error", "type": "string"},
        {"name": "channel", "type": "Subscription.Channel"},
        {"name": "end", "type": "instant"},
        {"name": "tag", "type": "list<FHIR.Coding>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Person",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "name", "type": "list<FHIR.HumanName>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
        {"name": "address", "type": "list<FHIR.Address>"},
        {"name": "photo", "type": "Attachment"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "active", "type": "boolean"},
        {"name": "link", "type": "list<FHIR.Person.Link>"}
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
      "name": "Questionnaire",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "concept",
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "status", "type": "QuestionnaireStatus"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "title", "type": "string"},
        {"name": "concept", "type": "list<FHIR.Coding>"},
        {"name": "subjectType", "type": "list<FHIR.code>"},
        {"name": "item", "type": "list<FHIR.Questionnaire.Item>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "link", "type": "list<FHIR.Bundle.Link>"},
        {"name": "fullUrl", "type": "uri"},
        {"name": "resource", "type": "ResourceContainer"},
        {"name": "search", "type": "Bundle.Search"},
        {"name": "request", "type": "Bundle.Request"},
        {"name": "response", "type": "Bundle.Response"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "name", "type": "list<FHIR.HumanName>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
        {"name": "deceasedBoolean", "type": "boolean"},
        {"name": "deceasedDateTime", "type": "dateTime"},
        {"name": "address", "type": "list<FHIR.Address>"},
        {"name": "maritalStatus", "type": "CodeableConcept"},
        {"name": "multipleBirthBoolean", "type": "boolean"},
        {"name": "multipleBirthInteger", "type": "integer"},
        {"name": "photo", "type": "list<FHIR.Attachment>"},
        {"name": "contact", "type": "list<FHIR.Patient.Contact>"},
        {"name": "animal", "type": "Patient.Animal"},
        {"name": "communication", "type": "list<FHIR.Patient.Communication>"},
        {"name": "generalPractitioner", "type": "list<FHIR.Reference>"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "link", "type": "list<FHIR.Patient.Link>"}
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
      "name": "RelatedResource",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "RelatedResourceType"},
        {"name": "display", "type": "string"},
        {"name": "citation", "type": "string"},
        {"name": "url", "type": "uri"},
        {"name": "document", "type": "Attachment"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "List",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ListStatus"},
        {"name": "mode", "type": "ListMode"},
        {"name": "title", "type": "string"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "orderedBy", "type": "CodeableConcept"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "entry", "type": "list<FHIR.List.Entry>"},
        {"name": "emptyReason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedPerson",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "relationship",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "patient", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "name", "type": "list<FHIR.HumanName>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
        {"name": "address", "type": "list<FHIR.Address>"},
        {"name": "photo", "type": "list<FHIR.Attachment>"},
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
      "name": "TestScript.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "description", "type": "string"}
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
      "name": "MedicationDispenseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "onsetAge", "type": "Age"},
        {"name": "onsetRange", "type": "Range"},
        {"name": "onsetPeriod", "type": "Period"},
        {"name": "onsetString", "type": "string"},
        {"name": "note", "type": "Annotation"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {
          "name": "baseLocation",
          "type": "list<FHIR.ImagingManifest.BaseLocation1>"
        },
        {"name": "instance", "type": "list<FHIR.ImagingManifest.Instance>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "kind", "type": "NamingSystemType"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.NamingSystem.Contact>"},
        {"name": "responsible", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "usage", "type": "string"},
        {"name": "uniqueId", "type": "list<FHIR.NamingSystem.UniqueId>"},
        {"name": "replacedBy", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "substance", "type": "CodeableConcept"},
        {"name": "certainty", "type": "AllergyIntoleranceCertainty"},
        {"name": "manifestation", "type": "list<FHIR.CodeableConcept>"},
        {"name": "description", "type": "string"},
        {"name": "onset", "type": "dateTime"},
        {"name": "severity", "type": "AllergyIntoleranceSeverity"},
        {"name": "exposureRoute", "type": "CodeableConcept"},
        {"name": "note", "type": "list<FHIR.Annotation>"}
      ]
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
      "name": "IdentifierUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.Repository",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "variantId", "type": "string"},
        {"name": "readId", "type": "string"}
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
      "name": "Specimen.Treatment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "procedure", "type": "CodeableConcept"},
        {"name": "additive", "type": "list<FHIR.Reference>"},
        {"name": "timeDateTime", "type": "dateTime"},
        {"name": "timePeriod", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "NutritionOrderStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "dateTime", "type": "dateTime"},
        {"name": "orderer", "type": "Reference"},
        {"name": "allergyIntolerance", "type": "list<FHIR.Reference>"},
        {
          "name": "foodPreferenceModifier",
          "type": "list<FHIR.CodeableConcept>"
        },
        {"name": "excludeFoodModifier", "type": "list<FHIR.CodeableConcept>"},
        {"name": "oralDiet", "type": "NutritionRequest.OralDiet"},
        {
          "name": "supplement",
          "type": "list<FHIR.NutritionRequest.Supplement>"
        },
        {"name": "enteralFormula", "type": "NutritionRequest.EnteralFormula"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.Entity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "ProvenanceEntityRole"},
        {"name": "type", "type": "Coding"},
        {"name": "reference", "type": "uri"},
        {"name": "display", "type": "string"},
        {"name": "agent", "type": "list<FHIR.Provenance.Agent>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Detail1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "fee", "type": "Money"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "masterIdentifier", "type": "Identifier"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "class", "type": "CodeableConcept"},
        {"name": "author", "type": "list<FHIR.Reference>"},
        {"name": "custodian", "type": "Reference"},
        {"name": "authenticator", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {"name": "indexed", "type": "instant"},
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "docStatus", "type": "CodeableConcept"},
        {"name": "relatesTo", "type": "list<FHIR.DocumentReference.RelatesTo>"},
        {"name": "description", "type": "string"},
        {"name": "securityLabel", "type": "list<FHIR.CodeableConcept>"},
        {"name": "content", "type": "list<FHIR.DocumentReference.Content>"},
        {"name": "context", "type": "DocumentReference.Context"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Address",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "AddressUse"},
        {"name": "type", "type": "AddressType"},
        {"name": "text", "type": "string"},
        {"name": "line", "type": "list<FHIR.string>"},
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
      "name": "CodeableConcept",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "coding", "type": "list<FHIR.Coding>"},
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actor", "type": "Reference"},
        {"name": "role", "type": "list<FHIR.CodeableConcept>"}
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
      "name": "Medication.Product",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "form", "type": "CodeableConcept"},
        {"name": "ingredient", "type": "list<FHIR.Medication.Ingredient>"},
        {"name": "batch", "type": "list<FHIR.Medication.Batch>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Money",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.BaseLocation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BodySite",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "patient", "type": "Reference"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "modifier", "type": "list<FHIR.CodeableConcept>"},
        {"name": "description", "type": "string"},
        {"name": "image", "type": "list<FHIR.Attachment>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "focal", "type": "boolean"},
        {"name": "coverageIdentifier", "type": "Identifier"},
        {"name": "coverageReference", "type": "Reference"},
        {"name": "businessArrangement", "type": "string"},
        {"name": "preAuthRef", "type": "list<FHIR.string>"},
        {"name": "claimResponse", "type": "Reference"},
        {"name": "originalRuleset", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Population1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "count", "type": "integer"},
        {"name": "patients", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Appointment.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<FHIR.CodeableConcept>"},
        {"name": "actor", "type": "Reference"},
        {"name": "required", "type": "ParticipantRequired"},
        {"name": "status", "type": "ParticipationStatus"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Expansion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "uri"},
        {"name": "timestamp", "type": "dateTime"},
        {"name": "total", "type": "integer"},
        {"name": "offset", "type": "integer"},
        {"name": "parameter", "type": "list<FHIR.ValueSet.Parameter>"},
        {"name": "contains", "type": "list<FHIR.ValueSet.Contains>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ConceptMap.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "copyright", "type": "string"},
        {"name": "sourceUri", "type": "uri"},
        {"name": "sourceReference", "type": "Reference"},
        {"name": "targetUri", "type": "uri"},
        {"name": "targetReference", "type": "Reference"},
        {"name": "group", "type": "list<FHIR.ConceptMap.Group>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConsentStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DataElement.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "name", "type": "list<FHIR.HumanName>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "address", "type": "list<FHIR.Address>"},
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "birthDate", "type": "date"},
        {"name": "photo", "type": "list<FHIR.Attachment>"},
        {"name": "role", "type": "list<FHIR.Practitioner.Role>"},
        {
          "name": "qualification",
          "type": "list<FHIR.Practitioner.Qualification>"
        },
        {"name": "communication", "type": "list<FHIR.CodeableConcept>"}
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
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "reference", "type": "string"},
        {"name": "display", "type": "string"}
      ]
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
      "name": "VisionPrescription",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "dateWritten", "type": "dateTime"},
        {"name": "patient", "type": "Reference"},
        {"name": "prescriber", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {"name": "dispense", "type": "list<FHIR.VisionPrescription.Dispense>"}
      ]
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
      "name": "InstanceAvailability",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "id",
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
        {"name": "type", "type": "list<FHIR.CodeableConcept>"},
        {"name": "period", "type": "Period"},
        {"name": "individual", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "timestamp", "type": "instant"},
        {"name": "event", "type": "Coding"},
        {"name": "response", "type": "MessageHeader.Response"},
        {"name": "source", "type": "MessageHeader.Source"},
        {"name": "destination", "type": "list<FHIR.MessageHeader.Destination>"},
        {"name": "enterer", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "receiver", "type": "Reference"},
        {"name": "responsible", "type": "Reference"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "data", "type": "list<FHIR.Reference>"}
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
      "name": "ClaimResponse.Payment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "adjustment", "type": "Money"},
        {"name": "adjustmentReason", "type": "Coding"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LibraryStatus",
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
        {"name": "target", "type": "Reference"}
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
      "name": "ValueSet.Contains",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "abstract", "type": "boolean"},
        {"name": "version", "type": "string"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "contains", "type": "list<FHIR.ValueSet.Contains>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.Financial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "benefitUnsignedInt", "type": "unsignedInt"},
        {"name": "benefitString", "type": "string"},
        {"name": "benefitMoney", "type": "Money"},
        {"name": "benefitUsedUnsignedInt", "type": "unsignedInt"},
        {"name": "benefitUsedMoney", "type": "Money"}
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
      "name": "NamingSystemType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PaymentNotice",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "PaymentNoticeStatus"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "targetIdentifier", "type": "Identifier"},
        {"name": "targetReference", "type": "Reference"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "responseIdentifier", "type": "Identifier"},
        {"name": "responseReference", "type": "Reference"},
        {"name": "paymentStatus", "type": "Coding"},
        {"name": "statusDate", "type": "date"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.AddItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "list<FHIR.positiveInt>"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "fee", "type": "Money"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication>"
        },
        {"name": "detail", "type": "list<FHIR.ClaimResponse.Detail1>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Range",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "low", "type": "Quantity"},
        {"name": "high", "type": "Quantity"}
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
      "name": "ImplementationGuide.Page",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "source", "type": "uri"},
        {"name": "title", "type": "string"},
        {"name": "kind", "type": "GuidePageKind"},
        {"name": "type", "type": "list<FHIR.code>"},
        {"name": "package", "type": "list<FHIR.string>"},
        {"name": "format", "type": "code"},
        {"name": "page", "type": "list<FHIR.ImplementationGuide.Page>"}
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
      "name": "MeasureReport.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "population", "type": "list<FHIR.MeasureReport.Population>"},
        {"name": "measureScore", "type": "decimal"},
        {"name": "stratifier", "type": "list<FHIR.MeasureReport.Stratifier>"},
        {
          "name": "supplementalData",
          "type": "list<FHIR.MeasureReport.SupplementalData>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "import", "type": "list<FHIR.uri>"},
        {"name": "include", "type": "list<FHIR.ValueSet.Include>"},
        {"name": "exclude", "type": "list<FHIR.ValueSet.Include>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy.BaseLocation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Exclude1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "designation",
        "type": "list<FHIR.ExpansionProfile.Designation2>"
      }
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.Note",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "text", "type": "string"}
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
      "name": "DomainResource",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "Narrative"},
        {"name": "contained", "type": "list<FHIR.ResourceContainer>"},
        {"name": "extension", "type": "list<FHIR.Extension>"},
        {"name": "modifierExtension", "type": "list<FHIR.Extension>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedResourceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "AllergyIntoleranceStatus"},
        {"name": "type", "type": "AllergyIntoleranceType"},
        {"name": "category", "type": "AllergyIntoleranceCategory"},
        {"name": "criticality", "type": "AllergyIntoleranceCriticality"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {"name": "attestedDate", "type": "dateTime"},
        {"name": "recorder", "type": "Reference"},
        {"name": "reporter", "type": "Reference"},
        {"name": "onset", "type": "dateTime"},
        {"name": "lastOccurrence", "type": "dateTime"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "reaction", "type": "list<FHIR.AllergyIntolerance.Reaction>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "EncounterStatus"},
        {"name": "statusHistory", "type": "list<FHIR.Encounter.StatusHistory>"},
        {"name": "class", "type": "Coding"},
        {"name": "type", "type": "list<FHIR.CodeableConcept>"},
        {"name": "priority", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {"name": "episodeOfCare", "type": "list<FHIR.Reference>"},
        {"name": "incomingReferral", "type": "list<FHIR.Reference>"},
        {"name": "participant", "type": "list<FHIR.Encounter.Participant>"},
        {"name": "appointment", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "length", "type": "Duration"},
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "indication", "type": "list<FHIR.Reference>"},
        {"name": "account", "type": "list<FHIR.Reference>"},
        {"name": "hospitalization", "type": "Encounter.Hospitalization"},
        {"name": "location", "type": "list<FHIR.Encounter.Location>"},
        {"name": "serviceProvider", "type": "Reference"},
        {"name": "partOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.FocalDevice",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "action", "type": "CodeableConcept"},
        {"name": "manipulated", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "ref", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Dependent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "id"},
        {"name": "variable", "type": "list<FHIR.string>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.ValuedItem1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entityCodeableConcept", "type": "CodeableConcept"},
        {"name": "entityReference", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "effectiveTime", "type": "dateTime"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionParticipantType",
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
      "name": "Claim.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "diagnosis", "type": "Coding"},
        {"name": "type", "type": "list<FHIR.Coding>"},
        {"name": "drg", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "id"},
        {"name": "extends", "type": "id"},
        {"name": "documentation", "type": "string"},
        {"name": "input", "type": "list<FHIR.StructureMap.Input>"},
        {"name": "rule", "type": "list<FHIR.StructureMap.Rule>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentDefinition.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Timing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "event", "type": "list<FHIR.dateTime>"},
        {"name": "repeat", "type": "Timing.Repeat"},
        {"name": "code", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "basedOn", "type": "list<FHIR.Reference>"},
        {"name": "parent", "type": "list<FHIR.Reference>"},
        {"name": "questionnaire", "type": "Reference"},
        {"name": "status", "type": "QuestionnaireResponseStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "authored", "type": "dateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "item", "type": "list<FHIR.QuestionnaireResponse.Item>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reference", "type": "Reference"},
        {"name": "userId", "type": "Identifier"},
        {"name": "altId", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "requestor", "type": "boolean"},
        {"name": "location", "type": "Reference"},
        {"name": "policy", "type": "list<FHIR.uri>"},
        {"name": "media", "type": "Coding"},
        {"name": "network", "type": "AuditEvent.Network"},
        {"name": "purposeOfUse", "type": "list<FHIR.Coding>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Property1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueString", "type": "string"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueDateTime", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "accession", "type": "Identifier"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "availability", "type": "InstanceAvailability"},
        {"name": "modalityList", "type": "list<FHIR.Coding>"},
        {"name": "patient", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "started", "type": "dateTime"},
        {"name": "basedOn", "type": "list<FHIR.Reference>"},
        {"name": "referrer", "type": "Reference"},
        {"name": "interpreter", "type": "Reference"},
        {
          "name": "baseLocation",
          "type": "list<FHIR.ImagingStudy.BaseLocation>"
        },
        {"name": "numberOfSeries", "type": "unsignedInt"},
        {"name": "numberOfInstances", "type": "unsignedInt"},
        {"name": "procedure", "type": "list<FHIR.Reference>"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "series", "type": "list<FHIR.ImagingStudy.Series>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Account",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "name", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "status", "type": "AccountStatus"},
        {"name": "active", "type": "Period"},
        {"name": "currency", "type": "Coding"},
        {"name": "balance", "type": "Money"},
        {"name": "coverage", "type": "list<FHIR.Reference>"},
        {"name": "coveragePeriod", "type": "Period"},
        {"name": "subject", "type": "Reference"},
        {"name": "owner", "type": "Reference"},
        {"name": "description", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Network",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "address", "type": "string"},
        {"name": "type", "type": "AuditEventAgentNetworkType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Actor",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "reference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "id"},
        {"name": "uri", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "comments", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContactPoint",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "ContactPointSystem"},
        {"name": "value", "type": "string"},
        {"name": "use", "type": "ContactPointUse"},
        {"name": "rank", "type": "positiveInt"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "responsibleParty", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionGroupingBehavior",
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
        {"name": "url", "type": "uri"},
        {"name": "value", "type": "System.Any"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueId", "type": "id"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueMarkdown", "type": "markdown"},
        {"name": "valueOid", "type": "oid"},
        {"name": "valuePositiveInt", "type": "positiveInt"},
        {"name": "valueString", "type": "string"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueUnsignedInt", "type": "unsignedInt"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueAge", "type": "Age"},
        {"name": "valueAnnotation", "type": "Annotation"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueCount", "type": "Count"},
        {"name": "valueDistance", "type": "Distance"},
        {"name": "valueDuration", "type": "Duration"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueMoney", "type": "Money"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.BenefitBalance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "subCategory", "type": "Coding"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "network", "type": "Coding"},
        {"name": "unit", "type": "Coding"},
        {"name": "term", "type": "Coding"},
        {
          "name": "financial",
          "type": "list<FHIR.ExplanationOfBenefit.Financial>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group.Characteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "exclude", "type": "boolean"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "practitioner", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "code", "type": "list<FHIR.CodeableConcept>"},
        {"name": "specialty", "type": "list<FHIR.CodeableConcept>"},
        {"name": "location", "type": "list<FHIR.Reference>"},
        {"name": "healthcareService", "type": "list<FHIR.Reference>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "period", "type": "Period"},
        {
          "name": "availableTime",
          "type": "list<FHIR.PractitionerRole.AvailableTime>"
        },
        {
          "name": "notAvailable",
          "type": "list<FHIR.PractitionerRole.NotAvailable>"
        },
        {"name": "availabilityExceptions", "type": "string"},
        {"name": "endpoint", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionRequest.OralDiet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<FHIR.CodeableConcept>"},
        {"name": "schedule", "type": "list<FHIR.Timing>"},
        {"name": "nutrient", "type": "list<FHIR.NutritionRequest.Nutrient>"},
        {"name": "texture", "type": "list<FHIR.NutritionRequest.Texture>"},
        {"name": "fluidConsistencyType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "instruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.Section",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "title", "type": "string"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "text", "type": "Narrative"},
        {"name": "mode", "type": "code"},
        {"name": "orderedBy", "type": "CodeableConcept"},
        {"name": "entry", "type": "list<FHIR.Reference>"},
        {"name": "emptyReason", "type": "CodeableConcept"},
        {"name": "section", "type": "list<FHIR.Composition.Section>"}
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
      "name": "Immunization",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "vaccineCode",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "code"},
        {"name": "date", "type": "dateTime"},
        {"name": "vaccineCode", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {"name": "wasNotGiven", "type": "boolean"},
        {"name": "reported", "type": "boolean"},
        {"name": "performer", "type": "Reference"},
        {"name": "requester", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "location", "type": "Reference"},
        {"name": "lotNumber", "type": "string"},
        {"name": "expirationDate", "type": "date"},
        {"name": "site", "type": "CodeableConcept"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "doseQuantity", "type": "Quantity"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "explanation", "type": "Immunization.Explanation"},
        {"name": "reaction", "type": "list<FHIR.Immunization.Reaction>"},
        {
          "name": "vaccinationProtocol",
          "type": "list<FHIR.Immunization.VaccinationProtocol>"
        }
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
        {"name": "collector", "type": "Reference"},
        {"name": "collectedDateTime", "type": "dateTime"},
        {"name": "collectedPeriod", "type": "Period"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "bodySite", "type": "CodeableConcept"}
      ]
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
      "name": "Sequence.Quality",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Sequence.Outer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "start", "type": "integer"},
        {"name": "end", "type": "integer"}
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
      "name": "decimal",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Decimal"}
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Request",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "AggregationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Person.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "target", "type": "Reference"},
        {"name": "assurance", "type": "IdentityAssuranceLevel"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "positiveInt"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication>"
        },
        {"name": "detail", "type": "list<FHIR.ClaimResponse.Detail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Filter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "description", "type": "string"},
        {"name": "operator", "type": "list<FHIR.code>"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "responseIdentifier", "type": "Identifier"},
        {"name": "responseReference", "type": "Reference"},
        {"name": "submitterIdentifier", "type": "Identifier"},
        {"name": "submitterReference", "type": "Reference"},
        {"name": "payeeIdentifier", "type": "Identifier"},
        {"name": "payeeReference", "type": "Reference"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ReferralRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "basedOn", "type": "list<FHIR.Reference>"},
        {"name": "parent", "type": "Identifier"},
        {"name": "status", "type": "ReferralStatus"},
        {"name": "category", "type": "ReferralCategory"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "priority", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "fulfillmentTime", "type": "Period"},
        {"name": "authored", "type": "dateTime"},
        {"name": "requester", "type": "Reference"},
        {"name": "specialty", "type": "CodeableConcept"},
        {"name": "recipient", "type": "list<FHIR.Reference>"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "serviceRequested", "type": "list<FHIR.CodeableConcept>"},
        {"name": "supportingInformation", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "CodeableConcept"},
        {"name": "definition", "type": "Reference"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "reasonCode", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonReference", "type": "list<FHIR.Reference>"},
        {"name": "goal", "type": "list<FHIR.Reference>"},
        {"name": "status", "type": "CarePlanActivityStatus"},
        {"name": "statusReason", "type": "CodeableConcept"},
        {"name": "prohibited", "type": "boolean"},
        {"name": "scheduledTiming", "type": "Timing"},
        {"name": "scheduledPeriod", "type": "Period"},
        {"name": "scheduledString", "type": "string"},
        {"name": "location", "type": "Reference"},
        {"name": "performer", "type": "list<FHIR.Reference>"},
        {"name": "productCodeableConcept", "type": "CodeableConcept"},
        {"name": "productReference", "type": "Reference"},
        {"name": "dailyAmount", "type": "Quantity"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "description", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.Protocol",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseSequence", "type": "positiveInt"},
        {"name": "description", "type": "string"},
        {"name": "authority", "type": "Reference"},
        {"name": "series", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "sequenceType",
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
      "name": "Condition.Stage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "summary", "type": "CodeableConcept"},
        {"name": "assessment", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "subtype", "type": "list<FHIR.Coding>"},
        {"name": "action", "type": "AuditEventAction"},
        {"name": "recorded", "type": "instant"},
        {"name": "outcome", "type": "AuditEventOutcome"},
        {"name": "outcomeDesc", "type": "string"},
        {"name": "purposeOfEvent", "type": "list<FHIR.Coding>"},
        {"name": "agent", "type": "list<FHIR.AuditEvent.Agent>"},
        {"name": "source", "type": "AuditEvent.Source"},
        {"name": "entity", "type": "list<FHIR.AuditEvent.Entity>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.CareTeam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "responsible", "type": "boolean"},
        {"name": "role", "type": "Coding"},
        {"name": "qualification", "type": "Coding"}
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
      "name": "SearchParamType",
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
      "name": "Sequence.StructureVariant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "precisionOfBoundaries", "type": "string"},
        {"name": "reportedaCGHRatio", "type": "decimal"},
        {"name": "length", "type": "integer"},
        {"name": "outer", "type": "Sequence.Outer"},
        {"name": "inner", "type": "Sequence.Inner"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "basedOn", "type": "list<FHIR.Reference>"},
        {"name": "requisition", "type": "Identifier"},
        {"name": "parent", "type": "list<FHIR.Reference>"},
        {"name": "status", "type": "TaskStatus"},
        {"name": "statusReason", "type": "CodeableConcept"},
        {"name": "businessStatus", "type": "CodeableConcept"},
        {"name": "stage", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "priority", "type": "TaskPriority"},
        {"name": "description", "type": "string"},
        {"name": "focus", "type": "Reference"},
        {"name": "for", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {"name": "lastModified", "type": "dateTime"},
        {"name": "requester", "type": "Reference"},
        {"name": "owner", "type": "Reference"},
        {"name": "performerType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "fulfillment", "type": "Task.Fulfillment"},
        {"name": "definition", "type": "uri"},
        {"name": "input", "type": "list<FHIR.Task.Input>"},
        {"name": "output", "type": "list<FHIR.Task.Output>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.Error",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "code", "type": "Coding"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "kind", "type": "OperationKind"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.OperationDefinition.Contact>"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "idempotent", "type": "boolean"},
        {"name": "code", "type": "code"},
        {"name": "comment", "type": "string"},
        {"name": "base", "type": "Reference"},
        {"name": "system", "type": "boolean"},
        {"name": "type", "type": "list<FHIR.code>"},
        {"name": "instance", "type": "boolean"},
        {
          "name": "parameter",
          "type": "list<FHIR.OperationDefinition.Parameter>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.Inner",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "start", "type": "integer"},
        {"name": "end", "type": "integer"}
      ]
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
      "name": "TaskStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SupplyDelivery",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "SupplyDeliveryStatus"},
        {"name": "patient", "type": "Reference"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "suppliedItemCodeableConcept", "type": "CodeableConcept"},
        {"name": "suppliedItemReference", "type": "Reference"},
        {"name": "supplier", "type": "Reference"},
        {"name": "whenPrepared", "type": "Period"},
        {"name": "time", "type": "dateTime"},
        {"name": "destination", "type": "Reference"},
        {"name": "receiver", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Rest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "RestfulConformanceMode"},
        {"name": "documentation", "type": "string"},
        {"name": "security", "type": "Conformance.Security"},
        {"name": "resource", "type": "list<FHIR.Conformance.Resource>"},
        {"name": "interaction", "type": "list<FHIR.Conformance.Interaction1>"},
        {"name": "searchParam", "type": "list<FHIR.Conformance.SearchParam>"},
        {"name": "operation", "type": "list<FHIR.Conformance.Operation>"},
        {"name": "compartment", "type": "list<FHIR.uri>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasurePopulationType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "required", "type": "boolean"},
        {"name": "context", "type": "id"},
        {"name": "contextType", "type": "StructureMapContextType"},
        {"name": "element", "type": "string"},
        {"name": "listMode", "type": "StructureMapListMode"},
        {"name": "variable", "type": "id"},
        {"name": "condition", "type": "string"},
        {"name": "check", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "source", "type": "uri"},
        {"name": "sourceVersion", "type": "string"},
        {"name": "target", "type": "uri"},
        {"name": "targetVersion", "type": "string"},
        {"name": "element", "type": "list<FHIR.ConceptMap.Element>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Entity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "reference", "type": "Reference"},
        {"name": "type", "type": "Coding"},
        {"name": "role", "type": "Coding"},
        {"name": "lifecycle", "type": "Coding"},
        {"name": "securityLabel", "type": "list<FHIR.Coding>"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "query", "type": "base64Binary"},
        {"name": "detail", "type": "list<FHIR.AuditEvent.Detail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "type", "type": "sequenceType"},
        {"name": "coordinateSystem", "type": "integer"},
        {"name": "patient", "type": "Reference"},
        {"name": "specimen", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "referenceSeq", "type": "Sequence.ReferenceSeq"},
        {"name": "variant", "type": "list<FHIR.Sequence.Variant>"},
        {"name": "observedSeq", "type": "string"},
        {"name": "quality", "type": "list<FHIR.Sequence.Quality>"},
        {"name": "readCoverage", "type": "integer"},
        {"name": "repository", "type": "list<FHIR.Sequence.Repository>"},
        {"name": "pointer", "type": "list<FHIR.Reference>"},
        {
          "name": "structureVariant",
          "type": "list<FHIR.Sequence.StructureVariant>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "daysOfWeek", "type": "list<FHIR.DaysOfWeek>"},
        {"name": "allDay", "type": "boolean"},
        {"name": "availableStartTime", "type": "time"},
        {"name": "availableEndTime", "type": "time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingManifest.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sopClass", "type": "oid"},
        {"name": "uid", "type": "oid"}
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
      "name": "CodeSystem.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "uri", "type": "uri"},
        {"name": "description", "type": "string"},
        {"name": "type", "type": "PropertyType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ParameterDefinition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "code"},
        {"name": "use", "type": "code"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "documentation", "type": "string"},
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "EligibilityRequestStatus"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "insurerIdentifier", "type": "Identifier"},
        {"name": "insurerReference", "type": "Reference"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "priority", "type": "Coding"},
        {"name": "entererIdentifier", "type": "Identifier"},
        {"name": "entererReference", "type": "Reference"},
        {"name": "facilityIdentifier", "type": "Identifier"},
        {"name": "facilityReference", "type": "Reference"},
        {"name": "patientIdentifier", "type": "Identifier"},
        {"name": "patientReference", "type": "Reference"},
        {"name": "coverageIdentifier", "type": "Identifier"},
        {"name": "coverageReference", "type": "Reference"},
        {"name": "businessArrangement", "type": "string"},
        {"name": "servicedDate", "type": "date"},
        {"name": "servicedPeriod", "type": "Period"},
        {"name": "benefitCategory", "type": "Coding"},
        {"name": "benefitSubCategory", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Payment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "adjustment", "type": "Money"},
        {"name": "adjustmentReason", "type": "Coding"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Parameters.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueId", "type": "id"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueMarkdown", "type": "markdown"},
        {"name": "valueOid", "type": "oid"},
        {"name": "valuePositiveInt", "type": "positiveInt"},
        {"name": "valueString", "type": "string"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueUnsignedInt", "type": "unsignedInt"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueAge", "type": "Age"},
        {"name": "valueAnnotation", "type": "Annotation"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueCount", "type": "Count"},
        {"name": "valueDistance", "type": "Distance"},
        {"name": "valueDuration", "type": "Duration"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueMoney", "type": "Money"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"},
        {"name": "resource", "type": "ResourceContainer"},
        {"name": "part", "type": "list<FHIR.Parameters.Parameter>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DecisionSupportServiceModule",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "code"},
        {"name": "experimental", "type": "boolean"},
        {"name": "description", "type": "string"},
        {"name": "purpose", "type": "string"},
        {"name": "usage", "type": "string"},
        {"name": "publicationDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "coverage", "type": "list<FHIR.UsageContext>"},
        {"name": "topic", "type": "list<FHIR.CodeableConcept>"},
        {"name": "contributor", "type": "list<FHIR.Contributor>"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ContactDetail>"},
        {"name": "copyright", "type": "string"},
        {"name": "relatedResource", "type": "list<FHIR.RelatedResource>"},
        {"name": "trigger", "type": "list<FHIR.TriggerDefinition>"},
        {"name": "parameter", "type": "list<FHIR.ParameterDefinition>"},
        {"name": "dataRequirement", "type": "list<FHIR.DataRequirement>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "resourceType", "type": "Coding"},
        {"name": "partyIdentifier", "type": "Identifier"},
        {"name": "partyReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataRequirement.DateFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueDuration", "type": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.Variant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "MedicationDispense",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "medicationCodeableConcept",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "MedicationDispenseStatus"},
        {"name": "medicationCodeableConcept", "type": "CodeableConcept"},
        {"name": "medicationReference", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "dispenser", "type": "Reference"},
        {"name": "dispensingOrganization", "type": "Reference"},
        {"name": "authorizingPrescription", "type": "list<FHIR.Reference>"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "daysSupply", "type": "Quantity"},
        {"name": "whenPrepared", "type": "dateTime"},
        {"name": "whenHandedOver", "type": "dateTime"},
        {"name": "destination", "type": "Reference"},
        {"name": "receiver", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {
          "name": "dosageInstruction",
          "type": "list<FHIR.MedicationDispense.DosageInstruction>"
        },
        {"name": "substitution", "type": "MedicationDispense.Substitution"},
        {
          "name": "eventHistory",
          "type": "list<FHIR.MedicationDispense.EventHistory>"
        }
      ]
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
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "category", "type": "list<FHIR.CodeableConcept>"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "instance", "type": "list<FHIR.Substance.Instance>"},
        {"name": "ingredient", "type": "list<FHIR.Substance.Ingredient>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Legal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resource", "type": "Reference"},
        {"name": "param", "type": "list<FHIR.TestScript.Param>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "attachment", "type": "Attachment"},
        {"name": "format", "type": "list<FHIR.Coding>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Linkage.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "LinkageType"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "linkId", "type": "string"},
        {"name": "concept", "type": "list<FHIR.Coding>"},
        {"name": "prefix", "type": "string"},
        {"name": "text", "type": "string"},
        {"name": "type", "type": "QuestionnaireItemType"},
        {"name": "enableWhen", "type": "list<FHIR.Questionnaire.EnableWhen>"},
        {"name": "required", "type": "boolean"},
        {"name": "repeats", "type": "boolean"},
        {"name": "readOnly", "type": "boolean"},
        {"name": "maxLength", "type": "integer"},
        {"name": "options", "type": "Reference"},
        {"name": "option", "type": "list<FHIR.Questionnaire.Option>"},
        {"name": "initialBoolean", "type": "boolean"},
        {"name": "initialDecimal", "type": "decimal"},
        {"name": "initialInteger", "type": "integer"},
        {"name": "initialDate", "type": "date"},
        {"name": "initialDateTime", "type": "dateTime"},
        {"name": "initialInstant", "type": "instant"},
        {"name": "initialTime", "type": "time"},
        {"name": "initialString", "type": "string"},
        {"name": "initialUri", "type": "uri"},
        {"name": "initialAttachment", "type": "Attachment"},
        {"name": "initialCoding", "type": "Coding"},
        {"name": "initialQuantity", "type": "Quantity"},
        {"name": "initialReference", "type": "Reference"},
        {"name": "item", "type": "list<FHIR.Questionnaire.Item>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "equivalence", "type": "ConceptMapEquivalence"},
        {"name": "comments", "type": "string"},
        {"name": "dependsOn", "type": "list<FHIR.ConceptMap.DependsOn>"},
        {"name": "product", "type": "list<FHIR.ConceptMap.DependsOn>"}
      ]
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
      "name": "TestScript.Teardown",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "action", "type": "list<FHIR.TestScript.Action2>"}
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"},
        {"name": "value", "type": "string"}
      ]
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
      "name": "ImmunizationRecommendation.Recommendation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "dateTime"},
        {"name": "vaccineCode", "type": "CodeableConcept"},
        {"name": "doseNumber", "type": "positiveInt"},
        {"name": "forecastStatus", "type": "CodeableConcept"},
        {
          "name": "dateCriterion",
          "type": "list<FHIR.ImmunizationRecommendation.DateCriterion>"
        },
        {"name": "protocol", "type": "ImmunizationRecommendation.Protocol"},
        {"name": "supportingImmunization", "type": "list<FHIR.Reference>"},
        {"name": "supportingPatientInformation", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AppointmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "appointment", "type": "Reference"},
        {"name": "start", "type": "instant"},
        {"name": "end", "type": "instant"},
        {"name": "participantType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "actor", "type": "Reference"},
        {"name": "participantStatus", "type": "code"},
        {"name": "comment", "type": "string"}
      ]
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
      "name": "TriggerDefinition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "TriggerType"},
        {"name": "eventName", "type": "string"},
        {"name": "eventTimingTiming", "type": "Timing"},
        {"name": "eventTimingReference", "type": "Reference"},
        {"name": "eventTimingDate", "type": "date"},
        {"name": "eventTimingDateTime", "type": "dateTime"},
        {"name": "eventData", "type": "DataRequirement"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Communication",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "basedOn", "type": "list<FHIR.Reference>"},
        {"name": "parent", "type": "list<FHIR.Reference>"},
        {"name": "status", "type": "CommunicationStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "medium", "type": "list<FHIR.CodeableConcept>"},
        {"name": "subject", "type": "Reference"},
        {"name": "topic", "type": "list<FHIR.Reference>"},
        {"name": "context", "type": "Reference"},
        {"name": "sent", "type": "dateTime"},
        {"name": "received", "type": "dateTime"},
        {"name": "sender", "type": "Reference"},
        {"name": "recipient", "type": "list<FHIR.Reference>"},
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "payload", "type": "list<FHIR.Communication.Payload>"},
        {"name": "note", "type": "list<FHIR.Annotation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Term",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "issued", "type": "dateTime"},
        {"name": "applies", "type": "Period"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subType", "type": "CodeableConcept"},
        {"name": "topic", "type": "list<FHIR.Reference>"},
        {"name": "action", "type": "list<FHIR.CodeableConcept>"},
        {"name": "actionReason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "agent", "type": "list<FHIR.Contract.Agent1>"},
        {"name": "text", "type": "string"},
        {"name": "valuedItem", "type": "list<FHIR.Contract.ValuedItem1>"},
        {"name": "group", "type": "list<FHIR.Contract.Term>"}
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
      "name": "Conformance.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "definition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Animal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "species", "type": "CodeableConcept"},
        {"name": "breed", "type": "CodeableConcept"},
        {"name": "genderStatus", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "expiry", "type": "dateTime"},
        {"name": "quantity", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Library",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "status", "type": "LibraryStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "description", "type": "string"},
        {"name": "purpose", "type": "string"},
        {"name": "usage", "type": "string"},
        {"name": "publicationDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "coverage", "type": "list<FHIR.UsageContext>"},
        {"name": "topic", "type": "list<FHIR.CodeableConcept>"},
        {"name": "contributor", "type": "list<FHIR.Contributor>"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ContactDetail>"},
        {"name": "copyright", "type": "string"},
        {"name": "relatedResource", "type": "list<FHIR.RelatedResource>"},
        {"name": "parameter", "type": "list<FHIR.ParameterDefinition>"},
        {"name": "dataRequirement", "type": "list<FHIR.DataRequirement>"},
        {"name": "content", "type": "Attachment"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "EncounterStatus"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Information",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "code", "type": "Coding"},
        {"name": "timingDate", "type": "date"},
        {"name": "timingPeriod", "type": "Period"},
        {"name": "valueString", "type": "string"},
        {"name": "valueQuantity", "type": "Quantity"}
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
      "name": "ImplementationGuide.Package",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "resource", "type": "list<FHIR.ImplementationGuide.Resource>"}
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
      "name": "Consent",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "ConsentStatus"},
        {"name": "category", "type": "list<FHIR.CodeableConcept>"},
        {"name": "dateTime", "type": "dateTime"},
        {"name": "period", "type": "Period"},
        {"name": "patient", "type": "Reference"},
        {"name": "consentor", "type": "list<FHIR.Reference>"},
        {"name": "organization", "type": "Reference"},
        {"name": "sourceAttachment", "type": "Attachment"},
        {"name": "sourceIdentifier", "type": "Identifier"},
        {"name": "sourceReference", "type": "Reference"},
        {"name": "policy", "type": "uri"},
        {"name": "recipient", "type": "list<FHIR.Reference>"},
        {"name": "purpose", "type": "list<FHIR.Coding>"},
        {"name": "except", "type": "list<FHIR.Consent.Except>"}
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
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "patient", "type": "Reference"},
        {
          "name": "recommendation",
          "type": "list<FHIR.ImmunizationRecommendation.Recommendation>"
        }
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
      "name": "AuditEventAction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetric.Calibration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "DeviceMetricCalibrationType"},
        {"name": "state", "type": "DeviceMetricCalibrationState"},
        {"name": "time", "type": "instant"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Detail1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "fee", "type": "Money"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
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
      "name": "MeasureDataUsage",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Goal.Outcome",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resultCodeableConcept", "type": "CodeableConcept"},
        {"name": "resultReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Information",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "code", "type": "Coding"},
        {"name": "timingDate", "type": "date"},
        {"name": "timingPeriod", "type": "Period"},
        {"name": "valueString", "type": "string"},
        {"name": "valueQuantity", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinitionCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Conformance",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "date", "type": "dateTime"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.Conformance.Contact>"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "copyright", "type": "string"},
        {"name": "kind", "type": "ConformanceStatementKind"},
        {"name": "instantiates", "type": "list<FHIR.uri>"},
        {"name": "software", "type": "Conformance.Software"},
        {"name": "implementation", "type": "Conformance.Implementation"},
        {"name": "fhirVersion", "type": "id"},
        {"name": "acceptUnknown", "type": "UnknownContentCode"},
        {"name": "format", "type": "list<FHIR.code>"},
        {"name": "profile", "type": "list<FHIR.Reference>"},
        {"name": "rest", "type": "list<FHIR.Conformance.Rest>"},
        {"name": "messaging", "type": "list<FHIR.Conformance.Messaging>"},
        {"name": "document", "type": "list<FHIR.Conformance.Document>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "masterIdentifier", "type": "Identifier"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "recipient", "type": "list<FHIR.Reference>"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "author", "type": "list<FHIR.Reference>"},
        {"name": "created", "type": "dateTime"},
        {"name": "source", "type": "uri"},
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "description", "type": "string"},
        {"name": "content", "type": "list<FHIR.DocumentManifest.Content>"},
        {"name": "related", "type": "list<FHIR.DocumentManifest.Related>"}
      ]
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
      "name": "MedicationAdministration.EventHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "MedicationAdministrationStatus"},
        {"name": "action", "type": "CodeableConcept"},
        {"name": "dateTime", "type": "dateTime"},
        {"name": "actor", "type": "Reference"},
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ObservationStatus"},
        {"name": "category", "type": "list<FHIR.CodeableConcept>"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "effectiveDateTime", "type": "dateTime"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "issued", "type": "instant"},
        {"name": "performer", "type": "list<FHIR.Reference>"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueString", "type": "string"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "dataAbsentReason", "type": "CodeableConcept"},
        {"name": "interpretation", "type": "CodeableConcept"},
        {"name": "comment", "type": "string"},
        {"name": "bodySite", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "specimen", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {
          "name": "referenceRange",
          "type": "list<FHIR.Observation.ReferenceRange>"
        },
        {"name": "related", "type": "list<FHIR.Observation.Related>"},
        {"name": "component", "type": "list<FHIR.Observation.Component>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Security",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "cors", "type": "boolean"},
        {"name": "service", "type": "list<FHIR.CodeableConcept>"},
        {"name": "description", "type": "string"},
        {"name": "certificate", "type": "list<FHIR.Conformance.Certificate>"}
      ]
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
      "name": "Annotation",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "authorReference", "type": "Reference"},
        {"name": "authorString", "type": "string"},
        {"name": "time", "type": "dateTime"},
        {"name": "text", "type": "string"}
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
      "name": "MessageSignificanceCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "ExpansionProfile.CodeSystem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "include", "type": "ExpansionProfile.Include"},
        {"name": "exclude", "type": "ExpansionProfile.Exclude"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Include",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "concept", "type": "list<FHIR.ValueSet.Concept>"},
        {"name": "filter", "type": "list<FHIR.ValueSet.Filter>"}
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
      "name": "DeviceComponent",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "lastSystemChange", "type": "instant"},
        {"name": "source", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {"name": "operationalStatus", "type": "list<FHIR.CodeableConcept>"},
        {"name": "parameterGroup", "type": "CodeableConcept"},
        {"name": "measurementPrinciple", "type": "Measmnt_Principle"},
        {
          "name": "productionSpecification",
          "type": "list<FHIR.DeviceComponent.ProductionSpecification>"
        },
        {"name": "languageCode", "type": "CodeableConcept"}
      ]
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
      "name": "ObservationStatus",
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
        {"name": "versionId", "type": "id"},
        {"name": "lastUpdated", "type": "instant"},
        {"name": "profile", "type": "list<FHIR.uri>"},
        {"name": "security", "type": "list<FHIR.Coding>"},
        {"name": "tag", "type": "list<FHIR.Coding>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Software",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "releaseDate", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Implementation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.Destination",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "target", "type": "Reference"},
        {"name": "endpoint", "type": "uri"}
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
      "name": "AdministrativeGender",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport.Image",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "comment", "type": "string"},
        {"name": "link", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "serviceCategory", "type": "CodeableConcept"},
        {"name": "serviceType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "specialty", "type": "list<FHIR.CodeableConcept>"},
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
      "name": "Contributor",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ContributorType"},
        {"name": "name", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ContactDetail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Concept",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "designation", "type": "list<FHIR.ValueSet.Designation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConformanceStatementKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "EnrollmentResponseStatus"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "string"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "requestProviderIdentifier", "type": "Identifier"},
        {"name": "requestProviderReference", "type": "Reference"},
        {"name": "requestOrganizationIdentifier", "type": "Identifier"},
        {"name": "requestOrganizationReference", "type": "Reference"}
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
      "name": "EpisodeOfCare.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "EpisodeOfCareStatus"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition.DynamicValue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "path", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation.ReferenceRange",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "low", "type": "Quantity"},
        {"name": "high", "type": "Quantity"},
        {"name": "meaning", "type": "list<FHIR.CodeableConcept>"},
        {"name": "age", "type": "Range"},
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "status", "type": "CoverageStatus"},
        {"name": "issuerIdentifier", "type": "Identifier"},
        {"name": "issuerReference", "type": "Reference"},
        {"name": "isAgreement", "type": "boolean"},
        {"name": "bin", "type": "string"},
        {"name": "period", "type": "Period"},
        {"name": "type", "type": "Coding"},
        {"name": "planholderIdentifier", "type": "Identifier"},
        {"name": "planholderReference", "type": "Reference"},
        {"name": "beneficiaryIdentifier", "type": "Identifier"},
        {"name": "beneficiaryReference", "type": "Reference"},
        {"name": "relationship", "type": "Coding"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "group", "type": "string"},
        {"name": "subGroup", "type": "string"},
        {"name": "plan", "type": "string"},
        {"name": "subPlan", "type": "string"},
        {"name": "class", "type": "string"},
        {"name": "dependent", "type": "positiveInt"},
        {"name": "sequence", "type": "positiveInt"},
        {"name": "network", "type": "string"},
        {"name": "contract", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentDefinition.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "param", "type": "list<FHIR.string>"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResourceContainer",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "Account", "type": "Account"},
        {"name": "ActivityDefinition", "type": "ActivityDefinition"},
        {"name": "AllergyIntolerance", "type": "AllergyIntolerance"},
        {"name": "Appointment", "type": "Appointment"},
        {"name": "AppointmentResponse", "type": "AppointmentResponse"},
        {"name": "AuditEvent", "type": "AuditEvent"},
        {"name": "Basic", "type": "Basic"},
        {"name": "Binary", "type": "Binary"},
        {"name": "BodySite", "type": "BodySite"},
        {"name": "Bundle", "type": "Bundle"},
        {"name": "CarePlan", "type": "CarePlan"},
        {"name": "CareTeam", "type": "CareTeam"},
        {"name": "Claim", "type": "Claim"},
        {"name": "ClaimResponse", "type": "ClaimResponse"},
        {"name": "ClinicalImpression", "type": "ClinicalImpression"},
        {"name": "CodeSystem", "type": "CodeSystem"},
        {"name": "Communication", "type": "Communication"},
        {"name": "CommunicationRequest", "type": "CommunicationRequest"},
        {"name": "CompartmentDefinition", "type": "CompartmentDefinition"},
        {"name": "Composition", "type": "Composition"},
        {"name": "ConceptMap", "type": "ConceptMap"},
        {"name": "Condition", "type": "Condition"},
        {"name": "Conformance", "type": "Conformance"},
        {"name": "Consent", "type": "Consent"},
        {"name": "Contract", "type": "Contract"},
        {"name": "Coverage", "type": "Coverage"},
        {"name": "DataElement", "type": "DataElement"},
        {
          "name": "DecisionSupportServiceModule",
          "type": "DecisionSupportServiceModule"
        },
        {"name": "DetectedIssue", "type": "DetectedIssue"},
        {"name": "Device", "type": "Device"},
        {"name": "DeviceComponent", "type": "DeviceComponent"},
        {"name": "DeviceMetric", "type": "DeviceMetric"},
        {"name": "DeviceUseRequest", "type": "DeviceUseRequest"},
        {"name": "DeviceUseStatement", "type": "DeviceUseStatement"},
        {"name": "DiagnosticReport", "type": "DiagnosticReport"},
        {"name": "DiagnosticRequest", "type": "DiagnosticRequest"},
        {"name": "DocumentManifest", "type": "DocumentManifest"},
        {"name": "DocumentReference", "type": "DocumentReference"},
        {"name": "EligibilityRequest", "type": "EligibilityRequest"},
        {"name": "EligibilityResponse", "type": "EligibilityResponse"},
        {"name": "Encounter", "type": "Encounter"},
        {"name": "Endpoint", "type": "Endpoint"},
        {"name": "EnrollmentRequest", "type": "EnrollmentRequest"},
        {"name": "EnrollmentResponse", "type": "EnrollmentResponse"},
        {"name": "EpisodeOfCare", "type": "EpisodeOfCare"},
        {"name": "ExpansionProfile", "type": "ExpansionProfile"},
        {"name": "ExplanationOfBenefit", "type": "ExplanationOfBenefit"},
        {"name": "FamilyMemberHistory", "type": "FamilyMemberHistory"},
        {"name": "Flag", "type": "Flag"},
        {"name": "Goal", "type": "Goal"},
        {"name": "Group", "type": "Group"},
        {"name": "GuidanceResponse", "type": "GuidanceResponse"},
        {"name": "HealthcareService", "type": "HealthcareService"},
        {"name": "ImagingManifest", "type": "ImagingManifest"},
        {"name": "ImagingStudy", "type": "ImagingStudy"},
        {"name": "Immunization", "type": "Immunization"},
        {
          "name": "ImmunizationRecommendation",
          "type": "ImmunizationRecommendation"
        },
        {"name": "ImplementationGuide", "type": "ImplementationGuide"},
        {"name": "Library", "type": "Library"},
        {"name": "Linkage", "type": "Linkage"},
        {"name": "List", "type": "List"},
        {"name": "Location", "type": "Location"},
        {"name": "Measure", "type": "Measure"},
        {"name": "MeasureReport", "type": "MeasureReport"},
        {"name": "Media", "type": "Media"},
        {"name": "Medication", "type": "Medication"},
        {
          "name": "MedicationAdministration",
          "type": "MedicationAdministration"
        },
        {"name": "MedicationDispense", "type": "MedicationDispense"},
        {"name": "MedicationOrder", "type": "MedicationOrder"},
        {"name": "MedicationStatement", "type": "MedicationStatement"},
        {"name": "MessageHeader", "type": "MessageHeader"},
        {"name": "NamingSystem", "type": "NamingSystem"},
        {"name": "NutritionRequest", "type": "NutritionRequest"},
        {"name": "Observation", "type": "Observation"},
        {"name": "OperationDefinition", "type": "OperationDefinition"},
        {"name": "OperationOutcome", "type": "OperationOutcome"},
        {"name": "Organization", "type": "Organization"},
        {"name": "Patient", "type": "Patient"},
        {"name": "PaymentNotice", "type": "PaymentNotice"},
        {"name": "PaymentReconciliation", "type": "PaymentReconciliation"},
        {"name": "Person", "type": "Person"},
        {"name": "PlanDefinition", "type": "PlanDefinition"},
        {"name": "Practitioner", "type": "Practitioner"},
        {"name": "PractitionerRole", "type": "PractitionerRole"},
        {"name": "Procedure", "type": "Procedure"},
        {"name": "ProcedureRequest", "type": "ProcedureRequest"},
        {"name": "ProcessRequest", "type": "ProcessRequest"},
        {"name": "ProcessResponse", "type": "ProcessResponse"},
        {"name": "Provenance", "type": "Provenance"},
        {"name": "Questionnaire", "type": "Questionnaire"},
        {"name": "QuestionnaireResponse", "type": "QuestionnaireResponse"},
        {"name": "ReferralRequest", "type": "ReferralRequest"},
        {"name": "RelatedPerson", "type": "RelatedPerson"},
        {"name": "RiskAssessment", "type": "RiskAssessment"},
        {"name": "Schedule", "type": "Schedule"},
        {"name": "SearchParameter", "type": "SearchParameter"},
        {"name": "Sequence", "type": "Sequence"},
        {"name": "Slot", "type": "Slot"},
        {"name": "Specimen", "type": "Specimen"},
        {"name": "StructureDefinition", "type": "StructureDefinition"},
        {"name": "StructureMap", "type": "StructureMap"},
        {"name": "Subscription", "type": "Subscription"},
        {"name": "Substance", "type": "Substance"},
        {"name": "SupplyDelivery", "type": "SupplyDelivery"},
        {"name": "SupplyRequest", "type": "SupplyRequest"},
        {"name": "Task", "type": "Task"},
        {"name": "TestScript", "type": "TestScript"},
        {"name": "ValueSet", "type": "ValueSet"},
        {"name": "VisionPrescription", "type": "VisionPrescription"},
        {"name": "Parameters", "type": "Parameters"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent.ProductionSpecification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "specType", "type": "CodeableConcept"},
        {"name": "componentId", "type": "Identifier"},
        {"name": "productionSpec", "type": "string"}
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
      "name": "PaymentReconciliationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.Investigations",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "item", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMapListMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Timing.Repeat",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "boundsDuration", "type": "Duration"},
        {"name": "boundsRange", "type": "Range"},
        {"name": "boundsPeriod", "type": "Period"},
        {"name": "count", "type": "integer"},
        {"name": "countMax", "type": "integer"},
        {"name": "duration", "type": "decimal"},
        {"name": "durationMax", "type": "decimal"},
        {"name": "durationUnit", "type": "UnitsOfTime"},
        {"name": "frequency", "type": "integer"},
        {"name": "frequencyMax", "type": "integer"},
        {"name": "period", "type": "decimal"},
        {"name": "periodMax", "type": "decimal"},
        {"name": "periodUnit", "type": "UnitsOfTime"},
        {"name": "when", "type": "EventTiming"},
        {"name": "offset", "type": "unsignedInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "itemCodeableConcept", "type": "CodeableConcept"},
        {"name": "itemReference", "type": "Reference"},
        {"name": "amount", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder.EventHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "MedicationOrderStatus"},
        {"name": "action", "type": "CodeableConcept"},
        {"name": "dateTime", "type": "dateTime"},
        {"name": "actor", "type": "Reference"},
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Media",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "type", "type": "DigitalMediaType"},
        {"name": "subtype", "type": "CodeableConcept"},
        {"name": "view", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "operator", "type": "Reference"},
        {"name": "deviceName", "type": "string"},
        {"name": "height", "type": "positiveInt"},
        {"name": "width", "type": "positiveInt"},
        {"name": "frames", "type": "positiveInt"},
        {"name": "duration", "type": "unsignedInt"},
        {"name": "content", "type": "Attachment"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "boolean",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Boolean"}
    },
    {
      "type": "ClassInfo",
      "name": "Contract",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "issued", "type": "dateTime"},
        {"name": "applies", "type": "Period"},
        {"name": "subject", "type": "list<FHIR.Reference>"},
        {"name": "topic", "type": "list<FHIR.Reference>"},
        {"name": "authority", "type": "list<FHIR.Reference>"},
        {"name": "domain", "type": "list<FHIR.Reference>"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "action", "type": "list<FHIR.CodeableConcept>"},
        {"name": "actionReason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "agent", "type": "list<FHIR.Contract.Agent>"},
        {"name": "signer", "type": "list<FHIR.Contract.Signer>"},
        {"name": "valuedItem", "type": "list<FHIR.Contract.ValuedItem>"},
        {"name": "term", "type": "list<FHIR.Contract.Term>"},
        {"name": "bindingAttachment", "type": "Attachment"},
        {"name": "bindingReference", "type": "Reference"},
        {"name": "friendly", "type": "list<FHIR.Contract.Friendly>"},
        {"name": "legal", "type": "list<FHIR.Contract.Legal>"},
        {"name": "rule", "type": "list<FHIR.Contract.Rule>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionRequest.EnteralFormula",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "baseFormulaType", "type": "CodeableConcept"},
        {"name": "baseFormulaProductName", "type": "string"},
        {"name": "additiveType", "type": "CodeableConcept"},
        {"name": "additiveProductName", "type": "string"},
        {"name": "caloricDensity", "type": "Quantity"},
        {"name": "routeofAdministration", "type": "CodeableConcept"},
        {
          "name": "administration",
          "type": "list<FHIR.NutritionRequest.Administration>"
        },
        {"name": "maxVolumeToDeliver", "type": "Quantity"},
        {"name": "administrationInstruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Location.Position",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "longitude", "type": "decimal"},
        {"name": "latitude", "type": "decimal"},
        {"name": "altitude", "type": "decimal"}
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
      "name": "DiagnosticReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "DiagnosticReportStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "effectiveDateTime", "type": "dateTime"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "issued", "type": "instant"},
        {"name": "performer", "type": "list<FHIR.Reference>"},
        {"name": "request", "type": "list<FHIR.Reference>"},
        {"name": "specimen", "type": "list<FHIR.Reference>"},
        {"name": "result", "type": "list<FHIR.Reference>"},
        {"name": "imagingStudy", "type": "list<FHIR.Reference>"},
        {"name": "image", "type": "list<FHIR.DiagnosticReport.Image>"},
        {"name": "conclusion", "type": "string"},
        {"name": "codedDiagnosis", "type": "list<FHIR.CodeableConcept>"},
        {"name": "presentedForm", "type": "list<FHIR.Attachment>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "dateTime"},
        {"name": "detail", "type": "Reference"},
        {"name": "reported", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "site", "type": "string"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "list<FHIR.Coding>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.DependsOn",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "property", "type": "uri"},
        {"name": "system", "type": "uri"},
        {"name": "code", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Prosthesis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "initial", "type": "boolean"},
        {"name": "priorDate", "type": "date"},
        {"name": "priorMaterial", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.CompartmentDefinition.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "requirements", "type": "markdown"},
        {"name": "code", "type": "CompartmentType"},
        {"name": "search", "type": "boolean"},
        {
          "name": "resource",
          "type": "list<FHIR.CompartmentDefinition.Resource>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GuidanceResponse.RelatedAction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionIdentifier", "type": "Identifier"},
        {"name": "relationship", "type": "code"},
        {"name": "offsetDuration", "type": "Duration"},
        {"name": "offsetRange", "type": "Range"},
        {"name": "anchor", "type": "code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "code",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Metadata",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "link", "type": "list<FHIR.TestScript.Link>"},
        {"name": "capability", "type": "list<FHIR.TestScript.Capability>"}
      ]
    },
    {
      "type": "SimpleTypeInfo",
      "name": "xs.base64Binary",
      "baseType": "System.Any"
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
      "name": "SupplyRequestStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "SupplyDeliveryStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.DynamicValue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "path", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "serviceCategory", "type": "CodeableConcept"},
        {"name": "serviceType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "specialty", "type": "list<FHIR.CodeableConcept>"},
        {"name": "actor", "type": "Reference"},
        {"name": "planningHorizon", "type": "Period"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Structure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "mode", "type": "StructureMapModelMode"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.Output",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueId", "type": "id"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueMarkdown", "type": "markdown"},
        {"name": "valueOid", "type": "oid"},
        {"name": "valuePositiveInt", "type": "positiveInt"},
        {"name": "valueString", "type": "string"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueUnsignedInt", "type": "unsignedInt"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueAge", "type": "Age"},
        {"name": "valueAnnotation", "type": "Annotation"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueCount", "type": "Count"},
        {"name": "valueDistance", "type": "Distance"},
        {"name": "valueDuration", "type": "Duration"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueMoney", "type": "Money"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "medicationCodeableConcept",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "MedicationAdministrationStatus"},
        {"name": "medicationCodeableConcept", "type": "CodeableConcept"},
        {"name": "medicationReference", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "effectiveTimeDateTime", "type": "dateTime"},
        {"name": "effectiveTimePeriod", "type": "Period"},
        {"name": "performer", "type": "Reference"},
        {"name": "prescription", "type": "Reference"},
        {"name": "wasNotGiven", "type": "boolean"},
        {"name": "reasonNotGiven", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonGiven", "type": "list<FHIR.CodeableConcept>"},
        {"name": "device", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "dosage", "type": "MedicationAdministration.Dosage"},
        {
          "name": "eventHistory",
          "type": "list<FHIR.MedicationAdministration.EventHistory>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Ratio",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "numerator", "type": "Quantity"},
        {"name": "denominator", "type": "Quantity"}
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
      "name": "ClaimResponse.Note",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "positiveInt"},
        {"name": "type", "type": "Coding"},
        {"name": "text", "type": "string"},
        {"name": "language", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.RequestHeader",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "field", "type": "string"},
        {"name": "value", "type": "string"}
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
      "name": "ProcessResponse.Notes",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SampledData",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "origin", "type": "Quantity"},
        {"name": "period", "type": "decimal"},
        {"name": "factor", "type": "decimal"},
        {"name": "lowerLimit", "type": "decimal"},
        {"name": "upperLimit", "type": "decimal"},
        {"name": "dimensions", "type": "positiveInt"},
        {"name": "data", "type": "SampledDataDataType"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "focal", "type": "boolean"},
        {"name": "coverageIdentifier", "type": "Identifier"},
        {"name": "coverageReference", "type": "Reference"},
        {"name": "businessArrangement", "type": "string"},
        {"name": "preAuthRef", "type": "list<FHIR.string>"},
        {"name": "claimResponse", "type": "Reference"}
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
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "target", "type": "list<FHIR.Reference>"},
        {"name": "period", "type": "Period"},
        {"name": "recorded", "type": "instant"},
        {"name": "reason", "type": "list<FHIR.Coding>"},
        {"name": "activity", "type": "Coding"},
        {"name": "location", "type": "Reference"},
        {"name": "policy", "type": "list<FHIR.uri>"},
        {"name": "agent", "type": "list<FHIR.Provenance.Agent>"},
        {"name": "entity", "type": "list<FHIR.Provenance.Entity>"},
        {"name": "signature", "type": "list<FHIR.Signature>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Variable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "defaultValue", "type": "string"},
        {"name": "headerField", "type": "string"},
        {"name": "path", "type": "string"},
        {"name": "sourceId", "type": "id"}
      ]
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
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "isBrand", "type": "boolean"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "product", "type": "Medication.Product"},
        {"name": "package", "type": "Medication.Package"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Activity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionResulting", "type": "list<FHIR.Reference>"},
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "progress", "type": "list<FHIR.Annotation>"},
        {"name": "reference", "type": "Reference"},
        {"name": "detail", "type": "CarePlan.Detail"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Distance",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Exclude",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "codeSystem",
        "type": "list<FHIR.ExpansionProfile.CodeSystem2>"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Mapping",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "id"},
        {"name": "language", "type": "code"},
        {"name": "map", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "action", "type": "list<FHIR.TestScript.Action>"}
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
      "name": "StructureMap.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "id"},
        {"name": "source", "type": "list<FHIR.StructureMap.Source>"},
        {"name": "target", "type": "list<FHIR.StructureMap.Target>"},
        {"name": "rule", "type": "list<FHIR.StructureMap.Rule>"},
        {"name": "dependent", "type": "list<FHIR.StructureMap.Dependent>"},
        {"name": "documentation", "type": "string"}
      ]
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
      "name": "StructureMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.StructureMap.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "markdown"},
        {"name": "copyright", "type": "string"},
        {"name": "structure", "type": "list<FHIR.StructureMap.Structure>"},
        {"name": "import", "type": "list<FHIR.uri>"},
        {"name": "group", "type": "list<FHIR.StructureMap.Group>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Accident",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "date", "type": "date"},
        {"name": "type", "type": "Coding"},
        {"name": "locationAddress", "type": "Address"},
        {"name": "locationReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "base64Binary",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "NameUse"},
        {"name": "text", "type": "string"},
        {"name": "family", "type": "list<FHIR.string>"},
        {"name": "given", "type": "list<FHIR.string>"},
        {"name": "prefix", "type": "list<FHIR.string>"},
        {"name": "suffix", "type": "list<FHIR.string>"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.EnableWhen",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "question", "type": "string"},
        {"name": "hasAnswer", "type": "boolean"},
        {"name": "answerBoolean", "type": "boolean"},
        {"name": "answerDecimal", "type": "decimal"},
        {"name": "answerInteger", "type": "integer"},
        {"name": "answerDate", "type": "date"},
        {"name": "answerDateTime", "type": "dateTime"},
        {"name": "answerInstant", "type": "instant"},
        {"name": "answerTime", "type": "time"},
        {"name": "answerString", "type": "string"},
        {"name": "answerUri", "type": "uri"},
        {"name": "answerAttachment", "type": "Attachment"},
        {"name": "answerCoding", "type": "Coding"},
        {"name": "answerQuantity", "type": "Quantity"},
        {"name": "answerReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "resource", "type": "code"},
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
          "type": "list<FHIR.TestScript.RequestHeader>"
        },
        {"name": "responseId", "type": "id"},
        {"name": "sourceId", "type": "id"},
        {"name": "targetId", "type": "id"},
        {"name": "url", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Group",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "type", "type": "GroupType"},
        {"name": "actual", "type": "boolean"},
        {"name": "active", "type": "boolean"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "name", "type": "string"},
        {"name": "quantity", "type": "unsignedInt"},
        {"name": "characteristic", "type": "list<FHIR.Group.Characteristic>"},
        {"name": "member", "type": "list<FHIR.Group.Member>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureScoring",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "sender", "type": "Reference"},
        {"name": "recipient", "type": "list<FHIR.Reference>"},
        {"name": "payload", "type": "list<FHIR.CommunicationRequest.Payload>"},
        {"name": "medium", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requester", "type": "Reference"},
        {"name": "status", "type": "CommunicationRequestStatus"},
        {"name": "encounter", "type": "Reference"},
        {"name": "scheduledDateTime", "type": "dateTime"},
        {"name": "scheduledPeriod", "type": "Period"},
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requestedOn", "type": "dateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "priority", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "resourceType", "type": "Coding"},
        {"name": "partyIdentifier", "type": "Identifier"},
        {"name": "partyReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment.Prediction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "outcome", "type": "CodeableConcept"},
        {"name": "probabilityDecimal", "type": "decimal"},
        {"name": "probabilityRange", "type": "Range"},
        {"name": "probabilityCodeableConcept", "type": "CodeableConcept"},
        {"name": "relativeRisk", "type": "decimal"},
        {"name": "whenPeriod", "type": "Period"},
        {"name": "whenRange", "type": "Range"},
        {"name": "rationale", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DetectedIssue",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "patient", "type": "Reference"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "severity", "type": "DetectedIssueSeverity"},
        {"name": "implicated", "type": "list<FHIR.Reference>"},
        {"name": "detail", "type": "string"},
        {"name": "date", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "reference", "type": "uri"},
        {"name": "mitigation", "type": "list<FHIR.DetectedIssue.Mitigation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.SupplementalData",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "group", "type": "list<FHIR.MeasureReport.Group2>"}
      ]
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
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "LocationStatus"},
        {"name": "name", "type": "string"},
        {"name": "alias", "type": "list<FHIR.string>"},
        {"name": "description", "type": "string"},
        {"name": "mode", "type": "LocationMode"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "address", "type": "Address"},
        {"name": "physicalType", "type": "CodeableConcept"},
        {"name": "position", "type": "Location.Position"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "partOf", "type": "Reference"},
        {"name": "endpoint", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Concept",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "definition", "type": "string"},
        {"name": "designation", "type": "list<FHIR.CodeSystem.Designation>"},
        {"name": "property", "type": "list<FHIR.CodeSystem.Property1>"},
        {"name": "concept", "type": "list<FHIR.CodeSystem.Concept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentString", "type": "string"},
        {"name": "contentAttachment", "type": "Attachment"},
        {"name": "contentReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BackboneElement",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "modifierExtension", "type": "list<FHIR.Extension>"}
    },
    {
      "type": "ClassInfo",
      "name": "Resource",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "id"},
        {"name": "meta", "type": "Meta"},
        {"name": "implicitRules", "type": "uri"},
        {"name": "language", "type": "code"}
      ]
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
      "name": "DocumentReference.RelatesTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "DocumentRelationshipType"},
        {"name": "target", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.Dependency",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "GuideDependencyType"},
        {"name": "uri", "type": "uri"}
      ]
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
      "name": "MedicationOrder.DosageInstruction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "string"},
        {
          "name": "additionalInstructions",
          "type": "list<FHIR.CodeableConcept>"
        },
        {"name": "timing", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "boolean"},
        {"name": "asNeededCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteReference", "type": "Reference"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "doseRange", "type": "Range"},
        {"name": "doseQuantity", "type": "Quantity"},
        {"name": "maxDosePerPeriod", "type": "Ratio"},
        {"name": "maxDosePerAdministration", "type": "Quantity"},
        {"name": "maxDosePerLifetime", "type": "Quantity"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateRange", "type": "Range"},
        {"name": "rateQuantity", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.SupplementalData",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "usage", "type": "list<FHIR.MeasureDataUsage>"},
        {"name": "criteria", "type": "string"},
        {"name": "path", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Action2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "operation", "type": "TestScript.Operation"}
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
      "name": "DeviceMetricOperationalStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Action1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "operation", "type": "TestScript.Operation"},
        {"name": "assert", "type": "TestScript.Assert"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Data",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "meaning", "type": "ConsentDataMeaning"},
        {"name": "reference", "type": "Reference"}
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
      "name": "uri",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "ReferenceVersionRules",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "IdentityAssuranceLevel",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.AddItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "list<FHIR.positiveInt>"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "fee", "type": "Money"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
        },
        {"name": "detail", "type": "list<FHIR.ExplanationOfBenefit.Detail1>"}
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
      "name": "MeasureReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Slicing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "discriminator", "type": "list<FHIR.string>"},
        {"name": "description", "type": "string"},
        {"name": "ordered", "type": "boolean"},
        {"name": "rules", "type": "SlicingRules"}
      ]
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
      "name": "SearchEntryMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Group.Member",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "entity", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "inactive", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "kind",
      "element": [
        {"name": "patient", "type": "Reference"},
        {"name": "source", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "SupplyRequestStatus"},
        {"name": "kind", "type": "CodeableConcept"},
        {"name": "orderedItemCodeableConcept", "type": "CodeableConcept"},
        {"name": "orderedItemReference", "type": "Reference"},
        {"name": "supplier", "type": "list<FHIR.Reference>"},
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {"name": "when", "type": "SupplyRequest.When"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "time",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Time"}
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Differential",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "element", "type": "list<FHIR.ElementDefinition>"}
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
      "name": "Condition.Evidence",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "detail", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Interaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "TypeRestfulInteraction"},
        {"name": "documentation", "type": "string"}
      ]
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
      "name": "PaymentReconciliation",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "PaymentReconciliationStatus"},
        {"name": "requestIdentifier", "type": "Identifier"},
        {"name": "requestReference", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "string"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "period", "type": "Period"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "requestProviderIdentifier", "type": "Identifier"},
        {"name": "requestProviderReference", "type": "Reference"},
        {"name": "requestOrganizationIdentifier", "type": "Identifier"},
        {"name": "requestOrganizationReference", "type": "Reference"},
        {"name": "detail", "type": "list<FHIR.PaymentReconciliation.Detail>"},
        {"name": "form", "type": "Coding"},
        {"name": "total", "type": "Money"},
        {"name": "note", "type": "list<FHIR.PaymentReconciliation.Note>"}
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
      "name": "Conformance.Document",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "DocumentMode"},
        {"name": "documentation", "type": "string"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Include1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "designation",
        "type": "list<FHIR.ExpansionProfile.Designation1>"
      }
    },
    {
      "type": "ClassInfo",
      "name": "Identifier",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
      "name": "EpisodeOfCare",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "EpisodeOfCareStatus"},
        {
          "name": "statusHistory",
          "type": "list<FHIR.EpisodeOfCare.StatusHistory>"
        },
        {"name": "type", "type": "list<FHIR.CodeableConcept>"},
        {"name": "condition", "type": "list<FHIR.Reference>"},
        {"name": "patient", "type": "Reference"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "referralRequest", "type": "list<FHIR.Reference>"},
        {"name": "careManager", "type": "Reference"},
        {"name": "team", "type": "list<FHIR.Reference>"},
        {"name": "account", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Patient.Communication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "CodeableConcept"},
        {"name": "preferred", "type": "boolean"}
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
      "name": "DataElement.Mapping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "id"},
        {"name": "uri", "type": "uri"},
        {"name": "name", "type": "string"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "diagnosis", "type": "Coding"},
        {"name": "type", "type": "list<FHIR.Coding>"},
        {"name": "drg", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "name", "type": "string"},
        {"name": "alias", "type": "list<FHIR.string>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "address", "type": "list<FHIR.Address>"},
        {"name": "partOf", "type": "Reference"},
        {"name": "contact", "type": "list<FHIR.Organization.Contact>"},
        {"name": "endpoint", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ContactDetail",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Element",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "target", "type": "list<FHIR.ConceptMap.Target>"}
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
      "name": "unsignedInt",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Integer"}
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
      "name": "SubscriptionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.EventHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "MedicationDispenseStatus"},
        {"name": "action", "type": "CodeableConcept"},
        {"name": "dateTime", "type": "dateTime"},
        {"name": "actor", "type": "Reference"},
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispense.DosageInstruction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "string"},
        {
          "name": "additionalInstructions",
          "type": "list<FHIR.CodeableConcept>"
        },
        {"name": "timing", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "boolean"},
        {"name": "asNeededCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteReference", "type": "Reference"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "doseRange", "type": "Range"},
        {"name": "doseQuantity", "type": "Quantity"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateRange", "type": "Range"},
        {"name": "rateQuantity", "type": "Quantity"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
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
      "name": "DocumentReferenceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "PlanDefinition.RelatedAction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionIdentifier", "type": "Identifier"},
        {"name": "relationship", "type": "PlanActionRelationshipType"},
        {"name": "offsetDuration", "type": "Duration"},
        {"name": "offsetRange", "type": "Range"},
        {"name": "anchor", "type": "PlanActionRelationshipAnchor"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "integer",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Integer"}
    },
    {
      "type": "ClassInfo",
      "name": "CarePlanRelationship",
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
      "name": "NutritionRequest.Supplement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "productName", "type": "string"},
        {"name": "schedule", "type": "list<FHIR.Timing>"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "instruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.ActionDefinition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actionIdentifier", "type": "Identifier"},
        {"name": "label", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "textEquivalent", "type": "string"},
        {"name": "concept", "type": "list<FHIR.CodeableConcept>"},
        {"name": "documentation", "type": "list<FHIR.RelatedResource>"},
        {"name": "triggerDefinition", "type": "list<FHIR.TriggerDefinition>"},
        {"name": "condition", "type": "PlanDefinition.Condition"},
        {
          "name": "relatedAction",
          "type": "list<FHIR.PlanDefinition.RelatedAction>"
        },
        {"name": "timingDateTime", "type": "dateTime"},
        {"name": "timingPeriod", "type": "Period"},
        {"name": "timingDuration", "type": "Duration"},
        {"name": "timingRange", "type": "Range"},
        {"name": "timingTiming", "type": "Timing"},
        {
          "name": "participantType",
          "type": "list<FHIR.PlanActionParticipantType>"
        },
        {"name": "type", "type": "Coding"},
        {"name": "groupingBehavior", "type": "PlanActionGroupingBehavior"},
        {"name": "selectionBehavior", "type": "PlanActionSelectionBehavior"},
        {"name": "requiredBehavior", "type": "PlanActionRequiredBehavior"},
        {"name": "precheckBehavior", "type": "PlanActionPrecheckBehavior"},
        {
          "name": "cardinalityBehavior",
          "type": "PlanActionCardinalityBehavior"
        },
        {"name": "activityDefinition", "type": "Reference"},
        {"name": "transform", "type": "Reference"},
        {
          "name": "dynamicValue",
          "type": "list<FHIR.PlanDefinition.DynamicValue>"
        },
        {
          "name": "actionDefinition",
          "type": "list<FHIR.PlanDefinition.ActionDefinition>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Basic",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "date"},
        {"name": "author", "type": "Reference"}
      ]
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
      "name": "ClinicalImpression",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ClinicalImpressionStatus"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "subject", "type": "Reference"},
        {"name": "assessor", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "effectiveDateTime", "type": "dateTime"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "context", "type": "Reference"},
        {"name": "previous", "type": "Reference"},
        {"name": "problem", "type": "list<FHIR.Reference>"},
        {
          "name": "investigations",
          "type": "list<FHIR.ClinicalImpression.Investigations>"
        },
        {"name": "protocol", "type": "list<FHIR.uri>"},
        {"name": "summary", "type": "string"},
        {"name": "finding", "type": "list<FHIR.ClinicalImpression.Finding>"},
        {
          "name": "prognosisCodeableConcept",
          "type": "list<FHIR.CodeableConcept>"
        },
        {"name": "prognosisReference", "type": "list<FHIR.Reference>"},
        {"name": "plan", "type": "list<FHIR.Reference>"},
        {"name": "action", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyRequest.When",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "schedule", "type": "Timing"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Include",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "codeSystem",
        "type": "list<FHIR.ExpansionProfile.CodeSystem1>"
      }
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
      "name": "TestScript.Fixture",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "autocreate", "type": "boolean"},
        {"name": "autodelete", "type": "boolean"},
        {"name": "resource", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueString", "type": "string"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "dataAbsentReason", "type": "CodeableConcept"},
        {"name": "interpretation", "type": "CodeableConcept"},
        {
          "name": "referenceRange",
          "type": "list<FHIR.Observation.ReferenceRange>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "string"},
        {
          "name": "additionalInstructions",
          "type": "list<FHIR.CodeableConcept>"
        },
        {"name": "timing", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "boolean"},
        {"name": "asNeededCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteReference", "type": "Reference"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "doseQuantity", "type": "Quantity"},
        {"name": "doseRange", "type": "Range"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateRange", "type": "Range"},
        {"name": "rateQuantity", "type": "Quantity"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
      ]
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
      "name": "CodeSystemContentMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MessageHeader.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "software", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "contact", "type": "ContactPoint"},
        {"name": "endpoint", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "basedOn", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
        {"name": "status", "type": "code"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "occurrenceDateTime", "type": "dateTime"},
        {"name": "occurrencePeriod", "type": "Period"},
        {"name": "condition", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "basis", "type": "list<FHIR.Reference>"},
        {"name": "prediction", "type": "list<FHIR.RiskAssessment.Prediction>"},
        {"name": "mitigation", "type": "string"},
        {"name": "note", "type": "Annotation"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ClaimStatus"},
        {"name": "type", "type": "Coding"},
        {"name": "subType", "type": "list<FHIR.Coding>"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "billablePeriod", "type": "Period"},
        {"name": "insurerIdentifier", "type": "Identifier"},
        {"name": "insurerReference", "type": "Reference"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "organizationIdentifier", "type": "Identifier"},
        {"name": "organizationReference", "type": "Reference"},
        {"name": "use", "type": "Use"},
        {"name": "priority", "type": "Coding"},
        {"name": "fundsReserve", "type": "Coding"},
        {"name": "entererIdentifier", "type": "Identifier"},
        {"name": "entererReference", "type": "Reference"},
        {"name": "facilityIdentifier", "type": "Identifier"},
        {"name": "facilityReference", "type": "Reference"},
        {"name": "related", "type": "list<FHIR.Claim.Related>"},
        {"name": "prescriptionIdentifier", "type": "Identifier"},
        {"name": "prescriptionReference", "type": "Reference"},
        {"name": "originalPrescriptionIdentifier", "type": "Identifier"},
        {"name": "originalPrescriptionReference", "type": "Reference"},
        {"name": "payee", "type": "Claim.Payee"},
        {"name": "referralIdentifier", "type": "Identifier"},
        {"name": "referralReference", "type": "Reference"},
        {"name": "information", "type": "list<FHIR.Claim.Information>"},
        {"name": "diagnosis", "type": "list<FHIR.Claim.Diagnosis>"},
        {"name": "procedure", "type": "list<FHIR.Claim.Procedure>"},
        {"name": "patientIdentifier", "type": "Identifier"},
        {"name": "patientReference", "type": "Reference"},
        {"name": "coverage", "type": "list<FHIR.Claim.Coverage>"},
        {"name": "accident", "type": "Claim.Accident"},
        {"name": "employmentImpacted", "type": "Period"},
        {"name": "hospitalization", "type": "Period"},
        {"name": "item", "type": "list<FHIR.Claim.Item>"},
        {"name": "total", "type": "Money"},
        {"name": "missingTeeth", "type": "list<FHIR.Claim.MissingTeeth>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Binding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "strength", "type": "BindingStrength"},
        {"name": "valueSetUri", "type": "uri"},
        {"name": "valueSetReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "RemittanceOutcome",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.CareTeam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "responsible", "type": "boolean"},
        {"name": "role", "type": "Coding"},
        {"name": "qualification", "type": "Coding"}
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
      "name": "ImplementationGuide.Global",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrderStatus",
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
      "name": "PractitionerRole.NotAvailable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "during", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "sequenceLinkId", "type": "integer"}
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Parameters",
      "baseType": "Resource",
      "retrievable": false,
      "element": {
        "name": "parameter",
        "type": "list<FHIR.Parameters.Parameter>"
      }
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Adjudication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "reason", "type": "Coding"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "serviceType",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "providedBy", "type": "Reference"},
        {"name": "serviceCategory", "type": "CodeableConcept"},
        {"name": "serviceType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "specialty", "type": "list<FHIR.CodeableConcept>"},
        {"name": "location", "type": "list<FHIR.Reference>"},
        {"name": "serviceName", "type": "string"},
        {"name": "comment", "type": "string"},
        {"name": "extraDetails", "type": "string"},
        {"name": "photo", "type": "Attachment"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "coverageArea", "type": "list<FHIR.Reference>"},
        {"name": "serviceProvisionCode", "type": "list<FHIR.CodeableConcept>"},
        {"name": "eligibility", "type": "CodeableConcept"},
        {"name": "eligibilityNote", "type": "string"},
        {"name": "programName", "type": "list<FHIR.string>"},
        {"name": "characteristic", "type": "list<FHIR.CodeableConcept>"},
        {"name": "referralMethod", "type": "list<FHIR.CodeableConcept>"},
        {"name": "publicKey", "type": "string"},
        {"name": "appointmentRequired", "type": "boolean"},
        {
          "name": "availableTime",
          "type": "list<FHIR.HealthcareService.AvailableTime>"
        },
        {
          "name": "notAvailable",
          "type": "list<FHIR.HealthcareService.NotAvailable>"
        },
        {"name": "availabilityExceptions", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "clinicalStatus", "type": "code"},
        {"name": "verificationStatus", "type": "ConditionVerificationStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "severity", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "bodySite", "type": "list<FHIR.CodeableConcept>"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "onsetDateTime", "type": "dateTime"},
        {"name": "onsetAge", "type": "Age"},
        {"name": "onsetPeriod", "type": "Period"},
        {"name": "onsetRange", "type": "Range"},
        {"name": "onsetString", "type": "string"},
        {"name": "abatementDateTime", "type": "dateTime"},
        {"name": "abatementAge", "type": "Age"},
        {"name": "abatementBoolean", "type": "boolean"},
        {"name": "abatementPeriod", "type": "Period"},
        {"name": "abatementRange", "type": "Range"},
        {"name": "abatementString", "type": "string"},
        {"name": "dateRecorded", "type": "date"},
        {"name": "asserter", "type": "Reference"},
        {"name": "stage", "type": "Condition.Stage"},
        {"name": "evidence", "type": "list<FHIR.Condition.Evidence>"},
        {"name": "note", "type": "list<FHIR.Annotation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.BenefitBalance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "subCategory", "type": "Coding"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "network", "type": "Coding"},
        {"name": "unit", "type": "Coding"},
        {"name": "term", "type": "Coding"},
        {
          "name": "financial",
          "type": "list<FHIR.EligibilityResponse.Financial>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Search",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "SearchEntryMode"},
        {"name": "score", "type": "decimal"}
      ]
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
      "name": "ElementDefinition.Type",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {"name": "profile", "type": "uri"},
        {"name": "targetProfile", "type": "uri"},
        {"name": "aggregation", "type": "list<FHIR.AggregationMode>"},
        {"name": "versioning", "type": "ReferenceVersionRules"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Questionnaire.Option",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueString", "type": "string"},
        {"name": "valueCoding", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "markdown",
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
      "name": "Subscription.Channel",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "SubscriptionChannelType"},
        {"name": "endpoint", "type": "uri"},
        {"name": "payload", "type": "string"},
        {"name": "header", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Error",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequenceLinkId", "type": "positiveInt"},
        {"name": "detailSequenceLinkId", "type": "positiveInt"},
        {"name": "subdetailSequenceLinkId", "type": "positiveInt"},
        {"name": "code", "type": "Coding"}
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
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "subject", "type": "Reference"},
        {"name": "startDate", "type": "date"},
        {"name": "startCodeableConcept", "type": "CodeableConcept"},
        {"name": "targetDate", "type": "date"},
        {"name": "targetDuration", "type": "Duration"},
        {"name": "category", "type": "list<FHIR.CodeableConcept>"},
        {"name": "description", "type": "CodeableConcept"},
        {"name": "status", "type": "GoalStatus"},
        {"name": "statusDate", "type": "date"},
        {"name": "statusReason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "expressedBy", "type": "Reference"},
        {"name": "priority", "type": "CodeableConcept"},
        {"name": "addresses", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "outcome", "type": "list<FHIR.Goal.Outcome>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse.Answer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueString", "type": "string"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "item", "type": "list<FHIR.QuestionnaireResponse.Item>"}
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
      "name": "DeviceUseRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "definition", "type": "list<FHIR.Reference>"},
        {"name": "basedOn", "type": "list<FHIR.Reference>"},
        {"name": "replaces", "type": "list<FHIR.Reference>"},
        {"name": "requisition", "type": "Identifier"},
        {"name": "status", "type": "code"},
        {"name": "stage", "type": "CodeableConcept"},
        {"name": "deviceReference", "type": "Reference"},
        {"name": "deviceCodeableConcept", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "occurrenceDateTime", "type": "dateTime"},
        {"name": "occurrencePeriod", "type": "Period"},
        {"name": "occurrenceTiming", "type": "Timing"},
        {"name": "authored", "type": "dateTime"},
        {"name": "requester", "type": "Reference"},
        {"name": "performerType", "type": "CodeableConcept"},
        {"name": "performer", "type": "Reference"},
        {"name": "reasonCode", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonReference", "type": "list<FHIR.Reference>"},
        {"name": "supportingInfo", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "relevantHistory", "type": "list<FHIR.Reference>"}
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
      "name": "QuantityComparator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Procedure.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actor", "type": "Reference"},
        {"name": "role", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "code"},
        {"name": "use", "type": "OperationParameterUse"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "documentation", "type": "string"},
        {"name": "type", "type": "code"},
        {"name": "searchType", "type": "SearchParamType"},
        {"name": "profile", "type": "Reference"},
        {"name": "binding", "type": "OperationDefinition.Binding"},
        {"name": "part", "type": "list<FHIR.OperationDefinition.Parameter>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "context", "type": "id"},
        {"name": "contextType", "type": "StructureMapContextType"},
        {"name": "element", "type": "string"},
        {"name": "variable", "type": "id"},
        {"name": "listMode", "type": "list<FHIR.StructureMapListMode>"},
        {"name": "listRuleId", "type": "id"},
        {"name": "transform", "type": "StructureMapTransform"},
        {"name": "parameter", "type": "list<FHIR.StructureMap.Parameter>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"},
        {"name": "subDetail", "type": "list<FHIR.Claim.SubDetail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "medicationCodeableConcept",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "MedicationStatementStatus"},
        {"name": "medicationCodeableConcept", "type": "CodeableConcept"},
        {"name": "medicationReference", "type": "Reference"},
        {"name": "patient", "type": "Reference"},
        {"name": "effectiveDateTime", "type": "dateTime"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "informationSource", "type": "Reference"},
        {"name": "supportingInformation", "type": "list<FHIR.Reference>"},
        {"name": "dateAsserted", "type": "dateTime"},
        {"name": "notTaken", "type": "boolean"},
        {"name": "reasonNotTaken", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonForUseCode", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonForUseReference", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "category", "type": "MedicationStatementCategory"},
        {"name": "dosage", "type": "list<FHIR.MedicationStatement.Dosage>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {
          "name": "careTeam",
          "type": "list<FHIR.ExplanationOfBenefit.CareTeam>"
        },
        {"name": "diagnosisLinkId", "type": "list<FHIR.positiveInt>"},
        {"name": "revenue", "type": "Coding"},
        {"name": "category", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "servicedDate", "type": "date"},
        {"name": "servicedPeriod", "type": "Period"},
        {"name": "locationCoding", "type": "Coding"},
        {"name": "locationAddress", "type": "Address"},
        {"name": "locationReference", "type": "Reference"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"},
        {"name": "bodySite", "type": "Coding"},
        {"name": "subSite", "type": "list<FHIR.Coding>"},
        {"name": "noteNumber", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication>"
        },
        {"name": "detail", "type": "list<FHIR.ExplanationOfBenefit.Detail>"},
        {"name": "prosthesis", "type": "ExplanationOfBenefit.Prosthesis"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.MissingTeeth",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "tooth", "type": "Coding"},
        {"name": "reason", "type": "Coding"},
        {"name": "extractionDate", "type": "date"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "oid",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Coding",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "userSelected", "type": "boolean"}
      ]
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
      "name": "Period",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "start", "type": "dateTime"},
        {"name": "end", "type": "dateTime"}
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
      "name": "Medication.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "itemCodeableConcept", "type": "CodeableConcept"},
        {"name": "itemReference", "type": "Reference"},
        {"name": "amount", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "accessionIdentifier", "type": "Identifier"},
        {"name": "status", "type": "SpecimenStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "receivedTime", "type": "dateTime"},
        {"name": "parent", "type": "list<FHIR.Reference>"},
        {"name": "request", "type": "list<FHIR.Reference>"},
        {"name": "collection", "type": "Specimen.Collection"},
        {"name": "treatment", "type": "list<FHIR.Specimen.Treatment>"},
        {"name": "container", "type": "list<FHIR.Specimen.Container>"},
        {"name": "note", "type": "list<FHIR.Annotation>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyMemberHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "condition.code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "status", "type": "FamilyHistoryStatus"},
        {"name": "name", "type": "string"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "gender", "type": "AdministrativeGender"},
        {"name": "bornPeriod", "type": "Period"},
        {"name": "bornDate", "type": "date"},
        {"name": "bornString", "type": "string"},
        {"name": "ageAge", "type": "Age"},
        {"name": "ageRange", "type": "Range"},
        {"name": "ageString", "type": "string"},
        {"name": "estimatedAge", "type": "boolean"},
        {"name": "deceasedBoolean", "type": "boolean"},
        {"name": "deceasedAge", "type": "Age"},
        {"name": "deceasedRange", "type": "Range"},
        {"name": "deceasedDate", "type": "date"},
        {"name": "deceasedString", "type": "string"},
        {"name": "note", "type": "Annotation"},
        {
          "name": "condition",
          "type": "list<FHIR.FamilyMemberHistory.Condition>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "pAttachment", "type": "Attachment"},
        {"name": "pReference", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
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
      "name": "AllergyIntoleranceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "coverageIdentifier", "type": "Identifier"},
        {"name": "coverageReference", "type": "Reference"},
        {"name": "preAuthRef", "type": "list<FHIR.string>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "Coding"},
        {"name": "actor", "type": "Reference"},
        {"name": "userId", "type": "Identifier"},
        {"name": "relatedAgent", "type": "list<FHIR.Provenance.RelatedAgent>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Interaction1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "SystemRestfulInteraction"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "ref", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Composition.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "list<FHIR.CodeableConcept>"},
        {"name": "period", "type": "Period"},
        {"name": "detail", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Quantity",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "value", "type": "decimal"},
        {"name": "comparator", "type": "QuantityComparator"},
        {"name": "unit", "type": "string"},
        {"name": "system", "type": "uri"},
        {"name": "code", "type": "code"}
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
      "name": "CompositionAttestationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionRequiredBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "language", "type": "code"},
        {"name": "use", "type": "Coding"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "definition", "type": "list<FHIR.Reference>"},
        {"name": "basedOn", "type": "list<FHIR.Reference>"},
        {"name": "replaces", "type": "list<FHIR.Reference>"},
        {"name": "requisition", "type": "Identifier"},
        {"name": "status", "type": "code"},
        {"name": "stage", "type": "CodeableConcept"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "occurrenceDateTime", "type": "dateTime"},
        {"name": "occurrencePeriod", "type": "Period"},
        {"name": "occurrenceTiming", "type": "Timing"},
        {"name": "authored", "type": "dateTime"},
        {"name": "requester", "type": "Reference"},
        {"name": "performerType", "type": "CodeableConcept"},
        {"name": "performer", "type": "Reference"},
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "supportingInformation", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "relevantHistory", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Endpoint",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "protocol", "type": "Coding"},
        {"name": "address", "type": "uri"}
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
      "name": "GroupType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Except",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ConsentExceptType"},
        {"name": "period", "type": "Period"},
        {"name": "actor", "type": "list<FHIR.Consent.Actor>"},
        {"name": "action", "type": "list<FHIR.CodeableConcept>"},
        {"name": "securityLabel", "type": "list<FHIR.Coding>"},
        {"name": "purpose", "type": "list<FHIR.Coding>"},
        {"name": "class", "type": "list<FHIR.Coding>"},
        {"name": "code", "type": "list<FHIR.Coding>"},
        {"name": "data", "type": "list<FHIR.Consent.Data>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataRequirement",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "list<FHIR.Reference>"},
        {"name": "mustSupport", "type": "list<FHIR.string>"},
        {"name": "codeFilter", "type": "list<FHIR.DataRequirement.CodeFilter>"},
        {"name": "dateFilter", "type": "list<FHIR.DataRequirement.DateFilter>"}
      ]
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
      "name": "ImplementationGuide",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ImplementationGuide.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "markdown"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "copyright", "type": "string"},
        {"name": "fhirVersion", "type": "id"},
        {
          "name": "dependency",
          "type": "list<FHIR.ImplementationGuide.Dependency>"
        },
        {"name": "package", "type": "list<FHIR.ImplementationGuide.Package>"},
        {"name": "global", "type": "list<FHIR.ImplementationGuide.Global>"},
        {"name": "binary", "type": "list<FHIR.uri>"},
        {"name": "page", "type": "ImplementationGuide.Page"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "population", "type": "list<FHIR.Measure.Population>"},
        {"name": "stratifier", "type": "list<FHIR.Measure.Stratifier>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "status", "type": "code"},
        {"name": "experimental", "type": "boolean"},
        {"name": "description", "type": "string"},
        {"name": "purpose", "type": "string"},
        {"name": "usage", "type": "string"},
        {"name": "publicationDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "coverage", "type": "list<FHIR.UsageContext>"},
        {"name": "topic", "type": "list<FHIR.CodeableConcept>"},
        {"name": "contributor", "type": "list<FHIR.Contributor>"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ContactDetail>"},
        {"name": "copyright", "type": "string"},
        {"name": "relatedResource", "type": "list<FHIR.RelatedResource>"},
        {"name": "library", "type": "list<FHIR.Reference>"},
        {
          "name": "actionDefinition",
          "type": "list<FHIR.PlanDefinition.ActionDefinition>"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanActionCardinalityBehavior",
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
      "name": "UsageContext",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "patientGender", "type": "list<FHIR.CodeableConcept>"},
        {"name": "patientAgeGroup", "type": "list<FHIR.CodeableConcept>"},
        {"name": "clinicalFocus", "type": "list<FHIR.CodeableConcept>"},
        {"name": "targetUser", "type": "list<FHIR.CodeableConcept>"},
        {"name": "workflowSetting", "type": "list<FHIR.CodeableConcept>"},
        {"name": "workflowTask", "type": "list<FHIR.CodeableConcept>"},
        {"name": "clinicalVenue", "type": "list<FHIR.CodeableConcept>"},
        {"name": "jurisdiction", "type": "list<FHIR.CodeableConcept>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Ruleset",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resource", "type": "Reference"},
        {"name": "rule", "type": "list<FHIR.TestScript.Rule1>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Batch",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "lotNumber", "type": "string"},
        {"name": "expirationDate", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.MissingTeeth",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "tooth", "type": "Coding"},
        {"name": "reason", "type": "Coding"},
        {"name": "extractionDate", "type": "date"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Base",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "BundleType"},
        {"name": "total", "type": "unsignedInt"},
        {"name": "link", "type": "list<FHIR.Bundle.Link>"},
        {"name": "entry", "type": "list<FHIR.Bundle.Entry>"},
        {"name": "signature", "type": "Signature"}
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
        {"name": "admitSource", "type": "CodeableConcept"},
        {"name": "admittingDiagnosis", "type": "list<FHIR.Reference>"},
        {"name": "reAdmission", "type": "CodeableConcept"},
        {"name": "dietPreference", "type": "list<FHIR.CodeableConcept>"},
        {"name": "specialCourtesy", "type": "list<FHIR.CodeableConcept>"},
        {"name": "specialArrangement", "type": "list<FHIR.CodeableConcept>"},
        {"name": "destination", "type": "Reference"},
        {"name": "dischargeDisposition", "type": "CodeableConcept"},
        {"name": "dischargeDiagnosis", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Organization.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "purpose", "type": "CodeableConcept"},
        {"name": "name", "type": "HumanName"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "address", "type": "Address"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Param3",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
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
      "name": "BundleType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Response",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "string"},
        {"name": "location", "type": "uri"},
        {"name": "etag", "type": "string"},
        {"name": "lastModified", "type": "instant"},
        {"name": "outcome", "type": "ResourceContainer"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.ReferenceSeq",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "TestScript.Param1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Param2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "value", "type": "string"}
      ]
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
      "fromType": "uuid",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToDate",
      "fromType": "date",
      "toType": "System.Date"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EnrollmentRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PlanActionPrecheckBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProvenanceEntityRole",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UnitsOfTime",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EligibilityRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AddressType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationOrderCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SpecimenStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DetectedIssueSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IssueSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DataElementStringency",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "VisionEyes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EncounterStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureDefinitionKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentDataMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PlanActionRelationshipAnchor",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConformanceResourceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClaimResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanActivityStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionList",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PlanActionSelectionBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToDateTime",
      "fromType": "instant",
      "toType": "System.DateTime"
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
      "fromType": "ConformanceEventMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "IssueType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContentType",
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
      "fromType": "MedicationStatementCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToInteger",
      "fromType": "positiveInt",
      "toType": "System.Integer"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClinicalImpressionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionResponseTypes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NarrativeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferralCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EnrollmentResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentExceptType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "string",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EndpointStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuidePageKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuideDependencyType",
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
      "fromType": "RestfulConformanceMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NamingSystemIdentifierType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AccountStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureRequestPriority",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationDispenseStatus",
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
      "fromType": "DigitalMediaType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BindingStrength",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentStatus",
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
      "fromType": "StructureMapInputMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "InstanceAvailability",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "id",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LinkageType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LibraryStatus",
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
      "fromType": "ExtensionContext",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventOutcome",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConstraintSeverity",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RelatedResourceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PlanActionParticipantType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PlanActionGroupingBehavior",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireStatus",
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
      "fromType": "sequenceType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EventTiming",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GoalStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchParamType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SystemRestfulInteraction",
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
      "fromType": "MeasurePopulationType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SubscriptionChannelType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcedureRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ReferralStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AssertionDirectionType",
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
      "fromType": "LinkType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceCriticality",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConceptMapEquivalence",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PropertyRepresentation",
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
      "fromType": "MeasureDataUsage",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TriggerType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActivityDefinitionCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchModifierCode",
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
      "fromType": "OperationParameterUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ListMode",
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
      "fromType": "ProcessRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AdministrativeGender",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConformanceStatementKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PaymentNoticeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasureType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuestionnaireItemType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PaymentReconciliationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "StructureMapListMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToBoolean",
      "fromType": "boolean",
      "toType": "System.Boolean"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricCalibrationType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "code",
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
      "fromType": "ProcessResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FlagStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceCertainty",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CarePlanStatus",
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
      "fromType": "MeasureScoring",
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
      "fromType": "ConditionalDeleteStatus",
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
      "fromType": "NutritionOrderStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "uri",
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
      "fromType": "MeasureReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceMetricColor",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchEntryMode",
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
      "fromType": "ConditionVerificationStatus",
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
      "fromType": "ObservationRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToInteger",
      "fromType": "unsignedInt",
      "toType": "System.Integer"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NameUse",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SubscriptionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CommunicationRequestStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentReferenceStatus",
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
      "fromType": "CarePlanRelationship",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LocationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UnknownContentCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NoteType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "HTTPVerb",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "CodeSystemContentMode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PlanActionRelationshipType",
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
      "fromType": "ContactPointSystem",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationOrderStatus",
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
      "fromType": "markdown",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TypeDerivationRule",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationStatementStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GuidanceResponseStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "QuantityComparator",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "oid",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DeviceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasureReportType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "Measmnt_Principle",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SampledDataDataType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceStatus",
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
      "fromType": "PlanActionRequiredBehavior",
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
      "fromType": "TypeRestfulInteraction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "PlanActionCardinalityBehavior",
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
    }
  ]
});
