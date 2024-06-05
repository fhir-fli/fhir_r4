// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutritionOrderImpl _$$NutritionOrderImplFromJson(Map<String, dynamic> json) =>
    _$NutritionOrderImpl(
      resourceType: $enumDecodeNullable(
              _$R4ResourceTypeEnumMap, json['resourceType'],
              unknownValue: R4ResourceType.NutritionOrder) ??
          R4ResourceType.NutritionOrder,
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
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map(FhirUri.fromJson)
          .toList(),
      instantiatesUriElement: (json['_instantiatesUri'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      instantiates: (json['instantiates'] as List<dynamic>?)
          ?.map(FhirUri.fromJson)
          .toList(),
      instantiatesElement: (json['_instantiates'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null ? null : FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : PrimitiveElement.fromJson(json['_status'] as Map<String, dynamic>),
      intent: json['intent'] == null ? null : FhirCode.fromJson(json['intent']),
      intentElement: json['_intent'] == null
          ? null
          : PrimitiveElement.fromJson(json['_intent'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      encounter: json['encounter'] == null
          ? null
          : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
      dateTime: json['dateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['dateTime'] as String),
      dateTimeElement: json['_dateTime'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_dateTime'] as Map<String, dynamic>),
      orderer: json['orderer'] == null
          ? null
          : Reference.fromJson(json['orderer'] as Map<String, dynamic>),
      allergyIntolerance: (json['allergyIntolerance'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodPreferenceModifier: (json['foodPreferenceModifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      excludeFoodModifier: (json['excludeFoodModifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      oralDiet: json['oralDiet'] == null
          ? null
          : NutritionOrderOralDiet.fromJson(
              json['oralDiet'] as Map<String, dynamic>),
      supplement: (json['supplement'] as List<dynamic>?)
          ?.map((e) =>
              NutritionOrderSupplement.fromJson(e as Map<String, dynamic>))
          .toList(),
      enteralFormula: json['enteralFormula'] == null
          ? null
          : NutritionOrderEnteralFormula.fromJson(
              json['enteralFormula'] as Map<String, dynamic>),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NutritionOrderImplToJson(
    _$NutritionOrderImpl instance) {
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
  writeNotNull('instantiatesCanonical',
      instance.instantiatesCanonical?.map((e) => e.toJson()).toList());
  writeNotNull('instantiatesUri',
      instance.instantiatesUri?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiatesUri',
      instance.instantiatesUriElement?.map((e) => e?.toJson()).toList());
  writeNotNull(
      'instantiates', instance.instantiates?.map((e) => e.toJson()).toList());
  writeNotNull('_instantiates',
      instance.instantiatesElement?.map((e) => e?.toJson()).toList());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('intent', instance.intent?.toJson());
  writeNotNull('_intent', instance.intentElement?.toJson());
  val['patient'] = instance.patient.toJson();
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('dateTime', instance.dateTime?.toJson());
  writeNotNull('_dateTime', instance.dateTimeElement?.toJson());
  writeNotNull('orderer', instance.orderer?.toJson());
  writeNotNull('allergyIntolerance',
      instance.allergyIntolerance?.map((e) => e.toJson()).toList());
  writeNotNull('foodPreferenceModifier',
      instance.foodPreferenceModifier?.map((e) => e.toJson()).toList());
  writeNotNull('excludeFoodModifier',
      instance.excludeFoodModifier?.map((e) => e.toJson()).toList());
  writeNotNull('oralDiet', instance.oralDiet?.toJson());
  writeNotNull(
      'supplement', instance.supplement?.map((e) => e.toJson()).toList());
  writeNotNull('enteralFormula', instance.enteralFormula?.toJson());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
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

_$NutritionOrderOralDietImpl _$$NutritionOrderOralDietImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionOrderOralDietImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => Timing.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map(
              (e) => NutritionOrderNutrient.fromJson(e as Map<String, dynamic>))
          .toList(),
      texture: (json['texture'] as List<dynamic>?)
          ?.map(
              (e) => NutritionOrderTexture.fromJson(e as Map<String, dynamic>))
          .toList(),
      fluidConsistencyType: (json['fluidConsistencyType'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      instruction: json['instruction'] as String?,
      instructionElement: json['_instruction'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_instruction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NutritionOrderOralDietImplToJson(
    _$NutritionOrderOralDietImpl instance) {
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
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('schedule', instance.schedule?.map((e) => e.toJson()).toList());
  writeNotNull('nutrient', instance.nutrient?.map((e) => e.toJson()).toList());
  writeNotNull('texture', instance.texture?.map((e) => e.toJson()).toList());
  writeNotNull('fluidConsistencyType',
      instance.fluidConsistencyType?.map((e) => e.toJson()).toList());
  writeNotNull('instruction', instance.instruction);
  writeNotNull('_instruction', instance.instructionElement?.toJson());
  return val;
}

_$NutritionOrderNutrientImpl _$$NutritionOrderNutrientImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionOrderNutrientImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifier: json['modifier'] == null
          ? null
          : CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : Quantity.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NutritionOrderNutrientImplToJson(
    _$NutritionOrderNutrientImpl instance) {
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
  writeNotNull('modifier', instance.modifier?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

_$NutritionOrderTextureImpl _$$NutritionOrderTextureImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionOrderTextureImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifier: json['modifier'] == null
          ? null
          : CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>),
      foodType: json['foodType'] == null
          ? null
          : CodeableConcept.fromJson(json['foodType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NutritionOrderTextureImplToJson(
    _$NutritionOrderTextureImpl instance) {
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
  writeNotNull('modifier', instance.modifier?.toJson());
  writeNotNull('foodType', instance.foodType?.toJson());
  return val;
}

_$NutritionOrderSupplementImpl _$$NutritionOrderSupplementImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionOrderSupplementImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      productName: json['productName'] as String?,
      productNameElement: json['_productName'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_productName'] as Map<String, dynamic>),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => Timing.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      instruction: json['instruction'] as String?,
      instructionElement: json['_instruction'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_instruction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NutritionOrderSupplementImplToJson(
    _$NutritionOrderSupplementImpl instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('productName', instance.productName);
  writeNotNull('_productName', instance.productNameElement?.toJson());
  writeNotNull('schedule', instance.schedule?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('instruction', instance.instruction);
  writeNotNull('_instruction', instance.instructionElement?.toJson());
  return val;
}

_$NutritionOrderEnteralFormulaImpl _$$NutritionOrderEnteralFormulaImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionOrderEnteralFormulaImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseFormulaType: json['baseFormulaType'] == null
          ? null
          : CodeableConcept.fromJson(
              json['baseFormulaType'] as Map<String, dynamic>),
      baseFormulaProductName: json['baseFormulaProductName'] as String?,
      baseFormulaProductNameElement: json['_baseFormulaProductName'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_baseFormulaProductName'] as Map<String, dynamic>),
      additiveType: json['additiveType'] == null
          ? null
          : CodeableConcept.fromJson(
              json['additiveType'] as Map<String, dynamic>),
      additiveProductName: json['additiveProductName'] as String?,
      additiveProductNameElement: json['_additiveProductName'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_additiveProductName'] as Map<String, dynamic>),
      caloricDensity: json['caloricDensity'] == null
          ? null
          : Quantity.fromJson(json['caloricDensity'] as Map<String, dynamic>),
      routeofAdministration: json['routeofAdministration'] == null
          ? null
          : CodeableConcept.fromJson(
              json['routeofAdministration'] as Map<String, dynamic>),
      administration: (json['administration'] as List<dynamic>?)
          ?.map((e) =>
              NutritionOrderAdministration.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxVolumeToDeliver: json['maxVolumeToDeliver'] == null
          ? null
          : Quantity.fromJson(
              json['maxVolumeToDeliver'] as Map<String, dynamic>),
      administrationInstruction: json['administrationInstruction'] as String?,
      administrationInstructionElement:
          json['_administrationInstruction'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_administrationInstruction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NutritionOrderEnteralFormulaImplToJson(
    _$NutritionOrderEnteralFormulaImpl instance) {
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
  writeNotNull('baseFormulaType', instance.baseFormulaType?.toJson());
  writeNotNull('baseFormulaProductName', instance.baseFormulaProductName);
  writeNotNull('_baseFormulaProductName',
      instance.baseFormulaProductNameElement?.toJson());
  writeNotNull('additiveType', instance.additiveType?.toJson());
  writeNotNull('additiveProductName', instance.additiveProductName);
  writeNotNull(
      '_additiveProductName', instance.additiveProductNameElement?.toJson());
  writeNotNull('caloricDensity', instance.caloricDensity?.toJson());
  writeNotNull(
      'routeofAdministration', instance.routeofAdministration?.toJson());
  writeNotNull('administration',
      instance.administration?.map((e) => e.toJson()).toList());
  writeNotNull('maxVolumeToDeliver', instance.maxVolumeToDeliver?.toJson());
  writeNotNull('administrationInstruction', instance.administrationInstruction);
  writeNotNull('_administrationInstruction',
      instance.administrationInstructionElement?.toJson());
  return val;
}

_$NutritionOrderAdministrationImpl _$$NutritionOrderAdministrationImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionOrderAdministrationImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule: json['schedule'] == null
          ? null
          : Timing.fromJson(json['schedule'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      rateQuantity: json['rateQuantity'] == null
          ? null
          : Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>),
      rateRatio: json['rateRatio'] == null
          ? null
          : Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NutritionOrderAdministrationImplToJson(
    _$NutritionOrderAdministrationImpl instance) {
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
  writeNotNull('schedule', instance.schedule?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('rateQuantity', instance.rateQuantity?.toJson());
  writeNotNull('rateRatio', instance.rateRatio?.toJson());
  return val;
}
