import 'package:fhir_r4_cql/fhir_r4_cql.dart';


final qdmmodelinfo50_withNegationTypes = ModelInfo.fromJson({
  "name": "QDM",
  "url": "urn:healthit-gov:qdm:v5_0_draft",
  "targetQualifier": "qdm",
  "patientClassName": "Patient",
  "patientClassIdentifier": "Patient",
  "patientBirthDatePropertyName": "birthDateTime",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "System.Any",
      "retrievable": false,
      "identifier": "Patient",
      "element": {"name": "birthDatetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamNotRecommended",
      "baseType": "PhysicalExamBase",
      "retrievable": true,
      "identifier": "Physical Exam, Not Recommended",
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicSex",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Patient Characteristic: Sex"
    },
    {
      "type": "ClassInfo",
      "name": "CareGoal",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Care Goal",
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "relatedTo", "type": "Code"},
        {"name": "targetOutcome", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceNotRecommended",
      "baseType": "DeviceBase",
      "retrievable": true,
      "identifier": "Device, Not Recommended",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "String",
      "baseType": "Any",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministered",
      "baseType": "MedicationBase",
      "retrievable": true,
      "identifier": "Medication, Administered",
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationNotAdministered",
      "baseType": "MedicationBase",
      "retrievable": true,
      "identifier": "Medication, Not Administered",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceNotApplied",
      "baseType": "DeviceBase",
      "retrievable": true,
      "identifier": "Device, Not Applied",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "DateTime",
      "baseType": "Any",
      "retrievable": false,
      "element": {"name": "value", "type": "System.String"}
    },
    {
      "type": "ClassInfo",
      "name": "Decimal",
      "baseType": "Any",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Decimal"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationNotDispensed",
      "baseType": "MedicationBase",
      "retrievable": true,
      "identifier": "Medication, Not Dispensed",
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Diagnosis",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Diagnosis",
      "element": [
        {"name": "prevalencePeriod", "type": "DateTimeInterval"},
        {"name": "anatomicalLocationSite", "type": "Code"},
        {"name": "severity", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureNotPerformed",
      "baseType": "ProcedureBase",
      "retrievable": true,
      "identifier": "Procedure, Not Performed",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentPerformed",
      "baseType": "AssessmentBase",
      "retrievable": true,
      "identifier": "Assessment, Performed",
      "element": [
        {"name": "result", "type": "System.Any"},
        {"name": "component", "type": "Component"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionNotOrdered",
      "baseType": "InterventionBase",
      "retrievable": true,
      "identifier": "Intervention, Not Ordered",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "Boolean",
      "baseType": "Any",
      "retrievable": false,
      "element": {"name": "value", "type": "System.Boolean"}
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicClinicalTrialParticipant",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Patient Characteristic: Clinical Trial Participant",
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionOrder",
      "baseType": "InterventionBase",
      "retrievable": true,
      "identifier": "Intervention, Order"
    },
    {
      "type": "ClassInfo",
      "name": "DeviceOrder",
      "baseType": "DeviceBase",
      "retrievable": true,
      "identifier": "Device, Order"
    },
    {
      "type": "ClassInfo",
      "name": "Component",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "Code"},
        {"name": "result", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Code",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "String"},
        {"name": "display", "type": "String"},
        {"name": "system", "type": "String"},
        {"name": "version", "type": "String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterNotOrdered",
      "baseType": "EncounterBase",
      "retrievable": true,
      "identifier": "Encounter, Not Ordered",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationActive",
      "baseType": "MedicationBase",
      "retrievable": true,
      "identifier": "Medication, Active",
      "element": {"name": "relevantPeriod", "type": "DateTimeInterval"}
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "reason", "type": "Code"},
        {"name": "method", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicExpired",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Patient Characteristic, Expired",
      "element": [
        {"name": "expiredDatetime", "type": "DateTime"},
        {"name": "cause", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyNotPerformed",
      "baseType": "DiagnosticStudyBase",
      "retrievable": true,
      "identifier": "Diagnostic Study, Not Performed",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentRecommended",
      "baseType": "AssessmentBase",
      "retrievable": true,
      "identifier": "Assessment, Recommended"
    },
    {
      "type": "ClassInfo",
      "name": "EncounterNotRecommended",
      "baseType": "EncounterBase",
      "retrievable": true,
      "identifier": "Encounter, Not Recommended",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceAdministered",
      "baseType": "SubstanceBase",
      "retrievable": true,
      "identifier": "Substance, Administered",
      "element": {"name": "relevantPeriod", "type": "DateTimeInterval"}
    },
    {
      "type": "ClassInfo",
      "name": "Interval",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {"name": "lowClosed", "type": "Boolean"},
        {"name": "highClosed", "type": "Boolean"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedurePerformed",
      "baseType": "ProcedureBase",
      "retrievable": true,
      "identifier": "Procedure, Performed",
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "Code"},
        {"name": "radiationDuration", "type": "Code"},
        {"name": "radiationDosage", "type": "Code"},
        {"name": "incisionDatetime", "type": "DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureNotRecommended",
      "baseType": "ProcedureBase",
      "retrievable": true,
      "identifier": "Procedure, Not Recommended",
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicBirthdate",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Patient Characteristic: Birthdate",
      "element": {"name": "birthDatetime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "QDMBaseType",
      "baseType": "System.Any",
      "retrievable": false,
      "element": {"name": "code", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "EncounterBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "reason", "type": "Code"},
        {"name": "facilityLocation", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionPerformed",
      "baseType": "InterventionBase",
      "retrievable": true,
      "identifier": "Intervention, Performed",
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestRecommended",
      "baseType": "LaboratoryTestBase",
      "retrievable": true,
      "identifier": "Laboratory Test, Recommended"
    },
    {
      "type": "ClassInfo",
      "name": "InterventionNotPerformed",
      "baseType": "InterventionBase",
      "retrievable": true,
      "identifier": "Intervention, Not Performed",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationNotOrdered",
      "baseType": "ImmunizationBase",
      "retrievable": true,
      "identifier": "Immunization, Not Ordered",
      "element": [
        {"name": "activeDatetime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterNotPerformed",
      "baseType": "EncounterBase",
      "retrievable": true,
      "identifier": "Encounter, Not Performed",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationNotOrdered",
      "baseType": "MedicationBase",
      "retrievable": true,
      "identifier": "Medication, Not Ordered",
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyRecommended",
      "baseType": "DiagnosticStudyBase",
      "retrievable": true,
      "identifier": "Diagnostic Study, Recommended",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationOrder",
      "baseType": "ImmunizationBase",
      "retrievable": true,
      "identifier": "Immunization, Order",
      "element": [
        {"name": "activeDatetime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProviderCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Provider Care Experience",
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceNotOrdered",
      "baseType": "DeviceBase",
      "retrievable": true,
      "identifier": "Device, Not Ordered",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentNotPerformed",
      "baseType": "AssessmentBase",
      "retrievable": true,
      "identifier": "Assessment, Not Performed",
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder",
      "baseType": "MedicationBase",
      "retrievable": true,
      "identifier": "Medication, Order",
      "element": [
        {"name": "activeDatetime", "type": "DateTime"},
        {"name": "authorTime", "type": "DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "method", "type": "Code"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "dose", "type": "Quantity"},
        {"name": "frequency", "type": "Code"},
        {"name": "route", "type": "Code"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureNotOrdered",
      "baseType": "ProcedureBase",
      "retrievable": true,
      "identifier": "Procedure, Not Ordered",
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamOrder",
      "baseType": "PhysicalExamBase",
      "retrievable": false,
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "InterventionNotRecommended",
      "baseType": "InterventionBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "EncounterActive",
      "baseType": "EncounterBase",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "locationPeriod", "type": "DateTimeInterval"},
        {"name": "lengthOfStay", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristic",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToProviderNotPerformed",
      "baseType": "CommunicationBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicEthnicity",
      "baseType": "QDMBaseType",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicRace",
      "baseType": "QDMBaseType",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "anatomicalApproachSite", "type": "Code"},
        {"name": "anatomicalLocationSite", "type": "Code"},
        {"name": "method", "type": "Code"},
        {"name": "ordinality", "type": "Code"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestPerformed",
      "baseType": "LaboratoryTestBase",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "status", "type": "Code"},
        {"name": "result", "type": "System.Any"},
        {"name": "referenceRangeHigh", "type": "Code"},
        {"name": "referenceRangeLow", "type": "Code"},
        {"name": "component", "type": "Component"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Symptom",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "prevalencePeriod", "type": "DateTimeInterval"},
        {"name": "severity", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "method", "type": "Code"},
        {"name": "reason", "type": "Code"},
        {"name": "radiationDosage", "type": "Code"},
        {"name": "radiationDuration", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRecommended",
      "baseType": "ProcedureBase",
      "retrievable": false,
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "EncounterPerformed",
      "baseType": "EncounterBase",
      "retrievable": false,
      "element": [
        {"name": "admissionSource", "type": "Code"},
        {"name": "admissionDatetime", "type": "DateTime"},
        {"name": "dischargeDatetime", "type": "DateTime"},
        {"name": "dischargeStatus", "type": "Code"},
        {"name": "locationPeriod", "type": "DateTimeInterval"},
        {"name": "diagnosis", "type": "Diagnosis"},
        {"name": "principalDiagnosis", "type": "Diagnosis"},
        {"name": "lengthOfStay", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyNotRecommended",
      "baseType": "DiagnosticStudyBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToPatient",
      "baseType": "CommunicationBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentNotRecommended",
      "baseType": "AssessmentBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyPerformed",
      "baseType": "DiagnosticStudyBase",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "Code"},
        {"name": "facilityLocation", "type": "Code"},
        {"name": "component", "type": "Component"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToPatientNotPerformed",
      "baseType": "CommunicationBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistory",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "recordedDatetime", "type": "DateTime"},
        {"name": "relationship", "type": "System.String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "dosage", "type": "Quantity"},
        {"name": "supply", "type": "Quantity"},
        {"name": "frequency", "type": "Code"},
        {"name": "route", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToProvider",
      "baseType": "CommunicationBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestOrder",
      "baseType": "LaboratoryTestBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyOrder",
      "baseType": "DiagnosticStudyBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceOrder",
      "baseType": "SubstanceBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "method", "type": "Code"},
        {"name": "refills", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicPayer",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "cause", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceNotRecommended",
      "baseType": "SubstanceBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "reason", "type": "Code"},
        {"name": "route", "type": "Code"},
        {"name": "dose", "type": "Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationAdministered",
      "baseType": "ImmunizationBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "EncounterOrder",
      "baseType": "EncounterBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "EncounterRecommended",
      "baseType": "EncounterBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "Allergy",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "prevalencePeriod", "type": "DateTimeInterval"},
        {"name": "substance", "type": "Code"},
        {"name": "reaction", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProviderCharacteristic",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamRecommended",
      "baseType": "PhysicalExamBase",
      "retrievable": false,
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEventIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "prevalencePeriod", "type": "DateTimeInterval"},
        {"name": "substance", "type": "Code"},
        {"name": "reaction", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromPatientToProviderNotPerformed",
      "baseType": "CommunicationBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamNotOrdered",
      "baseType": "PhysicalExamBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Any",
      "baseType": "System.Any",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromPatientToProvider",
      "baseType": "CommunicationBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRecommended",
      "baseType": "DeviceBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "DeviceApplied",
      "baseType": "DeviceBase",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "anatomialLocationSite", "type": "Code"},
        {"name": "anatomicalApproachSite", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDischarge",
      "baseType": "MedicationBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationNotDischarged",
      "baseType": "MedicationBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "reason", "type": "Code"},
        {"name": "method", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispensed",
      "baseType": "MedicationBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyNotOrdered",
      "baseType": "DiagnosticStudyBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "DeviceBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestNotRecommended",
      "baseType": "LaboratoryTestBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "PatientCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": {"name": "authorTime", "type": "DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestNotPerformed",
      "baseType": "LaboratoryTestBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "DateTimeInterval",
      "baseType": "Interval",
      "retrievable": false,
      "element": [
        {"name": "low", "type": "DateTime"},
        {"name": "high", "type": "DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Quantity",
      "baseType": "Any",
      "retrievable": false,
      "element": [
        {"name": "value", "type": "Decimal"},
        {"name": "unit", "type": "String"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureOrder",
      "baseType": "ProcedureBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "radiationDuration", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamBase",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "anatomicalLocationSite", "type": "Code"},
        {"name": "method", "type": "Code"},
        {"name": "reason", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationNotAdministered",
      "baseType": "ImmunizationBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceNotAdministered",
      "baseType": "SubstanceBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceRecommended",
      "baseType": "SubstanceBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "method", "type": "Code"},
        {"name": "refills", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceNotOrdered",
      "baseType": "SubstanceBase",
      "retrievable": false,
      "element": [
        {"name": "authorTime", "type": "DateTime"},
        {"name": "negationRationale", "type": "Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionRecommended",
      "baseType": "InterventionBase",
      "retrievable": false
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamPerformed",
      "baseType": "PhysicalExamBase",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "DateTimeInterval"},
        {"name": "result", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamNotPerformed",
      "baseType": "PhysicalExamBase",
      "retrievable": false,
      "element": {"name": "negationRationale", "type": "Code"}
    }
  ]
});
