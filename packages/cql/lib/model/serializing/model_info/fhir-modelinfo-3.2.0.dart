import '../../../cql.dart';

final fhirmodelinfo320 = ModelInfo.fromJson({
  "name": "FHIR",
  "url": "http://hl7.org/fhir",
  "targetQualifier": "fhir",
  "patientClassName": "Patient",
  "patientBirthDatePropertyName": "birthDate.value",
  "version": "3.2.0",
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
      "name": "ExampleScenario",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {
          "name": "useContext",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "copyright", "type": "markdown"},
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {
          "name": "actor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "process", "type": "ExampleScenario.Process"},
        {
          "name": "workflow",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ExampleScenario.Process",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "title", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "preConditions", "type": "markdown"},
        {"name": "postConditions", "type": "markdown"},
        {
          "name": "step",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "BiologicallyDerivedProductStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Document",
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
      "name": "RetirementStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "UserSession.Status",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "UserSessionStatus"},
        {"name": "source", "type": "UserSessionStatusSource"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstancePolymer.DegreeOfPolymerisation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "degree", "type": "CodeableConcept"},
        {"name": "amount", "type": "SubstanceAmount"}
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
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
        {"name": "patient", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {"name": "insurer", "type": "Reference"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "ClaimProcessingCodes"},
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
        {"name": "payment", "type": "ClaimResponse.Payment"},
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
      "name": "StructureDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {
          "name": "contextInvariant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "PractitionerRole.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "DeviceUseStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "DeviceUseStatementStatus"},
        {"name": "subject", "type": "Reference"},
        {
          "name": "derivedFrom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reasonReference",
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
      "name": "DiagnosticReport.Media",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "comment", "type": "string"},
        {"name": "link", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuideOutput",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
          "name": "resource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "global",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "rendering", "type": "uri"},
        {
          "name": "page",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "image",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "other",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Procedure",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
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
        {"name": "status", "type": "EventStatus"},
        {"name": "statusReason", "type": "CodeableConcept"},
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
              },
              {
                "modelName": "FHIR",
                "name": "string",
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
          "name": "complicationDetail",
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
      "name": "EligibilityResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
        {"name": "created", "type": "dateTime"},
        {"name": "requestProvider", "type": "Reference"},
        {"name": "requestOrganization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "string"},
        {"name": "insurer", "type": "Reference"},
        {"name": "inforce", "type": "boolean"},
        {
          "name": "insurance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "preAuthRef", "type": "string"},
        {
          "name": "authorization",
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
      "name": "MarketingStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "country", "type": "CodeableConcept"},
        {"name": "jurisdiction", "type": "CodeableConcept"},
        {"name": "status", "type": "CodeableConcept"},
        {"name": "dateRange", "type": "Period"},
        {"name": "restoreDate", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "VerificationResult.Attestation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "source", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "date", "type": "date"},
        {"name": "sourceIdentityCertificate", "type": "string"},
        {"name": "proxyIdentityCertificate", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SearchParameter",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "xpathUsage", "type": "XPathUsageType"},
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
      "name": "DataRequirement.CodeFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
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
        },
        {
          "name": "code",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "CareTeamStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "quantity", "type": "Quantity"},
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Ruleset1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "rulesetId", "type": "id"},
        {
          "name": "rule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExampleScenario.Option",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "markdown"},
        {
          "name": "step",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "pause",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ElementDefinition.Binding",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "strength", "type": "BindingStrength"},
        {"name": "description", "type": "string"},
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
      "name": "PublicationStatus",
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
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "MeasureReportStatus"},
        {"name": "type", "type": "MeasureReportType"},
        {"name": "measure", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
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
      "name": "ImplementationGuideInput.Page",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "format", "type": "code"},
        {
          "name": "page",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
        {"name": "slicing", "type": "ElementDefinition.Slicing"},
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
        {"name": "base", "type": "ElementDefinition.Base"},
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
        {"name": "binding", "type": "ElementDefinition.Binding"},
        {
          "name": "mapping",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.Input",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
                "name": "Dosage",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactDetail",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Contributor",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "DataRequirement",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ParameterDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "RelatedArtifact",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "TriggerDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "UsageContext",
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
      "name": "CarePlanActivityKind",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Composition.Attester",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "StructureMapSourceListMode",
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
      "name": "OperationOutcome.Issue",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "QuestionnaireResponseStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SubstancePolymer.Repeat",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "numberOfUnits", "type": "integer"},
        {"name": "averageMolecularFormula", "type": "string"},
        {"name": "repeatUnitAmountType", "type": "CodeableConcept"},
        {
          "name": "repeatUnit",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "OrganizationRole",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "boolean"},
        {"name": "period", "type": "Period"},
        {"name": "organization", "type": "Reference"},
        {"name": "participatingOrganization", "type": "Reference"},
        {
          "name": "network",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "SearchComparator",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Endpoint",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "protocol", "type": "Coding"},
        {"name": "address", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceMetric",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "ChargeItemStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Flag",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FlagStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "period", "type": "Period"},
        {"name": "encounter", "type": "Reference"},
        {"name": "author", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
        {"name": "created", "type": "dateTime"},
        {"name": "insurer", "type": "Reference"},
        {"name": "provider", "type": "Reference"},
        {"name": "organization", "type": "Reference"},
        {"name": "candidate", "type": "Reference"},
        {"name": "coverage", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareTeam",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
          "name": "telecom",
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
      "name": "TerminologyCapabilities.ValidateCode",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "translations", "type": "boolean"}
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
      "name": "ActionParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ResourceType"},
        {"name": "params", "type": "string"},
        {"name": "profile", "type": "uri"},
        {
          "name": "compartment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Account.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "coverage", "type": "Reference"},
        {"name": "priority", "type": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Invoice.PriceComponent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "InvoicePriceComponentType"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "factor", "type": "Money"},
        {"name": "amount", "type": "decimal"}
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
      "name": "ElementDefinition.Discriminator",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "DiscriminatorType"},
        {"name": "path", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductAuthorization",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "country",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "legalStatusOfSupply", "type": "CodeableConcept"},
        {"name": "status", "type": "CodeableConcept"},
        {"name": "statusDate", "type": "dateTime"},
        {"name": "restoreDate", "type": "dateTime"},
        {"name": "validityPeriod", "type": "Period"},
        {"name": "dataExclusivityPeriod", "type": "Period"},
        {"name": "dateOfFirstAuthorization", "type": "dateTime"},
        {"name": "internationalBirthDate", "type": "dateTime"},
        {
          "name": "jurisdictionalAuthorization",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "holder", "type": "Reference"},
        {"name": "regulator", "type": "Reference"},
        {
          "name": "procedure",
          "type": "MedicinalProductAuthorization.Procedure"
        },
        {
          "name": "marketingStatus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Measure.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "criteria", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TerminologyCapabilities.CodeSystem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "uri", "type": "uri"},
        {
          "name": "version",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "InvoiceStatus",
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
      "name": "ClaimProcessingCodes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "claim", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "reference", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "UserSession.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "string"},
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
              }
            ]
          }
        }
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
      "name": "ClaimResponse.ProcessNote",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "positiveInt"},
        {"name": "type", "type": "NoteType"},
        {"name": "text", "type": "string"},
        {"name": "language", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Snapshot",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "element",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
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
      "name": "ProductPlan.Plan",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "premium", "type": "Money"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "DaysOfWeek",
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
      "name": "Sequence.Roc",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "score",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "numTP",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "numFP",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "numFN",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "precision",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "sensitivity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "fMeasure",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Rest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "RestfulCapabilityMode"},
        {"name": "documentation", "type": "string"},
        {"name": "security", "type": "CapabilityStatement.Security"},
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
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
      "name": "MessageDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "event", "type": "uri"},
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
      "name": "SubstanceSpecification.SubstanceCode",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "status", "type": "CodeableConcept"},
        {"name": "statusDate", "type": "dateTime"},
        {"name": "comment", "type": "string"},
        {
          "name": "referenceSource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "StructureMapContextType",
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
      "name": "ExplanationOfBenefit.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "quantity", "type": "Quantity"},
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
      "name": "status",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition.Compartment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "use", "type": "GraphCompartmentUse"},
        {"name": "code", "type": "CompartmentType"},
        {"name": "rule", "type": "GraphCompartmentRule"},
        {"name": "expression", "type": "string"},
        {"name": "description", "type": "string"}
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
      "name": "TerminologyCapabilities.Version",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "string"},
        {"name": "isDefault", "type": "boolean"},
        {"name": "compositional", "type": "boolean"},
        {
          "name": "language",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "filter",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "AssertionResponseTypes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationOutcome",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": {
        "name": "issue",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Signer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "RequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "count", "type": "integer"},
        {"name": "subjects", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.Adjudication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "CodeableConcept"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "decimal"}
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
      "name": "MedicinalProduct.CountryLanguage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "country", "type": "CodeableConcept"},
        {"name": "jurisdiction", "type": "CodeableConcept"},
        {"name": "language", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Security",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "MedicinalProductClinicals.Population",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "age",
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
                "name": "CodeableConcept",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "gender", "type": "CodeableConcept"},
        {"name": "race", "type": "CodeableConcept"},
        {"name": "physiologicalCondition", "type": "CodeableConcept"}
      ]
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
      "name": "GraphCompartmentUse",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.ProcessNote",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "NoteType"},
        {"name": "text", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Element",
      "baseType": "System.Any",
      "retrievable": false,
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
      "name": "ExplanationOfBenefit",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "claimResponse", "type": "Reference"},
        {"name": "outcome", "type": "ClaimProcessingCodes"},
        {"name": "disposition", "type": "string"},
        {
          "name": "related",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "prescription", "type": "Reference"},
        {"name": "originalPrescription", "type": "Reference"},
        {"name": "payee", "type": "ExplanationOfBenefit.Payee"},
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
        {"name": "insurance", "type": "ExplanationOfBenefit.Insurance"},
        {"name": "accident", "type": "ExplanationOfBenefit.Accident"},
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
        {"name": "payment", "type": "ExplanationOfBenefit.Payment"},
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
      "name": "MedicationDispense.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TerminologyCapabilities.Translation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "needsMap", "type": "boolean"}
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Policy",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "authority", "type": "uri"},
        {"name": "uri", "type": "uri"}
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
      "name": "CarePlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
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
      "name": "SubstanceReferenceInformation",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "comment", "type": "string"},
        {
          "name": "gene",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "geneElement",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "classification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relationship",
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
      "name": "Questionnaire",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "url", "type": "uri"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "version", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {
          "name": "derivedFrom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "PublicationStatus"},
        {"name": "experimental", "type": "boolean"},
        {
          "name": "subjectType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
        {"name": "description", "type": "markdown"},
        {"name": "purpose", "type": "markdown"},
        {"name": "copyright", "type": "markdown"},
        {"name": "approvalDate", "type": "date"},
        {"name": "lastReviewDate", "type": "date"},
        {"name": "effectivePeriod", "type": "Period"},
        {
          "name": "code",
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
      "name": "Patient",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "animal", "type": "Patient.Animal"},
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
      "name": "List",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "MeasureReport.Stratum",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "value", "type": "CodeableConcept"},
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measureScore", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RelatedPerson",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "boolean"},
        {"name": "patient", "type": "Reference"},
        {
          "name": "relationship",
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
        {
          "name": "photo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "EpisodeOfCare.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "condition", "type": "Reference"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "rank", "type": "positiveInt"}
      ]
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
      "name": "RequestGroup",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "code", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "authoredOn", "type": "dateTime"},
        {"name": "author", "type": "Reference"},
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
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "MedicationAdministration.Performer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "function", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
      ]
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
      "name": "ProductPlan.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "benefitValue", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "masterIdentifier", "type": "Identifier"},
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "DocumentReferenceStatus"},
        {"name": "docStatus", "type": "CompositionStatus"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "class", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "created", "type": "dateTime"},
        {"name": "date", "type": "instant"},
        {
          "name": "agent",
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
      "name": "Composition.RelatesTo",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "PlanDefinition.Goal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "TestReportParticipantType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "OccupationalData.PastOrPresentOccupation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
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
        {"name": "value", "type": "CodeableConcept"}
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
      "name": "RequestPriority",
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
      "name": "ChargeItem.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Population1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "count", "type": "integer"},
        {"name": "subjects", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Invoice.LineItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "chargeItem", "type": "Reference"},
        {
          "name": "priceComponent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Practitioner",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "AdverseEvent.SuspectEntity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "instance", "type": "Reference"},
        {
          "name": "causality",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
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
      "name": "Contract.Offer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "topic", "type": "Reference"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "decision", "type": "CodeableConcept"},
        {"name": "text", "type": "string"},
        {"name": "linkId", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.ClassHistory",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "class", "type": "Coding"},
        {"name": "period", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExampleScenario.Version",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "versionId", "type": "string"},
        {"name": "description", "type": "markdown"}
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
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
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
      "name": "SearchParameter.Component",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "definition", "type": "Reference"},
        {"name": "expression", "type": "string"}
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
      "name": "SubstanceAmount",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "amount",
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
                "name": "string",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "amountType", "type": "CodeableConcept"},
        {"name": "amountText", "type": "string"},
        {"name": "referenceRange", "type": "SubstanceAmount.ReferenceRange"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceSpecification.OfficialName",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "authority", "type": "CodeableConcept"},
        {"name": "status", "type": "CodeableConcept"},
        {"name": "date", "type": "dateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Device.Udi",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "NutritionOrder.Administration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "schedule", "type": "Timing"},
        {"name": "quantity", "type": "Quantity"},
        {
          "name": "rate",
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
      "name": "EligibilityResponse.Financial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
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
      "name": "ClaimResponse.AddItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "itemSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detailSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subdetailSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "DomainResource",
      "baseType": "Resource",
      "retrievable": false,
      "element": [
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
      "name": "Coverage.Copay",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "value", "type": "Quantity"}
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
      "name": "ObservationDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "category", "type": "Coding"},
        {"name": "code", "type": "Coding"},
        {
          "name": "permittedDataType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "multipleResultsAllowed", "type": "boolean"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "preferredReportName", "type": "string"},
        {
          "name": "quantitativeDetails",
          "type": "ObservationDefinition.QuantitativeDetails"
        },
        {
          "name": "qualifiedInterval",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "validCodedValueSet", "type": "uri"},
        {"name": "normalCodedValueSet", "type": "uri"},
        {"name": "abnormalCodedValueSet", "type": "uri"},
        {"name": "criticalCodedValueSet", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExampleScenario.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "string"},
        {"name": "type", "type": "string"},
        {"name": "name", "type": "string"},
        {"name": "initiator", "type": "string"},
        {"name": "receiver", "type": "string"},
        {"name": "description", "type": "markdown"},
        {"name": "initiatorActive", "type": "boolean"},
        {"name": "receiverActive", "type": "boolean"},
        {"name": "request", "type": "ExampleScenario.ContainedInstance"},
        {"name": "response", "type": "ExampleScenario.ContainedInstance"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Interaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "TypeRestfulInteraction"},
        {"name": "documentation", "type": "string"}
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
      "name": "ContractResourceStatusCodes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "validationType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductClinicals.TherapeuticIndication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "diseaseSymptomProcedure", "type": "CodeableConcept"},
        {"name": "diseaseStatus", "type": "CodeableConcept"},
        {
          "name": "comorbidity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "intendedEffect", "type": "CodeableConcept"},
        {"name": "duration", "type": "Quantity"},
        {
          "name": "undesirableEffects",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "otherTherapy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstancePolymer.StartingMaterial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "material", "type": "CodeableConcept"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "isDefining", "type": "boolean"},
        {"name": "amount", "type": "SubstanceAmount"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QuestionnaireResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "partOf",
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
      "name": "AuditEvent.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
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
        {"name": "network", "type": "AuditEvent.Network"},
        {
          "name": "purposeOfUse",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSystem.Property1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ImagingStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "subject", "type": "Reference"},
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
      "name": "Account",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {
          "name": "coverage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "type": "Reference"},
        {"name": "description", "type": "string"},
        {
          "name": "guarantor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "partOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceSpecification.Structure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "stereochemistry", "type": "CodeableConcept"},
        {"name": "opticalActivity", "type": "CodeableConcept"},
        {"name": "molecularFormula", "type": "string"},
        {"name": "molecularFormulaByMoiety", "type": "string"},
        {
          "name": "isotope",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "molecularWeight",
          "type": "SubstanceSpecification.MolecularWeight"
        },
        {
          "name": "referenceSource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "structuralRepresentation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "VerificationResult",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "targetLocation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "need", "type": "need"},
        {"name": "status", "type": "status"},
        {"name": "statusDate", "type": "dateTime"},
        {"name": "validationType", "type": "validationType"},
        {
          "name": "validationProcess",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "frequency", "type": "Timing"},
        {"name": "lastPerformed", "type": "dateTime"},
        {"name": "nextScheduled", "type": "date"},
        {"name": "failureAction", "type": "failureAction"},
        {
          "name": "primarySource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "attestation", "type": "VerificationResult.Attestation"},
        {
          "name": "validator",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ExplanationOfBenefit.BenefitBalance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "NutritionOrder.Supplement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "productName", "type": "string"},
        {
          "name": "schedule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "Quantity"},
        {"name": "instruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PractitionerRole",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "SubstanceSpecification.Isotope",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "nuclideId", "type": "Identifier"},
        {"name": "nuclideName", "type": "CodeableConcept"},
        {"name": "substitutionType", "type": "CodeableConcept"},
        {"name": "nuclideHalfLife", "type": "Quantity"},
        {"name": "amount", "type": "string"},
        {
          "name": "molecularWeight",
          "type": "SubstanceSpecification.MolecularWeight"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BiologicallyDerivedProduct.Storage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "temperature", "type": "decimal"},
        {"name": "scale", "type": "BiologicallyDerivedProductStorageScale"},
        {"name": "duration", "type": "Period"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition.Link",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Immunization",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "vaccineCode",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "ImmunizationStatusCodes"},
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
        {"name": "doseQuantity", "type": "Quantity"},
        {
          "name": "practitioner",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "reason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "education",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "programEligibility",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fundingSource", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Collection",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ImmunizationEvaluation",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "ImmunizationEvaluationStatusCodes"},
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "authority", "type": "Reference"},
        {
          "name": "targetDisease",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "immunizationEvent", "type": "Reference"},
        {"name": "doseStatus", "type": "CodeableConcept"},
        {
          "name": "doseStatusReason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "series", "type": "string"},
        {"name": "doseNumber", "type": "positiveInt"},
        {"name": "seriesDoses", "type": "positiveInt"}
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
      "name": "AggregationMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuideOutput.Global",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceAmount.ReferenceRange",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "lowLimit", "type": "Quantity"},
        {"name": "highLimit", "type": "Quantity"}
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
        {
          "name": "operator",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PaymentReconciliation.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Condition.Stage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "summary", "type": "CodeableConcept"},
        {
          "name": "assessment",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"}
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
      "name": "Sequence.StructureVariant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "precision", "type": "string"},
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
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
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
        {"name": "statusReason", "type": "CodeableConcept"},
        {"name": "businessStatus", "type": "CodeableConcept"},
        {"name": "intent", "type": "RequestIntent"},
        {"name": "priority", "type": "RequestPriority"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "focus", "type": "Reference"},
        {"name": "for", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {"name": "executionPeriod", "type": "Period"},
        {"name": "authoredOn", "type": "dateTime"},
        {"name": "lastModified", "type": "dateTime"},
        {"name": "requester", "type": "Reference"},
        {
          "name": "performerType",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "owner", "type": "Reference"},
        {"name": "reasonCode", "type": "CodeableConcept"},
        {"name": "reasonReference", "type": "Reference"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relevantHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "restriction", "type": "Task.Restriction"},
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
      "name": "EligibilityResponse.Error",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "code", "type": "CodeableConcept"}
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
      "name": "SupplyDelivery",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
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
        {"name": "suppliedItem", "type": "SupplyDelivery.SuppliedItem"},
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
      "name": "AdverseEventActuality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Location.HoursOfOperation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "daysOfWeek",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "allDay", "type": "boolean"},
        {"name": "openingTime", "type": "time"},
        {"name": "closingTime", "type": "time"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuideInput",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "page", "type": "ImplementationGuideInput.Page"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "who", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
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
        {"name": "referenceSeq", "type": "Sequence.ReferenceSeq"},
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
        },
        {
          "name": "structureVariant",
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
      "name": "ExplanationOfBenefit.Payment",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "adjustment", "type": "Money"},
        {"name": "adjustmentReason", "type": "CodeableConcept"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"},
        {"name": "identifier", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Assert",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "result", "type": "TestReportActionResult"},
        {"name": "message", "type": "markdown"},
        {"name": "detail", "type": "string"}
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
        {"name": "location", "type": "Reference"},
        {
          "name": "authorizingPrescription",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "daysSupply", "type": "Quantity"},
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
        {"name": "substitution", "type": "MedicationDispense.Substitution"},
        {
          "name": "detectedIssue",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "statusReason",
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
          "name": "eventHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Processing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "canPushUpdates",
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
      "primaryCodePath": "topic",
      "element": [
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
      "name": "MedicationRequest.DispenseRequest",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "validityPeriod", "type": "Period"},
        {"name": "numberOfRepeatsAllowed", "type": "unsignedInt"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "expectedSupplyDuration", "type": "Duration"},
        {"name": "performer", "type": "Reference"}
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
      "name": "ConsentState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Encounter.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "condition", "type": "Reference"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "rank", "type": "positiveInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuide.Package",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "AllergyIntoleranceCriticality",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ResearchStudy.Objective",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "type", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProduct.NamePart",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "part", "type": "string"},
        {"name": "type", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OccupationalData",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "PublicationStatus"},
        {"name": "subject", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {
          "name": "author",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "employmentStatus",
          "type": "OccupationalData.EmploymentStatus"
        },
        {
          "name": "retirementStatus",
          "type": "OccupationalData.RetirementStatus"
        },
        {
          "name": "combatZoneHazardousDuty",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "usualOccupation", "type": "OccupationalData.UsualOccupation"},
        {
          "name": "pastOrPresentOccupation",
          "type": "OccupationalData.PastOrPresentOccupation"
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "medicationCodeableConcept",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "MedicationRequestStatus"},
        {"name": "intent", "type": "MedicationRequestIntent"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "RequestPriority"},
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
        {"name": "requester", "type": "Reference"},
        {"name": "performer", "type": "Reference"},
        {"name": "performerType", "type": "CodeableConcept"},
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
          "name": "instantiates",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "basedOn",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "groupIdentifier", "type": "Identifier"},
        {"name": "statusReason", "type": "CodeableConcept"},
        {
          "name": "insurance",
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
          "type": "MedicationRequest.DispenseRequest"
        },
        {"name": "substitution", "type": "MedicationRequest.Substitution"},
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
      "name": "ImmunizationRecommendation",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {"name": "authority", "type": "Reference"},
        {
          "name": "recommendation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
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
      "name": "TriggerType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Information",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "CompositionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "ListMode",
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
        {"name": "source", "type": "uri"},
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
      "name": "MessageHeader.Destination",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "target", "type": "Reference"},
        {"name": "endpoint", "type": "uri"},
        {"name": "receiver", "type": "Reference"}
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
        {
          "name": "designation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EnrollmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
        {"name": "disposition", "type": "string"},
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
      "name": "Coverage",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "policyHolder", "type": "Reference"},
        {"name": "subscriber", "type": "Reference"},
        {"name": "subscriberId", "type": "string"},
        {"name": "beneficiary", "type": "Reference"},
        {"name": "dependent", "type": "string"},
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "period", "type": "Period"},
        {
          "name": "payor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "class",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "grouping", "type": "Coverage.Grouping"},
        {"name": "sequence", "type": "string"},
        {"name": "order", "type": "positiveInt"},
        {"name": "network", "type": "string"},
        {
          "name": "copay",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contract",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CompartmentDefinition.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ConsentScopeCodes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "ResourceType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProductPlan",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "PublicationStatus"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "name", "type": "string"},
        {
          "name": "alias",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "period", "type": "Period"},
        {"name": "ownedBy", "type": "Reference"},
        {"name": "administeredBy", "type": "Reference"},
        {
          "name": "address",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "coverageArea", "type": "Reference"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "coverage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "plan",
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
      "name": "Timing.Repeat",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "bounds",
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
              },
              {
                "modelName": "FHIR",
                "name": "Period",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
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
        {
          "name": "dayOfWeek",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "timeOfDay",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "when",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "offset", "type": "unsignedInt"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Media",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "status", "type": "MediaStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "modality", "type": "CodeableConcept"},
        {"name": "view", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "context", "type": "Reference"},
        {
          "name": "created",
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
        {"name": "operator", "type": "Reference"},
        {
          "name": "reasonCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "CodeableConcept"},
        {"name": "deviceName", "type": "string"},
        {"name": "device", "type": "Reference"},
        {"name": "height", "type": "positiveInt"},
        {"name": "width", "type": "positiveInt"},
        {"name": "frames", "type": "positiveInt"},
        {"name": "duration", "type": "decimal"},
        {"name": "content", "type": "Attachment"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "StructureMapGroupTypeMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Contract",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "ContractResourceStatusCodes"},
        {"name": "contentDerivative", "type": "CodeableConcept"},
        {"name": "issued", "type": "dateTime"},
        {"name": "applies", "type": "Period"},
        {
          "name": "subject",
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
          "name": "term",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "signer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "friendly",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "legal",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "rule", "type": "Contract.Rule"},
        {
          "name": "legallyBinding",
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
      "name": "SpecimenDefinition.SpecimenToLab",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "isDerived", "type": "boolean"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "preference", "type": "SpecimenContainedPreference"},
        {"name": "containerMaterial", "type": "CodeableConcept"},
        {"name": "containerType", "type": "CodeableConcept"},
        {"name": "containerCap", "type": "CodeableConcept"},
        {"name": "containerDescription", "type": "string"},
        {"name": "containerCapacity", "type": "Quantity"},
        {"name": "containerMinimumVolume", "type": "Quantity"},
        {
          "name": "containerAdditive",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "containerPreparation", "type": "string"},
        {"name": "requirement", "type": "string"},
        {"name": "retentionTime", "type": "Duration"},
        {
          "name": "rejectionCriterion",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "handling",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
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
          "name": "resultsInterpreter",
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
          "name": "media",
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
      "name": "AuditEvent.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "BodyStructure",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "active", "type": "boolean"},
        {"name": "morphology", "type": "CodeableConcept"},
        {"name": "location", "type": "CodeableConcept"},
        {
          "name": "locationQualifier",
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
      "name": "ConceptMap.DependsOn",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "property", "type": "uri"},
        {"name": "system", "type": "uri"},
        {"name": "code", "type": "string"},
        {"name": "display", "type": "string"}
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
      "name": "MedicinalProduct.Name",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "fullName", "type": "string"},
        {
          "name": "namePart",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "countryLanguage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ClinicalImpression.Investigation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "SubstancePolymer.MonomerSet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ratioType", "type": "CodeableConcept"},
        {
          "name": "startingMaterial",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Schedule",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "RelatedArtifact",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
      "name": "MedicationAdministration",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "medicationCodeableConcept",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
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
        {
          "name": "statusReason",
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
        {"name": "request", "type": "Reference"},
        {
          "name": "device",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "dosage", "type": "MedicationAdministration.Dosage"},
        {
          "name": "eventHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
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
      "name": "CapabilityStatement.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"},
        {
          "name": "supportedProfile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
        },
        {
          "name": "operation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Task.Restriction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Provenance",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "target",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "occurred",
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
                "name": "dateTime",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
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
        {"name": "activity", "type": "CodeableConcept"},
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
      "name": "MedicinalProductAuthorization.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "date", "type": "Period"},
        {
          "name": "application",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProdCharacteristic",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "height", "type": "Quantity"},
        {"name": "width", "type": "Quantity"},
        {"name": "depth", "type": "Quantity"},
        {"name": "weight", "type": "Quantity"},
        {"name": "nominalVolume", "type": "Quantity"},
        {"name": "externalDiameter", "type": "Quantity"},
        {"name": "shape", "type": "string"},
        {
          "name": "color",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "imprint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "image",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "scoring", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Medication",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "status", "type": "MedicationStatus"},
        {"name": "manufacturer", "type": "Reference"},
        {"name": "form", "type": "CodeableConcept"},
        {"name": "amount", "type": "Quantity"},
        {
          "name": "ingredient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "batch", "type": "Medication.Batch"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CarePlan.Activity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "detail", "type": "CarePlan.Detail"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Goal.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
          "name": "dueD",
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
      "name": "ExpansionProfile.Exclude",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "designation",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
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
      "name": "DeviceRequest.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "StructureMap.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
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
      "name": "ConditionClinicalStatusCodes",
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
      "name": "Claim.Accident",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "HumanName",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
      "name": "Questionnaire.EnableWhen",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "TestScript.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "resource", "type": "FHIRDefinedType"},
        {"name": "label", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "accept", "type": "code"},
        {"name": "contentType", "type": "code"},
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
      "name": "Group",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "ExplanationOfBenefit.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "resource", "type": "Coding"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DetectedIssue",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "ObservationStatus"},
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
      "name": "Location",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "position", "type": "Location.Position"},
        {"name": "managingOrganization", "type": "Reference"},
        {"name": "partOf", "type": "Reference"},
        {
          "name": "hoursOfOperation",
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
      "name": "ProcessOutcomeCodes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "ConditionalDeleteStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Measure.SupplementalData",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "usage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "criteria", "type": "string"},
        {"name": "path", "type": "string"}
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
      "name": "Use",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceReferenceInformation.Gene",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "geneSequenceOrigin", "type": "CodeableConcept"},
        {"name": "gene", "type": "CodeableConcept"},
        {
          "name": "source",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ExplanationOfBenefit.AddItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "itemSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "detailSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "subDetailSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OccupationalData.UsualOccupation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "UsualOccupation"},
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
        {"name": "value", "type": "CodeableConcept"},
        {"name": "duration", "type": "OccupationalData.Duration"},
        {"name": "industry", "type": "OccupationalData.Industry"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Slicing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "discriminator",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "SupplyRequestStatus"},
        {"name": "category", "type": "CodeableConcept"},
        {"name": "priority", "type": "RequestPriority"},
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
        {"name": "quantity", "type": "Quantity"},
        {
          "name": "parameter",
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
        {"name": "requester", "type": "Reference"},
        {
          "name": "supplier",
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
        {"name": "deliverFrom", "type": "Reference"},
        {"name": "deliverTo", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductClinicals",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "undesirableEffects",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "therapeuticIndication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "contraindication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "interactions",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ConditionalReadStatus",
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
      "name": "PaymentReconciliation",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
        {"name": "period", "type": "Period"},
        {"name": "created", "type": "dateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "RemittanceOutcome"},
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
      "name": "ResearchStudy.Arm",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "description", "type": "string"}
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
      "name": "MedicinalProductPackaged.PackageItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "quantity", "type": "Quantity"},
        {
          "name": "material",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "alternateMaterial",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "device",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturedItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "otherCharacteristics",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "packageItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "physicalCharacteristics", "type": "ProdCharacteristic"},
        {
          "name": "shelfLifeStorage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProductPlan.Benefit1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "cost",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FinancialResourceStatusCodes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Action2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "operation", "type": "TestReport.Operation"}
    },
    {
      "type": "ClassInfo",
      "name": "Invoice.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestReport.Action1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "operation", "type": "TestReport.Operation"},
        {"name": "assert", "type": "TestReport.Assert"}
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
      "name": "Organization",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "ConceptMap.Element",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "NutritionOrder.OralDiet",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ExpansionProfile.FixedVersion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"},
        {"name": "mode", "type": "SystemVersionProcessingMode"}
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
      "name": "DocumentReferenceStatus",
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
      "name": "repositoryType",
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
      "name": "SubstanceReferenceInformation.Classification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "domain", "type": "CodeableConcept"},
        {"name": "classification", "type": "CodeableConcept"},
        {
          "name": "subtype",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "source",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.Include",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "designation",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductAuthorization.Application",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "date", "type": "dateTime"}
      ]
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
      "name": "VerificationResult.PrimarySource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "organization", "type": "Reference"},
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "validationProcess",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "validationStatus", "type": "validationStatus"},
        {"name": "validationDate", "type": "dateTime"},
        {"name": "canPushUpdates", "type": "canPushUpdates"},
        {
          "name": "pushTypeAvailable",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceMoiety",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "name", "type": "string"},
        {"name": "stereochemistry", "type": "CodeableConcept"},
        {"name": "opticalActivity", "type": "CodeableConcept"},
        {"name": "molecularFormula", "type": "string"},
        {"name": "amount", "type": "SubstanceAmount"}
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
                "name": "integer",
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Software",
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
      "name": "TestReportStatus",
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
        {"name": "status", "type": "ObservationStatus"},
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
      "name": "Claim",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
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
        {"name": "payee", "type": "Claim.Payee"},
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
        {"name": "accident", "type": "Claim.Accident"},
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
      "name": "MedicinalProductPackaged",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "description", "type": "string"},
        {
          "name": "marketingStatus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "batchIdentifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "packageItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Binding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "FHIRDeviceStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "type", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"}
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
      "name": "CapabilityStatement.Certificate",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
        {"name": "blob", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TerminologyCapabilities",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "lockedDate", "type": "boolean"},
        {
          "name": "codeSystem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "expansion", "type": "TerminologyCapabilities.Expansion"},
        {"name": "codeSearch", "type": "CodeSearchSupport"},
        {
          "name": "validateCode",
          "type": "TerminologyCapabilities.ValidateCode"
        },
        {"name": "translation", "type": "TerminologyCapabilities.Translation"},
        {"name": "closure", "type": "TerminologyCapabilities.Closure"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductClinicals.Interactions",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "interactant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "type", "type": "CodeableConcept"},
        {"name": "effect", "type": "CodeableConcept"},
        {"name": "incidence", "type": "CodeableConcept"},
        {"name": "management", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "HealthcareService",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
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
        {"name": "eligibilityNote", "type": "string"},
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
      "name": "Condition",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "clinicalStatus", "type": "ConditionClinicalStatusCodes"},
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
        {
          "name": "stage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "EligibilityResponse.BenefitBalance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ObservationDefinition.QuantitativeDetails",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "customaryUnit", "type": "Coding"},
        {"name": "unit", "type": "Coding"},
        {"name": "conversionFactor", "type": "decimal"},
        {"name": "decimalPrecision", "type": "integer"}
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
      "name": "Questionnaire.Option",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        },
        {"name": "initialSelected", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Type",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "uri"},
        {"name": "profile", "type": "uri"},
        {"name": "targetProfile", "type": "uri"},
        {
          "name": "aggregation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "versioning", "type": "ReferenceVersionRules"}
      ]
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
        {
          "name": "header",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Goal",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
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
        {"name": "target", "type": "Goal.Target"},
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
      "name": "ExampleScenario.Actor",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "actorId", "type": "string"},
        {"name": "type", "type": "ExampleScenarioActorType"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "markdown"}
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
      "name": "OperationDefinition.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "code"},
        {"name": "use", "type": "OperationParameterUse"},
        {"name": "min", "type": "integer"},
        {"name": "max", "type": "string"},
        {"name": "documentation", "type": "string"},
        {"name": "type", "type": "FHIRAllTypes"},
        {
          "name": "targetProfile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "searchType", "type": "SearchParamType"},
        {"name": "binding", "type": "OperationDefinition.Binding"},
        {
          "name": "part",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "TerminologyCapabilities.Filter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "code"},
        {
          "name": "op",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ClaimResponse.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "TestReport.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "operation", "type": "TestReport.Operation"},
        {"name": "assert", "type": "TestReport.Assert"}
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
      "name": "ImplementationGuideInput.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reference", "type": "Reference"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "string"},
        {
          "name": "example",
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
      "name": "VerificationResult.Validator",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "organization", "type": "Reference"},
        {"name": "identityCertificate", "type": "string"},
        {"name": "dateValidated", "type": "date"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExampleScenario.Step",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "process",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "pause", "type": "boolean"},
        {"name": "operation", "type": "ExampleScenario.Operation"},
        {"name": "alternative", "type": "ExampleScenario.Alternative"}
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
      "name": "MediaStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "DeviceMetricCalibrationState",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "InvoicePriceComponentType",
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
      "name": "ProductPlan.Contact",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "DataRequirement",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "code"},
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
      "name": "Measure.Group",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
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
      "name": "PlanDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "TestScript.Ruleset",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resource", "type": "Reference"},
        {
          "name": "rule",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstancePolymer.RepeatUnit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "orientationOfPolymerisation", "type": "CodeableConcept"},
        {"name": "repeatUnit", "type": "string"},
        {"name": "amount", "type": "SubstanceAmount"},
        {
          "name": "degreeOfPolymerisation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "structuralRepresentation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ElementDefinition.Base",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {"name": "min", "type": "unsignedInt"},
        {"name": "max", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Bundle",
      "baseType": "Resource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "BundleType"},
        {"name": "timestamp", "type": "instant"},
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
      "name": "Encounter.Hospitalization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "MedicinalProductIngredient.SpecifiedSubstance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "group", "type": "CodeableConcept"},
        {"name": "confidentiality", "type": "CodeableConcept"},
        {
          "name": "strength",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationEvaluationStatusCodes",
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
      "name": "ExampleScenarioActorType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministration.Dosage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "text", "type": "string"},
        {"name": "site", "type": "CodeableConcept"},
        {"name": "route", "type": "CodeableConcept"},
        {"name": "method", "type": "CodeableConcept"},
        {"name": "dose", "type": "Quantity"},
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
      "name": "ClinicalImpression.Finding",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "HazardousDutyWork",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ProductPlan.Cost",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "applicability",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "qualifiers",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "value", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExpansionProfile.ExcludedSystem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "version", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProduct.ManufacturingBusinessOperation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "operationType", "type": "CodeableConcept"},
        {"name": "authorisationReferenceNumber", "type": "Identifier"},
        {"name": "effectiveDate", "type": "dateTime"},
        {"name": "confidentialityIndicator", "type": "CodeableConcept"},
        {
          "name": "manufacturer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "regulator", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "metadata", "type": "TestScript.Metadata"},
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
        {
          "name": "ruleset",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "setup", "type": "TestScript.Setup"},
        {
          "name": "test",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "teardown", "type": "TestScript.Teardown"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "BiologicallyDerivedProduct.Manipulation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
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
      "name": "ProductShelfLife",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "period", "type": "Quantity"},
        {
          "name": "specialPrecautionsForStorage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ContractDataMeaning",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "RequestGroup.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "kind", "type": "ActionConditionKind"},
        {"name": "description", "type": "string"},
        {"name": "language", "type": "string"},
        {"name": "expression", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ClaimResponse.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "subDetailSequence", "type": "positiveInt"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
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
      "name": "SpecimenStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EventDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "trigger", "type": "TriggerDefinition"}
      ]
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
      "name": "Dosage",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
                "name": "{urn:hl7-org:elm-types:r1}Quantity",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "maxDosePerPeriod", "type": "Ratio"},
        {"name": "maxDosePerAdministration", "type": "Quantity"},
        {"name": "maxDosePerLifetime", "type": "Quantity"},
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
      "name": "Measure.Stratifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "description", "type": "string"},
        {"name": "criteria", "type": "string"},
        {"name": "path", "type": "string"}
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
      "name": "EligibilityRequest.Authorization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "service", "type": "CodeableConcept"},
        {
          "name": "modifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "unitPrice", "type": "Money"},
        {"name": "facility", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProductPlan.Coverage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "benefit",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.SubDetail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "quantity", "type": "Quantity"},
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
      "name": "Appointment",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "serviceType",
      "element": [
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
        {"name": "patientInstruction", "type": "string"},
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
      "name": "TestScript.Assert",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "label", "type": "string"},
        {"name": "description", "type": "string"},
        {"name": "direction", "type": "AssertionDirectionType"},
        {"name": "compareToSourceId", "type": "string"},
        {"name": "compareToSourceExpression", "type": "string"},
        {"name": "compareToSourcePath", "type": "string"},
        {"name": "contentType", "type": "code"},
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
      "name": "ExpansionProfile",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "excludedSystem", "type": "ExpansionProfile.ExcludedSystem"},
        {"name": "includeDesignations", "type": "boolean"},
        {"name": "designation", "type": "ExpansionProfile.Designation"},
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
      "name": "Contract.ValuedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ExpansionProfile.Designation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "include", "type": "ExpansionProfile.Include"},
        {"name": "exclude", "type": "ExpansionProfile.Exclude"}
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
      "name": "Device",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "udi", "type": "Device.Udi"},
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
      "name": "TestScript.Capability",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "CapabilityStatement.Implementation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductPackaged.BatchIdentifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "outerPackaging", "type": "Identifier"},
        {"name": "immediatePackaging", "type": "Identifier"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance.Ingredient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Claim.Procedure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "MedicinalProductClinicals.OtherTherapy",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "therapyRelationshipType", "type": "CodeableConcept"},
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
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
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
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceSpecification.Moiety",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "name", "type": "string"},
        {"name": "stereochemistry", "type": "CodeableConcept"},
        {"name": "opticalActivity", "type": "CodeableConcept"},
        {"name": "molecularFormula", "type": "string"},
        {"name": "amount", "type": "string"}
      ]
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
        {"name": "xpath", "type": "string"},
        {"name": "source", "type": "uri"}
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
      "name": "BiologicallyDerivedProduct",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "productCategory",
          "type": "BiologicallyDerivedProductCategory"
        },
        {"name": "productCode", "type": "CodeableConcept"},
        {"name": "status", "type": "BiologicallyDerivedProductStatus"},
        {
          "name": "request",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "quantity", "type": "integer"},
        {"name": "parent", "type": "Reference"},
        {"name": "collection", "type": "BiologicallyDerivedProduct.Collection"},
        {
          "name": "processing",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manipulation",
          "type": "BiologicallyDerivedProduct.Manipulation"
        },
        {
          "name": "storage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "ClaimResponse.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "detailSequence", "type": "positiveInt"},
        {
          "name": "noteNumber",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "adjudication",
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
      "name": "SubstanceReferenceInformation.GeneElement",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "element", "type": "Identifier"},
        {
          "name": "source",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
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
      "name": "AuditEvent.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "string"},
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
                "name": "base64Binary",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProduct",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "combinedPharmaceuticalDoseForm", "type": "CodeableConcept"},
        {"name": "additionalMonitoringIndicator", "type": "CodeableConcept"},
        {
          "name": "specialMeasures",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "paediatricUseIndicator", "type": "CodeableConcept"},
        {"name": "orphanDesignationStatus", "type": "CodeableConcept"},
        {
          "name": "productClassification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "marketingAuthorization", "type": "Reference"},
        {
          "name": "packagedMedicinalProduct",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "pharmaceuticalProduct",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "clinicalParticulars",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "attachedDocument",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "masterFile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "name",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "crossReference",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturingBusinessOperation",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Test",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "NutritionOrder.Nutrient",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "modifier", "type": "CodeableConcept"},
        {"name": "amount", "type": "Quantity"}
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
      "name": "TestReport.Test",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "CareTeam.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "member", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"},
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
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "bodySite", "type": "Coding"},
        {"name": "laterality", "type": "Coding"},
        {
          "name": "specimen",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "Composition",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
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
        {"name": "confidentiality", "type": "ConfidentialityClassification"},
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
      "name": "CapabilityStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "software", "type": "CapabilityStatement.Software"},
        {
          "name": "implementation",
          "type": "CapabilityStatement.Implementation"
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
      "name": "TestReportResult",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MeasureReport.Stratifier",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "stratum",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "element": {
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
    },
    {
      "type": "ClassInfo",
      "name": "ActivityDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "topic",
      "element": [
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
        {"name": "kind", "type": "ResourceType"},
        {"name": "code", "type": "CodeableConcept"},
        {"name": "doNotPerform", "type": "boolean"},
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
                "name": "Duration",
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
        {"name": "quantity", "type": "Quantity"},
        {
          "name": "dosage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "bodySite",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimenRequirement",
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
      "name": "VisionPrescription.Dispense",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "duration", "type": "Quantity"},
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
      "name": "SupplyRequest.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
                "name": "boolean",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Related",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "claim", "type": "Reference"},
        {"name": "relationship", "type": "CodeableConcept"},
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
      "name": "TestScript.Rule3",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ruleId", "type": "id"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule2",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ruleId", "type": "id"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
        {"name": "compose", "type": "ValueSet.Compose"},
        {"name": "expansion", "type": "ValueSet.Expansion"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "ruleId", "type": "id"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Linkage",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "Signature",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
        {"name": "targetFormat", "type": "code"},
        {"name": "sigFormat", "type": "code"},
        {"name": "blob", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExampleScenario.Alternative",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {
          "name": "option",
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
      "name": "DocumentReference.Context",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Measure",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "topic",
      "element": [
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
        {"name": "subject", "type": "CodeableConcept"},
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
      "name": "Practitioner.Qualification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ProcessResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
        {"name": "created", "type": "dateTime"},
        {"name": "organization", "type": "Reference"},
        {"name": "request", "type": "Reference"},
        {"name": "outcome", "type": "ProcessOutcomeCodes"},
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
      "name": "Narrative",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "status", "type": "NarrativeStatus"}
    },
    {
      "type": "ClassInfo",
      "name": "MessageDefinition.Focus",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"},
        {"name": "min", "type": "unsignedInt"},
        {"name": "max", "type": "string"}
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
      "element": {
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
    },
    {
      "type": "ClassInfo",
      "name": "MessageDefinition.AllowedResponse",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "message", "type": "Reference"},
        {"name": "situation", "type": "markdown"}
      ]
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
      "name": "SubstancePolymer.StructuralRepresentation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "representation", "type": "string"},
        {"name": "attachment", "type": "Attachment"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen.Container",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "capacity", "type": "Quantity"},
        {"name": "specimenQuantity", "type": "Quantity"},
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
      "name": "SpecimenDefinition.Handling",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "conditionSet", "type": "CodeableConcept"},
        {"name": "tempRange", "type": "Range"},
        {"name": "maxDuration", "type": "Duration"},
        {"name": "lightExposure", "type": "string"},
        {"name": "instruction", "type": "string"}
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
      "name": "ElementDefinition.Example",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "label", "type": "string"},
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
      "name": "GuideDependencyType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "BiologicallyDerivedProductCategory",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ObservationDefinition.QualifiedInterval",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "CodeableConcept"},
        {"name": "range", "type": "Range"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "appliesTo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "age", "type": "Range"},
        {"name": "gestationalAge", "type": "Range"},
        {"name": "condition", "type": "string"}
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
      "name": "MedicationRequestStatus",
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
      "name": "CapabilityStatement.Messaging",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "endpoint",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "reliableCache", "type": "unsignedInt"},
        {"name": "documentation", "type": "string"},
        {
          "name": "supportedMessage",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "CodeSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "supplements", "type": "Reference"},
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
      "name": "Account.Guarantor",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "party", "type": "Reference"},
        {"name": "onHold", "type": "boolean"},
        {"name": "period", "type": "Period"}
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
      "name": "OccupationalData.Duration",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "value", "type": "Period"}
      ]
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
      "name": "Claim.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {
          "name": "careTeamSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosisSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "informationSequence",
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
        {"name": "quantity", "type": "Quantity"},
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
      "name": "ImplementationGuideOutput.Page",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "title", "type": "string"},
        {
          "name": "anchor",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Financial",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "MedicationRequestIntent",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.SupportedMessage",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "EventCapabilityMode"},
        {"name": "definition", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Subscription",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "status", "type": "SubscriptionStatus"},
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "end", "type": "instant"},
        {"name": "reason", "type": "string"},
        {"name": "criteria", "type": "string"},
        {"name": "error", "type": "string"},
        {"name": "channel", "type": "Subscription.Channel"},
        {
          "name": "tag",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Person",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "Duration",
      "baseType": "Quantity",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Bundle.Entry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "link",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "fullUrl", "type": "uri"},
        {"name": "resource", "type": "ResourceContainer"},
        {"name": "search", "type": "Bundle.Search"},
        {"name": "request", "type": "Bundle.Request"},
        {"name": "response", "type": "Bundle.Response"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProductPlan.Category",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "benefit",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "ImmunizationStatusCodes",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "OperationDefinition.Overload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "parameterName",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Consent.Provision",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ConsentProvisionType"},
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
        },
        {
          "name": "provision",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceSpecification",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "comment", "type": "string"},
        {"name": "stoichiometric", "type": "boolean"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "referenceSource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "moiety",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "property",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "referenceInformation", "type": "Reference"},
        {"name": "structure", "type": "SubstanceSpecification.Structure"},
        {
          "name": "substanceCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "substanceName",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "molecularWeight",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "polymer", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NamingSystem",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "GraphDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "SubstanceReferenceInformation.Relationship",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "substance",
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
        {"name": "relationship", "type": "CodeableConcept"},
        {"name": "interaction", "type": "CodeableConcept"},
        {"name": "isDefining", "type": "boolean"},
        {
          "name": "amount",
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
                "name": "string",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "amountType", "type": "CodeableConcept"},
        {"name": "amountText", "type": "string"},
        {
          "name": "source",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ConfidentialityClassification",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuideOutput.Resource",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "reference", "type": "Reference"},
        {
          "name": "example",
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
                "name": "Reference",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "relativePath", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance.Reaction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Sequence.Repository",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Coverage.Class",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "Coding"},
        {"name": "value", "type": "string"},
        {"name": "name", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OccupationalData.EmploymentStatus",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "HistoryOfEmploymentStatus"},
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
        {"name": "value", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SpecimenDefinition.ContainerAdditive",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
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
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "codeCodeableConcept",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
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
        {"name": "status", "type": "RequestStatus"},
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
        {
          "name": "parameter",
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
        {"name": "requester", "type": "Reference"},
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
          "name": "insurance",
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
      "name": "ServiceRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
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
        {"name": "status", "type": "RequestStatus"},
        {"name": "intent", "type": "RequestIntent"},
        {"name": "priority", "type": "RequestPriority"},
        {"name": "doNotPerform", "type": "boolean"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "orderDetail",
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
        {"name": "requester", "type": "Reference"},
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
          "name": "insurance",
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
        {"name": "patientInstruction", "type": "string"},
        {
          "name": "relevantHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.Entity",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "ProvenanceEntityRole"},
        {
          "name": "what",
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
        },
        {
          "name": "agent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeableConcept",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "coding",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
        {
          "name": "role",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Coverage.Grouping",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "group", "type": "string"},
        {"name": "groupDisplay", "type": "string"},
        {"name": "subGroup", "type": "string"},
        {"name": "subGroupDisplay", "type": "string"},
        {"name": "plan", "type": "string"},
        {"name": "planDisplay", "type": "string"},
        {"name": "subPlan", "type": "string"},
        {"name": "subPlanDisplay", "type": "string"},
        {"name": "class", "type": "string"},
        {"name": "classDisplay", "type": "string"},
        {"name": "subClass", "type": "string"},
        {"name": "subClassDisplay", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "need",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "actuality", "type": "AdverseEventActuality"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "event", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {
          "name": "resultingCondition",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "location", "type": "Reference"},
        {"name": "seriousness", "type": "CodeableConcept"},
        {"name": "severity", "type": "CodeableConcept"},
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
      "name": "PlanDefinition.Condition",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "kind", "type": "ActionConditionKind"},
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
      "name": "Contract.Data",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "meaning", "type": "ContractDataMeaning"},
        {"name": "reference", "type": "Reference"}
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
      "name": "ConceptMap",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "HistoryOfEmploymentStatus",
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
      "name": "TestReport.Setup",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "Reference",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "reference", "type": "string"},
        {"name": "identifier", "type": "Identifier"},
        {"name": "display", "type": "string"}
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
      "name": "MessageHeader",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "event", "type": "Coding"},
        {
          "name": "destination",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "sender", "type": "Reference"},
        {"name": "enterer", "type": "Reference"},
        {"name": "author", "type": "Reference"},
        {"name": "source", "type": "MessageHeader.Source"},
        {"name": "responsible", "type": "Reference"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "response", "type": "MessageHeader.Response"},
        {
          "name": "focus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "definition", "type": "uri"}
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
      "name": "ReferenceHandlingPolicy",
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
        {"name": "type", "type": "CodeableConcept"},
        {"name": "adjustment", "type": "Money"},
        {"name": "adjustmentReason", "type": "CodeableConcept"},
        {"name": "date", "type": "date"},
        {"name": "amount", "type": "Money"},
        {"name": "identifier", "type": "Identifier"}
      ]
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
      "name": "ValueSet.Contains",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "system", "type": "uri"},
        {"name": "abstract", "type": "boolean"},
        {"name": "inactive", "type": "boolean"},
        {"name": "version", "type": "string"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {
          "name": "designation",
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
      "name": "AdverseEvent.Causality",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "assessment", "type": "CodeableConcept"},
        {"name": "productRelatedness", "type": "string"},
        {"name": "author", "type": "Reference"},
        {"name": "method", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Immunization.Practitioner",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "role", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"}
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
      "name": "ExtensionContext",
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
      "name": "ImplementationGuide.Page",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "format", "type": "code"},
        {
          "name": "page",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "measureScore", "type": "Quantity"},
        {
          "name": "stratifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ValueSet.Compose",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "lockedDate", "type": "date"},
        {"name": "inactive", "type": "boolean"},
        {
          "name": "include",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "exclude",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceSpecification.SubstanceName",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "language",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "domain",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "jurisdiction",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "officialName",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "referenceSource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SupplyDelivery.SuppliedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Contract.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
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
    },
    {
      "type": "ClassInfo",
      "name": "SpecimenContainedPreference",
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
      "name": "ConstraintSeverity",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
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
      "name": "Encounter",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "EncounterStatus"},
        {
          "name": "statusHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "class", "type": "Coding"},
        {
          "name": "classHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "type",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "serviceType", "type": "CodeableConcept"},
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
        {"name": "hospitalization", "type": "Encounter.Hospitalization"},
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
      "name": "failureAction",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "StructureMap.Dependent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "id"},
        {
          "name": "variable",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "Claim.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ImplementationGuideInput.Package",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "Timing",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {
          "name": "event",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "repeat", "type": "Timing.Repeat"},
        {"name": "code", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductDeviceSpec",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "tradeName", "type": "string"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "listingNumber", "type": "string"},
        {"name": "modelNumber", "type": "string"},
        {"name": "sterilityIndicator", "type": "CodeableConcept"},
        {"name": "sterilisationRequirement", "type": "CodeableConcept"},
        {"name": "usage", "type": "CodeableConcept"},
        {
          "name": "nomenclature",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "shelfLife",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "physicalCharacteristics", "type": "ProdCharacteristic"},
        {
          "name": "otherCharacteristics",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "batchIdentifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "manufacturer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "material",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductIngredient",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "allergenicIndicator", "type": "boolean"},
        {
          "name": "manufacturer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specifiedSubstance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "substance", "type": "MedicinalProductIngredient.Substance"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Invoice",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "InvoiceStatus"},
        {"name": "cancelledReason", "type": "string"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subject", "type": "Reference"},
        {"name": "recipient", "type": "Reference"},
        {"name": "date", "type": "dateTime"},
        {
          "name": "participant",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "issuer", "type": "Reference"},
        {"name": "account", "type": "Reference"},
        {
          "name": "lineItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "totalPriceComponent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "totalNet", "type": "Money"},
        {"name": "totalGross", "type": "Money"},
        {"name": "paymentTerms", "type": "markdown"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CodeSearchSupport",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Extension",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
      "name": "Group.Characteristic",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "UDIEntryType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "who", "type": "Reference"}
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
        {"name": "caloricDensity", "type": "Quantity"},
        {"name": "routeofAdministration", "type": "CodeableConcept"},
        {
          "name": "administration",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "maxVolumeToDeliver", "type": "Quantity"},
        {"name": "administrationInstruction", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "UserSessionStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "UserSessionStatusSource",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
        {"name": "mode", "type": "ListMode"},
        {"name": "orderedBy", "type": "CodeableConcept"},
        {
          "name": "entry",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "emptyReason", "type": "CodeableConcept"},
        {
          "name": "section",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "TriggerDefinition.Condition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "language", "type": "ExpressionLanguage"},
        {"name": "expression", "type": "string"}
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
      "name": "ActivityDefinition.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ActionParticipantType"},
        {"name": "role", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Sequence.Quality",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "fScore", "type": "decimal"},
        {"name": "roc", "type": "Sequence.Roc"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductPharmaceutical",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "administrableDoseForm", "type": "CodeableConcept"},
        {"name": "unitOfPresentation", "type": "CodeableConcept"},
        {
          "name": "routeOfAdministration",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ingredient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "device",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "characteristics",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "CapabilityStatementKind",
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
        {"name": "itemSequence", "type": "positiveInt"},
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
      "name": "CarePlan.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "kind", "type": "CarePlanActivityKind"},
        {"name": "instantiates", "type": "uri"},
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
        {"name": "statusReason", "type": "string"},
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
        {"name": "dailyAmount", "type": "Quantity"},
        {"name": "quantity", "type": "Quantity"},
        {"name": "description", "type": "string"}
      ]
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
      "name": "EventTiming",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EntryDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "purpose", "type": "CodeableConcept"},
        {"name": "referencedItem", "type": "Reference"},
        {"name": "identifier", "type": "Identifier"},
        {
          "name": "additionalIdentifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "classification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "CodeableConcept"},
        {"name": "validityPeriod", "type": "Period"},
        {"name": "lastUpdated", "type": "dateTime"},
        {
          "name": "additionalCharacteristic",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "additionalClassification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "relatedEntry",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AuditEvent",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "type", "type": "Coding"},
        {
          "name": "subtype",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "action", "type": "AuditEventAction"},
        {"name": "period", "type": "Period"},
        {"name": "recorded", "type": "instant"},
        {"name": "outcome", "type": "AuditEventOutcome"},
        {"name": "outcomeDesc", "type": "string"},
        {
          "name": "purposeOfEvent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "agent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "source", "type": "AuditEvent.Source"},
        {
          "name": "entity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.CareTeam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "provider", "type": "Reference"},
        {"name": "responsible", "type": "boolean"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "qualification", "type": "CodeableConcept"}
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
      "name": "TerminologyCapabilities.Closure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "translation", "type": "boolean"}
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
      "name": "ActionGroupingBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
        {"name": "affectsState", "type": "boolean"},
        {"name": "code", "type": "code"},
        {"name": "comment", "type": "markdown"},
        {"name": "base", "type": "Reference"},
        {
          "name": "resource",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "system", "type": "boolean"},
        {"name": "type", "type": "boolean"},
        {"name": "instance", "type": "boolean"},
        {"name": "inputProfile", "type": "Reference"},
        {"name": "outputProfile", "type": "Reference"},
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
      "name": "TestReport.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "result", "type": "TestReportActionResult"},
        {"name": "message", "type": "markdown"},
        {"name": "detail", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuideInput.Dependency",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "GuideDependencyType"},
        {"name": "uri", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureMap.Source",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
                "name": "Dosage",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactDetail",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Contributor",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "DataRequirement",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ParameterDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "RelatedArtifact",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "TriggerDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "UsageContext",
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
      "name": "TestReport",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "setup", "type": "TestReport.Setup"},
        {
          "name": "test",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "teardown", "type": "TestReport.Teardown"}
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
        {
          "name": "element",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "unmapped", "type": "ConceptMap.Unmapped"}
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
      "name": "HealthcareService.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "BiologicallyDerivedProductStorageScale",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FinancialResourceStatusCodes"},
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
        {"name": "benefitSubCategory", "type": "CodeableConcept"},
        {
          "name": "authorization",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "ResearchSubject",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "Parameters.Parameter",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
                "name": "Dosage",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactDetail",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Contributor",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "DataRequirement",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ParameterDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "RelatedArtifact",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "TriggerDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "UsageContext",
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
        {"name": "resource", "type": "ResourceContainer"},
        {
          "name": "part",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Payee",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "resource", "type": "Coding"},
        {"name": "party", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DataRequirement.DateFilter",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "path", "type": "string"},
        {
          "name": "value",
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
              }
            ]
          }
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Substance",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
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
      "name": "Contract.Legal",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
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
    },
    {
      "type": "ClassInfo",
      "name": "pushTypeAvailable",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Rule",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resource", "type": "Reference"},
        {
          "name": "param",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DocumentReference.Content",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "attachment", "type": "Attachment"},
        {"name": "format", "type": "Coding"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Teardown",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
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
      "name": "ImmunizationRecommendation.Recommendation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "vaccineCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "targetDisease", "type": "CodeableConcept"},
        {
          "name": "contraindicatedVaccineCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "forecastStatus", "type": "CodeableConcept"},
        {
          "name": "forecastReason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "dateCriterion",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "description", "type": "string"},
        {"name": "series", "type": "string"},
        {"name": "doseNumber", "type": "positiveInt"},
        {"name": "seriesDoses", "type": "positiveInt"},
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
      "name": "AppointmentResponse",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "participantStatus", "type": "ParticipationStatus"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TriggerDefinition",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "TriggerType"},
        {"name": "name", "type": "string"},
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
        {"name": "data", "type": "DataRequirement"},
        {"name": "condition", "type": "TriggerDefinition.Condition"}
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
      "name": "CapabilityStatement.Interaction1",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "SystemRestfulInteraction"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "coverage", "type": "Reference"},
        {
          "name": "preAuthRef",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Communication",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
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
        {
          "name": "inResponseTo",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "EventStatus"},
        {"name": "statusReason", "type": "CodeableConcept"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "RequestPriority"},
        {
          "name": "medium",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "subject", "type": "Reference"},
        {
          "name": "recipient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "topic", "type": "CodeableConcept"},
        {
          "name": "about",
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
      "name": "Contract.Term",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "issued", "type": "dateTime"},
        {"name": "applies", "type": "Period"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "subType", "type": "CodeableConcept"},
        {"name": "offer", "type": "Contract.Offer"},
        {
          "name": "asset",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "agent",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "action",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "actionReason",
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
      "name": "ExplanationOfBenefitStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductPackaged.ManufacturedItem",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "manufacturedDoseForm", "type": "CodeableConcept"},
        {"name": "unitOfPresentation", "type": "CodeableConcept"},
        {"name": "quantity", "type": "Quantity"},
        {
          "name": "xManufacturer",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "ingredient",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "physicalCharacteristics", "type": "ProdCharacteristic"}
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
      "name": "Consent",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "category",
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "status", "type": "ConsentState"},
        {"name": "scope", "type": "ConsentScopeCodes"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "patient", "type": "Reference"},
        {"name": "dateTime", "type": "dateTime"},
        {
          "name": "consentingParty",
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
        {"name": "policyRule", "type": "CodeableConcept"},
        {
          "name": "verification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "provision", "type": "Consent.Provision"}
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
      "name": "FHIRAllTypes",
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
      "name": "MedicinalProductIngredient.ReferenceStrength",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {"name": "substance", "type": "CodeableConcept"}
    },
    {
      "type": "ClassInfo",
      "name": "DocumentManifest",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
          "name": "agent",
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
      "name": "ProductPlan.Benefit",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "item",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.Operation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "definition", "type": "Reference"},
        {"name": "documentation", "type": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Observation",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
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
              },
              {
                "modelName": "FHIR",
                "name": "Timing",
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
                "name": "integer",
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
          "name": "hasMember",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "derivedFrom",
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
      "name": "SearchModifierCode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ConceptMap.Unmapped",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "mode", "type": "ConceptMapGroupUnmappedMode"},
        {"name": "code", "type": "code"},
        {"name": "display", "type": "string"},
        {"name": "url", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Annotation",
      "baseType": "Element",
      "retrievable": false,
      "element": [
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
      "name": "EventStatus",
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
      "name": "ConsentProvisionType",
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
      "name": "DeviceComponent",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
        {"name": "languageCode", "type": "CodeableConcept"},
        {
          "name": "property",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "qualityType",
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
      "name": "OrganizationRole.AvailableTime",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "MedicinalProductClinicals.Contraindication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "disease", "type": "CodeableConcept"},
        {"name": "diseaseStatus", "type": "CodeableConcept"},
        {
          "name": "comorbidity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "therapeuticIndication",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "otherTherapy",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Slot",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "TerminologyCapabilities.Expansion",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "hierarchical", "type": "boolean"},
        {"name": "paging", "type": "boolean"},
        {"name": "incomplete", "type": "boolean"},
        {"name": "definition", "type": "Reference"},
        {
          "name": "profile",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "textFilter", "type": "markdown"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductIngredient.Substance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {
          "name": "strength",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
        {
          "name": "contact",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcessResponse.ProcessNote",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "NoteType"},
        {"name": "text", "type": "string"}
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
      "name": "OrganizationRole.NotAvailable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "during", "type": "Period"}
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
        {"name": "AdverseEvent", "type": "AdverseEvent"},
        {"name": "AllergyIntolerance", "type": "AllergyIntolerance"},
        {"name": "Appointment", "type": "Appointment"},
        {"name": "AppointmentResponse", "type": "AppointmentResponse"},
        {"name": "AuditEvent", "type": "AuditEvent"},
        {"name": "Basic", "type": "Basic"},
        {"name": "Binary", "type": "Binary"},
        {
          "name": "BiologicallyDerivedProduct",
          "type": "BiologicallyDerivedProduct"
        },
        {"name": "BodyStructure", "type": "BodyStructure"},
        {"name": "Bundle", "type": "Bundle"},
        {"name": "CapabilityStatement", "type": "CapabilityStatement"},
        {"name": "CarePlan", "type": "CarePlan"},
        {"name": "CareTeam", "type": "CareTeam"},
        {"name": "ChargeItem", "type": "ChargeItem"},
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
        {"name": "Consent", "type": "Consent"},
        {"name": "Contract", "type": "Contract"},
        {"name": "Coverage", "type": "Coverage"},
        {"name": "DetectedIssue", "type": "DetectedIssue"},
        {"name": "Device", "type": "Device"},
        {"name": "DeviceComponent", "type": "DeviceComponent"},
        {"name": "DeviceMetric", "type": "DeviceMetric"},
        {"name": "DeviceRequest", "type": "DeviceRequest"},
        {"name": "DeviceUseStatement", "type": "DeviceUseStatement"},
        {"name": "DiagnosticReport", "type": "DiagnosticReport"},
        {"name": "DocumentManifest", "type": "DocumentManifest"},
        {"name": "DocumentReference", "type": "DocumentReference"},
        {"name": "EligibilityRequest", "type": "EligibilityRequest"},
        {"name": "EligibilityResponse", "type": "EligibilityResponse"},
        {"name": "Encounter", "type": "Encounter"},
        {"name": "Endpoint", "type": "Endpoint"},
        {"name": "EnrollmentRequest", "type": "EnrollmentRequest"},
        {"name": "EnrollmentResponse", "type": "EnrollmentResponse"},
        {"name": "EntryDefinition", "type": "EntryDefinition"},
        {"name": "EpisodeOfCare", "type": "EpisodeOfCare"},
        {"name": "EventDefinition", "type": "EventDefinition"},
        {"name": "ExampleScenario", "type": "ExampleScenario"},
        {"name": "ExpansionProfile", "type": "ExpansionProfile"},
        {"name": "ExplanationOfBenefit", "type": "ExplanationOfBenefit"},
        {"name": "FamilyMemberHistory", "type": "FamilyMemberHistory"},
        {"name": "Flag", "type": "Flag"},
        {"name": "Goal", "type": "Goal"},
        {"name": "GraphDefinition", "type": "GraphDefinition"},
        {"name": "Group", "type": "Group"},
        {"name": "GuidanceResponse", "type": "GuidanceResponse"},
        {"name": "HealthcareService", "type": "HealthcareService"},
        {"name": "ImagingStudy", "type": "ImagingStudy"},
        {"name": "Immunization", "type": "Immunization"},
        {"name": "ImmunizationEvaluation", "type": "ImmunizationEvaluation"},
        {
          "name": "ImmunizationRecommendation",
          "type": "ImmunizationRecommendation"
        },
        {"name": "ImplementationGuide", "type": "ImplementationGuide"},
        {
          "name": "ImplementationGuideInput",
          "type": "ImplementationGuideInput"
        },
        {
          "name": "ImplementationGuideOutput",
          "type": "ImplementationGuideOutput"
        },
        {"name": "Invoice", "type": "Invoice"},
        {"name": "ItemInstance", "type": "ItemInstance"},
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
        {"name": "MedicationRequest", "type": "MedicationRequest"},
        {"name": "MedicationStatement", "type": "MedicationStatement"},
        {"name": "MedicinalProduct", "type": "MedicinalProduct"},
        {
          "name": "MedicinalProductAuthorization",
          "type": "MedicinalProductAuthorization"
        },
        {
          "name": "MedicinalProductClinicals",
          "type": "MedicinalProductClinicals"
        },
        {
          "name": "MedicinalProductDeviceSpec",
          "type": "MedicinalProductDeviceSpec"
        },
        {
          "name": "MedicinalProductIngredient",
          "type": "MedicinalProductIngredient"
        },
        {
          "name": "MedicinalProductPackaged",
          "type": "MedicinalProductPackaged"
        },
        {
          "name": "MedicinalProductPharmaceutical",
          "type": "MedicinalProductPharmaceutical"
        },
        {"name": "MessageDefinition", "type": "MessageDefinition"},
        {"name": "MessageHeader", "type": "MessageHeader"},
        {"name": "NamingSystem", "type": "NamingSystem"},
        {"name": "NutritionOrder", "type": "NutritionOrder"},
        {"name": "Observation", "type": "Observation"},
        {"name": "ObservationDefinition", "type": "ObservationDefinition"},
        {"name": "OccupationalData", "type": "OccupationalData"},
        {"name": "OperationDefinition", "type": "OperationDefinition"},
        {"name": "OperationOutcome", "type": "OperationOutcome"},
        {"name": "Organization", "type": "Organization"},
        {"name": "OrganizationRole", "type": "OrganizationRole"},
        {"name": "Patient", "type": "Patient"},
        {"name": "PaymentNotice", "type": "PaymentNotice"},
        {"name": "PaymentReconciliation", "type": "PaymentReconciliation"},
        {"name": "Person", "type": "Person"},
        {"name": "PlanDefinition", "type": "PlanDefinition"},
        {"name": "Practitioner", "type": "Practitioner"},
        {"name": "PractitionerRole", "type": "PractitionerRole"},
        {"name": "Procedure", "type": "Procedure"},
        {"name": "ProcessRequest", "type": "ProcessRequest"},
        {"name": "ProcessResponse", "type": "ProcessResponse"},
        {"name": "ProductPlan", "type": "ProductPlan"},
        {"name": "Provenance", "type": "Provenance"},
        {"name": "Questionnaire", "type": "Questionnaire"},
        {"name": "QuestionnaireResponse", "type": "QuestionnaireResponse"},
        {"name": "RelatedPerson", "type": "RelatedPerson"},
        {"name": "RequestGroup", "type": "RequestGroup"},
        {"name": "ResearchStudy", "type": "ResearchStudy"},
        {"name": "ResearchSubject", "type": "ResearchSubject"},
        {"name": "RiskAssessment", "type": "RiskAssessment"},
        {"name": "Schedule", "type": "Schedule"},
        {"name": "SearchParameter", "type": "SearchParameter"},
        {"name": "Sequence", "type": "Sequence"},
        {"name": "ServiceDefinition", "type": "ServiceDefinition"},
        {"name": "ServiceRequest", "type": "ServiceRequest"},
        {"name": "Slot", "type": "Slot"},
        {"name": "Specimen", "type": "Specimen"},
        {"name": "SpecimenDefinition", "type": "SpecimenDefinition"},
        {"name": "StructureDefinition", "type": "StructureDefinition"},
        {"name": "StructureMap", "type": "StructureMap"},
        {"name": "Subscription", "type": "Subscription"},
        {"name": "Substance", "type": "Substance"},
        {"name": "SubstancePolymer", "type": "SubstancePolymer"},
        {
          "name": "SubstanceReferenceInformation",
          "type": "SubstanceReferenceInformation"
        },
        {"name": "SubstanceSpecification", "type": "SubstanceSpecification"},
        {"name": "SupplyDelivery", "type": "SupplyDelivery"},
        {"name": "SupplyRequest", "type": "SupplyRequest"},
        {"name": "Task", "type": "Task"},
        {"name": "TerminologyCapabilities", "type": "TerminologyCapabilities"},
        {"name": "TestReport", "type": "TestReport"},
        {"name": "TestScript", "type": "TestScript"},
        {"name": "UserSession", "type": "UserSession"},
        {"name": "ValueSet", "type": "ValueSet"},
        {"name": "VerificationResult", "type": "VerificationResult"},
        {"name": "VisionPrescription", "type": "VisionPrescription"},
        {"name": "Parameters", "type": "Parameters"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Insurance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {"name": "focal", "type": "boolean"},
        {"name": "identifier", "type": "Identifier"},
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
      "name": "QuestionnaireItemType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Contract.Asset",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "class", "type": "Coding"},
        {"name": "code", "type": "Coding"},
        {"name": "period", "type": "Period"},
        {"name": "dataPeriod", "type": "Period"},
        {
          "name": "data",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valuedItem",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "securityLabel",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "BiologicallyDerivedProduct.Collection",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "collector", "type": "Reference"},
        {"name": "source", "type": "Reference"},
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
        }
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
      "name": "Immunization.Education",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "documentType", "type": "string"},
        {"name": "reference", "type": "uri"},
        {"name": "publicationDate", "type": "dateTime"},
        {"name": "presentationDate", "type": "dateTime"}
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
      "name": "Binary",
      "baseType": "Resource",
      "retrievable": true,
      "element": [
        {"name": "contentType", "type": "code"},
        {"name": "securityContext", "type": "Reference"},
        {"name": "content", "type": "base64Binary"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EligibilityResponse.Authorization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "authorizationSequence", "type": "positiveInt"},
        {"name": "required", "type": "boolean"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "SupplyDeliveryStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceComponent.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {
          "name": "valueQuantity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "valueCode",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
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
      "name": "StructureMap.Structure",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "url", "type": "uri"},
        {"name": "mode", "type": "StructureMapModelMode"},
        {"name": "alias", "type": "string"},
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
                "name": "Dosage",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ContactDetail",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "Contributor",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "DataRequirement",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "ParameterDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "RelatedArtifact",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "TriggerDefinition",
                "type": "NamedTypeSpecifier"
              },
              {
                "modelName": "FHIR",
                "name": "UsageContext",
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
      "name": "DiagnosticReportStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "FlagStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Variable",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "SubstanceSpecification.MolecularWeight",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "method", "type": "CodeableConcept"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "amount", "type": "string"}
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
      "name": "PlanDefinition.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ActionParticipantType"},
        {"name": "role", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ElementDefinition.Mapping",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "identity", "type": "id"},
        {"name": "language", "type": "code"},
        {"name": "map", "type": "string"},
        {"name": "comment", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "UsualOccupation",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "TestScript.Setup",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "EntryDefinition.RelatedEntry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "relationtype", "type": "CodeableConcept"},
        {"name": "item", "type": "Reference"}
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
      "name": "base64Binary",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "name": "CommunicationRequest",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "reasonCode",
      "element": [
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
        {"name": "status", "type": "RequestStatus"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "priority", "type": "RequestPriority"},
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
          "name": "about",
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
        {"name": "requester", "type": "Reference"},
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
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskAssessment.Prediction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "AuditEventAgentNetworkType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationRequest.Payload",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
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
    },
    {
      "type": "ClassInfo",
      "name": "BackboneElement",
      "baseType": "Element",
      "retrievable": false,
      "element": {
        "name": "modifierExtension",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "ExpressionLanguage",
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
      "name": "TestReport.Participant",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "TestReportParticipantType"},
        {"name": "uri", "type": "uri"},
        {"name": "display", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "NutritionOrder",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "oralDiet", "type": "NutritionOrder.OralDiet"},
        {
          "name": "supplement",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "enteralFormula", "type": "NutritionOrder.EnteralFormula"},
        {
          "name": "note",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "RequestGroup.RelatedAction",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ServiceDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "SearchEntryMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductAuthorization.JurisdictionalAuthorization",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "country", "type": "CodeableConcept"},
        {"name": "jurisdiction", "type": "CodeableConcept"},
        {"name": "number", "type": "Identifier"},
        {"name": "legalStatusOfSupply", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ResearchStudy",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
        {"name": "primaryPurposeType", "type": "CodeableConcept"},
        {"name": "phase", "type": "CodeableConcept"},
        {
          "name": "category",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "focus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "condition",
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
          "name": "location",
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
        },
        {
          "name": "objective",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "StructureDefinition.Differential",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "element",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "OccupationalData.CombatZoneHazardousDuty",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {
          "name": "code",
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
        {"name": "value", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RequestGroup.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "prefix", "type": "string"},
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationRequest.Substitution",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "allowed", "type": "boolean"},
        {"name": "reason", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Condition.Evidence",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "TestReport.Teardown",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": {
        "name": "action",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "EpisodeOfCare",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "EpisodeOfCareStatus"},
        {
          "name": "statusHistory",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
      "name": "MedicinalProductIngredient.Strength",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "presentation", "type": "Ratio"},
        {"name": "concentration", "type": "Ratio"},
        {"name": "measurementPoint", "type": "string"},
        {
          "name": "country",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "referenceStrength",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SpecimenDefinition",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "typeCollected", "type": "CodeableConcept"},
        {"name": "patientPreparation", "type": "string"},
        {"name": "timeAspect", "type": "string"},
        {
          "name": "collection",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "specimenToLab",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Diagnosis",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
      "name": "ContactDetail",
      "baseType": "Element",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "SubstancePolymer",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "class", "type": "CodeableConcept"},
        {"name": "geometry", "type": "CodeableConcept"},
        {
          "name": "copolymerConnectivity",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "modification",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "monomerSet",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "repeat",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
      "name": "integer",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Integer"}
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
      "name": "SubstanceSpecification.StructuralRepresentation",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "representation", "type": "string"},
        {"name": "attachment", "type": "Attachment"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Basic",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "code",
      "element": [
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
      "primaryCodePath": "code",
      "element": [
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
      "name": "UserSession",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "identifier", "type": "Identifier"},
        {"name": "user", "type": "Reference"},
        {"name": "status", "type": "UserSession.Status"},
        {"name": "workstation", "type": "Identifier"},
        {
          "name": "focus",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "created", "type": "instant"},
        {"name": "expires", "type": "instant"},
        {
          "name": "context",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OccupationalData.RetirementStatus",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "RetirementStatus"},
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
        {"name": "value", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ChargeItem",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
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
      "name": "HTTPVerb",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "CapabilityStatement.SearchParam",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "name", "type": "string"},
        {"name": "definition", "type": "uri"},
        {"name": "type", "type": "SearchParamType"},
        {"name": "documentation", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceSpecification.Property",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
        {"name": "name", "type": "CodeableConcept"},
        {"name": "parameters", "type": "string"},
        {"name": "substanceId", "type": "Identifier"},
        {"name": "substanceName", "type": "string"},
        {"name": "amount", "type": "string"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "OccupationalData.Industry",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "value", "type": "CodeableConcept"}
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
        {"name": "sequence", "type": "positiveInt"},
        {"name": "provider", "type": "Reference"},
        {"name": "responsible", "type": "boolean"},
        {"name": "role", "type": "CodeableConcept"},
        {"name": "qualification", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ItemInstance",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {"name": "count", "type": "integer"},
        {"name": "location", "type": "Reference"},
        {"name": "subject", "type": "Reference"},
        {"name": "manufactureDate", "type": "dateTime"},
        {"name": "expiryDate", "type": "dateTime"},
        {"name": "currentSWVersion", "type": "string"},
        {"name": "lotNumber", "type": "string"},
        {"name": "serialNumber", "type": "string"},
        {"name": "carrierAIDC", "type": "string"},
        {"name": "carrierHRF", "type": "string"}
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
      "name": "Parameters",
      "baseType": "Resource",
      "retrievable": true,
      "element": {
        "name": "parameter",
        "typeSpecifier": {"type": "ListTypeSpecifier"}
      }
    },
    {
      "type": "ClassInfo",
      "name": "ExplanationOfBenefit.Adjudication",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "category", "type": "CodeableConcept"},
        {"name": "reason", "type": "CodeableConcept"},
        {"name": "amount", "type": "Money"},
        {"name": "value", "type": "decimal"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImplementationGuideOutput.Dependency",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "GuideDependencyType"},
        {"name": "uri", "type": "uri"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ExampleScenario.ContainedInstance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resourceId", "type": "string"},
        {"name": "versionId", "type": "string"}
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
      "name": "ClaimResponse.Error",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "itemSequence", "type": "positiveInt"},
        {"name": "detailSequence", "type": "positiveInt"},
        {"name": "subDetailSequence", "type": "positiveInt"},
        {"name": "code", "type": "CodeableConcept"}
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
      "name": "QuestionnaireResponse.Answer",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
        {"name": "role", "type": "CodeableConcept"},
        {"name": "actor", "type": "Reference"},
        {"name": "onBehalfOf", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Claim.Detail",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
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
        {"name": "quantity", "type": "Quantity"},
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
      "name": "ImplementationGuideInput.Global",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "ResourceType"},
        {"name": "profile", "type": "Reference"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationStatement",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "medicationCodeableConcept",
      "element": [
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
        {"name": "status", "type": "MedicationStatementStatus"},
        {
          "name": "statusReason",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
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
        {
          "name": "derivedFrom",
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
      "name": "ExplanationOfBenefit.Item",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "sequence", "type": "positiveInt"},
        {
          "name": "careTeamSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "diagnosisSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "procedureSequence",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "informationSequence",
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
        {"name": "quantity", "type": "Quantity"},
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
      "name": "ActionPrecheckBehavior",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductDeviceSpec.Material",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "substance", "type": "CodeableConcept"},
        {"name": "alternate", "type": "boolean"},
        {"name": "allergenicIndicator", "type": "boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Specimen",
      "baseType": "DomainResource",
      "retrievable": true,
      "primaryCodePath": "type",
      "element": [
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
        {"name": "collection", "type": "Specimen.Collection"},
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
      "name": "FamilyMemberHistory",
      "baseType": "DomainResource",
      "retrievable": true,
      "element": [
        {
          "name": "identifier",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "instantiates",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "status", "type": "FamilyHistoryStatus"},
        {"name": "dataAbsentReason", "type": "CodeableConcept"},
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
      "name": "SampledDataDataType",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductClinicals.UndesirableEffects",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "symptomConditionEffect", "type": "CodeableConcept"},
        {"name": "classification", "type": "CodeableConcept"},
        {"name": "frequencyOfOccurrence", "type": "CodeableConcept"},
        {
          "name": "population",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PlanDefinition.Action",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "prefix", "type": "string"},
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
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Provenance.Agent",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "type", "type": "CodeableConcept"},
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
          "name": "onBehalfOf",
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
      "name": "BiologicallyDerivedProduct.Processing",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "description", "type": "string"},
        {"name": "procedure", "type": "CodeableConcept"},
        {"name": "additive", "type": "Reference"},
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
      "name": "Consent.Verification",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "verified", "type": "boolean"},
        {"name": "verifiedWith", "type": "Reference"},
        {"name": "verificationDate", "type": "dateTime"}
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
      "name": "ExplanationOfBenefit.ProcessNote",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "number", "type": "positiveInt"},
        {"name": "type", "type": "NoteType"},
        {"name": "text", "type": "string"},
        {"name": "language", "type": "CodeableConcept"}
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
        {"name": "page", "type": "ImplementationGuide.Page"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicinalProductPharmaceutical.Characteristics",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "CodeableConcept"},
        {"name": "status", "type": "CodeableConcept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceReferenceInformation.Target",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "target", "type": "Identifier"},
        {"name": "type", "type": "CodeableConcept"},
        {"name": "interaction", "type": "CodeableConcept"},
        {"name": "organism", "type": "CodeableConcept"},
        {"name": "organismType", "type": "CodeableConcept"},
        {
          "name": "source",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "amount",
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
                "name": "string",
                "type": "NamedTypeSpecifier"
              }
            ]
          }
        },
        {"name": "amountType", "type": "CodeableConcept"}
      ]
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
      "name": "validationStatus",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "ExampleScenario.Instance",
      "baseType": "BackboneElement",
      "retrievable": false,
      "element": [
        {"name": "resourceId", "type": "string"},
        {"name": "resourceType", "type": "ResourceType"},
        {"name": "name", "type": "string"},
        {"name": "description", "type": "markdown"},
        {
          "name": "version",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {
          "name": "containedInstance",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        }
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
        {
          "name": "telecom",
          "typeSpecifier": {"type": "ListTypeSpecifier"}
        },
        {"name": "address", "type": "Address"}
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
      "name": "SystemVersionProcessingMode",
      "baseType": "Element",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
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
      "functionName": "FHIRHelpers.ToDateTime",
      "fromType": "dateTime",
      "toType": "System.DateTime"
    },
    {
      "functionName": "FHIRHelpers.ToDate",
      "fromType": "date",
      "toType": "System.Date"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "uuid",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "TestScriptRequestMethodCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "BiologicallyDerivedProductStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "RetirementStatus",
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
      "fromType": "PublicationStatus",
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
      "fromType": "CarePlanActivityStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "InvoiceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ActionList",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClaimProcessingCodes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ParticipationStatus",
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
      "fromType": "status",
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
      "fromType": "ContractResourceStatusCodes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "validationType",
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
      "fromType": "AssertionDirectionType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "canPushUpdates",
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
      "fromType": "ObservationStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConsentScopeCodes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResourceType",
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
      "fromType": "CarePlanStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionClinicalStatusCodes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProcessOutcomeCodes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConditionalDeleteStatus",
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
      "fromType": "FinancialResourceStatusCodes",
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
      "fromType": "DocumentReferenceStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "repositoryType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "LocationStatus",
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
      "fromType": "oid",
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
      "fromType": "DeviceMetricCalibrationState",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "InvoicePriceComponentType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "GroupType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ImmunizationEvaluationStatusCodes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ExampleScenarioActorType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "HazardousDutyWork",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ProvenanceEntityRole",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ContractDataMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SpecimenStatus",
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
      "fromType": "ConsentDataMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "DocumentRelationshipType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceClinicalStatus",
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
      "functionName": "FHIRHelpers.ToInteger",
      "fromType": "positiveInt",
      "toType": "System.Integer"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ClinicalImpressionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "NarrativeStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MeasmntPrinciple",
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
      "fromType": "BiologicallyDerivedProductCategory",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ResourceVersionPolicy",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationRequestStatus",
      "toType": "System.String"
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
      "fromType": "NamingSystemIdentifierType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ImmunizationStatusCodes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ConfidentialityClassification",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "need",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "HistoryOfEmploymentStatus",
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
      "fromType": "ExtensionContext",
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
      "fromType": "failureAction",
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
      "fromType": "UDIEntryType",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UserSessionStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "UserSessionStatusSource",
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
      "fromType": "CapabilityStatementKind",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AllergyIntoleranceVerificationStatus",
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
      "fromType": "pushTypeAvailable",
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
      "fromType": "ConceptMapEquivalence",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "FHIRAllTypes",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "AuditEventAction",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchModifierCode",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "EventStatus",
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
      "fromType": "qualityType",
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
      "fromType": "code",
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
      "fromType": "UsualOccupation",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "ListStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToBase64Binary",
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
      "fromType": "ExpressionLanguage",
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
      "fromType": "MeasureReportStatus",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "SearchEntryMode",
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
      "fromType": "UnknownContentCode",
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
      "fromType": "markdown",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "MedicationStatementStatus",
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
      "fromType": "SampledDataDataType",
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
      "fromType": "CodeSystemHierarchyMeaning",
      "toType": "System.String"
    },
    {
      "functionName": "FHIRHelpers.ToString",
      "fromType": "validationStatus",
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
      "fromType": "SystemVersionProcessingMode",
      "toType": "System.String"
    }
  ]
});
