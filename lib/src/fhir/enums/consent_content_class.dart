// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes the FHIR resource types, along with some other important content class codes
@Entity()
class ConsentContentClass extends FhirCode {
  /// Factory constructor to create [ConsentContentClass] from JSON.
  factory ConsentContentClass.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentContentClass.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConsentContentClass._(value, element);
    }
    throw ArgumentError(
      'ConsentContentClass.fromJson: JSON value is not a valid value',
    );
  }

  /// Resource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Resource([this.element])
      : dbValue = 'Resource',
        super('Resource', element);

  /// Binary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Binary([this.element])
      : dbValue = 'Binary',
        super('Binary', element);

  /// Bundle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Bundle([this.element])
      : dbValue = 'Bundle',
        super('Bundle', element);

  /// DomainResource
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DomainResource([this.element])
      : dbValue = 'DomainResource',
        super('DomainResource', element);

  /// Account
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Account([this.element])
      : dbValue = 'Account',
        super('Account', element);

  /// ActivityDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ActivityDefinition([this.element])
      : dbValue = 'ActivityDefinition',
        super('ActivityDefinition', element);

  /// AdministrableProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.AdministrableProductDefinition([this.element])
      : dbValue = 'AdministrableProductDefinition',
        super('AdministrableProductDefinition', element);

  /// AdverseEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.AdverseEvent([this.element])
      : dbValue = 'AdverseEvent',
        super('AdverseEvent', element);

  /// AllergyIntolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.AllergyIntolerance([this.element])
      : dbValue = 'AllergyIntolerance',
        super('AllergyIntolerance', element);

  /// Appointment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Appointment([this.element])
      : dbValue = 'Appointment',
        super('Appointment', element);

  /// AppointmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.AppointmentResponse([this.element])
      : dbValue = 'AppointmentResponse',
        super('AppointmentResponse', element);

  /// AuditEvent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.AuditEvent([this.element])
      : dbValue = 'AuditEvent',
        super('AuditEvent', element);

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Basic([this.element])
      : dbValue = 'Basic',
        super('Basic', element);

  /// BiologicallyDerivedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.BiologicallyDerivedProduct([this.element])
      : dbValue = 'BiologicallyDerivedProduct',
        super('BiologicallyDerivedProduct', element);

  /// BodyStructure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.BodyStructure([this.element])
      : dbValue = 'BodyStructure',
        super('BodyStructure', element);

  /// CapabilityStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CapabilityStatement([this.element])
      : dbValue = 'CapabilityStatement',
        super('CapabilityStatement', element);

  /// CarePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CarePlan([this.element])
      : dbValue = 'CarePlan',
        super('CarePlan', element);

  /// CareTeam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CareTeam([this.element])
      : dbValue = 'CareTeam',
        super('CareTeam', element);

  /// CatalogEntry
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CatalogEntry([this.element])
      : dbValue = 'CatalogEntry',
        super('CatalogEntry', element);

  /// ChargeItem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ChargeItem([this.element])
      : dbValue = 'ChargeItem',
        super('ChargeItem', element);

  /// ChargeItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ChargeItemDefinition([this.element])
      : dbValue = 'ChargeItemDefinition',
        super('ChargeItemDefinition', element);

  /// Citation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Citation([this.element])
      : dbValue = 'Citation',
        super('Citation', element);

  /// Claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Claim([this.element])
      : dbValue = 'Claim',
        super('Claim', element);

  /// ClaimResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ClaimResponse([this.element])
      : dbValue = 'ClaimResponse',
        super('ClaimResponse', element);

  /// ClinicalImpression
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ClinicalImpression([this.element])
      : dbValue = 'ClinicalImpression',
        super('ClinicalImpression', element);

  /// ClinicalUseDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ClinicalUseDefinition([this.element])
      : dbValue = 'ClinicalUseDefinition',
        super('ClinicalUseDefinition', element);

  /// CodeSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CodeSystem([this.element])
      : dbValue = 'CodeSystem',
        super('CodeSystem', element);

  /// Communication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Communication([this.element])
      : dbValue = 'Communication',
        super('Communication', element);

  /// CommunicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CommunicationRequest([this.element])
      : dbValue = 'CommunicationRequest',
        super('CommunicationRequest', element);

  /// CompartmentDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CompartmentDefinition([this.element])
      : dbValue = 'CompartmentDefinition',
        super('CompartmentDefinition', element);

  /// Composition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Composition([this.element])
      : dbValue = 'Composition',
        super('Composition', element);

  /// ConceptMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ConceptMap([this.element])
      : dbValue = 'ConceptMap',
        super('ConceptMap', element);

  /// Condition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Condition([this.element])
      : dbValue = 'Condition',
        super('Condition', element);

  /// Consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Consent([this.element])
      : dbValue = 'Consent',
        super('Consent', element);

  /// Contract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Contract([this.element])
      : dbValue = 'Contract',
        super('Contract', element);

  /// Coverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Coverage([this.element])
      : dbValue = 'Coverage',
        super('Coverage', element);

  /// CoverageEligibilityRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CoverageEligibilityRequest([this.element])
      : dbValue = 'CoverageEligibilityRequest',
        super('CoverageEligibilityRequest', element);

  /// CoverageEligibilityResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.CoverageEligibilityResponse([this.element])
      : dbValue = 'CoverageEligibilityResponse',
        super('CoverageEligibilityResponse', element);

  /// DetectedIssue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DetectedIssue([this.element])
      : dbValue = 'DetectedIssue',
        super('DetectedIssue', element);

  /// Device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Device([this.element])
      : dbValue = 'Device',
        super('Device', element);

  /// DeviceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DeviceDefinition([this.element])
      : dbValue = 'DeviceDefinition',
        super('DeviceDefinition', element);

  /// DeviceMetric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DeviceMetric([this.element])
      : dbValue = 'DeviceMetric',
        super('DeviceMetric', element);

  /// DeviceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DeviceRequest([this.element])
      : dbValue = 'DeviceRequest',
        super('DeviceRequest', element);

  /// DeviceUseStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DeviceUseStatement([this.element])
      : dbValue = 'DeviceUseStatement',
        super('DeviceUseStatement', element);

  /// DiagnosticReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DiagnosticReport([this.element])
      : dbValue = 'DiagnosticReport',
        super('DiagnosticReport', element);

  /// DocumentManifest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DocumentManifest([this.element])
      : dbValue = 'DocumentManifest',
        super('DocumentManifest', element);

  /// DocumentReference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.DocumentReference([this.element])
      : dbValue = 'DocumentReference',
        super('DocumentReference', element);

  /// Encounter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Encounter([this.element])
      : dbValue = 'Encounter',
        super('Encounter', element);

  /// Endpoint
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Endpoint([this.element])
      : dbValue = 'Endpoint',
        super('Endpoint', element);

  /// EnrollmentRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.EnrollmentRequest([this.element])
      : dbValue = 'EnrollmentRequest',
        super('EnrollmentRequest', element);

  /// EnrollmentResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.EnrollmentResponse([this.element])
      : dbValue = 'EnrollmentResponse',
        super('EnrollmentResponse', element);

  /// EpisodeOfCare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.EpisodeOfCare([this.element])
      : dbValue = 'EpisodeOfCare',
        super('EpisodeOfCare', element);

  /// EventDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.EventDefinition([this.element])
      : dbValue = 'EventDefinition',
        super('EventDefinition', element);

  /// Evidence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Evidence([this.element])
      : dbValue = 'Evidence',
        super('Evidence', element);

  /// EvidenceReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.EvidenceReport([this.element])
      : dbValue = 'EvidenceReport',
        super('EvidenceReport', element);

  /// EvidenceVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.EvidenceVariable([this.element])
      : dbValue = 'EvidenceVariable',
        super('EvidenceVariable', element);

  /// ExampleScenario
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ExampleScenario([this.element])
      : dbValue = 'ExampleScenario',
        super('ExampleScenario', element);

  /// ExplanationOfBenefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ExplanationOfBenefit([this.element])
      : dbValue = 'ExplanationOfBenefit',
        super('ExplanationOfBenefit', element);

  /// FamilyMemberHistory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.FamilyMemberHistory([this.element])
      : dbValue = 'FamilyMemberHistory',
        super('FamilyMemberHistory', element);

  /// Flag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Flag([this.element])
      : dbValue = 'Flag',
        super('Flag', element);

  /// Goal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Goal([this.element])
      : dbValue = 'Goal',
        super('Goal', element);

  /// GraphDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.GraphDefinition([this.element])
      : dbValue = 'GraphDefinition',
        super('GraphDefinition', element);

  /// Group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Group([this.element])
      : dbValue = 'Group',
        super('Group', element);

  /// GuidanceResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.GuidanceResponse([this.element])
      : dbValue = 'GuidanceResponse',
        super('GuidanceResponse', element);

  /// HealthcareService
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.HealthcareService([this.element])
      : dbValue = 'HealthcareService',
        super('HealthcareService', element);

  /// ImagingStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ImagingStudy([this.element])
      : dbValue = 'ImagingStudy',
        super('ImagingStudy', element);

  /// Immunization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Immunization([this.element])
      : dbValue = 'Immunization',
        super('Immunization', element);

  /// ImmunizationEvaluation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ImmunizationEvaluation([this.element])
      : dbValue = 'ImmunizationEvaluation',
        super('ImmunizationEvaluation', element);

  /// ImmunizationRecommendation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ImmunizationRecommendation([this.element])
      : dbValue = 'ImmunizationRecommendation',
        super('ImmunizationRecommendation', element);

  /// ImplementationGuide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ImplementationGuide([this.element])
      : dbValue = 'ImplementationGuide',
        super('ImplementationGuide', element);

  /// Ingredient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Ingredient([this.element])
      : dbValue = 'Ingredient',
        super('Ingredient', element);

  /// InsurancePlan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.InsurancePlan([this.element])
      : dbValue = 'InsurancePlan',
        super('InsurancePlan', element);

  /// Invoice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Invoice([this.element])
      : dbValue = 'Invoice',
        super('Invoice', element);

  /// Library
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Library([this.element])
      : dbValue = 'Library',
        super('Library', element);

  /// Linkage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Linkage([this.element])
      : dbValue = 'Linkage',
        super('Linkage', element);

  /// List_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.List_([this.element])
      : dbValue = 'List',
        super('List', element);

  /// Location
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Location([this.element])
      : dbValue = 'Location',
        super('Location', element);

  /// ManufacturedItemDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ManufacturedItemDefinition([this.element])
      : dbValue = 'ManufacturedItemDefinition',
        super('ManufacturedItemDefinition', element);

  /// Measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Measure([this.element])
      : dbValue = 'Measure',
        super('Measure', element);

  /// MeasureReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MeasureReport([this.element])
      : dbValue = 'MeasureReport',
        super('MeasureReport', element);

  /// Media
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Media([this.element])
      : dbValue = 'Media',
        super('Media', element);

  /// Medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Medication([this.element])
      : dbValue = 'Medication',
        super('Medication', element);

  /// MedicationAdministration
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MedicationAdministration([this.element])
      : dbValue = 'MedicationAdministration',
        super('MedicationAdministration', element);

  /// MedicationDispense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MedicationDispense([this.element])
      : dbValue = 'MedicationDispense',
        super('MedicationDispense', element);

  /// MedicationKnowledge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MedicationKnowledge([this.element])
      : dbValue = 'MedicationKnowledge',
        super('MedicationKnowledge', element);

  /// MedicationRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MedicationRequest([this.element])
      : dbValue = 'MedicationRequest',
        super('MedicationRequest', element);

  /// MedicationStatement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MedicationStatement([this.element])
      : dbValue = 'MedicationStatement',
        super('MedicationStatement', element);

  /// MedicinalProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MedicinalProductDefinition([this.element])
      : dbValue = 'MedicinalProductDefinition',
        super('MedicinalProductDefinition', element);

  /// MessageDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MessageDefinition([this.element])
      : dbValue = 'MessageDefinition',
        super('MessageDefinition', element);

  /// MessageHeader
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MessageHeader([this.element])
      : dbValue = 'MessageHeader',
        super('MessageHeader', element);

  /// MolecularSequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.MolecularSequence([this.element])
      : dbValue = 'MolecularSequence',
        super('MolecularSequence', element);

  /// NamingSystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.NamingSystem([this.element])
      : dbValue = 'NamingSystem',
        super('NamingSystem', element);

  /// NutritionOrder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.NutritionOrder([this.element])
      : dbValue = 'NutritionOrder',
        super('NutritionOrder', element);

  /// NutritionProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.NutritionProduct([this.element])
      : dbValue = 'NutritionProduct',
        super('NutritionProduct', element);

  /// Observation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Observation([this.element])
      : dbValue = 'Observation',
        super('Observation', element);

  /// ObservationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ObservationDefinition([this.element])
      : dbValue = 'ObservationDefinition',
        super('ObservationDefinition', element);

  /// OperationDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.OperationDefinition([this.element])
      : dbValue = 'OperationDefinition',
        super('OperationDefinition', element);

  /// OperationOutcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.OperationOutcome([this.element])
      : dbValue = 'OperationOutcome',
        super('OperationOutcome', element);

  /// Organization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Organization([this.element])
      : dbValue = 'Organization',
        super('Organization', element);

  /// OrganizationAffiliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.OrganizationAffiliation([this.element])
      : dbValue = 'OrganizationAffiliation',
        super('OrganizationAffiliation', element);

  /// PackagedProductDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.PackagedProductDefinition([this.element])
      : dbValue = 'PackagedProductDefinition',
        super('PackagedProductDefinition', element);

  /// Patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Patient([this.element])
      : dbValue = 'Patient',
        super('Patient', element);

  /// PaymentNotice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.PaymentNotice([this.element])
      : dbValue = 'PaymentNotice',
        super('PaymentNotice', element);

  /// PaymentReconciliation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.PaymentReconciliation([this.element])
      : dbValue = 'PaymentReconciliation',
        super('PaymentReconciliation', element);

  /// Person
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Person([this.element])
      : dbValue = 'Person',
        super('Person', element);

  /// PlanDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.PlanDefinition([this.element])
      : dbValue = 'PlanDefinition',
        super('PlanDefinition', element);

  /// Practitioner
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Practitioner([this.element])
      : dbValue = 'Practitioner',
        super('Practitioner', element);

  /// PractitionerRole
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.PractitionerRole([this.element])
      : dbValue = 'PractitionerRole',
        super('PractitionerRole', element);

  /// Procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Procedure([this.element])
      : dbValue = 'Procedure',
        super('Procedure', element);

  /// Provenance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Provenance([this.element])
      : dbValue = 'Provenance',
        super('Provenance', element);

  /// Questionnaire
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Questionnaire([this.element])
      : dbValue = 'Questionnaire',
        super('Questionnaire', element);

  /// QuestionnaireResponse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.QuestionnaireResponse([this.element])
      : dbValue = 'QuestionnaireResponse',
        super('QuestionnaireResponse', element);

  /// RegulatedAuthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.RegulatedAuthorization([this.element])
      : dbValue = 'RegulatedAuthorization',
        super('RegulatedAuthorization', element);

  /// RelatedPerson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.RelatedPerson([this.element])
      : dbValue = 'RelatedPerson',
        super('RelatedPerson', element);

  /// RequestGroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.RequestGroup([this.element])
      : dbValue = 'RequestGroup',
        super('RequestGroup', element);

  /// ResearchDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ResearchDefinition([this.element])
      : dbValue = 'ResearchDefinition',
        super('ResearchDefinition', element);

  /// ResearchElementDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ResearchElementDefinition([this.element])
      : dbValue = 'ResearchElementDefinition',
        super('ResearchElementDefinition', element);

  /// ResearchStudy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ResearchStudy([this.element])
      : dbValue = 'ResearchStudy',
        super('ResearchStudy', element);

  /// ResearchSubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ResearchSubject([this.element])
      : dbValue = 'ResearchSubject',
        super('ResearchSubject', element);

  /// RiskAssessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.RiskAssessment([this.element])
      : dbValue = 'RiskAssessment',
        super('RiskAssessment', element);

  /// Schedule
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Schedule([this.element])
      : dbValue = 'Schedule',
        super('Schedule', element);

  /// SearchParameter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.SearchParameter([this.element])
      : dbValue = 'SearchParameter',
        super('SearchParameter', element);

  /// ServiceRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ServiceRequest([this.element])
      : dbValue = 'ServiceRequest',
        super('ServiceRequest', element);

  /// Slot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Slot([this.element])
      : dbValue = 'Slot',
        super('Slot', element);

  /// Specimen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Specimen([this.element])
      : dbValue = 'Specimen',
        super('Specimen', element);

  /// SpecimenDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.SpecimenDefinition([this.element])
      : dbValue = 'SpecimenDefinition',
        super('SpecimenDefinition', element);

  /// StructureDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.StructureDefinition([this.element])
      : dbValue = 'StructureDefinition',
        super('StructureDefinition', element);

  /// StructureMap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.StructureMap([this.element])
      : dbValue = 'StructureMap',
        super('StructureMap', element);

  /// Subscription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Subscription([this.element])
      : dbValue = 'Subscription',
        super('Subscription', element);

  /// SubscriptionStatus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.SubscriptionStatus([this.element])
      : dbValue = 'SubscriptionStatus',
        super('SubscriptionStatus', element);

  /// SubscriptionTopic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.SubscriptionTopic([this.element])
      : dbValue = 'SubscriptionTopic',
        super('SubscriptionTopic', element);

  /// Substance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Substance([this.element])
      : dbValue = 'Substance',
        super('Substance', element);

  /// SubstanceDefinition
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.SubstanceDefinition([this.element])
      : dbValue = 'SubstanceDefinition',
        super('SubstanceDefinition', element);

  /// SupplyDelivery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.SupplyDelivery([this.element])
      : dbValue = 'SupplyDelivery',
        super('SupplyDelivery', element);

  /// SupplyRequest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.SupplyRequest([this.element])
      : dbValue = 'SupplyRequest',
        super('SupplyRequest', element);

  /// Task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Task([this.element])
      : dbValue = 'Task',
        super('Task', element);

  /// TerminologyCapabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.TerminologyCapabilities([this.element])
      : dbValue = 'TerminologyCapabilities',
        super('TerminologyCapabilities', element);

  /// TestReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.TestReport([this.element])
      : dbValue = 'TestReport',
        super('TestReport', element);

  /// TestScript
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.TestScript([this.element])
      : dbValue = 'TestScript',
        super('TestScript', element);

  /// ValueSet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.ValueSet([this.element])
      : dbValue = 'ValueSet',
        super('ValueSet', element);

  /// VerificationResult
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.VerificationResult([this.element])
      : dbValue = 'VerificationResult',
        super('VerificationResult', element);

  /// VisionPrescription
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.VisionPrescription([this.element])
      : dbValue = 'VisionPrescription',
        super('VisionPrescription', element);

  /// Parameters
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.Parameters([this.element])
      : dbValue = 'Parameters',
        super('Parameters', element);

  /// http___hl7_org_fhir_StructureDefinition_lipidprofile
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.http___hl7_org_fhir_StructureDefinition_lipidprofile(
      [this.element])
      : dbValue = 'http://hl7.org/fhir/StructureDefinition/lipidprofile',
        super('http://hl7.org/fhir/StructureDefinition/lipidprofile', element);

  /// application_hl7_cda_xml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentContentClass.application_hl7_cda_xml([this.element])
      : dbValue = 'application/hl7-cda+xml',
        super('application/hl7-cda+xml', element);

  /// For instances where an Element is present but not value

  ConsentContentClass.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConsentContentClass._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'Resource',
    'Binary',
    'Bundle',
    'DomainResource',
    'Account',
    'ActivityDefinition',
    'AdministrableProductDefinition',
    'AdverseEvent',
    'AllergyIntolerance',
    'Appointment',
    'AppointmentResponse',
    'AuditEvent',
    'Basic',
    'BiologicallyDerivedProduct',
    'BodyStructure',
    'CapabilityStatement',
    'CarePlan',
    'CareTeam',
    'CatalogEntry',
    'ChargeItem',
    'ChargeItemDefinition',
    'Citation',
    'Claim',
    'ClaimResponse',
    'ClinicalImpression',
    'ClinicalUseDefinition',
    'CodeSystem',
    'Communication',
    'CommunicationRequest',
    'CompartmentDefinition',
    'Composition',
    'ConceptMap',
    'Condition',
    'Consent',
    'Contract',
    'Coverage',
    'CoverageEligibilityRequest',
    'CoverageEligibilityResponse',
    'DetectedIssue',
    'Device',
    'DeviceDefinition',
    'DeviceMetric',
    'DeviceRequest',
    'DeviceUseStatement',
    'DiagnosticReport',
    'DocumentManifest',
    'DocumentReference',
    'Encounter',
    'Endpoint',
    'EnrollmentRequest',
    'EnrollmentResponse',
    'EpisodeOfCare',
    'EventDefinition',
    'Evidence',
    'EvidenceReport',
    'EvidenceVariable',
    'ExampleScenario',
    'ExplanationOfBenefit',
    'FamilyMemberHistory',
    'Flag',
    'Goal',
    'GraphDefinition',
    'Group',
    'GuidanceResponse',
    'HealthcareService',
    'ImagingStudy',
    'Immunization',
    'ImmunizationEvaluation',
    'ImmunizationRecommendation',
    'ImplementationGuide',
    'Ingredient',
    'InsurancePlan',
    'Invoice',
    'Library',
    'Linkage',
    'List',
    'Location',
    'ManufacturedItemDefinition',
    'Measure',
    'MeasureReport',
    'Media',
    'Medication',
    'MedicationAdministration',
    'MedicationDispense',
    'MedicationKnowledge',
    'MedicationRequest',
    'MedicationStatement',
    'MedicinalProductDefinition',
    'MessageDefinition',
    'MessageHeader',
    'MolecularSequence',
    'NamingSystem',
    'NutritionOrder',
    'NutritionProduct',
    'Observation',
    'ObservationDefinition',
    'OperationDefinition',
    'OperationOutcome',
    'Organization',
    'OrganizationAffiliation',
    'PackagedProductDefinition',
    'Patient',
    'PaymentNotice',
    'PaymentReconciliation',
    'Person',
    'PlanDefinition',
    'Practitioner',
    'PractitionerRole',
    'Procedure',
    'Provenance',
    'Questionnaire',
    'QuestionnaireResponse',
    'RegulatedAuthorization',
    'RelatedPerson',
    'RequestGroup',
    'ResearchDefinition',
    'ResearchElementDefinition',
    'ResearchStudy',
    'ResearchSubject',
    'RiskAssessment',
    'Schedule',
    'SearchParameter',
    'ServiceRequest',
    'Slot',
    'Specimen',
    'SpecimenDefinition',
    'StructureDefinition',
    'StructureMap',
    'Subscription',
    'SubscriptionStatus',
    'SubscriptionTopic',
    'Substance',
    'SubstanceDefinition',
    'SupplyDelivery',
    'SupplyRequest',
    'Task',
    'TerminologyCapabilities',
    'TestReport',
    'TestScript',
    'ValueSet',
    'VerificationResult',
    'VisionPrescription',
    'Parameters',
    'http://hl7.org/fhir/StructureDefinition/lipidprofile',
    'application/hl7-cda+xml',
  ];

  /// Returns the enum value with an element attached
  ConsentContentClass withElement(Element? newElement) {
    return ConsentContentClass._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentContentClass.$value';
}
