import 'package:fhir_r4_cql/fhir_r4_cql.dart';

final qdmmodelinfo42 = ModelInfo.fromJson({
  "name": "QDM",
  "url": "urn:healthit-gov:qdm:v4_2",
  "targetQualifier": "qdm",
  "patientClassName": "Patient",
  "patientClassIdentifier": "Patient",
  "patientBirthDatePropertyName": "birth datetime",
  "version": "4.2",
  "typeInfo": [
    {
      "type": "ClassInfo",
      "name": "Patient",
      "baseType": "System.Any",
      "retrievable": false,
      "identifier": "Patient",
      "element": {"name": "birth datetime", "type": "System.DateTime"}
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "PhysicalExamOrder",
      "label": "Physical Exam, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "anatomicalLocationSite", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ProcedureIntolerance",
      "label": "Procedure, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"},
        {"name": "ordinality", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicSex",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristicSex",
      "label": "Patient Characteristic Sex",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterActive",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "EncounterActive",
      "label": "Encounter, Active",
      "primaryCodePath": "code",
      "element": [
        {"name": "admissionDatetime", "type": "System.DateTime"},
        {"name": "dischargeDatetime", "type": "System.DateTime"},
        {"name": "lengthOfStay", "type": "System.Quantity"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "facilityLocation", "type": "System.Concept"},
        {"name": "facilityLocationArrivalDatetime", "type": "System.DateTime"},
        {"name": "facilityLocationDepartureDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CareGoal",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "CareGoal",
      "label": "Care Goal",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "relatedTo", "type": "System.Concept"},
        {"name": "targetOutcome", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristic",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristic",
      "label": "Patient Characteristic",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicEthnicity",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristicEthnicity",
      "label": "Patient Characteristic Ethnicity"
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicRace",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristicRace",
      "label": "Patient Characteristic Race"
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAllergy",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationAllergy",
      "label": "Medication Allergy",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FunctionalStatusRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "FunctionalStatusRecommended",
      "label": "Functional Status, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "LaboratoryTestPerformed",
      "label": "Laboratory Test, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "status", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "referenceRangeHigh", "type": "System.Quantity"},
        {"name": "referenceRangeLow", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Symptom",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Symptom",
      "label": "Symptom",
      "primaryCodePath": "code",
      "element": [
        {"name": "onsetDatetime", "type": "System.DateTime"},
        {"name": "abatementDatetime", "type": "System.DateTime"},
        {"name": "severity", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdministered",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationAdministered",
      "label": "Medication, Administered",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "cumulativeMedicationDuration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "RiskCategoryAssessment",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "RiskCategoryAssessment",
      "label": "Risk Category Assessment",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ProcedureRecommended",
      "label": "Procedure, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "anatomicalApproachSite", "type": "System.Concept"},
        {"name": "anatomicalLocationSite", "type": "System.Concept"},
        {"name": "ordinality", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "EncounterPerformed",
      "label": "Encounter, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "admissionDatetime", "type": "System.DateTime"},
        {"name": "dischargeDatetime", "type": "System.DateTime"},
        {"name": "lengthOfStay", "type": "System.Quantity"},
        {"name": "dischargeStatus", "type": "System.Concept"},
        {"name": "facilityLocation", "type": "System.Concept"},
        {"name": "facilityLocationArrivalDatetime", "type": "System.DateTime"},
        {
          "name": "facilityLocationDepartureDatetime",
          "type": "System.DateTime"
        },
        {"name": "reason", "type": "System.Concept"},
        {"name": "diagnosis", "type": "System.Concept"},
        {"name": "principalDiagnosis", "type": "System.Concept"},
        {"name": "negationRationale", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DiagnosticStudyIntolerance",
      "label": "Diagnostic Study, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToPatient",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "CommunicationFromProviderToPatient",
      "label": "Communication: From Provider to Patient",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "Diagnosis",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Diagnosis",
      "label": "Diagnosis",
      "primaryCodePath": "code",
      "element": [
        {"name": "onsetDatetime", "type": "System.DateTime"},
        {"name": "abatementDatetime", "type": "System.DateTime"},
        {"name": "anatomicalLocationSite", "type": "System.Concept"},
        {"name": "severity", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TransferFrom",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "TransferFrom",
      "label": "Transfer From",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "InterventionIntolerance",
      "label": "Intervention, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicClinicalTrialParticipant",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristicClinicalTrialParticipant",
      "label": "Patient Characteristic Clinical Trial Participant",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DeviceOrder",
      "label": "Device, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DiagnosticStudyPerformed",
      "label": "Diagnostic Study, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "System.Concept"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "method", "type": "System.Concept"},
        {"name": "facilityLocation", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "InterventionOrder",
      "label": "Intervention, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceAllergy",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DeviceAllergy",
      "label": "Device, Allergy",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureAdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ProcedureAdverseEvent",
      "label": "Procedure, Adverse Event",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FamilyHistory",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "FamilyHistory",
      "label": "Family History",
      "primaryCodePath": "code",
      "element": [
        {"name": "onsetAge", "type": "System.Quantity"},
        {"name": "recordedDatetime", "type": "System.DateTime"},
        {"name": "relationship", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationAllergy",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ImmunizationAllergy",
      "label": "Immunization, Allergy",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationAdverseEffects",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationAdverseEffects",
      "label": "Medication, Adverse Effects",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromProviderToProvider",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "CommunicationFromProviderToProvider",
      "label": "Communication: From Provider to Provider",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationActive",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationActive",
      "label": "Medication, Active",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "cumulativeMedicationDuration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "LaboratoryTestOrder",
      "label": "Laboratory Test, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceAdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "SubstanceAdverseEvent",
      "label": "Substance, Adverse Event",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DiagnosticStudyOrder",
      "label": "Diagnostic Study, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "method", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ImmunizationIntolerance",
      "label": "Immunization, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "SubstanceOrder",
      "label": "Substance, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "reaction", "type": "System.Concept"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "route", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicPayer",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristicPayer",
      "label": "Patient Characteristic Payer",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicExpired",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristicExpired",
      "label": "Patient Characteristic Expired",
      "element": [
        {"name": "date", "type": "System.DateTime"},
        {"name": "time", "type": "System.Time"},
        {"name": "cause", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestAdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "LaboratoryTestAdverseEvent",
      "label": "Laboratory Test, Adverse Event",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationAdministered",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ImmunizationAdministered",
      "label": "Immunization, Administered",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "dose", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceAdministered",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "SubstanceAdministered",
      "label": "Substance, Administered",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "EncounterOrder",
      "label": "Encounter, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "facilityLocation", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "LaboratoryTestIntolerance",
      "label": "Laboratory Test, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceAdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DeviceAdverseEvent",
      "label": "Device, Adverse Event",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "EncounterRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "EncounterRecommended",
      "label": "Encounter, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "facilityLocation", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedurePerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ProcedurePerformed",
      "label": "Procedure, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "System.Concept"},
        {"name": "anatomicalApproachSite", "type": "System.Concept"},
        {"name": "anatomicalLocationSite", "type": "System.Concept"},
        {"name": "ordinality", "type": "System.Concept"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "incisionDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProviderCharacteristic",
      "baseType": "System.Any",
      "retrievable": false,
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "PhysicalExamRecommended",
      "label": "Physical Exam, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "anatomicalLocationSite", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FunctionalStatusPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "FunctionalStatusPerformed",
      "label": "Functional Status, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCharacteristicBirthdate",
      "baseType": "System.Any",
      "retrievable": true,
      "identifier": "PatientCharacteristicBirthdate",
      "label": "Patient Characteristic Birthdate",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionAdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "InterventionAdverseEvent",
      "label": "Intervention, Adverse Event",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "QDMBaseType",
      "baseType": "System.Any",
      "retrievable": false,
      "element": {"name": "code", "type": "System.Concept"}
    },
    {
      "type": "ClassInfo",
      "name": "CommunicationFromPatientToProvider",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "CommunicationFromPatientToProvider",
      "label": "Communication: From Patient to Provider",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "FunctionalStatusOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "FunctionalStatusOrder",
      "label": "Functional Status, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DeviceRecommended",
      "label": "Device, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceApplied",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DeviceApplied",
      "label": "Device, Applied",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "removalDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "anatomialLocationSite", "type": "System.Concept"},
        {"name": "anatomicalApproachSite", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDischarge",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationDischarge",
      "label": "Medication, Discharge",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "InterventionPerformed",
      "label": "Intervention, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"},
        {"name": "status", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "LaboratoryTestRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "LaboratoryTestRecommended",
      "label": "Laboratory Test, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationDispensed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationDispensed",
      "label": "Medication, Dispensed",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "cumulativeMedicationDuration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyAdverseEvent",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DiagnosticStudyAdverseEvent",
      "label": "Diagnostic Study, Adverse Event",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DiagnosticStudyRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DiagnosticStudyRecommended",
      "label": "Diagnostic Study, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "radiationDosage", "type": "System.Quantity"},
        {"name": "radiationDuration", "type": "System.Quantity"},
        {"name": "method", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ImmunizationOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ImmunizationOrder",
      "label": "Immunization, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "activeDatetime", "type": "System.DateTime"},
        {"name": "signedDatetime", "type": "System.DateTime"},
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "dose", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "DeviceIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "DeviceIntolerance",
      "label": "Device, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PatientCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "PatientCareExperience",
      "label": "Patient Care Experience",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "TransferTo",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "Transfer To",
      "label": "Transfer To",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProviderCareExperience",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ProviderCareExperience",
      "label": "Provider Care Experience",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "SubstanceIntolerance",
      "label": "Substance, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "ProcedureOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "ProcedureOrder",
      "label": "Procedure, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "anatomicalApproachSite", "type": "System.Concept"},
        {"name": "anatomicalLocationSite", "type": "System.Concept"},
        {"name": "ordinality", "type": "System.Concept"},
        {"name": "radiationDuration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationOrder",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationOrder",
      "label": "Medication, Order",
      "primaryCodePath": "code",
      "element": [
        {"name": "activeDatetime", "type": "System.DateTime"},
        {"name": "signedDatetime", "type": "System.DateTime"},
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "route", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "cumulativeMedicationDuration", "type": "System.Quantity"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "SubstanceRecommended",
      "label": "Substance, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "dose", "type": "System.Quantity"},
        {"name": "frequency", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "refills", "type": "System.Integer"},
        {"name": "route", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "InterventionRecommended",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "InterventionRecommended",
      "label": "Intervention, Recommended",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "PhysicalExamPerformed",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "PhysicalExamPerformed",
      "label": "Physical Exam, Performed",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "negationRationale", "type": "System.Concept"},
        {"name": "reason", "type": "System.Concept"},
        {"name": "method", "type": "System.Concept"},
        {"name": "result", "type": "System.Any"},
        {"name": "anatomicalLocationSite", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "SubstanceAllergy",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "SubstanceAllergy",
      "label": "Substance, Allergy",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    },
    {
      "type": "ClassInfo",
      "name": "MedicationIntolerance",
      "baseType": "QDMBaseType",
      "retrievable": true,
      "identifier": "MedicationIntolerance",
      "label": "Medication, Intolerance",
      "primaryCodePath": "code",
      "element": [
        {"name": "startDatetime", "type": "System.DateTime"},
        {"name": "stopDatetime", "type": "System.DateTime"},
        {"name": "reaction", "type": "System.Concept"}
      ]
    }
  ]
});
