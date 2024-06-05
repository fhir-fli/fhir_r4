// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'immunization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImmunizationImpl _$$ImmunizationImplFromJson(Map<String, dynamic> json) =>
    _$ImmunizationImpl(
      resourceType: $enumDecodeNullable(
              _$R4ResourceTypeEnumMap, json['resourceType'],
              unknownValue: R4ResourceType.Immunization) ??
          R4ResourceType.Immunization,
      id: json['id'] as String?,
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
      implicitRules: json['implicitRules'] == null
          ? null
          : FhirUri.fromJson(json['implicitRules']),
      implicitRulesElement: json['_implicitRules'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_implicitRules'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['_language'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_language'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Narrative.fromJson(json['text'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null ? null : FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : PrimitiveElement.fromJson(json['_status'] as Map<String, dynamic>),
      statusReason: json['statusReason'] == null
          ? null
          : CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>),
      vaccineCode:
          CodeableConcept.fromJson(json['vaccineCode'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      encounter: json['encounter'] == null
          ? null
          : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
      occurrenceDateTime: json['occurrenceDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['occurrenceDateTime'] as String),
      occurrenceDateTimeElement: json['_occurrenceDateTime'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>),
      occurrenceString: json['occurrenceString'] as String?,
      occurrenceStringElement: json['_occurrenceString'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_occurrenceString'] as Map<String, dynamic>),
      recorded: json['recorded'] == null
          ? null
          : FhirDateTime.fromJson(json['recorded'] as String),
      recordedElement: json['_recorded'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_recorded'] as Map<String, dynamic>),
      primarySource: json['primarySource'] == null
          ? null
          : FhirBoolean.fromJson(json['primarySource']),
      primarySourceElement: json['_primarySource'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_primarySource'] as Map<String, dynamic>),
      reportOrigin: json['reportOrigin'] == null
          ? null
          : CodeableConcept.fromJson(
              json['reportOrigin'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Reference.fromJson(json['location'] as Map<String, dynamic>),
      manufacturer: json['manufacturer'] == null
          ? null
          : Reference.fromJson(json['manufacturer'] as Map<String, dynamic>),
      lotNumber: json['lotNumber'] as String?,
      lotNumberElement: json['_lotNumber'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_lotNumber'] as Map<String, dynamic>),
      expirationDate: json['expirationDate'] == null
          ? null
          : FhirDate.fromJson(json['expirationDate'] as String),
      expirationDateElement: json['_expirationDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_expirationDate'] as Map<String, dynamic>),
      site: json['site'] == null
          ? null
          : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
      route: json['route'] == null
          ? null
          : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
      doseQuantity: json['doseQuantity'] == null
          ? null
          : Quantity.fromJson(json['doseQuantity'] as Map<String, dynamic>),
      performer: (json['performer'] as List<dynamic>?)
          ?.map(
              (e) => ImmunizationPerformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSubpotent: json['isSubpotent'] == null
          ? null
          : FhirBoolean.fromJson(json['isSubpotent']),
      isSubpotentElement: json['_isSubpotent'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_isSubpotent'] as Map<String, dynamic>),
      subpotentReason: (json['subpotentReason'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      education: (json['education'] as List<dynamic>?)
          ?.map(
              (e) => ImmunizationEducation.fromJson(e as Map<String, dynamic>))
          .toList(),
      programEligibility: (json['programEligibility'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      fundingSource: json['fundingSource'] == null
          ? null
          : CodeableConcept.fromJson(
              json['fundingSource'] as Map<String, dynamic>),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map((e) => ImmunizationReaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      protocolApplied: (json['protocolApplied'] as List<dynamic>?)
          ?.map((e) =>
              ImmunizationProtocolApplied.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ImmunizationImplToJson(_$ImmunizationImpl instance) {
  final val = <String, dynamic>{
    'resourceType': instance.resourceType.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules?.toJson());
  writeNotNull('_implicitRules', instance.implicitRulesElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('_language', instance.languageElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull(
      'contained', instance.contained?.map((e) => e.toJson()).toList());
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('statusReason', instance.statusReason?.toJson());
  val['vaccineCode'] = instance.vaccineCode.toJson();
  val['patient'] = instance.patient.toJson();
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('occurrenceDateTime', instance.occurrenceDateTime?.toJson());
  writeNotNull(
      '_occurrenceDateTime', instance.occurrenceDateTimeElement?.toJson());
  writeNotNull('occurrenceString', instance.occurrenceString);
  writeNotNull('_occurrenceString', instance.occurrenceStringElement?.toJson());
  writeNotNull('recorded', instance.recorded?.toJson());
  writeNotNull('_recorded', instance.recordedElement?.toJson());
  writeNotNull('primarySource', instance.primarySource?.toJson());
  writeNotNull('_primarySource', instance.primarySourceElement?.toJson());
  writeNotNull('reportOrigin', instance.reportOrigin?.toJson());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('manufacturer', instance.manufacturer?.toJson());
  writeNotNull('lotNumber', instance.lotNumber);
  writeNotNull('_lotNumber', instance.lotNumberElement?.toJson());
  writeNotNull('expirationDate', instance.expirationDate?.toJson());
  writeNotNull('_expirationDate', instance.expirationDateElement?.toJson());
  writeNotNull('site', instance.site?.toJson());
  writeNotNull('route', instance.route?.toJson());
  writeNotNull('doseQuantity', instance.doseQuantity?.toJson());
  writeNotNull(
      'performer', instance.performer?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e.toJson()).toList());
  writeNotNull('reasonReference',
      instance.reasonReference?.map((e) => e.toJson()).toList());
  writeNotNull('isSubpotent', instance.isSubpotent?.toJson());
  writeNotNull('_isSubpotent', instance.isSubpotentElement?.toJson());
  writeNotNull('subpotentReason',
      instance.subpotentReason?.map((e) => e.toJson()).toList());
  writeNotNull(
      'education', instance.education?.map((e) => e.toJson()).toList());
  writeNotNull('programEligibility',
      instance.programEligibility?.map((e) => e.toJson()).toList());
  writeNotNull('fundingSource', instance.fundingSource?.toJson());
  writeNotNull('reaction', instance.reaction?.map((e) => e.toJson()).toList());
  writeNotNull('protocolApplied',
      instance.protocolApplied?.map((e) => e.toJson()).toList());
  return val;
}

const _$R4ResourceTypeEnumMap = {
  R4ResourceType.Account: 'Account',
  R4ResourceType.ActivityDefinition: 'ActivityDefinition',
  R4ResourceType.AdministrableProductDefinition:
      'AdministrableProductDefinition',
  R4ResourceType.AdverseEvent: 'AdverseEvent',
  R4ResourceType.AllergyIntolerance: 'AllergyIntolerance',
  R4ResourceType.Appointment: 'Appointment',
  R4ResourceType.AppointmentResponse: 'AppointmentResponse',
  R4ResourceType.AuditEvent: 'AuditEvent',
  R4ResourceType.Basic: 'Basic',
  R4ResourceType.Binary: 'Binary',
  R4ResourceType.BiologicallyDerivedProduct: 'BiologicallyDerivedProduct',
  R4ResourceType.BodyStructure: 'BodyStructure',
  R4ResourceType.Bundle: 'Bundle',
  R4ResourceType.CapabilityStatement: 'CapabilityStatement',
  R4ResourceType.CarePlan: 'CarePlan',
  R4ResourceType.CareTeam: 'CareTeam',
  R4ResourceType.CatalogEntry: 'CatalogEntry',
  R4ResourceType.ChargeItem: 'ChargeItem',
  R4ResourceType.ChargeItemDefinition: 'ChargeItemDefinition',
  R4ResourceType.Citation: 'Citation',
  R4ResourceType.Claim: 'Claim',
  R4ResourceType.ClaimResponse: 'ClaimResponse',
  R4ResourceType.ClinicalImpression: 'ClinicalImpression',
  R4ResourceType.ClinicalUseDefinition: 'ClinicalUseDefinition',
  R4ResourceType.CodeSystem: 'CodeSystem',
  R4ResourceType.Communication: 'Communication',
  R4ResourceType.CommunicationRequest: 'CommunicationRequest',
  R4ResourceType.CompartmentDefinition: 'CompartmentDefinition',
  R4ResourceType.Composition: 'Composition',
  R4ResourceType.ConceptMap: 'ConceptMap',
  R4ResourceType.Condition: 'Condition',
  R4ResourceType.Consent: 'Consent',
  R4ResourceType.Contract: 'Contract',
  R4ResourceType.Coverage: 'Coverage',
  R4ResourceType.CoverageEligibilityRequest: 'CoverageEligibilityRequest',
  R4ResourceType.CoverageEligibilityResponse: 'CoverageEligibilityResponse',
  R4ResourceType.DetectedIssue: 'DetectedIssue',
  R4ResourceType.Device: 'Device',
  R4ResourceType.DeviceDefinition: 'DeviceDefinition',
  R4ResourceType.DeviceMetric: 'DeviceMetric',
  R4ResourceType.DeviceRequest: 'DeviceRequest',
  R4ResourceType.DeviceUseStatement: 'DeviceUseStatement',
  R4ResourceType.DiagnosticReport: 'DiagnosticReport',
  R4ResourceType.DocumentManifest: 'DocumentManifest',
  R4ResourceType.DocumentReference: 'DocumentReference',
  R4ResourceType.Encounter: 'Encounter',
  R4ResourceType.Endpoint: 'Endpoint',
  R4ResourceType.EnrollmentRequest: 'EnrollmentRequest',
  R4ResourceType.EnrollmentResponse: 'EnrollmentResponse',
  R4ResourceType.EpisodeOfCare: 'EpisodeOfCare',
  R4ResourceType.EventDefinition: 'EventDefinition',
  R4ResourceType.Evidence: 'Evidence',
  R4ResourceType.EvidenceReport: 'EvidenceReport',
  R4ResourceType.EvidenceVariable: 'EvidenceVariable',
  R4ResourceType.ExampleScenario: 'ExampleScenario',
  R4ResourceType.ExplanationOfBenefit: 'ExplanationOfBenefit',
  R4ResourceType.FamilyMemberHistory: 'FamilyMemberHistory',
  R4ResourceType.Flag: 'Flag',
  R4ResourceType.Goal: 'Goal',
  R4ResourceType.GraphDefinition: 'GraphDefinition',
  R4ResourceType.Group: 'Group',
  R4ResourceType.GuidanceResponse: 'GuidanceResponse',
  R4ResourceType.HealthcareService: 'HealthcareService',
  R4ResourceType.ImagingStudy: 'ImagingStudy',
  R4ResourceType.Immunization: 'Immunization',
  R4ResourceType.ImmunizationEvaluation: 'ImmunizationEvaluation',
  R4ResourceType.ImmunizationRecommendation: 'ImmunizationRecommendation',
  R4ResourceType.ImplementationGuide: 'ImplementationGuide',
  R4ResourceType.Ingredient: 'Ingredient',
  R4ResourceType.InsurancePlan: 'InsurancePlan',
  R4ResourceType.Invoice: 'Invoice',
  R4ResourceType.Library: 'Library',
  R4ResourceType.Linkage: 'Linkage',
  R4ResourceType.FhirList: 'List',
  R4ResourceType.Location: 'Location',
  R4ResourceType.ManufacturedItemDefinition: 'ManufacturedItemDefinition',
  R4ResourceType.Measure: 'Measure',
  R4ResourceType.MeasureReport: 'MeasureReport',
  R4ResourceType.Media: 'Media',
  R4ResourceType.Medication: 'Medication',
  R4ResourceType.MedicationAdministration: 'MedicationAdministration',
  R4ResourceType.MedicationDispense: 'MedicationDispense',
  R4ResourceType.MedicationKnowledge: 'MedicationKnowledge',
  R4ResourceType.MedicationRequest: 'MedicationRequest',
  R4ResourceType.MedicationStatement: 'MedicationStatement',
  R4ResourceType.MedicinalProductDefinition: 'MedicinalProductDefinition',
  R4ResourceType.MessageDefinition: 'MessageDefinition',
  R4ResourceType.MessageHeader: 'MessageHeader',
  R4ResourceType.MolecularSequence: 'MolecularSequence',
  R4ResourceType.NamingSystem: 'NamingSystem',
  R4ResourceType.NutritionOrder: 'NutritionOrder',
  R4ResourceType.NutritionProduct: 'NutritionProduct',
  R4ResourceType.Observation: 'Observation',
  R4ResourceType.ObservationDefinition: 'ObservationDefinition',
  R4ResourceType.OperationDefinition: 'OperationDefinition',
  R4ResourceType.OperationOutcome: 'OperationOutcome',
  R4ResourceType.Organization: 'Organization',
  R4ResourceType.OrganizationAffiliation: 'OrganizationAffiliation',
  R4ResourceType.PackagedProductDefinition: 'PackagedProductDefinition',
  R4ResourceType.Parameters: 'Parameters',
  R4ResourceType.Patient: 'Patient',
  R4ResourceType.PaymentNotice: 'PaymentNotice',
  R4ResourceType.PaymentReconciliation: 'PaymentReconciliation',
  R4ResourceType.Person: 'Person',
  R4ResourceType.PlanDefinition: 'PlanDefinition',
  R4ResourceType.Practitioner: 'Practitioner',
  R4ResourceType.PractitionerRole: 'PractitionerRole',
  R4ResourceType.Procedure: 'Procedure',
  R4ResourceType.Provenance: 'Provenance',
  R4ResourceType.Questionnaire: 'Questionnaire',
  R4ResourceType.QuestionnaireResponse: 'QuestionnaireResponse',
  R4ResourceType.RegulatedAuthorization: 'RegulatedAuthorization',
  R4ResourceType.RelatedPerson: 'RelatedPerson',
  R4ResourceType.RequestGroup: 'RequestGroup',
  R4ResourceType.ResearchDefinition: 'ResearchDefinition',
  R4ResourceType.ResearchElementDefinition: 'ResearchElementDefinition',
  R4ResourceType.ResearchStudy: 'ResearchStudy',
  R4ResourceType.ResearchSubject: 'ResearchSubject',
  R4ResourceType.RiskAssessment: 'RiskAssessment',
  R4ResourceType.Schedule: 'Schedule',
  R4ResourceType.SearchParameter: 'SearchParameter',
  R4ResourceType.ServiceRequest: 'ServiceRequest',
  R4ResourceType.Slot: 'Slot',
  R4ResourceType.Specimen: 'Specimen',
  R4ResourceType.SpecimenDefinition: 'SpecimenDefinition',
  R4ResourceType.StructureDefinition: 'StructureDefinition',
  R4ResourceType.StructureMap: 'StructureMap',
  R4ResourceType.Subscription: 'Subscription',
  R4ResourceType.SubscriptionStatus: 'SubscriptionStatus',
  R4ResourceType.SubscriptionTopic: 'SubscriptionTopic',
  R4ResourceType.Substance: 'Substance',
  R4ResourceType.SubstanceDefinition: 'SubstanceDefinition',
  R4ResourceType.SupplyDelivery: 'SupplyDelivery',
  R4ResourceType.SupplyRequest: 'SupplyRequest',
  R4ResourceType.Task: 'Task',
  R4ResourceType.TerminologyCapabilities: 'TerminologyCapabilities',
  R4ResourceType.TestReport: 'TestReport',
  R4ResourceType.TestScript: 'TestScript',
  R4ResourceType.ValueSet: 'ValueSet',
  R4ResourceType.VerificationResult: 'VerificationResult',
  R4ResourceType.VisionPrescription: 'VisionPrescription',
};

_$ImmunizationPerformerImpl _$$ImmunizationPerformerImplFromJson(
        Map<String, dynamic> json) =>
    _$ImmunizationPerformerImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      function: json['function'] == null
          ? null
          : CodeableConcept.fromJson(json['function'] as Map<String, dynamic>),
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImmunizationPerformerImplToJson(
    _$ImmunizationPerformerImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('function', instance.function?.toJson());
  val['actor'] = instance.actor.toJson();
  return val;
}

_$ImmunizationEducationImpl _$$ImmunizationEducationImplFromJson(
        Map<String, dynamic> json) =>
    _$ImmunizationEducationImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      documentType: json['documentType'] as String?,
      documentTypeElement: json['_documentType'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_documentType'] as Map<String, dynamic>),
      reference: json['reference'] == null
          ? null
          : FhirUri.fromJson(json['reference']),
      referenceElement: json['_reference'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_reference'] as Map<String, dynamic>),
      publicationDate: json['publicationDate'] == null
          ? null
          : FhirDateTime.fromJson(json['publicationDate'] as String),
      publicationDateElement: json['_publicationDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_publicationDate'] as Map<String, dynamic>),
      presentationDate: json['presentationDate'] == null
          ? null
          : FhirDateTime.fromJson(json['presentationDate'] as String),
      presentationDateElement: json['_presentationDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_presentationDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImmunizationEducationImplToJson(
    _$ImmunizationEducationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('documentType', instance.documentType);
  writeNotNull('_documentType', instance.documentTypeElement?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  writeNotNull('_reference', instance.referenceElement?.toJson());
  writeNotNull('publicationDate', instance.publicationDate?.toJson());
  writeNotNull('_publicationDate', instance.publicationDateElement?.toJson());
  writeNotNull('presentationDate', instance.presentationDate?.toJson());
  writeNotNull('_presentationDate', instance.presentationDateElement?.toJson());
  return val;
}

_$ImmunizationReactionImpl _$$ImmunizationReactionImplFromJson(
        Map<String, dynamic> json) =>
    _$ImmunizationReactionImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : PrimitiveElement.fromJson(json['_date'] as Map<String, dynamic>),
      detail: json['detail'] == null
          ? null
          : Reference.fromJson(json['detail'] as Map<String, dynamic>),
      reported: json['reported'] == null
          ? null
          : FhirBoolean.fromJson(json['reported']),
      reportedElement: json['_reported'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_reported'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImmunizationReactionImplToJson(
    _$ImmunizationReactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('detail', instance.detail?.toJson());
  writeNotNull('reported', instance.reported?.toJson());
  writeNotNull('_reported', instance.reportedElement?.toJson());
  return val;
}

_$ImmunizationProtocolAppliedImpl _$$ImmunizationProtocolAppliedImplFromJson(
        Map<String, dynamic> json) =>
    _$ImmunizationProtocolAppliedImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      series: json['series'] as String?,
      seriesElement: json['_series'] == null
          ? null
          : PrimitiveElement.fromJson(json['_series'] as Map<String, dynamic>),
      authority: json['authority'] == null
          ? null
          : Reference.fromJson(json['authority'] as Map<String, dynamic>),
      targetDisease: (json['targetDisease'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      doseNumberPositiveInt: json['doseNumberPositiveInt'] == null
          ? null
          : FhirPositiveInt.fromJson(json['doseNumberPositiveInt']),
      doseNumberPositiveIntElement: json['_doseNumberPositiveInt'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_doseNumberPositiveInt'] as Map<String, dynamic>),
      doseNumberString: json['doseNumberString'] as String?,
      doseNumberStringElement: json['_doseNumberString'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_doseNumberString'] as Map<String, dynamic>),
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] == null
          ? null
          : FhirPositiveInt.fromJson(json['seriesDosesPositiveInt']),
      seriesDosesPositiveIntElement: json['_seriesDosesPositiveInt'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_seriesDosesPositiveInt'] as Map<String, dynamic>),
      seriesDosesString: json['seriesDosesString'] as String?,
      seriesDosesStringElement: json['_seriesDosesString'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_seriesDosesString'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImmunizationProtocolAppliedImplToJson(
    _$ImmunizationProtocolAppliedImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('series', instance.series);
  writeNotNull('_series', instance.seriesElement?.toJson());
  writeNotNull('authority', instance.authority?.toJson());
  writeNotNull(
      'targetDisease', instance.targetDisease?.map((e) => e.toJson()).toList());
  writeNotNull(
      'doseNumberPositiveInt', instance.doseNumberPositiveInt?.toJson());
  writeNotNull('_doseNumberPositiveInt',
      instance.doseNumberPositiveIntElement?.toJson());
  writeNotNull('doseNumberString', instance.doseNumberString);
  writeNotNull('_doseNumberString', instance.doseNumberStringElement?.toJson());
  writeNotNull(
      'seriesDosesPositiveInt', instance.seriesDosesPositiveInt?.toJson());
  writeNotNull('_seriesDosesPositiveInt',
      instance.seriesDosesPositiveIntElement?.toJson());
  writeNotNull('seriesDosesString', instance.seriesDosesString);
  writeNotNull(
      '_seriesDosesString', instance.seriesDosesStringElement?.toJson());
  return val;
}
