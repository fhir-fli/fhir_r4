import '../../../cql.dart';

final qdmmodelinfo501 = ModelInfo.fromJson({
  "name": "QDM",
  "url": "urn:healthit-gov:qdm:v5_0_1_draft",
  "targetQualifier": "qdm",
  "patientClassName": "Patient",
  "patientClassIdentifier": "Patient",
  "patientBirthDatePropertyName": "birthDatetime",
  "version": "5.0.1",
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
      "name": "PhysicalExamOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicSex",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Sex"
    },
    {
      "type": "ClassInfo",
      "name": "EncounterActive",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Encounter, Active",
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "locationPeriod", "type": "interval<System.DateTime>"},
        {"name": "lengthOfStay", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareGoal",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Care Goal",
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "relatedTo", "type": "System.Code"},
        {"name": "targetOutcome", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristic",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic",
      "element": {"name": "authorDatetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicEthnicity",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Ethnicity"
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicRace",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Race"
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "status", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "result", "type": "System.Any"},
        {"name": "resultDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "referenceRange", "type": "interval<System.Quantity>"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "component", "type": "list<QDM.Component>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Symptom",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Symptom",
      "element": [
        {"name": "prevalencePeriod", "type": "interval<System.DateTime>"},
        {"name": "severity", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministered",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "anatomicalApproachSite", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "ordinality", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "admissionSource", "type": "System.Code"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dischargeDisposition", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "locationPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "diagnosis", "type": "System.Code"},
        {"name": "principalDiagnosis", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "lengthOfStay", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Diagnosis",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Diagnosis",
      "element": [
        {"name": "prevalencePeriod", "type": "interval<System.DateTime>"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "severity", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToPatient",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "result", "type": "System.Any"},
        {"name": "component", "type": "list<QDM.Component>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicClinicalTrialParticipant",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Clinical Trial Participant",
      "element": [
        {"name": "reason", "type": "System.Code"},
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "result", "type": "System.Any"},
        {"name": "resultDatetime", "type": "System.DateTime"},
        {"name": "status", "type": "System.Code"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "method", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "component", "type": "list<QDM.Component>"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistory",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Family History",
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "relationship", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Component",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "code", "type": "System.Code"},
        {"name": "result", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToProvider",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationActive",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Medication, Active",
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "method", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicPayer",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Payer",
      "element": {"name": "relevantPeriod", "type": "interval<System.DateTime>"}
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicExpired",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Expired",
      "element": [
        {"name": "expiredDatetime", "type": "System.DateTime"},
        {"name": "cause", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AssessmentRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationAdministered",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceAdministered",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedurePerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "System.Code"},
        {"name": "anatomicalApproachSite", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "ordinality", "type": "System.Code"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "incisionDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "AllergyIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Allergy/Intolerance",
      "element": [
        {"name": "prevalencePeriod", "type": "interval<System.DateTime>"},
        {"name": "type", "type": "System.Code"},
        {"name": "severity", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProviderCharacteristic",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Provider Characteristic",
      "element": {"name": "authorDatetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicBirthdate",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Characteristic Birthdate",
      "element": {"name": "birthDatetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "AdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Adverse Event",
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "severity", "type": "System.Code"},
        {"name": "facilityLocation", "type": "System.Code"},
        {"name": "type", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QDMBaseType",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "id", "type": "System.Code"},
        {"name": "code", "type": "System.Code"},
        {"name": "patientId", "type": "System.Code"},
        {"name": "reporter", "type": "System.Code"},
        {"name": "recorder", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromPatientToProvider",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceApplied",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "negationRationale", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "anatomicalApproachSite", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDischarge",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "method", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispensed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "method", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "activeDatetime", "type": "System.DateTime"},
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "reason", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Patient Care Experience",
      "element": {"name": "authorDatetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "ProviderCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "label": "Provider Care Experience",
      "element": {"name": "authorDatetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "anatomicalApproachSite", "type": "System.Code"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "ordinality", "type": "System.Code"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "activeDatetime", "type": "System.DateTime"},
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "route", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "dosage", "type": "System.Quantity"},
        {"name": "supply", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "route", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionRecommended",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "authorDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamPerformed",
      "baseType": "QDMBaseType",
      "retrievable": false,
      "element": [
        {"name": "relevantPeriod", "type": "interval<System.DateTime>"},
        {"name": "reason", "type": "System.Code"},
        {"name": "method", "type": "System.Code"},
        {"name": "result", "type": "System.Any"},
        {"name": "anatomicalLocationSite", "type": "System.Code"},
        {"name": "negationRationale", "type": "System.Code"}
      ]
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveAssessmentRecommended",
      "baseType": "AssessmentRecommended",
      "identifier": "PositiveAssessmentRecommended",
      "label": "Assessment, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeAssessmentRecommended",
      "baseType": "AssessmentRecommended",
      "identifier": "NegativeAssessmentRecommended",
      "label": "Assessment, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveAssessmentPerformed",
      "baseType": "AssessmentPerformed",
      "identifier": "PositiveAssessmentPerformed",
      "label": "Assessment, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeAssessmentPerformed",
      "baseType": "AssessmentPerformed",
      "identifier": "NegativeAssessmentPerformed",
      "label": "Assessment, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveCommunicationFromPatientToProvider",
      "baseType": "CommunicationFromPatientToProvider",
      "identifier": "PositiveCommunicationFromPatientToProvider",
      "label": "Communication: From Patient To Provider",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeCommunicationFromPatientToProvider",
      "baseType": "CommunicationFromPatientToProvider",
      "identifier": "NegativeCommunicationFromPatientToProvider",
      "label": "Communication: From Patient To Provider, Not Done",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveCommunicationFromProviderToPatient",
      "baseType": "CommunicationFromProviderToPatient",
      "identifier": "PositiveCommunicationFromProviderToPatient",
      "label": "Communication: From Provider To Patient",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeCommunicationFromProviderToPatient",
      "baseType": "CommunicationFromProviderToPatient",
      "identifier": "NegativeCommunicationFromProviderToPatient",
      "label": "Communication: From Provider To Patient, Not Done",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveCommunicationFromProviderToProvider",
      "baseType": "CommunicationFromProviderToProvider",
      "identifier": "PositiveCommunicationFromProviderToProvider",
      "label": "Communication: From Provider To Provider",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeCommunicationFromProviderToProvider",
      "baseType": "CommunicationFromProviderToProvider",
      "identifier": "NegativeCommunicationFromProviderToProvider",
      "label": "Communication: From Provider To Provider, Not Done",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDeviceOrder",
      "baseType": "DeviceOrder",
      "identifier": "PositiveDeviceOrder",
      "label": "Device, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDeviceOrder",
      "baseType": "DeviceOrder",
      "identifier": "NegativeDeviceOrder",
      "label": "Device, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDeviceRecommended",
      "baseType": "DeviceRecommended",
      "identifier": "PositiveDeviceRecommended",
      "label": "Device, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDeviceRecommended",
      "baseType": "DeviceRecommended",
      "identifier": "NegativeDeviceRecommended",
      "label": "Device, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDeviceApplied",
      "baseType": "DeviceApplied",
      "identifier": "PositiveDeviceApplied",
      "label": "Device, Applied",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDeviceApplied",
      "baseType": "DeviceApplied",
      "identifier": "NegativeDeviceApplied",
      "label": "Device, Not Applied",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDiagnosticStudyOrder",
      "baseType": "DiagnosticStudyOrder",
      "identifier": "PositiveDiagnosticStudyOrder",
      "label": "Diagnostic Study, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDiagnosticStudyOrder",
      "baseType": "DiagnosticStudyOrder",
      "identifier": "NegativeDiagnosticStudyOrder",
      "label": "Diagnostic Study, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDiagnosticStudyRecommended",
      "baseType": "DiagnosticStudyRecommended",
      "identifier": "PositiveDiagnosticStudyRecommended",
      "label": "Diagnostic Study, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDiagnosticStudyRecommended",
      "baseType": "DiagnosticStudyRecommended",
      "identifier": "NegativeDiagnosticStudyRecommended",
      "label": "Diagnostic Study, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveDiagnosticStudyPerformed",
      "baseType": "DiagnosticStudyPerformed",
      "identifier": "PositiveDiagnosticStudyPerformed",
      "label": "Diagnostic Study, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeDiagnosticStudyPerformed",
      "baseType": "DiagnosticStudyPerformed",
      "identifier": "NegativeDiagnosticStudyPerformed",
      "label": "Diagnostic Study, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveEncounterOrder",
      "baseType": "EncounterOrder",
      "identifier": "PositiveEncounterOrder",
      "label": "Encounter, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeEncounterOrder",
      "baseType": "EncounterOrder",
      "identifier": "NegativeEncounterOrder",
      "label": "Encounter, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveEncounterRecommended",
      "baseType": "EncounterRecommended",
      "identifier": "PositiveEncounterRecommended",
      "label": "Encounter, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeEncounterRecommended",
      "baseType": "EncounterRecommended",
      "identifier": "NegativeEncounterRecommended",
      "label": "Encounter, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveEncounterPerformed",
      "baseType": "EncounterPerformed",
      "identifier": "PositiveEncounterPerformed",
      "label": "Encounter, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeEncounterPerformed",
      "baseType": "EncounterPerformed",
      "identifier": "NegativeEncounterPerformed",
      "label": "Encounter, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveInterventionOrder",
      "baseType": "InterventionOrder",
      "identifier": "PositiveInterventionOrder",
      "label": "Intervention, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeInterventionOrder",
      "baseType": "InterventionOrder",
      "identifier": "NegativeInterventionOrder",
      "label": "Intervention, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveInterventionRecommended",
      "baseType": "InterventionRecommended",
      "identifier": "PositiveInterventionRecommended",
      "label": "Intervention, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeInterventionRecommended",
      "baseType": "InterventionRecommended",
      "identifier": "NegativeInterventionRecommended",
      "label": "Intervention, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveInterventionPerformed",
      "baseType": "InterventionPerformed",
      "identifier": "PositiveInterventionPerformed",
      "label": "Intervention, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeInterventionPerformed",
      "baseType": "InterventionPerformed",
      "identifier": "NegativeInterventionPerformed",
      "label": "Intervention, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveImmunizationOrder",
      "baseType": "ImmunizationOrder",
      "identifier": "PositiveImmunizationOrder",
      "label": "Immunization, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeImmunizationOrder",
      "baseType": "ImmunizationOrder",
      "identifier": "NegativeImmunizationOrder",
      "label": "Immunization, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveImmunizationAdministered",
      "baseType": "ImmunizationAdministered",
      "identifier": "PositiveImmunizationAdministered",
      "label": "Immunization, Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeImmunizationAdministered",
      "baseType": "ImmunizationAdministered",
      "identifier": "NegativeImmunizationAdministered",
      "label": "Immunization, Not Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationAdministered",
      "baseType": "MedicationAdministered",
      "identifier": "PositiveMedicationAdministered",
      "label": "Medication, Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationAdministered",
      "baseType": "MedicationAdministered",
      "identifier": "NegativeMedicationAdministered",
      "label": "Medication, Not Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationDispensed",
      "baseType": "MedicationDispensed",
      "identifier": "PositiveMedicationDispensed",
      "label": "Medication, Dispensed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationDispensed",
      "baseType": "MedicationDispensed",
      "identifier": "NegativeMedicationDispensed",
      "label": "Medication, Not Dispensed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationDischarge",
      "baseType": "MedicationDischarge",
      "identifier": "PositiveMedicationDischarge",
      "label": "Medication, Discharge",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationDischarge",
      "baseType": "MedicationDischarge",
      "identifier": "NegativeMedicationDischarge",
      "label": "Medication, Not Discharged",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveMedicationOrder",
      "baseType": "MedicationOrder",
      "identifier": "PositiveMedicationOrder",
      "label": "Medication, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeMedicationOrder",
      "baseType": "MedicationOrder",
      "identifier": "NegativeMedicationOrder",
      "label": "Medication, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositivePhysicalExamOrder",
      "baseType": "PhysicalExamOrder",
      "identifier": "PositivePhysicalExamOrder",
      "label": "Physical Exam, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativePhysicalExamOrder",
      "baseType": "PhysicalExamOrder",
      "identifier": "NegativePhysicalExamOrder",
      "label": "Physical Exam, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositivePhysicalExamRecommended",
      "baseType": "PhysicalExamRecommended",
      "identifier": "PositivePhysicalExamRecommended",
      "label": "Physical Exam, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativePhysicalExamRecommended",
      "baseType": "PhysicalExamRecommended",
      "identifier": "NegativePhysicalExamRecommended",
      "label": "Physical Exam, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositivePhysicalExamPerformed",
      "baseType": "PhysicalExamPerformed",
      "identifier": "PositivePhysicalExamPerformed",
      "label": "Physical Exam, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativePhysicalExamPerformed",
      "baseType": "PhysicalExamPerformed",
      "identifier": "NegativePhysicalExamPerformed",
      "label": "Physical Exam, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveProcedureOrder",
      "baseType": "ProcedureOrder",
      "identifier": "PositiveProcedureOrder",
      "label": "Procedure, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeProcedureOrder",
      "baseType": "ProcedureOrder",
      "identifier": "NegativeProcedureOrder",
      "label": "Procedure, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveProcedureRecommended",
      "baseType": "ProcedureRecommended",
      "identifier": "PositiveProcedureRecommended",
      "label": "Procedure, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeProcedureRecommended",
      "baseType": "ProcedureRecommended",
      "identifier": "NegativeProcedureRecommended",
      "label": "Procedure, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveProcedurePerformed",
      "baseType": "ProcedurePerformed",
      "identifier": "PositiveProcedurePerformed",
      "label": "Procedure, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeProcedurePerformed",
      "baseType": "ProcedurePerformed",
      "identifier": "NegativeProcedurePerformed",
      "label": "Procedure, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveSubstanceOrder",
      "baseType": "SubstanceOrder",
      "identifier": "PositiveSubstanceOrder",
      "label": "Substance, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeSubstanceOrder",
      "baseType": "SubstanceOrder",
      "identifier": "NegativeSubstanceOrder",
      "label": "Substance, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveSubstanceRecommended",
      "baseType": "SubstanceRecommended",
      "identifier": "PositiveSubstanceRecommended",
      "label": "Substance, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeSubstanceRecommended",
      "baseType": "SubstanceRecommended",
      "identifier": "NegativeSubstanceRecommended",
      "label": "Substance, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveSubstanceAdministered",
      "baseType": "SubstanceAdministered",
      "identifier": "PositiveSubstanceAdministered",
      "label": "Substance, Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeSubstanceAdministered",
      "baseType": "SubstanceAdministered",
      "identifier": "NegativeSubstanceAdministered",
      "label": "Substance, Not Administered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveLaboratoryTestOrder",
      "baseType": "LaboratoryTestOrder",
      "identifier": "PositiveLaboratoryTestOrder",
      "label": "Laboratory Test, Order",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeLaboratoryTestOrder",
      "baseType": "LaboratoryTestOrder",
      "identifier": "NegativeLaboratoryTestOrder",
      "label": "Laboratory Test, Not Ordered",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveLaboratoryTestRecommended",
      "baseType": "LaboratoryTestRecommended",
      "identifier": "PositiveLaboratoryTestRecommended",
      "label": "Laboratory Test, Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeLaboratoryTestRecommended",
      "baseType": "LaboratoryTestRecommended",
      "identifier": "NegativeLaboratoryTestRecommended",
      "label": "Laboratory Test, Not Recommended",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "PositiveLaboratoryTestPerformed",
      "baseType": "LaboratoryTestPerformed",
      "identifier": "PositiveLaboratoryTestPerformed",
      "label": "Laboratory Test, Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    },
    {
      "type": "ProfileInfo",
      "name": "NegativeLaboratoryTestPerformed",
      "baseType": "LaboratoryTestPerformed",
      "identifier": "NegativeLaboratoryTestPerformed",
      "label": "Laboratory Test, Not Performed",
      "retrievable": true,
      "primaryCodePath": "code"
    }
  ]
});
