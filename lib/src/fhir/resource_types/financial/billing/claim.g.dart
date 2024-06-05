// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClaimImpl _$$ClaimImplFromJson(Map<String, dynamic> json) => _$ClaimImpl(
      resourceType: $enumDecodeNullable(
              _$R4ResourceTypeEnumMap, json['resourceType'],
              unknownValue: R4ResourceType.Claim) ??
          R4ResourceType.Claim,
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: json['subType'] == null
          ? null
          : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
      use: json['use'] == null ? null : FhirCode.fromJson(json['use']),
      useElement: json['_use'] == null
          ? null
          : PrimitiveElement.fromJson(json['_use'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      billablePeriod: json['billablePeriod'] == null
          ? null
          : Period.fromJson(json['billablePeriod'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : FhirDateTime.fromJson(json['created'] as String),
      createdElement: json['_created'] == null
          ? null
          : PrimitiveElement.fromJson(json['_created'] as Map<String, dynamic>),
      enterer: json['enterer'] == null
          ? null
          : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
      insurer: json['insurer'] == null
          ? null
          : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      priority:
          CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
      fundsReserve: json['fundsReserve'] == null
          ? null
          : CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>),
      related: (json['related'] as List<dynamic>?)
          ?.map((e) => ClaimRelated.fromJson(e as Map<String, dynamic>))
          .toList(),
      prescription: json['prescription'] == null
          ? null
          : Reference.fromJson(json['prescription'] as Map<String, dynamic>),
      originalPrescription: json['originalPrescription'] == null
          ? null
          : Reference.fromJson(
              json['originalPrescription'] as Map<String, dynamic>),
      payee: json['payee'] == null
          ? null
          : ClaimPayee.fromJson(json['payee'] as Map<String, dynamic>),
      referral: json['referral'] == null
          ? null
          : Reference.fromJson(json['referral'] as Map<String, dynamic>),
      facility: json['facility'] == null
          ? null
          : Reference.fromJson(json['facility'] as Map<String, dynamic>),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map((e) => ClaimCareTeam.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => ClaimSupportingInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) => ClaimDiagnosis.fromJson(e as Map<String, dynamic>))
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map((e) => ClaimProcedure.fromJson(e as Map<String, dynamic>))
          .toList(),
      insurance: (json['insurance'] as List<dynamic>)
          .map((e) => ClaimInsurance.fromJson(e as Map<String, dynamic>))
          .toList(),
      accident: json['accident'] == null
          ? null
          : ClaimAccident.fromJson(json['accident'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => ClaimItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] == null
          ? null
          : Money.fromJson(json['total'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimImplToJson(_$ClaimImpl instance) {
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
  val['type'] = instance.type.toJson();
  writeNotNull('subType', instance.subType?.toJson());
  writeNotNull('use', instance.use?.toJson());
  writeNotNull('_use', instance.useElement?.toJson());
  val['patient'] = instance.patient.toJson();
  writeNotNull('billablePeriod', instance.billablePeriod?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('_created', instance.createdElement?.toJson());
  writeNotNull('enterer', instance.enterer?.toJson());
  writeNotNull('insurer', instance.insurer?.toJson());
  val['provider'] = instance.provider.toJson();
  val['priority'] = instance.priority.toJson();
  writeNotNull('fundsReserve', instance.fundsReserve?.toJson());
  writeNotNull('related', instance.related?.map((e) => e.toJson()).toList());
  writeNotNull('prescription', instance.prescription?.toJson());
  writeNotNull('originalPrescription', instance.originalPrescription?.toJson());
  writeNotNull('payee', instance.payee?.toJson());
  writeNotNull('referral', instance.referral?.toJson());
  writeNotNull('facility', instance.facility?.toJson());
  writeNotNull('careTeam', instance.careTeam?.map((e) => e.toJson()).toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e.toJson()).toList());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e.toJson()).toList());
  writeNotNull(
      'procedure', instance.procedure?.map((e) => e.toJson()).toList());
  val['insurance'] = instance.insurance.map((e) => e.toJson()).toList();
  writeNotNull('accident', instance.accident?.toJson());
  writeNotNull('item', instance.item?.map((e) => e.toJson()).toList());
  writeNotNull('total', instance.total?.toJson());
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

_$ClaimRelatedImpl _$$ClaimRelatedImplFromJson(Map<String, dynamic> json) =>
    _$ClaimRelatedImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      claim: json['claim'] == null
          ? null
          : Reference.fromJson(json['claim'] as Map<String, dynamic>),
      relationship: json['relationship'] == null
          ? null
          : CodeableConcept.fromJson(
              json['relationship'] as Map<String, dynamic>),
      reference: json['reference'] == null
          ? null
          : Identifier.fromJson(json['reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimRelatedImplToJson(_$ClaimRelatedImpl instance) {
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
  writeNotNull('claim', instance.claim?.toJson());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  return val;
}

_$ClaimPayeeImpl _$$ClaimPayeeImplFromJson(Map<String, dynamic> json) =>
    _$ClaimPayeeImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      party: json['party'] == null
          ? null
          : Reference.fromJson(json['party'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimPayeeImplToJson(_$ClaimPayeeImpl instance) {
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
  val['type'] = instance.type.toJson();
  writeNotNull('party', instance.party?.toJson());
  return val;
}

_$ClaimCareTeamImpl _$$ClaimCareTeamImplFromJson(Map<String, dynamic> json) =>
    _$ClaimCareTeamImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      responsible: json['responsible'] == null
          ? null
          : FhirBoolean.fromJson(json['responsible']),
      responsibleElement: json['_responsible'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_responsible'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
      qualification: json['qualification'] == null
          ? null
          : CodeableConcept.fromJson(
              json['qualification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimCareTeamImplToJson(_$ClaimCareTeamImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['provider'] = instance.provider.toJson();
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('_responsible', instance.responsibleElement?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('qualification', instance.qualification?.toJson());
  return val;
}

_$ClaimSupportingInfoImpl _$$ClaimSupportingInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClaimSupportingInfoImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      timingDate: json['timingDate'] == null
          ? null
          : FhirDate.fromJson(json['timingDate'] as String),
      timingDateElement: json['_timingDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_timingDate'] as Map<String, dynamic>),
      timingPeriod: json['timingPeriod'] == null
          ? null
          : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
      valueBoolean: json['valueBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_valueBoolean'] as Map<String, dynamic>),
      valueString: json['valueString'] as String?,
      valueStringElement: json['_valueString'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_valueString'] as Map<String, dynamic>),
      valueQuantity: json['valueQuantity'] == null
          ? null
          : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueAttachment: json['valueAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>),
      valueReference: json['valueReference'] == null
          ? null
          : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
      reason: json['reason'] == null
          ? null
          : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimSupportingInfoImplToJson(
    _$ClaimSupportingInfoImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['category'] = instance.category.toJson();
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('timingDate', instance.timingDate?.toJson());
  writeNotNull('_timingDate', instance.timingDateElement?.toJson());
  writeNotNull('timingPeriod', instance.timingPeriod?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean?.toJson());
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('reason', instance.reason?.toJson());
  return val;
}

_$ClaimDiagnosisImpl _$$ClaimDiagnosisImplFromJson(Map<String, dynamic> json) =>
    _$ClaimDiagnosisImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      diagnosisCodeableConcept: json['diagnosisCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['diagnosisCodeableConcept'] as Map<String, dynamic>),
      diagnosisReference: json['diagnosisReference'] == null
          ? null
          : Reference.fromJson(
              json['diagnosisReference'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      onAdmission: json['onAdmission'] == null
          ? null
          : CodeableConcept.fromJson(
              json['onAdmission'] as Map<String, dynamic>),
      packageCode: json['packageCode'] == null
          ? null
          : CodeableConcept.fromJson(
              json['packageCode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimDiagnosisImplToJson(
    _$ClaimDiagnosisImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull(
      'diagnosisCodeableConcept', instance.diagnosisCodeableConcept?.toJson());
  writeNotNull('diagnosisReference', instance.diagnosisReference?.toJson());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('onAdmission', instance.onAdmission?.toJson());
  writeNotNull('packageCode', instance.packageCode?.toJson());
  return val;
}

_$ClaimProcedureImpl _$$ClaimProcedureImplFromJson(Map<String, dynamic> json) =>
    _$ClaimProcedureImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : PrimitiveElement.fromJson(json['_date'] as Map<String, dynamic>),
      procedureCodeableConcept: json['procedureCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['procedureCodeableConcept'] as Map<String, dynamic>),
      procedureReference: json['procedureReference'] == null
          ? null
          : Reference.fromJson(
              json['procedureReference'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClaimProcedureImplToJson(
    _$ClaimProcedureImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull(
      'procedureCodeableConcept', instance.procedureCodeableConcept?.toJson());
  writeNotNull('procedureReference', instance.procedureReference?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  return val;
}

_$ClaimInsuranceImpl _$$ClaimInsuranceImplFromJson(Map<String, dynamic> json) =>
    _$ClaimInsuranceImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      focal: json['focal'] == null ? null : FhirBoolean.fromJson(json['focal']),
      focalElement: json['_focal'] == null
          ? null
          : PrimitiveElement.fromJson(json['_focal'] as Map<String, dynamic>),
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      businessArrangement: json['businessArrangement'] as String?,
      businessArrangementElement: json['_businessArrangement'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_businessArrangement'] as Map<String, dynamic>),
      preAuthRef: (json['preAuthRef'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preAuthRefElement: (json['_preAuthRef'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      claimResponse: json['claimResponse'] == null
          ? null
          : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimInsuranceImplToJson(
    _$ClaimInsuranceImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('focal', instance.focal?.toJson());
  writeNotNull('_focal', instance.focalElement?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  val['coverage'] = instance.coverage.toJson();
  writeNotNull('businessArrangement', instance.businessArrangement);
  writeNotNull(
      '_businessArrangement', instance.businessArrangementElement?.toJson());
  writeNotNull('preAuthRef', instance.preAuthRef);
  writeNotNull('_preAuthRef',
      instance.preAuthRefElement?.map((e) => e?.toJson()).toList());
  writeNotNull('claimResponse', instance.claimResponse?.toJson());
  return val;
}

_$ClaimAccidentImpl _$$ClaimAccidentImplFromJson(Map<String, dynamic> json) =>
    _$ClaimAccidentImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] == null
          ? null
          : FhirDate.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : PrimitiveElement.fromJson(json['_date'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      locationAddress: json['locationAddress'] == null
          ? null
          : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
      locationReference: json['locationReference'] == null
          ? null
          : Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClaimAccidentImplToJson(_$ClaimAccidentImpl instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  return val;
}

_$ClaimItemImpl _$$ClaimItemImplFromJson(Map<String, dynamic> json) =>
    _$ClaimItemImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      careTeamSequence: (json['careTeamSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      careTeamSequenceElement: (json['_careTeamSequence'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosisSequence: (json['diagnosisSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      diagnosisSequenceElement: (json['_diagnosisSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      procedureSequence: (json['procedureSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      procedureSequenceElement: (json['_procedureSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      informationSequence: (json['informationSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      informationSequenceElement:
          (json['_informationSequence'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      revenue: json['revenue'] == null
          ? null
          : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      servicedDate: json['servicedDate'] == null
          ? null
          : FhirDate.fromJson(json['servicedDate'] as String),
      servicedDateElement: json['_servicedDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_servicedDate'] as Map<String, dynamic>),
      servicedPeriod: json['servicedPeriod'] == null
          ? null
          : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
      locationCodeableConcept: json['locationCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>),
      locationAddress: json['locationAddress'] == null
          ? null
          : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
      locationReference: json['locationReference'] == null
          ? null
          : Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : PrimitiveElement.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      bodySite: json['bodySite'] == null
          ? null
          : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => ClaimDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClaimItemImplToJson(_$ClaimItemImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('careTeamSequence',
      instance.careTeamSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_careTeamSequence',
      instance.careTeamSequenceElement?.map((e) => e?.toJson()).toList());
  writeNotNull('diagnosisSequence',
      instance.diagnosisSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_diagnosisSequence',
      instance.diagnosisSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('procedureSequence',
      instance.procedureSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_procedureSequence',
      instance.procedureSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('informationSequence',
      instance.informationSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_informationSequence',
      instance.informationSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('servicedDate', instance.servicedDate?.toJson());
  writeNotNull('_servicedDate', instance.servicedDateElement?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  writeNotNull(
      'locationCodeableConcept', instance.locationCodeableConcept?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('subSite', instance.subSite?.map((e) => e.toJson()).toList());
  writeNotNull(
      'encounter', instance.encounter?.map((e) => e.toJson()).toList());
  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}

_$ClaimDetailImpl _$$ClaimDetailImplFromJson(Map<String, dynamic> json) =>
    _$ClaimDetailImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      revenue: json['revenue'] == null
          ? null
          : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : PrimitiveElement.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map((e) => ClaimSubDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClaimDetailImplToJson(_$ClaimDetailImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e.toJson()).toList());
  return val;
}

_$ClaimSubDetailImpl _$$ClaimSubDetailImplFromJson(Map<String, dynamic> json) =>
    _$ClaimSubDetailImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_sequence'] as Map<String, dynamic>),
      revenue: json['revenue'] == null
          ? null
          : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : PrimitiveElement.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClaimSubDetailImplToJson(
    _$ClaimSubDetailImpl instance) {
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
  writeNotNull('sequence', instance.sequence?.toJson());
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  return val;
}
