// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationDefinitionImpl _$$OperationDefinitionImplFromJson(
        Map<String, dynamic> json) =>
    _$OperationDefinitionImpl(
      resourceType: $enumDecodeNullable(
              _$R4ResourceTypeEnumMap, json['resourceType'],
              unknownValue: R4ResourceType.OperationDefinition) ??
          R4ResourceType.OperationDefinition,
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
      url: json['url'] == null ? null : FhirUri.fromJson(json['url']),
      urlElement: json['_url'] == null
          ? null
          : PrimitiveElement.fromJson(json['_url'] as Map<String, dynamic>),
      version: json['version'] as String?,
      versionElement: json['_version'] == null
          ? null
          : PrimitiveElement.fromJson(json['_version'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nameElement: json['_name'] == null
          ? null
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      title: json['title'] as String?,
      titleElement: json['_title'] == null
          ? null
          : PrimitiveElement.fromJson(json['_title'] as Map<String, dynamic>),
      status: json['status'] == null ? null : FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : PrimitiveElement.fromJson(json['_status'] as Map<String, dynamic>),
      kind: json['kind'] == null ? null : FhirCode.fromJson(json['kind']),
      kindElement: json['_kind'] == null
          ? null
          : PrimitiveElement.fromJson(json['_kind'] as Map<String, dynamic>),
      experimental: json['experimental'] == null
          ? null
          : FhirBoolean.fromJson(json['experimental']),
      experimentalElement: json['_experimental'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_experimental'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : PrimitiveElement.fromJson(json['_date'] as Map<String, dynamic>),
      publisher: json['publisher'] as String?,
      publisherElement: json['_publisher'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_publisher'] as Map<String, dynamic>),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      useContext: (json['useContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      purpose: json['purpose'] == null
          ? null
          : FhirMarkdown.fromJson(json['purpose']),
      purposeElement: json['_purpose'] == null
          ? null
          : PrimitiveElement.fromJson(json['_purpose'] as Map<String, dynamic>),
      affectsState: json['affectsState'] == null
          ? null
          : FhirBoolean.fromJson(json['affectsState']),
      affectsStateElement: json['_affectsState'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_affectsState'] as Map<String, dynamic>),
      code: json['code'] == null ? null : FhirCode.fromJson(json['code']),
      codeElement: json['_code'] == null
          ? null
          : PrimitiveElement.fromJson(json['_code'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : FhirMarkdown.fromJson(json['comment']),
      commentElement: json['_comment'] == null
          ? null
          : PrimitiveElement.fromJson(json['_comment'] as Map<String, dynamic>),
      base: json['base'] == null ? null : FhirCanonical.fromJson(json['base']),
      resource:
          (json['resource'] as List<dynamic>?)?.map(FhirCode.fromJson).toList(),
      resourceElement: (json['_resource'] as List<dynamic>?)
          ?.map((e) => PrimitiveElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      system:
          json['system'] == null ? null : FhirBoolean.fromJson(json['system']),
      systemElement: json['_system'] == null
          ? null
          : PrimitiveElement.fromJson(json['_system'] as Map<String, dynamic>),
      type: json['type'] == null ? null : FhirBoolean.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : PrimitiveElement.fromJson(json['_type'] as Map<String, dynamic>),
      instance: json['instance'] == null
          ? null
          : FhirBoolean.fromJson(json['instance']),
      instanceElement: json['_instance'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_instance'] as Map<String, dynamic>),
      inputProfile: json['inputProfile'] == null
          ? null
          : FhirCanonical.fromJson(json['inputProfile']),
      outputProfile: json['outputProfile'] == null
          ? null
          : FhirCanonical.fromJson(json['outputProfile']),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) =>
              OperationDefinitionParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      overload: (json['overload'] as List<dynamic>?)
          ?.map((e) =>
              OperationDefinitionOverload.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OperationDefinitionImplToJson(
    _$OperationDefinitionImpl instance) {
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
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('kind', instance.kind?.toJson());
  writeNotNull('_kind', instance.kindElement?.toJson());
  writeNotNull('experimental', instance.experimental?.toJson());
  writeNotNull('_experimental', instance.experimentalElement?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('publisher', instance.publisher);
  writeNotNull('_publisher', instance.publisherElement?.toJson());
  writeNotNull('contact', instance.contact?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull(
      'useContext', instance.useContext?.map((e) => e.toJson()).toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e.toJson()).toList());
  writeNotNull('purpose', instance.purpose?.toJson());
  writeNotNull('_purpose', instance.purposeElement?.toJson());
  writeNotNull('affectsState', instance.affectsState?.toJson());
  writeNotNull('_affectsState', instance.affectsStateElement?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('_code', instance.codeElement?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('_comment', instance.commentElement?.toJson());
  writeNotNull('base', instance.base?.toJson());
  writeNotNull('resource', instance.resource?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_resource', instance.resourceElement?.map((e) => e.toJson()).toList());
  writeNotNull('system', instance.system?.toJson());
  writeNotNull('_system', instance.systemElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('instance', instance.instance?.toJson());
  writeNotNull('_instance', instance.instanceElement?.toJson());
  writeNotNull('inputProfile', instance.inputProfile?.toJson());
  writeNotNull('outputProfile', instance.outputProfile?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e.toJson()).toList());
  writeNotNull('overload', instance.overload?.map((e) => e.toJson()).toList());
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

_$OperationDefinitionParameterImpl _$$OperationDefinitionParameterImplFromJson(
        Map<String, dynamic> json) =>
    _$OperationDefinitionParameterImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] == null ? null : FhirCode.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      use: json['use'] == null ? null : FhirCode.fromJson(json['use']),
      useElement: json['_use'] == null
          ? null
          : PrimitiveElement.fromJson(json['_use'] as Map<String, dynamic>),
      min: json['min'] == null ? null : FhirInteger.fromJson(json['min']),
      minElement: json['_min'] == null
          ? null
          : PrimitiveElement.fromJson(json['_min'] as Map<String, dynamic>),
      max: json['max'] as String?,
      maxElement: json['_max'] == null
          ? null
          : PrimitiveElement.fromJson(json['_max'] as Map<String, dynamic>),
      documentation: json['documentation'] as String?,
      documentationElement: json['_documentation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_documentation'] as Map<String, dynamic>),
      type: json['type'] == null ? null : FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : PrimitiveElement.fromJson(json['_type'] as Map<String, dynamic>),
      targetProfile: (json['targetProfile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      searchType: json['searchType'] == null
          ? null
          : FhirCode.fromJson(json['searchType']),
      searchTypeElement: json['_searchType'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_searchType'] as Map<String, dynamic>),
      binding: json['binding'] == null
          ? null
          : OperationDefinitionBinding.fromJson(
              json['binding'] as Map<String, dynamic>),
      referencedFrom: (json['referencedFrom'] as List<dynamic>?)
          ?.map((e) => OperationDefinitionReferencedFrom.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      part_: (json['part'] as List<dynamic>?)
          ?.map((e) =>
              OperationDefinitionParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OperationDefinitionParameterImplToJson(
    _$OperationDefinitionParameterImpl instance) {
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
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('use', instance.use?.toJson());
  writeNotNull('_use', instance.useElement?.toJson());
  writeNotNull('min', instance.min?.toJson());
  writeNotNull('_min', instance.minElement?.toJson());
  writeNotNull('max', instance.max);
  writeNotNull('_max', instance.maxElement?.toJson());
  writeNotNull('documentation', instance.documentation);
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull(
      'targetProfile', instance.targetProfile?.map((e) => e.toJson()).toList());
  writeNotNull('searchType', instance.searchType?.toJson());
  writeNotNull('_searchType', instance.searchTypeElement?.toJson());
  writeNotNull('binding', instance.binding?.toJson());
  writeNotNull('referencedFrom',
      instance.referencedFrom?.map((e) => e.toJson()).toList());
  writeNotNull('part', instance.part_?.map((e) => e.toJson()).toList());
  return val;
}

_$OperationDefinitionBindingImpl _$$OperationDefinitionBindingImplFromJson(
        Map<String, dynamic> json) =>
    _$OperationDefinitionBindingImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      strength:
          json['strength'] == null ? null : FhirCode.fromJson(json['strength']),
      strengthElement: json['_strength'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_strength'] as Map<String, dynamic>),
      valueSet: FhirCanonical.fromJson(json['valueSet']),
    );

Map<String, dynamic> _$$OperationDefinitionBindingImplToJson(
    _$OperationDefinitionBindingImpl instance) {
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
  writeNotNull('strength', instance.strength?.toJson());
  writeNotNull('_strength', instance.strengthElement?.toJson());
  val['valueSet'] = instance.valueSet.toJson();
  return val;
}

_$OperationDefinitionReferencedFromImpl
    _$$OperationDefinitionReferencedFromImplFromJson(
            Map<String, dynamic> json) =>
        _$OperationDefinitionReferencedFromImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          source: json['source'] as String?,
          sourceElement: json['_source'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_source'] as Map<String, dynamic>),
          sourceId: json['sourceId'] as String?,
          sourceIdElement: json['_sourceId'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_sourceId'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$OperationDefinitionReferencedFromImplToJson(
    _$OperationDefinitionReferencedFromImpl instance) {
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
  writeNotNull('source', instance.source);
  writeNotNull('_source', instance.sourceElement?.toJson());
  writeNotNull('sourceId', instance.sourceId);
  writeNotNull('_sourceId', instance.sourceIdElement?.toJson());
  return val;
}

_$OperationDefinitionOverloadImpl _$$OperationDefinitionOverloadImplFromJson(
        Map<String, dynamic> json) =>
    _$OperationDefinitionOverloadImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameterName: (json['parameterName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      parameterNameElement: (json['_parameterName'] as List<dynamic>?)
          ?.map((e) => PrimitiveElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'] as String?,
      commentElement: json['_comment'] == null
          ? null
          : PrimitiveElement.fromJson(json['_comment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OperationDefinitionOverloadImplToJson(
    _$OperationDefinitionOverloadImpl instance) {
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
  writeNotNull('parameterName', instance.parameterName);
  writeNotNull('_parameterName',
      instance.parameterNameElement?.map((e) => e.toJson()).toList());
  writeNotNull('comment', instance.comment);
  writeNotNull('_comment', instance.commentElement?.toJson());
  return val;
}
