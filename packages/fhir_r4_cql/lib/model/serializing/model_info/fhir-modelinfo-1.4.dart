import 'package:fhir_r4_cql/fhir_r4_cql.dart';

final fhirmodelinfo14 = ModelInfo.fromJson({
  "name": "FHIR",
  "url": "http://hl7.org/fhir",
  "schemaLocation": "http://org.hl7.fhir fhir-single.xsd",
  "targetQualifier": "fhir",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate.value",
  "version": "1.4",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "uuid",
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
      "name": "ImagingExcerpt.Viewable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "contentType", "type": "code"},
        {"name": "height", "type": "positiveInt"},
        {"name": "width", "type": "positiveInt"},
        {"name": "frames", "type": "positiveInt"},
        {"name": "duration", "type": "unsignedInt"},
        {"name": "size", "type": "unsignedInt"},
        {"name": "title", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
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
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateRange", "type": "Range"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClinicalImpression.Finding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "CodeableConcept"},
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
        {"name": "supportingEvidence", "type": "list<FHIR.Attachment>"},
        {"name": "relatedAction", "type": "GuidanceResponse.RelatedAction"},
        {"name": "documentation", "type": "list<FHIR.Attachment>"},
        {"name": "participant", "type": "list<FHIR.Reference>"},
        {"name": "type", "type": "code"},
        {"name": "behavior", "type": "list<FHIR.GuidanceResponse.Behavior>"},
        {"name": "resource", "type": "Reference"},
        {"name": "action", "type": "list<FHIR.GuidanceResponse.Action>"}
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "string"},
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
      "name": "ImagingObjectSelection.Study",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "url", "type": "uri"},
        {"name": "imagingStudy", "type": "Reference"},
        {"name": "series", "type": "list<FHIR.ImagingObjectSelection.Series>"}
      ]
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
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "string"},
        {"name": "payeeType", "type": "Coding"},
        {"name": "item", "type": "list<FHIR.ClaimResponse.Item>"},
        {"name": "addItem", "type": "list<FHIR.ClaimResponse.AddItem>"},
        {"name": "error", "type": "list<FHIR.ClaimResponse.Error>"},
        {"name": "totalCost", "type": "Money"},
        {"name": "unallocDeductable", "type": "Money"},
        {"name": "totalBenefit", "type": "Money"},
        {"name": "paymentAdjustment", "type": "Money"},
        {"name": "paymentAdjustmentReason", "type": "Coding"},
        {"name": "paymentDate", "type": "date"},
        {"name": "paymentAmount", "type": "Money"},
        {"name": "paymentRef", "type": "Identifier"},
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
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication2>"
        }
      ]
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
      "name": "Practitioner.PractitionerRole",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "organization", "type": "Reference"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "specialty", "type": "list<FHIR.CodeableConcept>"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "period", "type": "Period"},
        {"name": "location", "type": "list<FHIR.Reference>"},
        {"name": "healthcareService", "type": "list<FHIR.Reference>"}
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "string"},
        {"name": "copyright", "type": "string"},
        {"name": "code", "type": "list<FHIR.Coding>"},
        {"name": "fhirVersion", "type": "id"},
        {"name": "mapping", "type": "list<FHIR.StructureDefinition.Mapping>"},
        {"name": "kind", "type": "StructureDefinitionKind"},
        {"name": "abstract", "type": "boolean"},
        {"name": "contextType", "type": "ExtensionContext"},
        {"name": "context", "type": "list<FHIR.string>"},
        {"name": "baseType", "type": "code"},
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
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
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
        {"name": "used", "type": "list<FHIR.Reference>"}
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
        {"name": "type", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "SimpleQuantity"},
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
        {"name": "requirements", "type": "string"},
        {"name": "code", "type": "code"},
        {"name": "base", "type": "code"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "description", "type": "string"},
        {"name": "expression", "type": "string"},
        {"name": "xpath", "type": "string"},
        {"name": "xpathUsage", "type": "XPathUsageType"},
        {"name": "target", "type": "list<FHIR.code>"}
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
        {"name": "service", "type": "Coding"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication2>"
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
      "element": {"name": "rule", "type": "list<FHIR.TestScript.Rule3>"}
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
        {"name": "description", "type": "string"},
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
        {"name": "quantity", "type": "SimpleQuantity"},
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
      "name": "ImagingObjectSelection.Frame",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "list<FHIR.unsignedInt>"},
        {"name": "url", "type": "uri"}
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
        {"name": "defaultValueBoolean", "type": "boolean"},
        {"name": "defaultValueInteger", "type": "integer"},
        {"name": "defaultValueDecimal", "type": "decimal"},
        {"name": "defaultValueBase64Binary", "type": "base64Binary"},
        {"name": "defaultValueInstant", "type": "instant"},
        {"name": "defaultValueString", "type": "string"},
        {"name": "defaultValueUri", "type": "uri"},
        {"name": "defaultValueDate", "type": "date"},
        {"name": "defaultValueDateTime", "type": "dateTime"},
        {"name": "defaultValueTime", "type": "time"},
        {"name": "defaultValueCode", "type": "code"},
        {"name": "defaultValueOid", "type": "oid"},
        {"name": "defaultValueUuid", "type": "uuid"},
        {"name": "defaultValueId", "type": "id"},
        {"name": "defaultValueUnsignedInt", "type": "unsignedInt"},
        {"name": "defaultValuePositiveInt", "type": "positiveInt"},
        {"name": "defaultValueMarkdown", "type": "markdown"},
        {"name": "defaultValueAnnotation", "type": "Annotation"},
        {"name": "defaultValueAttachment", "type": "Attachment"},
        {"name": "defaultValueIdentifier", "type": "Identifier"},
        {"name": "defaultValueCodeableConcept", "type": "CodeableConcept"},
        {"name": "defaultValueCoding", "type": "Coding"},
        {"name": "defaultValueQuantity", "type": "Quantity"},
        {"name": "defaultValueRange", "type": "Range"},
        {"name": "defaultValuePeriod", "type": "Period"},
        {"name": "defaultValueRatio", "type": "Ratio"},
        {"name": "defaultValueReference", "type": "Reference"},
        {"name": "defaultValueSampledData", "type": "SampledData"},
        {"name": "defaultValueSignature", "type": "Signature"},
        {"name": "defaultValueHumanName", "type": "HumanName"},
        {"name": "defaultValueAddress", "type": "Address"},
        {"name": "defaultValueContactPoint", "type": "ContactPoint"},
        {"name": "defaultValueTiming", "type": "Timing"},
        {"name": "defaultValueMeta", "type": "Meta"},
        {"name": "meaningWhenMissing", "type": "markdown"},
        {"name": "fixedBoolean", "type": "boolean"},
        {"name": "fixedInteger", "type": "integer"},
        {"name": "fixedDecimal", "type": "decimal"},
        {"name": "fixedBase64Binary", "type": "base64Binary"},
        {"name": "fixedInstant", "type": "instant"},
        {"name": "fixedString", "type": "string"},
        {"name": "fixedUri", "type": "uri"},
        {"name": "fixedDate", "type": "date"},
        {"name": "fixedDateTime", "type": "dateTime"},
        {"name": "fixedTime", "type": "time"},
        {"name": "fixedCode", "type": "code"},
        {"name": "fixedOid", "type": "oid"},
        {"name": "fixedUuid", "type": "uuid"},
        {"name": "fixedId", "type": "id"},
        {"name": "fixedUnsignedInt", "type": "unsignedInt"},
        {"name": "fixedPositiveInt", "type": "positiveInt"},
        {"name": "fixedMarkdown", "type": "markdown"},
        {"name": "fixedAnnotation", "type": "Annotation"},
        {"name": "fixedAttachment", "type": "Attachment"},
        {"name": "fixedIdentifier", "type": "Identifier"},
        {"name": "fixedCodeableConcept", "type": "CodeableConcept"},
        {"name": "fixedCoding", "type": "Coding"},
        {"name": "fixedQuantity", "type": "Quantity"},
        {"name": "fixedRange", "type": "Range"},
        {"name": "fixedPeriod", "type": "Period"},
        {"name": "fixedRatio", "type": "Ratio"},
        {"name": "fixedReference", "type": "Reference"},
        {"name": "fixedSampledData", "type": "SampledData"},
        {"name": "fixedSignature", "type": "Signature"},
        {"name": "fixedHumanName", "type": "HumanName"},
        {"name": "fixedAddress", "type": "Address"},
        {"name": "fixedContactPoint", "type": "ContactPoint"},
        {"name": "fixedTiming", "type": "Timing"},
        {"name": "fixedMeta", "type": "Meta"},
        {"name": "patternBoolean", "type": "boolean"},
        {"name": "patternInteger", "type": "integer"},
        {"name": "patternDecimal", "type": "decimal"},
        {"name": "patternBase64Binary", "type": "base64Binary"},
        {"name": "patternInstant", "type": "instant"},
        {"name": "patternString", "type": "string"},
        {"name": "patternUri", "type": "uri"},
        {"name": "patternDate", "type": "date"},
        {"name": "patternDateTime", "type": "dateTime"},
        {"name": "patternTime", "type": "time"},
        {"name": "patternCode", "type": "code"},
        {"name": "patternOid", "type": "oid"},
        {"name": "patternUuid", "type": "uuid"},
        {"name": "patternId", "type": "id"},
        {"name": "patternUnsignedInt", "type": "unsignedInt"},
        {"name": "patternPositiveInt", "type": "positiveInt"},
        {"name": "patternMarkdown", "type": "markdown"},
        {"name": "patternAnnotation", "type": "Annotation"},
        {"name": "patternAttachment", "type": "Attachment"},
        {"name": "patternIdentifier", "type": "Identifier"},
        {"name": "patternCodeableConcept", "type": "CodeableConcept"},
        {"name": "patternCoding", "type": "Coding"},
        {"name": "patternQuantity", "type": "Quantity"},
        {"name": "patternRange", "type": "Range"},
        {"name": "patternPeriod", "type": "Period"},
        {"name": "patternRatio", "type": "Ratio"},
        {"name": "patternReference", "type": "Reference"},
        {"name": "patternSampledData", "type": "SampledData"},
        {"name": "patternSignature", "type": "Signature"},
        {"name": "patternHumanName", "type": "HumanName"},
        {"name": "patternAddress", "type": "Address"},
        {"name": "patternContactPoint", "type": "ContactPoint"},
        {"name": "patternTiming", "type": "Timing"},
        {"name": "patternMeta", "type": "Meta"},
        {"name": "exampleBoolean", "type": "boolean"},
        {"name": "exampleInteger", "type": "integer"},
        {"name": "exampleDecimal", "type": "decimal"},
        {"name": "exampleBase64Binary", "type": "base64Binary"},
        {"name": "exampleInstant", "type": "instant"},
        {"name": "exampleString", "type": "string"},
        {"name": "exampleUri", "type": "uri"},
        {"name": "exampleDate", "type": "date"},
        {"name": "exampleDateTime", "type": "dateTime"},
        {"name": "exampleTime", "type": "time"},
        {"name": "exampleCode", "type": "code"},
        {"name": "exampleOid", "type": "oid"},
        {"name": "exampleUuid", "type": "uuid"},
        {"name": "exampleId", "type": "id"},
        {"name": "exampleUnsignedInt", "type": "unsignedInt"},
        {"name": "examplePositiveInt", "type": "positiveInt"},
        {"name": "exampleMarkdown", "type": "markdown"},
        {"name": "exampleAnnotation", "type": "Annotation"},
        {"name": "exampleAttachment", "type": "Attachment"},
        {"name": "exampleIdentifier", "type": "Identifier"},
        {"name": "exampleCodeableConcept", "type": "CodeableConcept"},
        {"name": "exampleCoding", "type": "Coding"},
        {"name": "exampleQuantity", "type": "Quantity"},
        {"name": "exampleRange", "type": "Range"},
        {"name": "examplePeriod", "type": "Period"},
        {"name": "exampleRatio", "type": "Ratio"},
        {"name": "exampleReference", "type": "Reference"},
        {"name": "exampleSampledData", "type": "SampledData"},
        {"name": "exampleSignature", "type": "Signature"},
        {"name": "exampleHumanName", "type": "HumanName"},
        {"name": "exampleAddress", "type": "Address"},
        {"name": "exampleContactPoint", "type": "ContactPoint"},
        {"name": "exampleTiming", "type": "Timing"},
        {"name": "exampleMeta", "type": "Meta"},
        {"name": "minValueBoolean", "type": "boolean"},
        {"name": "minValueInteger", "type": "integer"},
        {"name": "minValueDecimal", "type": "decimal"},
        {"name": "minValueBase64Binary", "type": "base64Binary"},
        {"name": "minValueInstant", "type": "instant"},
        {"name": "minValueString", "type": "string"},
        {"name": "minValueUri", "type": "uri"},
        {"name": "minValueDate", "type": "date"},
        {"name": "minValueDateTime", "type": "dateTime"},
        {"name": "minValueTime", "type": "time"},
        {"name": "minValueCode", "type": "code"},
        {"name": "minValueOid", "type": "oid"},
        {"name": "minValueUuid", "type": "uuid"},
        {"name": "minValueId", "type": "id"},
        {"name": "minValueUnsignedInt", "type": "unsignedInt"},
        {"name": "minValuePositiveInt", "type": "positiveInt"},
        {"name": "minValueMarkdown", "type": "markdown"},
        {"name": "minValueAnnotation", "type": "Annotation"},
        {"name": "minValueAttachment", "type": "Attachment"},
        {"name": "minValueIdentifier", "type": "Identifier"},
        {"name": "minValueCodeableConcept", "type": "CodeableConcept"},
        {"name": "minValueCoding", "type": "Coding"},
        {"name": "minValueQuantity", "type": "Quantity"},
        {"name": "minValueRange", "type": "Range"},
        {"name": "minValuePeriod", "type": "Period"},
        {"name": "minValueRatio", "type": "Ratio"},
        {"name": "minValueReference", "type": "Reference"},
        {"name": "minValueSampledData", "type": "SampledData"},
        {"name": "minValueSignature", "type": "Signature"},
        {"name": "minValueHumanName", "type": "HumanName"},
        {"name": "minValueAddress", "type": "Address"},
        {"name": "minValueContactPoint", "type": "ContactPoint"},
        {"name": "minValueTiming", "type": "Timing"},
        {"name": "minValueMeta", "type": "Meta"},
        {"name": "maxValueBoolean", "type": "boolean"},
        {"name": "maxValueInteger", "type": "integer"},
        {"name": "maxValueDecimal", "type": "decimal"},
        {"name": "maxValueBase64Binary", "type": "base64Binary"},
        {"name": "maxValueInstant", "type": "instant"},
        {"name": "maxValueString", "type": "string"},
        {"name": "maxValueUri", "type": "uri"},
        {"name": "maxValueDate", "type": "date"},
        {"name": "maxValueDateTime", "type": "dateTime"},
        {"name": "maxValueTime", "type": "time"},
        {"name": "maxValueCode", "type": "code"},
        {"name": "maxValueOid", "type": "oid"},
        {"name": "maxValueUuid", "type": "uuid"},
        {"name": "maxValueId", "type": "id"},
        {"name": "maxValueUnsignedInt", "type": "unsignedInt"},
        {"name": "maxValuePositiveInt", "type": "positiveInt"},
        {"name": "maxValueMarkdown", "type": "markdown"},
        {"name": "maxValueAnnotation", "type": "Annotation"},
        {"name": "maxValueAttachment", "type": "Attachment"},
        {"name": "maxValueIdentifier", "type": "Identifier"},
        {"name": "maxValueCodeableConcept", "type": "CodeableConcept"},
        {"name": "maxValueCoding", "type": "Coding"},
        {"name": "maxValueQuantity", "type": "Quantity"},
        {"name": "maxValueRange", "type": "Range"},
        {"name": "maxValuePeriod", "type": "Period"},
        {"name": "maxValueRatio", "type": "Ratio"},
        {"name": "maxValueReference", "type": "Reference"},
        {"name": "maxValueSampledData", "type": "SampledData"},
        {"name": "maxValueSignature", "type": "Signature"},
        {"name": "maxValueHumanName", "type": "HumanName"},
        {"name": "maxValueAddress", "type": "Address"},
        {"name": "maxValueContactPoint", "type": "ContactPoint"},
        {"name": "maxValueTiming", "type": "Timing"},
        {"name": "maxValueMeta", "type": "Meta"},
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
        {"name": "name", "type": "string"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueString", "type": "string"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueOid", "type": "oid"},
        {"name": "valueUuid", "type": "uuid"},
        {"name": "valueId", "type": "id"},
        {"name": "valueUnsignedInt", "type": "unsignedInt"},
        {"name": "valuePositiveInt", "type": "positiveInt"},
        {"name": "valueMarkdown", "type": "markdown"},
        {"name": "valueAnnotation", "type": "Annotation"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"},
        {"name": "valueElementDefinition", "type": "ElementDefinition"},
        {"name": "valueModuleMetadata", "type": "ModuleMetadata"},
        {"name": "valueDataRequirement", "type": "DataRequirement"},
        {"name": "valueActionDefinition", "type": "ActionDefinition"},
        {"name": "valueParameterDefinition", "type": "ParameterDefinition"},
        {"name": "valueTriggerDefinition", "type": "TriggerDefinition"}
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
      "name": "Library.CodeSystem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"}
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
        {"name": "requestId", "type": "string"},
        {"name": "module", "type": "Reference"},
        {"name": "status", "type": "GuidanceResponseStatus"},
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
      "name": "Protocol",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "title", "type": "string"},
        {"name": "status", "type": "ProtocolStatus"},
        {"name": "type", "type": "ProtocolType"},
        {"name": "subject", "type": "Reference"},
        {"name": "group", "type": "Reference"},
        {"name": "purpose", "type": "string"},
        {"name": "author", "type": "Reference"},
        {"name": "step", "type": "list<FHIR.Protocol.Step>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProtocolStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Conformance.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"},
        {"name": "interaction", "type": "list<FHIR.Conformance.Interaction>"},
        {"name": "versioning", "type": "ResourceVersionPolicy"},
        {"name": "readHistory", "type": "boolean"},
        {"name": "updateCreate", "type": "boolean"},
        {"name": "conditionalCreate", "type": "boolean"},
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
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "target", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {"name": "coverage", "type": "Reference"},
        {"name": "relationship", "type": "Coding"}
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
        {"name": "substance", "type": "Reference"}
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
      "name": "ModuleMetadata.Contact1",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ModuleDefinition.DateFilter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valuePeriod", "type": "Period"}
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
      "name": "ImagingObjectSelection.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sopClass", "type": "oid"},
        {"name": "uid", "type": "oid"},
        {"name": "url", "type": "uri"},
        {"name": "frame", "type": "list<FHIR.ImagingObjectSelection.Frame>"}
      ]
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
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication1>"
        },
        {"name": "subDetail", "type": "list<FHIR.ClaimResponse.SubDetail>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActionDefinition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "actionIdentifier", "type": "Identifier"},
        {"name": "label", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "textEquivalent", "type": "string"},
        {"name": "concept", "type": "list<FHIR.CodeableConcept>"},
        {"name": "supportingEvidence", "type": "list<FHIR.Attachment>"},
        {"name": "documentation", "type": "list<FHIR.Attachment>"},
        {"name": "relatedAction", "type": "ActionDefinition.RelatedAction"},
        {"name": "participantType", "type": "list<FHIR.ParticipantType>"},
        {"name": "type", "type": "ActionType"},
        {"name": "behavior", "type": "list<FHIR.ActionDefinition.Behavior>"},
        {"name": "resource", "type": "Reference"},
        {
          "name": "customization",
          "type": "list<FHIR.ActionDefinition.Customization>"
        },
        {"name": "action", "type": "list<FHIR.ActionDefinition>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "action", "type": "ActionList"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
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
        {"name": "metadata", "type": "TestScript.Metadata"},
        {"name": "action", "type": "list<FHIR.TestScript.Action1>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Nutrient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "type": "CodeableConcept"},
        {"name": "amount", "type": "SimpleQuantity"}
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
        {"name": "text", "type": "string"}
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
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "extension", "type": "list<FHIR.Extension>"}
      ]
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
        {"name": "url", "type": "uri"},
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
        {"name": "dateEnded", "type": "dateTime"},
        {"name": "reasonEnded", "type": "CodeableConcept"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {
          "name": "dosageInstruction",
          "type": "list<FHIR.MedicationOrder.DosageInstruction>"
        },
        {"name": "dispenseRequest", "type": "MedicationOrder.DispenseRequest"},
        {"name": "substitution", "type": "MedicationOrder.Substitution"},
        {"name": "priorPrescription", "type": "Reference"}
      ]
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
        {"name": "duration", "type": "SimpleQuantity"},
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
      "name": "TransactionMode",
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
        {"name": "type", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "content", "type": "list<FHIR.Attachment>"}
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
        {"name": "medicationCodeableConcept", "type": "CodeableConcept"},
        {"name": "medicationReference", "type": "Reference"},
        {"name": "validityPeriod", "type": "Period"},
        {"name": "numberOfRepeatsAllowed", "type": "positiveInt"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "expectedSupplyDuration", "type": "Duration"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "type", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"},
        {"name": "udi", "type": "list<FHIR.Reference>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication1>"
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
      "element": {"name": "param", "type": "list<FHIR.TestScript.Param3>"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "param", "type": "list<FHIR.TestScript.Param2>"}
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
        {"name": "identifier", "type": "Identifier"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "status", "type": "ConformanceResourceStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ValueSet.Contact>"},
        {"name": "date", "type": "dateTime"},
        {"name": "lockedDate", "type": "date"},
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "immutable", "type": "boolean"},
        {"name": "requirements", "type": "string"},
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
      "name": "ModuleDefinition.Data",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"},
        {"name": "mustSupport", "type": "list<FHIR.string>"},
        {
          "name": "codeFilter",
          "type": "list<FHIR.ModuleDefinition.CodeFilter>"
        },
        {"name": "dateFilter", "type": "list<FHIR.ModuleDefinition.DateFilter>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "param", "type": "list<FHIR.TestScript.Param1>"}
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
        {"name": "contentType", "type": "code"},
        {"name": "blob", "type": "base64Binary"}
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
      "name": "CommunicationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ImagingExcerpt.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "dicom", "type": "list<FHIR.ImagingExcerpt.Dicom1>"},
        {"name": "instance", "type": "list<FHIR.ImagingExcerpt.Instance>"}
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
        {"name": "moduleMetadata", "type": "ModuleMetadata"},
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
      "name": "ImagingObjectSelection.Series",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "url", "type": "uri"},
        {
          "name": "instance",
          "type": "list<FHIR.ImagingObjectSelection.Instance>"
        }
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
      "name": "DeviceUseRequestPriority",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
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
      "name": "OrderStatus",
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
      "name": "Specimen.Container",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "description", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "capacity", "type": "SimpleQuantity"},
        {"name": "specimenQuantity", "type": "SimpleQuantity"},
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
        {"name": "claimIdentifier", "type": "Identifier"},
        {"name": "claimReference", "type": "Reference"},
        {"name": "claimResponseIdentifier", "type": "Identifier"},
        {"name": "claimResponseReference", "type": "Reference"},
        {"name": "subType", "type": "list<FHIR.Coding>"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "billablePeriod", "type": "Period"},
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
        {"name": "occurrenceCode", "type": "list<FHIR.Coding>"},
        {"name": "occurenceSpanCode", "type": "list<FHIR.Coding>"},
        {"name": "valueCode", "type": "list<FHIR.Coding>"},
        {
          "name": "diagnosis",
          "type": "list<FHIR.ExplanationOfBenefit.Diagnosis>"
        },
        {
          "name": "procedure",
          "type": "list<FHIR.ExplanationOfBenefit.Procedure>"
        },
        {"name": "specialCondition", "type": "list<FHIR.Coding>"},
        {"name": "patientIdentifier", "type": "Identifier"},
        {"name": "patientReference", "type": "Reference"},
        {"name": "precedence", "type": "positiveInt"},
        {"name": "coverage", "type": "ExplanationOfBenefit.Coverage"},
        {"name": "accidentDate", "type": "date"},
        {"name": "accidentType", "type": "Coding"},
        {"name": "accidentLocationAddress", "type": "Address"},
        {"name": "accidentLocationReference", "type": "Reference"},
        {"name": "interventionException", "type": "list<FHIR.Coding>"},
        {"name": "onset", "type": "list<FHIR.ExplanationOfBenefit.Onset>"},
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
        {"name": "paymentAdjustment", "type": "Money"},
        {"name": "paymentAdjustmentReason", "type": "Coding"},
        {"name": "paymentDate", "type": "date"},
        {"name": "paymentAmount", "type": "Money"},
        {"name": "paymentRef", "type": "Identifier"},
        {"name": "reserved", "type": "Coding"},
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "string"},
        {"name": "copyright", "type": "string"},
        {"name": "caseSensitive", "type": "boolean"},
        {"name": "valueSet", "type": "uri"},
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
        {"name": "type", "type": "Coding"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "supervisorIdentifier", "type": "Identifier"},
        {"name": "supervisorReference", "type": "Reference"},
        {"name": "providerQualification", "type": "Coding"},
        {"name": "diagnosisLinkId", "type": "list<FHIR.positiveInt>"},
        {"name": "service", "type": "Coding"},
        {"name": "serviceModifier", "type": "list<FHIR.Coding>"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "servicedDate", "type": "date"},
        {"name": "servicedPeriod", "type": "Period"},
        {"name": "place", "type": "Coding"},
        {"name": "quantity", "type": "SimpleQuantity"},
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
        {"name": "benefitQuantity", "type": "Money"},
        {"name": "benefitUsedUnsignedInt", "type": "unsignedInt"},
        {"name": "benefitUsedQuantity", "type": "Money"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImagingExcerpt.Study",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "imagingStudy", "type": "Reference"},
        {"name": "dicom", "type": "list<FHIR.ImagingExcerpt.Dicom>"},
        {"name": "viewable", "type": "list<FHIR.ImagingExcerpt.Viewable>"},
        {"name": "series", "type": "list<FHIR.ImagingExcerpt.Series>"}
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
        {"name": "participant", "type": "list<FHIR.CarePlan.Participant>"},
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
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "extension", "type": "list<FHIR.Extension>"}
      ]
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
        {"name": "careProvider", "type": "list<FHIR.Reference>"},
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
        {"name": "patient", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "name", "type": "HumanName"},
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
        {"name": "onsetQuantity", "type": "Age"},
        {"name": "onsetRange", "type": "Range"},
        {"name": "onsetPeriod", "type": "Period"},
        {"name": "onsetString", "type": "string"},
        {"name": "note", "type": "Annotation"}
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "usage", "type": "string"},
        {"name": "uniqueId", "type": "list<FHIR.NamingSystem.UniqueId>"},
        {"name": "replacedBy", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Protocol.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "integer"},
        {"name": "activity", "type": "uri"}
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
      "name": "NutritionOrder.Texture",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "type": "CodeableConcept"},
        {"name": "foodType", "type": "CodeableConcept"}
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
      "name": "ModuleMetadata.RelatedResource",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ModuleMetadataResourceType"},
        {"name": "document", "type": "Attachment"},
        {"name": "resource", "type": "Reference"}
      ]
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
      "name": "Claim.Onset",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "timeDate", "type": "date"},
        {"name": "timePeriod", "type": "Period"},
        {"name": "type", "type": "Coding"}
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
        {"name": "additive", "type": "list<FHIR.Reference>"}
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
        {"name": "agent", "type": "Provenance.Agent"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Detail1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "service", "type": "Coding"},
        {"name": "fee", "type": "Money"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication4>"
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
      "name": "Protocol.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueQuantity", "type": "SimpleQuantity"},
        {"name": "valueRange", "type": "Range"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Money",
      "baseType": "Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "extension", "type": "list<FHIR.Extension>"}
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
      "name": "ImagingObjectSelection",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "patient", "type": "Reference"},
        {"name": "authoringTime", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "title", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "study", "type": "list<FHIR.ImagingObjectSelection.Study>"}
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "string"},
        {"name": "copyright", "type": "string"},
        {"name": "sourceUri", "type": "uri"},
        {"name": "sourceReference", "type": "Reference"},
        {"name": "targetUri", "type": "uri"},
        {"name": "targetReference", "type": "Reference"},
        {"name": "element", "type": "list<FHIR.ConceptMap.Element>"}
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
        {
          "name": "practitionerRole",
          "type": "list<FHIR.Practitioner.PractitionerRole>"
        },
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
      "name": "NutritionOrder.Administration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "schedule", "type": "Timing"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "rateQuantity", "type": "SimpleQuantity"},
        {"name": "rateRatio", "type": "Ratio"}
      ]
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
        {"name": "benefitQuantity", "type": "Money"},
        {"name": "benefitUsedUnsignedInt", "type": "unsignedInt"},
        {"name": "benefitUsedQuantity", "type": "Money"}
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
        {"name": "service", "type": "Coding"},
        {"name": "fee", "type": "Money"},
        {"name": "noteNumberLinkId", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ClaimResponse.Adjudication3>"
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
        {"name": "low", "type": "SimpleQuantity"},
        {"name": "high", "type": "SimpleQuantity"}
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
        {"name": "name", "type": "string"},
        {"name": "kind", "type": "GuidePageKind"},
        {"name": "type", "type": "list<FHIR.code>"},
        {"name": "package", "type": "list<FHIR.string>"},
        {"name": "format", "type": "code"},
        {"name": "page", "type": "list<FHIR.ImplementationGuide.Page>"}
      ]
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
      "name": "SimpleQuantity",
      "baseType": "Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "extension", "type": "list<FHIR.Extension>"},
        {"name": "comparator", "type": "QuantityComparator", "prohibited": true}
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
      "name": "ActionRelationshipType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Protocol.Activity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "alternative", "type": "list<FHIR.uri>"},
        {"name": "component", "type": "list<FHIR.Protocol.Component>"},
        {"name": "following", "type": "list<FHIR.uri>"},
        {"name": "wait", "type": "Duration"},
        {"name": "detail", "type": "Protocol.Detail"}
      ]
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
        {"name": "substance", "type": "CodeableConcept"},
        {"name": "patient", "type": "Reference"},
        {"name": "recordedDate", "type": "dateTime"},
        {"name": "recorder", "type": "Reference"},
        {"name": "reporter", "type": "Reference"},
        {"name": "onset", "type": "dateTime"},
        {"name": "lastOccurence", "type": "dateTime"},
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
        {"name": "status", "type": "EncounterState"},
        {"name": "statusHistory", "type": "list<FHIR.Encounter.StatusHistory>"},
        {"name": "class", "type": "EncounterClass"},
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
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "unitPrice", "type": "Money"},
        {"name": "factor", "type": "decimal"},
        {"name": "points", "type": "decimal"},
        {"name": "net", "type": "Money"}
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
      "name": "Claim.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "diagnosis", "type": "Coding"}
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
        {"name": "questionnaire", "type": "Reference"},
        {"name": "status", "type": "QuestionnaireResponseStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "authored", "type": "dateTime"},
        {"name": "source", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
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
      "name": "ActionDefinition.Customization",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Library.Library",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "documentAttachment", "type": "Attachment"},
        {"name": "documentReference", "type": "Reference"}
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
        {"name": "started", "type": "dateTime"},
        {"name": "order", "type": "list<FHIR.Reference>"},
        {"name": "referrer", "type": "Reference"},
        {"name": "interpreter", "type": "Reference"},
        {"name": "url", "type": "uri"},
        {"name": "numberOfSeries", "type": "unsignedInt"},
        {"name": "numberOfInstances", "type": "unsignedInt"},
        {"name": "procedure", "type": "list<FHIR.Reference>"},
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
        {"name": "activePeriod", "type": "Period"},
        {"name": "currency", "type": "Coding"},
        {"name": "balance", "type": "Money"},
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
        {"name": "type", "type": "AuditEventParticipantNetworkType"}
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
      "name": "Sequence.StructureVariation",
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
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "value", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ModuleMetadataType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.BenefitBalance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "subCategory", "type": "Coding"},
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
      "name": "ExplanationOfBenefit.Adjudication1",
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
      "name": "ExplanationOfBenefit.Adjudication2",
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
      "name": "ImagingExcerpt.Dicom",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "dWebType"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.Supplement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "productName", "type": "string"},
        {"name": "schedule", "type": "list<FHIR.Timing>"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "instruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Adjudication3",
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
      "name": "PractitionerRole",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "active", "type": "boolean"},
        {"name": "practitioner", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "role", "type": "list<FHIR.CodeableConcept>"},
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
        {"name": "availabilityExceptions", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Adjudication4",
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
      "name": "NutritionOrder.EnteralFormula",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "baseFormulaType", "type": "CodeableConcept"},
        {"name": "baseFormulaProductName", "type": "string"},
        {"name": "additiveType", "type": "CodeableConcept"},
        {"name": "additiveProductName", "type": "string"},
        {"name": "caloricDensity", "type": "SimpleQuantity"},
        {"name": "routeofAdministration", "type": "CodeableConcept"},
        {
          "name": "administration",
          "type": "list<FHIR.NutritionOrder.Administration>"
        },
        {"name": "maxVolumeToDeliver", "type": "SimpleQuantity"},
        {"name": "administrationInstruction", "type": "string"}
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
      "name": "ImagingExcerpt.Dicom1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "dWebType"},
        {"name": "url", "type": "uri"}
      ]
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
        {"name": "doseQuantity", "type": "SimpleQuantity"},
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
        {"name": "comment", "type": "string"},
        {"name": "collectedDateTime", "type": "dateTime"},
        {"name": "collectedPeriod", "type": "Period"},
        {"name": "quantity", "type": "SimpleQuantity"},
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
        {"name": "start", "type": "integer"},
        {"name": "end", "type": "integer"},
        {"name": "score", "type": "Quantity"},
        {"name": "method", "type": "string"}
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
      "name": "ImagingExcerpt.Dicom2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "dWebType"},
        {"name": "url", "type": "uri"}
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
        {"name": "responceIdentifier", "type": "Identifier"},
        {"name": "responceReference", "type": "Reference"},
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
        {"name": "dailyAmount", "type": "SimpleQuantity"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "description", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationRecommendation.Protocol",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "doseSequence", "type": "integer"},
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
      "name": "OrderResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "request", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "who", "type": "Reference"},
        {"name": "orderStatus", "type": "OrderStatus"},
        {"name": "description", "type": "string"},
        {"name": "fulfillment", "type": "list<FHIR.Reference>"}
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
      "name": "Task",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "performerType", "type": "list<FHIR.Coding>"},
        {"name": "priority", "type": "TaskPriority"},
        {"name": "status", "type": "TaskStatus"},
        {"name": "failureReason", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "for", "type": "Reference"},
        {"name": "definition", "type": "uri"},
        {"name": "created", "type": "dateTime"},
        {"name": "lastModified", "type": "dateTime"},
        {"name": "creator", "type": "Reference"},
        {"name": "owner", "type": "Reference"},
        {"name": "parent", "type": "Reference"},
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "string"},
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
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "suppliedItem", "type": "Reference"},
        {"name": "supplier", "type": "Reference"},
        {"name": "whenPrepared", "type": "Period"},
        {"name": "time", "type": "dateTime"},
        {"name": "destination", "type": "Reference"},
        {"name": "receiver", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrder.Event",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "DiagnosticOrderStatus"},
        {"name": "description", "type": "CodeableConcept"},
        {"name": "dateTime", "type": "dateTime"},
        {"name": "actor", "type": "Reference"}
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
        {"name": "transactionMode", "type": "TransactionMode"},
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
        {"name": "type", "type": "sequenceType"},
        {"name": "patient", "type": "Reference"},
        {"name": "specimen", "type": "Reference"},
        {"name": "device", "type": "Reference"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "species", "type": "CodeableConcept"},
        {"name": "referenceSeq", "type": "list<FHIR.Sequence.ReferenceSeq>"},
        {"name": "variation", "type": "Sequence.Variation"},
        {"name": "quality", "type": "list<FHIR.Sequence.Quality>"},
        {"name": "allelicState", "type": "CodeableConcept"},
        {"name": "allelicFrequency", "type": "decimal"},
        {"name": "copyNumberEvent", "type": "CodeableConcept"},
        {"name": "readCoverage", "type": "integer"},
        {"name": "repository", "type": "list<FHIR.Sequence.Repository>"},
        {"name": "pointer", "type": "list<FHIR.Reference>"},
        {"name": "observedSeq", "type": "string"},
        {"name": "observation", "type": "Reference"},
        {"name": "structureVariation", "type": "Sequence.StructureVariation"}
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
      "name": "ModuleDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "model", "type": "list<FHIR.ModuleDefinition.Model>"},
        {"name": "library", "type": "list<FHIR.ModuleDefinition.Library>"},
        {
          "name": "codeSystem",
          "type": "list<FHIR.ModuleDefinition.CodeSystem>"
        },
        {"name": "valueSet", "type": "list<FHIR.ModuleDefinition.ValueSet>"},
        {"name": "parameter", "type": "list<FHIR.ModuleDefinition.Parameter>"},
        {"name": "data", "type": "list<FHIR.ModuleDefinition.Data>"}
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
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "targetIdentifier", "type": "Identifier"},
        {"name": "targetReference", "type": "Reference"},
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
      "name": "dWebType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Parameters.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueString", "type": "string"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueOid", "type": "oid"},
        {"name": "valueUuid", "type": "uuid"},
        {"name": "valueId", "type": "id"},
        {"name": "valueUnsignedInt", "type": "unsignedInt"},
        {"name": "valuePositiveInt", "type": "positiveInt"},
        {"name": "valueMarkdown", "type": "markdown"},
        {"name": "valueAnnotation", "type": "Annotation"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"},
        {"name": "valueElementDefinition", "type": "ElementDefinition"},
        {"name": "valueModuleMetadata", "type": "ModuleMetadata"},
        {"name": "valueDataRequirement", "type": "DataRequirement"},
        {"name": "valueActionDefinition", "type": "ActionDefinition"},
        {"name": "valueParameterDefinition", "type": "ParameterDefinition"},
        {"name": "valueTriggerDefinition", "type": "TriggerDefinition"},
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
        {"name": "moduleMetadata", "type": "ModuleMetadata"},
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
        {"name": "valuePeriod", "type": "Period"}
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
        {"name": "authorizingPrescription", "type": "list<FHIR.Reference>"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "daysSupply", "type": "SimpleQuantity"},
        {"name": "whenPrepared", "type": "dateTime"},
        {"name": "whenHandedOver", "type": "dateTime"},
        {"name": "destination", "type": "Reference"},
        {"name": "receiver", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {
          "name": "dosageInstruction",
          "type": "list<FHIR.MedicationDispense.DosageInstruction>"
        },
        {"name": "substitution", "type": "MedicationDispense.Substitution"}
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
      "name": "ImagingExcerpt",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "uid", "type": "oid"},
        {"name": "patient", "type": "Reference"},
        {"name": "authoringTime", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
        {"name": "title", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "study", "type": "list<FHIR.ImagingExcerpt.Study>"}
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
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
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
      "name": "Protocol.Next",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "reference", "type": "uri"},
        {"name": "condition", "type": "Protocol.Precondition"}
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
        {"name": "category", "type": "CodeableConcept"},
        {"name": "sender", "type": "Reference"},
        {"name": "recipient", "type": "list<FHIR.Reference>"},
        {"name": "payload", "type": "list<FHIR.Communication.Payload>"},
        {"name": "medium", "type": "list<FHIR.CodeableConcept>"},
        {"name": "status", "type": "CommunicationStatus"},
        {"name": "encounter", "type": "Reference"},
        {"name": "sent", "type": "dateTime"},
        {"name": "received", "type": "dateTime"},
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "subject", "type": "Reference"},
        {"name": "requestDetail", "type": "Reference"}
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
        {"name": "quantity", "type": "SimpleQuantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Library",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "moduleMetadata", "type": "ModuleMetadata"},
        {"name": "model", "type": "list<FHIR.Library.Model>"},
        {"name": "library", "type": "list<FHIR.Library.Library>"},
        {"name": "codeSystem", "type": "list<FHIR.Library.CodeSystem>"},
        {"name": "valueSet", "type": "list<FHIR.Library.ValueSet>"},
        {"name": "parameter", "type": "list<FHIR.ParameterDefinition>"},
        {"name": "dataRequirement", "type": "list<FHIR.DataRequirement>"},
        {"name": "document", "type": "Attachment"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.StatusHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "status", "type": "EncounterState"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticOrder.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "specimen", "type": "list<FHIR.Reference>"},
        {"name": "bodySite", "type": "CodeableConcept"},
        {"name": "status", "type": "DiagnosticOrderStatus"},
        {"name": "event", "type": "list<FHIR.DiagnosticOrder.Event>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ModuleMetadataContributorType",
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
      "name": "CarePlan.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "member", "type": "Reference"}
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
        {"name": "service", "type": "Coding"},
        {"name": "fee", "type": "Money"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication4>"
        }
      ]
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "string"},
        {"name": "copyright", "type": "string"},
        {"name": "kind", "type": "ConformanceStatementKind"},
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
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "ObservationStatus"},
        {"name": "category", "type": "CodeableConcept"},
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
      "name": "DeviceUseRequestStatus",
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
      "name": "Protocol.Step",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "duration", "type": "Duration"},
        {"name": "precondition", "type": "Protocol.Precondition"},
        {"name": "exit", "type": "Protocol.Precondition"},
        {"name": "firstActivity", "type": "uri"},
        {"name": "activity", "type": "list<FHIR.Protocol.Activity>"},
        {"name": "next", "type": "list<FHIR.Protocol.Next>"}
      ]
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
      "name": "ModuleDefinition.CodeFilter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "valueSetString", "type": "string"},
        {"name": "valueSetReference", "type": "Reference"},
        {"name": "codeableConcept", "type": "list<FHIR.CodeableConcept>"}
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
      "name": "ModuleDefinition.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "code"},
        {"name": "use", "type": "code"},
        {"name": "documentation", "type": "string"},
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"}
      ]
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
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "string"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"}
      ]
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
      "name": "Observation.ReferenceRange",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "low", "type": "SimpleQuantity"},
        {"name": "high", "type": "SimpleQuantity"},
        {"name": "meaning", "type": "CodeableConcept"},
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
        {"name": "issuerIdentifier", "type": "Identifier"},
        {"name": "issuerReference", "type": "Reference"},
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
        {"name": "plan", "type": "string"},
        {"name": "subPlan", "type": "string"},
        {"name": "dependent", "type": "positiveInt"},
        {"name": "sequence", "type": "positiveInt"},
        {"name": "exception", "type": "list<FHIR.Coding>"},
        {"name": "school", "type": "string"},
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
      "name": "Order.When",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "schedule", "type": "Timing"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResourceContainer",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "Account", "type": "Account"},
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
        {"name": "Contract", "type": "Contract"},
        {"name": "Coverage", "type": "Coverage"},
        {"name": "DataElement", "type": "DataElement"},
        {"name": "DecisionSupportRule", "type": "DecisionSupportRule"},
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
        {"name": "ExpansionProfile", "type": "ExpansionProfile"},
        {"name": "ExplanationOfBenefit", "type": "ExplanationOfBenefit"},
        {"name": "FamilyMemberHistory", "type": "FamilyMemberHistory"},
        {"name": "Flag", "type": "Flag"},
        {"name": "Goal", "type": "Goal"},
        {"name": "Group", "type": "Group"},
        {"name": "GuidanceResponse", "type": "GuidanceResponse"},
        {"name": "HealthcareService", "type": "HealthcareService"},
        {"name": "ImagingExcerpt", "type": "ImagingExcerpt"},
        {"name": "ImagingObjectSelection", "type": "ImagingObjectSelection"},
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
        {"name": "ModuleDefinition", "type": "ModuleDefinition"},
        {"name": "NamingSystem", "type": "NamingSystem"},
        {"name": "NutritionOrder", "type": "NutritionOrder"},
        {"name": "Observation", "type": "Observation"},
        {"name": "OperationDefinition", "type": "OperationDefinition"},
        {"name": "OperationOutcome", "type": "OperationOutcome"},
        {"name": "Order", "type": "Order"},
        {"name": "OrderResponse", "type": "OrderResponse"},
        {"name": "OrderSet", "type": "OrderSet"},
        {"name": "Organization", "type": "Organization"},
        {"name": "Patient", "type": "Patient"},
        {"name": "PaymentNotice", "type": "PaymentNotice"},
        {"name": "PaymentReconciliation", "type": "PaymentReconciliation"},
        {"name": "Person", "type": "Person"},
        {"name": "Practitioner", "type": "Practitioner"},
        {"name": "PractitionerRole", "type": "PractitionerRole"},
        {"name": "Procedure", "type": "Procedure"},
        {"name": "ProcedureRequest", "type": "ProcedureRequest"},
        {"name": "ProcessRequest", "type": "ProcessRequest"},
        {"name": "ProcessResponse", "type": "ProcessResponse"},
        {"name": "Protocol", "type": "Protocol"},
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
      "name": "DiagnosticOrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "Protocol.Precondition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "condition", "type": "Protocol.Condition"},
        {"name": "intersection", "type": "list<FHIR.Protocol.Precondition>"},
        {"name": "union", "type": "list<FHIR.Protocol.Precondition>"},
        {"name": "exclude", "type": "list<FHIR.Protocol.Precondition>"}
      ]
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
      "name": "ProtocolType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
        {"name": "boundsQuantity", "type": "Duration"},
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
        {"name": "performer", "type": "Reference"},
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
        {"name": "element", "type": "uri"},
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
        {"name": "description", "type": "string"},
        {"name": "requirements", "type": "string"},
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
        {"name": "offsetQuantity", "type": "Duration"},
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
      "retrievable": true,
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
      "name": "ModuleMetadata.Coverage",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "focus", "type": "Coding"},
        {"name": "value", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
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
        {"name": "name", "type": "string"},
        {"name": "valueBoolean", "type": "boolean"},
        {"name": "valueInteger", "type": "integer"},
        {"name": "valueDecimal", "type": "decimal"},
        {"name": "valueBase64Binary", "type": "base64Binary"},
        {"name": "valueInstant", "type": "instant"},
        {"name": "valueString", "type": "string"},
        {"name": "valueUri", "type": "uri"},
        {"name": "valueDate", "type": "date"},
        {"name": "valueDateTime", "type": "dateTime"},
        {"name": "valueTime", "type": "time"},
        {"name": "valueCode", "type": "code"},
        {"name": "valueOid", "type": "oid"},
        {"name": "valueUuid", "type": "uuid"},
        {"name": "valueId", "type": "id"},
        {"name": "valueUnsignedInt", "type": "unsignedInt"},
        {"name": "valuePositiveInt", "type": "positiveInt"},
        {"name": "valueMarkdown", "type": "markdown"},
        {"name": "valueAnnotation", "type": "Annotation"},
        {"name": "valueAttachment", "type": "Attachment"},
        {"name": "valueIdentifier", "type": "Identifier"},
        {"name": "valueCodeableConcept", "type": "CodeableConcept"},
        {"name": "valueCoding", "type": "Coding"},
        {"name": "valueQuantity", "type": "Quantity"},
        {"name": "valueRange", "type": "Range"},
        {"name": "valuePeriod", "type": "Period"},
        {"name": "valueRatio", "type": "Ratio"},
        {"name": "valueReference", "type": "Reference"},
        {"name": "valueSampledData", "type": "SampledData"},
        {"name": "valueSignature", "type": "Signature"},
        {"name": "valueHumanName", "type": "HumanName"},
        {"name": "valueAddress", "type": "Address"},
        {"name": "valueContactPoint", "type": "ContactPoint"},
        {"name": "valueTiming", "type": "Timing"},
        {"name": "valueMeta", "type": "Meta"},
        {"name": "valueElementDefinition", "type": "ElementDefinition"},
        {"name": "valueModuleMetadata", "type": "ModuleMetadata"},
        {"name": "valueDataRequirement", "type": "DataRequirement"},
        {"name": "valueActionDefinition", "type": "ActionDefinition"},
        {"name": "valueParameterDefinition", "type": "ParameterDefinition"},
        {"name": "valueTriggerDefinition", "type": "TriggerDefinition"}
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
        {"name": "practitioner", "type": "Reference"},
        {"name": "prescription", "type": "Reference"},
        {"name": "wasNotGiven", "type": "boolean"},
        {"name": "reasonNotGiven", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonGiven", "type": "list<FHIR.CodeableConcept>"},
        {"name": "device", "type": "list<FHIR.Reference>"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
        {"name": "dosage", "type": "MedicationAdministration.Dosage"}
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
        {"name": "text", "type": "string"}
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
        {"name": "origin", "type": "SimpleQuantity"},
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
      "name": "DiagnosticOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "item.code",
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "DiagnosticOrderStatus"},
        {"name": "priority", "type": "DiagnosticOrderPriority"},
        {"name": "subject", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "orderer", "type": "Reference"},
        {"name": "reason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "supportingInformation", "type": "list<FHIR.Reference>"},
        {"name": "specimen", "type": "list<FHIR.Reference>"},
        {"name": "event", "type": "list<FHIR.DiagnosticOrder.Event>"},
        {"name": "item", "type": "list<FHIR.DiagnosticOrder.Item>"},
        {"name": "note", "type": "list<FHIR.Annotation>"}
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
        {"name": "progress", "type": "list<FHIR.Annotation>"},
        {"name": "reference", "type": "Reference"},
        {"name": "detail", "type": "CarePlan.Detail"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Onset",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "timeDate", "type": "date"},
        {"name": "timePeriod", "type": "Period"},
        {"name": "type", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Distance",
      "baseType": "Quantity",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.String"},
        {"name": "extension", "type": "list<FHIR.Extension>"}
      ]
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
      "element": [
        {"name": "metadata", "type": "TestScript.Metadata"},
        {"name": "action", "type": "list<FHIR.TestScript.Action>"}
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
        {"name": "description", "type": "string"},
        {"name": "useContext", "type": "list<FHIR.CodeableConcept>"},
        {"name": "requirements", "type": "string"},
        {"name": "copyright", "type": "string"},
        {"name": "structure", "type": "list<FHIR.StructureMap.Structure>"},
        {"name": "import", "type": "list<FHIR.uri>"},
        {"name": "group", "type": "list<FHIR.StructureMap.Group>"}
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
        {"name": "answered", "type": "boolean"},
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
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "status", "type": "LocationStatus"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "mode", "type": "LocationMode"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "address", "type": "Address"},
        {"name": "physicalType", "type": "CodeableConcept"},
        {"name": "position", "type": "Location.Position"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "partOf", "type": "Reference"}
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
        {"name": "additionalInstructions", "type": "CodeableConcept"},
        {"name": "timing", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "boolean"},
        {"name": "asNeededCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteReference", "type": "Reference"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "doseRange", "type": "Range"},
        {"name": "doseQuantity", "type": "SimpleQuantity"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateRange", "type": "Range"},
        {"name": "rateQuantity", "type": "SimpleQuantity"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder",
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
        {"name": "oralDiet", "type": "NutritionOrder.OralDiet"},
        {"name": "supplement", "type": "list<FHIR.NutritionOrder.Supplement>"},
        {"name": "enteralFormula", "type": "NutritionOrder.EnteralFormula"}
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
      "name": "NutritionOrderStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "uri",
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
      "name": "ModuleMetadata",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {"name": "type", "type": "ModuleMetadataType"},
        {"name": "status", "type": "ModuleMetadataStatus"},
        {"name": "experimental", "type": "boolean"},
        {"name": "description", "type": "string"},
        {"name": "purpose", "type": "string"},
        {"name": "usage", "type": "string"},
        {"name": "publicationDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
        {"name": "coverage", "type": "list<FHIR.ModuleMetadata.Coverage>"},
        {"name": "topic", "type": "list<FHIR.CodeableConcept>"},
        {
          "name": "contributor",
          "type": "list<FHIR.ModuleMetadata.Contributor>"
        },
        {"name": "publisher", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ModuleMetadata.Contact>"},
        {"name": "copyright", "type": "string"},
        {
          "name": "relatedResource",
          "type": "list<FHIR.ModuleMetadata.RelatedResource>"
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
        {"name": "service", "type": "Coding"},
        {"name": "fee", "type": "Money"},
        {"name": "noteNumberLinkId", "type": "list<FHIR.positiveInt>"},
        {
          "name": "adjudication",
          "type": "list<FHIR.ExplanationOfBenefit.Adjudication3>"
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
      "name": "ModuleMetadataResourceType",
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
        {"name": "orderedItem", "type": "Reference"},
        {"name": "supplier", "type": "list<FHIR.Reference>"},
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {"name": "when", "type": "SupplyRequest.When"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ModuleDefinition.CodeSystem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"}
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
      "name": "ModuleDefinition.Model",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"}
      ]
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
      "name": "ModuleMetadata.Contact",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"}
      ]
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
        {"name": "team", "type": "list<FHIR.Reference>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.Variation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "start", "type": "integer"},
        {"name": "end", "type": "integer"},
        {"name": "observedAllele", "type": "string"},
        {"name": "referenceAllele", "type": "string"},
        {"name": "cigar", "type": "string"}
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
        {"name": "diagnosis", "type": "Coding"}
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
        {"name": "telecom", "type": "list<FHIR.ContactPoint>"},
        {"name": "address", "type": "list<FHIR.Address>"},
        {"name": "partOf", "type": "Reference"},
        {"name": "contact", "type": "list<FHIR.Organization.Contact>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Element",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
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
      "name": "OrderSet",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "moduleMetadata", "type": "ModuleMetadata"},
        {"name": "library", "type": "list<FHIR.Reference>"},
        {"name": "action", "type": "list<FHIR.ActionDefinition>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder.OralDiet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "list<FHIR.CodeableConcept>"},
        {"name": "schedule", "type": "list<FHIR.Timing>"},
        {"name": "nutrient", "type": "list<FHIR.NutritionOrder.Nutrient>"},
        {"name": "texture", "type": "list<FHIR.NutritionOrder.Texture>"},
        {"name": "fluidConsistencyType", "type": "list<FHIR.CodeableConcept>"},
        {"name": "instruction", "type": "string"}
      ]
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
      "name": "MedicationDispense.DosageInstruction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "string"},
        {"name": "additionalInstructions", "type": "CodeableConcept"},
        {"name": "timing", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "boolean"},
        {"name": "asNeededCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteReference", "type": "Reference"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "doseRange", "type": "Range"},
        {"name": "doseQuantity", "type": "SimpleQuantity"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateRange", "type": "Range"},
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
      "name": "integer",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Integer"}
    },
    {
      "type": "ClassInfo",
      "name": "ModuleMetadataStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ModuleMetadata.Contributor",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ModuleMetadataContributorType"},
        {"name": "name", "type": "string"},
        {"name": "contact", "type": "list<FHIR.ModuleMetadata.Contact1>"}
      ]
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
      "name": "ImagingExcerpt.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sopClass", "type": "oid"},
        {"name": "uid", "type": "oid"},
        {"name": "dicom", "type": "list<FHIR.ImagingExcerpt.Dicom2>"},
        {"name": "frameNumbers", "type": "list<FHIR.unsignedInt>"}
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
        {"name": "patient", "type": "Reference"},
        {"name": "assessor", "type": "Reference"},
        {"name": "status", "type": "ClinicalImpressionStatus"},
        {"name": "date", "type": "dateTime"},
        {"name": "description", "type": "string"},
        {"name": "previous", "type": "Reference"},
        {"name": "problem", "type": "list<FHIR.Reference>"},
        {"name": "triggerCodeableConcept", "type": "CodeableConcept"},
        {"name": "triggerReference", "type": "Reference"},
        {
          "name": "investigations",
          "type": "list<FHIR.ClinicalImpression.Investigations>"
        },
        {"name": "protocol", "type": "uri"},
        {"name": "summary", "type": "string"},
        {"name": "finding", "type": "list<FHIR.ClinicalImpression.Finding>"},
        {"name": "resolved", "type": "list<FHIR.CodeableConcept>"},
        {"name": "ruledOut", "type": "list<FHIR.ClinicalImpression.RuledOut>"},
        {"name": "prognosis", "type": "string"},
        {"name": "plan", "type": "list<FHIR.Reference>"},
        {"name": "action", "type": "list<FHIR.Reference>"}
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
      "name": "DecisionSupportRule",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "moduleMetadata", "type": "ModuleMetadata"},
        {"name": "library", "type": "list<FHIR.Reference>"},
        {"name": "trigger", "type": "list<FHIR.TriggerDefinition>"},
        {"name": "condition", "type": "string"},
        {"name": "action", "type": "list<FHIR.ActionDefinition>"}
      ]
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
        {"name": "timing", "type": "Timing"},
        {"name": "asNeededBoolean", "type": "boolean"},
        {"name": "asNeededCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteCodeableConcept", "type": "CodeableConcept"},
        {"name": "siteReference", "type": "Reference"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "quantityQuantity", "type": "SimpleQuantity"},
        {"name": "quantityRange", "type": "Range"},
        {"name": "rateRatio", "type": "Ratio"},
        {"name": "rateRange", "type": "Range"},
        {"name": "maxDosePerPeriod", "type": "Ratio"}
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
      "name": "EncounterClass",
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
      "name": "ClinicalImpression.RuledOut",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "item", "type": "CodeableConcept"},
        {"name": "reason", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "method",
      "element": [
        {"name": "subject", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "condition", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "basis", "type": "list<FHIR.Reference>"},
        {"name": "prediction", "type": "list<FHIR.RiskAssessment.Prediction>"},
        {"name": "mitigation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "subType",
      "element": [
        {"name": "type", "type": "ClaimType"},
        {"name": "subType", "type": "list<FHIR.Coding>"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "ruleset", "type": "Coding"},
        {"name": "originalRuleset", "type": "Coding"},
        {"name": "created", "type": "dateTime"},
        {"name": "billablePeriod", "type": "Period"},
        {"name": "targetIdentifier", "type": "Identifier"},
        {"name": "targetReference", "type": "Reference"},
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
        {"name": "occurrenceCode", "type": "list<FHIR.Coding>"},
        {"name": "occurenceSpanCode", "type": "list<FHIR.Coding>"},
        {"name": "valueCode", "type": "list<FHIR.Coding>"},
        {"name": "diagnosis", "type": "list<FHIR.Claim.Diagnosis>"},
        {"name": "procedure", "type": "list<FHIR.Claim.Procedure>"},
        {"name": "specialCondition", "type": "list<FHIR.Coding>"},
        {"name": "patientIdentifier", "type": "Identifier"},
        {"name": "patientReference", "type": "Reference"},
        {"name": "coverage", "type": "list<FHIR.Claim.Coverage>"},
        {"name": "accidentDate", "type": "date"},
        {"name": "accidentType", "type": "Coding"},
        {"name": "accidentLocationAddress", "type": "Address"},
        {"name": "accidentLocationReference", "type": "Reference"},
        {"name": "interventionException", "type": "list<FHIR.Coding>"},
        {"name": "onset", "type": "list<FHIR.Claim.Onset>"},
        {"name": "employmentImpacted", "type": "Period"},
        {"name": "hospitalization", "type": "Period"},
        {"name": "item", "type": "list<FHIR.Claim.Item>"},
        {"name": "total", "type": "Money"},
        {"name": "additionalMaterial", "type": "list<FHIR.Coding>"},
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
      "name": "ParticipantType",
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
      "name": "ActionRelationshipAnchor",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ModuleDefinition.Library",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "documentAttachment", "type": "Attachment"},
        {"name": "documentReference", "type": "Reference"}
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
      "retrievable": true,
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
        {"name": "patient", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "asserter", "type": "Reference"},
        {"name": "dateRecorded", "type": "date"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "clinicalStatus", "type": "code"},
        {"name": "verificationStatus", "type": "ConditionVerificationStatus"},
        {"name": "severity", "type": "CodeableConcept"},
        {"name": "onsetDateTime", "type": "dateTime"},
        {"name": "onsetQuantity", "type": "Age"},
        {"name": "onsetPeriod", "type": "Period"},
        {"name": "onsetRange", "type": "Range"},
        {"name": "onsetString", "type": "string"},
        {"name": "abatementDateTime", "type": "dateTime"},
        {"name": "abatementQuantity", "type": "Age"},
        {"name": "abatementBoolean", "type": "boolean"},
        {"name": "abatementPeriod", "type": "Period"},
        {"name": "abatementRange", "type": "Range"},
        {"name": "abatementString", "type": "string"},
        {"name": "stage", "type": "Condition.Stage"},
        {"name": "evidence", "type": "list<FHIR.Condition.Evidence>"},
        {"name": "bodySite", "type": "list<FHIR.CodeableConcept>"},
        {"name": "notes", "type": "string"}
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
      "name": "Protocol.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "ActivityDefinitionCategory"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "timingCodeableConcept", "type": "CodeableConcept"},
        {"name": "timingTiming", "type": "Timing"},
        {"name": "location", "type": "Reference"},
        {"name": "performer", "type": "list<FHIR.Reference>"},
        {"name": "product", "type": "Reference"},
        {"name": "quantity", "type": "SimpleQuantity"},
        {"name": "description", "type": "string"}
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
        {"name": "profile", "type": "list<FHIR.uri>"},
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
      "name": "ModuleDefinition.ValueSet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "codeSystem", "type": "list<FHIR.string>"}
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
        {"name": "targetQuantity", "type": "Duration"},
        {"name": "category", "type": "list<FHIR.CodeableConcept>"},
        {"name": "description", "type": "string"},
        {"name": "status", "type": "GoalStatus"},
        {"name": "statusDate", "type": "date"},
        {"name": "statusReason", "type": "CodeableConcept"},
        {"name": "author", "type": "Reference"},
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
      "name": "ActionDefinition.Behavior",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "value", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceUseRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "bodySiteCodeableConcept", "type": "CodeableConcept"},
        {"name": "bodySiteReference", "type": "Reference"},
        {"name": "status", "type": "DeviceUseRequestStatus"},
        {"name": "device", "type": "Reference"},
        {"name": "encounter", "type": "Reference"},
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "indication", "type": "list<FHIR.CodeableConcept>"},
        {"name": "notes", "type": "list<FHIR.string>"},
        {"name": "prnReason", "type": "list<FHIR.CodeableConcept>"},
        {"name": "orderedOn", "type": "dateTime"},
        {"name": "recordedOn", "type": "dateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "timingTiming", "type": "Timing"},
        {"name": "timingPeriod", "type": "Period"},
        {"name": "timingDateTime", "type": "dateTime"},
        {"name": "priority", "type": "DeviceUseRequestPriority"}
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
      "name": "GuidanceResponse.Behavior",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "value", "type": "Coding"}
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
        {"name": "type", "type": "Coding"},
        {"name": "service", "type": "Coding"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "quantity", "type": "SimpleQuantity"},
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
        {"name": "wasNotTaken", "type": "boolean"},
        {"name": "reasonNotTaken", "type": "list<FHIR.CodeableConcept>"},
        {"name": "reasonForUseCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonForUseReference", "type": "Reference"},
        {"name": "note", "type": "list<FHIR.Annotation>"},
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
        {"name": "type", "type": "Coding"},
        {"name": "providerIdentifier", "type": "Identifier"},
        {"name": "providerReference", "type": "Reference"},
        {"name": "supervisorIdentifier", "type": "Identifier"},
        {"name": "supervisorReference", "type": "Reference"},
        {"name": "providerQualification", "type": "Coding"},
        {"name": "diagnosisLinkId", "type": "list<FHIR.positiveInt>"},
        {"name": "service", "type": "Coding"},
        {"name": "serviceModifier", "type": "list<FHIR.Coding>"},
        {"name": "modifier", "type": "list<FHIR.Coding>"},
        {"name": "programCode", "type": "list<FHIR.Coding>"},
        {"name": "servicedDate", "type": "date"},
        {"name": "servicedPeriod", "type": "Period"},
        {"name": "place", "type": "Coding"},
        {"name": "quantity", "type": "SimpleQuantity"},
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
      "name": "Order",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "list<FHIR.Identifier>"},
        {"name": "date", "type": "dateTime"},
        {"name": "subject", "type": "Reference"},
        {"name": "source", "type": "Reference"},
        {"name": "target", "type": "Reference"},
        {"name": "reasonCodeableConcept", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {"name": "when", "type": "Order.When"},
        {"name": "detail", "type": "list<FHIR.Reference>"}
      ]
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
        {"name": "amount", "type": "SimpleQuantity"}
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
        {"name": "collection", "type": "Specimen.Collection"},
        {"name": "treatment", "type": "list<FHIR.Specimen.Treatment>"},
        {"name": "container", "type": "list<FHIR.Specimen.Container>"}
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
        {"name": "ageQuantity", "type": "Age"},
        {"name": "ageRange", "type": "Range"},
        {"name": "ageString", "type": "string"},
        {"name": "deceasedBoolean", "type": "boolean"},
        {"name": "deceasedQuantity", "type": "Age"},
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
      "name": "Library.ValueSet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"},
        {"name": "codeSystem", "type": "list<FHIR.string>"}
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
      "name": "ClaimResponse.Adjudication2",
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
      "name": "ClaimResponse.Adjudication1",
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
      "name": "ClaimResponse.Adjudication4",
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
      "name": "GroupType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Adjudication3",
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
      "name": "ActionDefinition.RelatedAction",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "actionIdentifier", "type": "Identifier"},
        {"name": "relationship", "type": "ActionRelationshipType"},
        {"name": "offsetQuantity", "type": "Duration"},
        {"name": "offsetRange", "type": "Range"},
        {"name": "anchor", "type": "ActionRelationshipAnchor"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataRequirement",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "profile", "type": "Reference"},
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
        {"name": "description", "type": "string"},
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
      "name": "Library.Model",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "identifier", "type": "string"},
        {"name": "version", "type": "string"}
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
      "retrievable": true,
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
        {"name": "lastModified", "type": "instant"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ActionType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
  ]
});
