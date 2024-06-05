// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminology_capabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TerminologyCapabilitiesImpl _$$TerminologyCapabilitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$TerminologyCapabilitiesImpl(
      resourceType: $enumDecodeNullable(
              _$R4ResourceTypeEnumMap, json['resourceType'],
              unknownValue: R4ResourceType.TerminologyCapabilities) ??
          R4ResourceType.TerminologyCapabilities,
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
      copyright: json['copyright'] == null
          ? null
          : FhirMarkdown.fromJson(json['copyright']),
      copyrightElement: json['_copyright'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_copyright'] as Map<String, dynamic>),
      kind: json['kind'] == null ? null : FhirCode.fromJson(json['kind']),
      kindElement: json['_kind'] == null
          ? null
          : PrimitiveElement.fromJson(json['_kind'] as Map<String, dynamic>),
      software: json['software'] == null
          ? null
          : TerminologyCapabilitiesSoftware.fromJson(
              json['software'] as Map<String, dynamic>),
      implementation: json['implementation'] == null
          ? null
          : TerminologyCapabilitiesImplementation.fromJson(
              json['implementation'] as Map<String, dynamic>),
      lockedDate: json['lockedDate'] == null
          ? null
          : FhirBoolean.fromJson(json['lockedDate']),
      lockedDateElement: json['_lockedDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_lockedDate'] as Map<String, dynamic>),
      codeSystem: (json['codeSystem'] as List<dynamic>?)
          ?.map((e) => TerminologyCapabilitiesCodeSystem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      expansion: json['expansion'] == null
          ? null
          : TerminologyCapabilitiesExpansion.fromJson(
              json['expansion'] as Map<String, dynamic>),
      codeSearch: json['codeSearch'] == null
          ? null
          : FhirCode.fromJson(json['codeSearch']),
      codeSearchElement: json['_codeSearch'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_codeSearch'] as Map<String, dynamic>),
      validateCode: json['validateCode'] == null
          ? null
          : TerminologyCapabilitiesValidateCode.fromJson(
              json['validateCode'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : TerminologyCapabilitiesTranslation.fromJson(
              json['translation'] as Map<String, dynamic>),
      closure: json['closure'] == null
          ? null
          : TerminologyCapabilitiesClosure.fromJson(
              json['closure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TerminologyCapabilitiesImplToJson(
    _$TerminologyCapabilitiesImpl instance) {
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
  writeNotNull('copyright', instance.copyright?.toJson());
  writeNotNull('_copyright', instance.copyrightElement?.toJson());
  writeNotNull('kind', instance.kind?.toJson());
  writeNotNull('_kind', instance.kindElement?.toJson());
  writeNotNull('software', instance.software?.toJson());
  writeNotNull('implementation', instance.implementation?.toJson());
  writeNotNull('lockedDate', instance.lockedDate?.toJson());
  writeNotNull('_lockedDate', instance.lockedDateElement?.toJson());
  writeNotNull(
      'codeSystem', instance.codeSystem?.map((e) => e.toJson()).toList());
  writeNotNull('expansion', instance.expansion?.toJson());
  writeNotNull('codeSearch', instance.codeSearch?.toJson());
  writeNotNull('_codeSearch', instance.codeSearchElement?.toJson());
  writeNotNull('validateCode', instance.validateCode?.toJson());
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('closure', instance.closure?.toJson());
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

_$TerminologyCapabilitiesSoftwareImpl
    _$$TerminologyCapabilitiesSoftwareImplFromJson(Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesSoftwareImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
          nameElement: json['_name'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_name'] as Map<String, dynamic>),
          version: json['version'] as String?,
          versionElement: json['_version'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_version'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesSoftwareImplToJson(
    _$TerminologyCapabilitiesSoftwareImpl instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('version', instance.version);
  writeNotNull('_version', instance.versionElement?.toJson());
  return val;
}

_$TerminologyCapabilitiesImplementationImpl
    _$$TerminologyCapabilitiesImplementationImplFromJson(
            Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesImplementationImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          description: json['description'] as String?,
          descriptionElement: json['_description'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_description'] as Map<String, dynamic>),
          url: json['url'] == null ? null : FhirUrl.fromJson(json['url']),
          urlElement: json['_url'] == null
              ? null
              : PrimitiveElement.fromJson(json['_url'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesImplementationImplToJson(
    _$TerminologyCapabilitiesImplementationImpl instance) {
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
  writeNotNull('description', instance.description);
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('url', instance.url?.toJson());
  writeNotNull('_url', instance.urlElement?.toJson());
  return val;
}

_$TerminologyCapabilitiesCodeSystemImpl
    _$$TerminologyCapabilitiesCodeSystemImplFromJson(
            Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesCodeSystemImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          uri: json['uri'] == null ? null : FhirCanonical.fromJson(json['uri']),
          version: (json['version'] as List<dynamic>?)
              ?.map((e) => TerminologyCapabilitiesVersion.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          subsumption: json['subsumption'] == null
              ? null
              : FhirBoolean.fromJson(json['subsumption']),
          subsumptionElement: json['_subsumption'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_subsumption'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesCodeSystemImplToJson(
    _$TerminologyCapabilitiesCodeSystemImpl instance) {
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
  writeNotNull('uri', instance.uri?.toJson());
  writeNotNull('version', instance.version?.map((e) => e.toJson()).toList());
  writeNotNull('subsumption', instance.subsumption?.toJson());
  writeNotNull('_subsumption', instance.subsumptionElement?.toJson());
  return val;
}

_$TerminologyCapabilitiesVersionImpl
    _$$TerminologyCapabilitiesVersionImplFromJson(Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesVersionImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String?,
          codeElement: json['_code'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_code'] as Map<String, dynamic>),
          isDefault: json['isDefault'] == null
              ? null
              : FhirBoolean.fromJson(json['isDefault']),
          isDefaultElement: json['_isDefault'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_isDefault'] as Map<String, dynamic>),
          compositional: json['compositional'] == null
              ? null
              : FhirBoolean.fromJson(json['compositional']),
          compositionalElement: json['_compositional'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_compositional'] as Map<String, dynamic>),
          language: (json['language'] as List<dynamic>?)
              ?.map(FhirCode.fromJson)
              .toList(),
          languageElement: (json['_language'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Element.fromJson(e as Map<String, dynamic>))
              .toList(),
          filter: (json['filter'] as List<dynamic>?)
              ?.map((e) => TerminologyCapabilitiesFilter.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          property: (json['property'] as List<dynamic>?)
              ?.map(FhirCode.fromJson)
              .toList(),
          propertyElement: (json['_property'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Element.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesVersionImplToJson(
    _$TerminologyCapabilitiesVersionImpl instance) {
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
  writeNotNull('code', instance.code);
  writeNotNull('_code', instance.codeElement?.toJson());
  writeNotNull('isDefault', instance.isDefault?.toJson());
  writeNotNull('_isDefault', instance.isDefaultElement?.toJson());
  writeNotNull('compositional', instance.compositional?.toJson());
  writeNotNull('_compositional', instance.compositionalElement?.toJson());
  writeNotNull('language', instance.language?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_language', instance.languageElement?.map((e) => e?.toJson()).toList());
  writeNotNull('filter', instance.filter?.map((e) => e.toJson()).toList());
  writeNotNull('property', instance.property?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_property', instance.propertyElement?.map((e) => e?.toJson()).toList());
  return val;
}

_$TerminologyCapabilitiesFilterImpl
    _$$TerminologyCapabilitiesFilterImplFromJson(Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesFilterImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] == null ? null : FhirCode.fromJson(json['code']),
          codeElement: json['_code'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_code'] as Map<String, dynamic>),
          op: (json['op'] as List<dynamic>?)?.map(FhirCode.fromJson).toList(),
          opElement: (json['_op'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Element.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesFilterImplToJson(
    _$TerminologyCapabilitiesFilterImpl instance) {
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
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('_code', instance.codeElement?.toJson());
  writeNotNull('op', instance.op?.map((e) => e.toJson()).toList());
  writeNotNull('_op', instance.opElement?.map((e) => e?.toJson()).toList());
  return val;
}

_$TerminologyCapabilitiesExpansionImpl
    _$$TerminologyCapabilitiesExpansionImplFromJson(
            Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesExpansionImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          hierarchical: json['hierarchical'] == null
              ? null
              : FhirBoolean.fromJson(json['hierarchical']),
          hierarchicalElement: json['_hierarchical'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_hierarchical'] as Map<String, dynamic>),
          paging: json['paging'] == null
              ? null
              : FhirBoolean.fromJson(json['paging']),
          pagingElement: json['_paging'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_paging'] as Map<String, dynamic>),
          incomplete: json['incomplete'] == null
              ? null
              : FhirBoolean.fromJson(json['incomplete']),
          incompleteElement: json['_incomplete'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_incomplete'] as Map<String, dynamic>),
          parameter: (json['parameter'] as List<dynamic>?)
              ?.map((e) => TerminologyCapabilitiesParameter.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          textFilter: json['textFilter'] == null
              ? null
              : FhirMarkdown.fromJson(json['textFilter']),
          textFilterElement: json['_textFilter'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_textFilter'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesExpansionImplToJson(
    _$TerminologyCapabilitiesExpansionImpl instance) {
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
  writeNotNull('hierarchical', instance.hierarchical?.toJson());
  writeNotNull('_hierarchical', instance.hierarchicalElement?.toJson());
  writeNotNull('paging', instance.paging?.toJson());
  writeNotNull('_paging', instance.pagingElement?.toJson());
  writeNotNull('incomplete', instance.incomplete?.toJson());
  writeNotNull('_incomplete', instance.incompleteElement?.toJson());
  writeNotNull(
      'parameter', instance.parameter?.map((e) => e.toJson()).toList());
  writeNotNull('textFilter', instance.textFilter?.toJson());
  writeNotNull('_textFilter', instance.textFilterElement?.toJson());
  return val;
}

_$TerminologyCapabilitiesParameterImpl
    _$$TerminologyCapabilitiesParameterImplFromJson(
            Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesParameterImpl(
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
              : PrimitiveElement.fromJson(
                  json['_name'] as Map<String, dynamic>),
          documentation: json['documentation'] as String?,
          documentationElement: json['_documentation'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_documentation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesParameterImplToJson(
    _$TerminologyCapabilitiesParameterImpl instance) {
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
  writeNotNull('documentation', instance.documentation);
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

_$TerminologyCapabilitiesValidateCodeImpl
    _$$TerminologyCapabilitiesValidateCodeImplFromJson(
            Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesValidateCodeImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          translations: json['translations'] == null
              ? null
              : FhirBoolean.fromJson(json['translations']),
          translationsElement: json['_translations'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_translations'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesValidateCodeImplToJson(
    _$TerminologyCapabilitiesValidateCodeImpl instance) {
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
  writeNotNull('translations', instance.translations?.toJson());
  writeNotNull('_translations', instance.translationsElement?.toJson());
  return val;
}

_$TerminologyCapabilitiesTranslationImpl
    _$$TerminologyCapabilitiesTranslationImplFromJson(
            Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesTranslationImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          needsMap: json['needsMap'] == null
              ? null
              : FhirBoolean.fromJson(json['needsMap']),
          needsMapElement: json['_needsMap'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_needsMap'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesTranslationImplToJson(
    _$TerminologyCapabilitiesTranslationImpl instance) {
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
  writeNotNull('needsMap', instance.needsMap?.toJson());
  writeNotNull('_needsMap', instance.needsMapElement?.toJson());
  return val;
}

_$TerminologyCapabilitiesClosureImpl
    _$$TerminologyCapabilitiesClosureImplFromJson(Map<String, dynamic> json) =>
        _$TerminologyCapabilitiesClosureImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          translation: json['translation'] == null
              ? null
              : FhirBoolean.fromJson(json['translation']),
          translationElement: json['_translation'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_translation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TerminologyCapabilitiesClosureImplToJson(
    _$TerminologyCapabilitiesClosureImpl instance) {
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
  writeNotNull('translation', instance.translation?.toJson());
  writeNotNull('_translation', instance.translationElement?.toJson());
  return val;
}
