// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capability_statement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CapabilityStatementImpl _$$CapabilityStatementImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementImpl(
      resourceType: $enumDecodeNullable(
              _$R4ResourceTypeEnumMap, json['resourceType'],
              unknownValue: R4ResourceType.CapabilityStatement) ??
          R4ResourceType.CapabilityStatement,
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
      instantiates: (json['instantiates'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      imports: (json['imports'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      software: json['software'] == null
          ? null
          : CapabilityStatementSoftware.fromJson(
              json['software'] as Map<String, dynamic>),
      implementation: json['implementation'] == null
          ? null
          : CapabilityStatementImplementation.fromJson(
              json['implementation'] as Map<String, dynamic>),
      fhirVersion: json['fhirVersion'] == null
          ? null
          : FhirCode.fromJson(json['fhirVersion']),
      fhirVersionElement: json['_fhirVersion'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_fhirVersion'] as Map<String, dynamic>),
      format:
          (json['format'] as List<dynamic>?)?.map(FhirCode.fromJson).toList(),
      formatElement: (json['_format'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      patchFormat: (json['patchFormat'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      patchFormatElement: (json['_patchFormat'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      implementationGuide: (json['implementationGuide'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      rest: (json['rest'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementRest.fromJson(e as Map<String, dynamic>))
          .toList(),
      messaging: (json['messaging'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementMessaging.fromJson(e as Map<String, dynamic>))
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CapabilityStatementImplToJson(
    _$CapabilityStatementImpl instance) {
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
  writeNotNull(
      'instantiates', instance.instantiates?.map((e) => e.toJson()).toList());
  writeNotNull('imports', instance.imports?.map((e) => e.toJson()).toList());
  writeNotNull('software', instance.software?.toJson());
  writeNotNull('implementation', instance.implementation?.toJson());
  writeNotNull('fhirVersion', instance.fhirVersion?.toJson());
  writeNotNull('_fhirVersion', instance.fhirVersionElement?.toJson());
  writeNotNull('format', instance.format?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_format', instance.formatElement?.map((e) => e?.toJson()).toList());
  writeNotNull(
      'patchFormat', instance.patchFormat?.map((e) => e.toJson()).toList());
  writeNotNull('_patchFormat',
      instance.patchFormatElement?.map((e) => e?.toJson()).toList());
  writeNotNull('implementationGuide',
      instance.implementationGuide?.map((e) => e.toJson()).toList());
  writeNotNull('rest', instance.rest?.map((e) => e.toJson()).toList());
  writeNotNull(
      'messaging', instance.messaging?.map((e) => e.toJson()).toList());
  writeNotNull('document', instance.document?.map((e) => e.toJson()).toList());
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

_$CapabilityStatementSoftwareImpl _$$CapabilityStatementSoftwareImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementSoftwareImpl(
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
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      version: json['version'] as String?,
      versionElement: json['_version'] == null
          ? null
          : PrimitiveElement.fromJson(json['_version'] as Map<String, dynamic>),
      releaseDate: json['releaseDate'] == null
          ? null
          : FhirDateTime.fromJson(json['releaseDate'] as String),
      releaseDateElement: json['_releaseDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_releaseDate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CapabilityStatementSoftwareImplToJson(
    _$CapabilityStatementSoftwareImpl instance) {
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
  writeNotNull('releaseDate', instance.releaseDate?.toJson());
  writeNotNull('_releaseDate', instance.releaseDateElement?.toJson());
  return val;
}

_$CapabilityStatementImplementationImpl
    _$$CapabilityStatementImplementationImplFromJson(
            Map<String, dynamic> json) =>
        _$CapabilityStatementImplementationImpl(
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
          custodian: json['custodian'] == null
              ? null
              : Reference.fromJson(json['custodian'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CapabilityStatementImplementationImplToJson(
    _$CapabilityStatementImplementationImpl instance) {
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
  writeNotNull('custodian', instance.custodian?.toJson());
  return val;
}

_$CapabilityStatementRestImpl _$$CapabilityStatementRestImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementRestImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: json['mode'] == null ? null : FhirCode.fromJson(json['mode']),
      modeElement: json['_mode'] == null
          ? null
          : PrimitiveElement.fromJson(json['_mode'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_documentation'] as Map<String, dynamic>),
      security: json['security'] == null
          ? null
          : CapabilityStatementSecurity.fromJson(
              json['security'] as Map<String, dynamic>),
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementInteraction1.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementSearchParam.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementOperation.fromJson(e as Map<String, dynamic>))
          .toList(),
      compartment: (json['compartment'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$CapabilityStatementRestImplToJson(
    _$CapabilityStatementRestImpl instance) {
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
  writeNotNull('mode', instance.mode?.toJson());
  writeNotNull('_mode', instance.modeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull('security', instance.security?.toJson());
  writeNotNull('resource', instance.resource?.map((e) => e.toJson()).toList());
  writeNotNull(
      'interaction', instance.interaction?.map((e) => e.toJson()).toList());
  writeNotNull(
      'searchParam', instance.searchParam?.map((e) => e.toJson()).toList());
  writeNotNull(
      'operation', instance.operation?.map((e) => e.toJson()).toList());
  writeNotNull(
      'compartment', instance.compartment?.map((e) => e.toJson()).toList());
  return val;
}

_$CapabilityStatementSecurityImpl _$$CapabilityStatementSecurityImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementSecurityImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      cors: json['cors'] == null ? null : FhirBoolean.fromJson(json['cors']),
      corsElement: json['_cors'] == null
          ? null
          : PrimitiveElement.fromJson(json['_cors'] as Map<String, dynamic>),
      service: (json['service'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CapabilityStatementSecurityImplToJson(
    _$CapabilityStatementSecurityImpl instance) {
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
  writeNotNull('cors', instance.cors?.toJson());
  writeNotNull('_cors', instance.corsElement?.toJson());
  writeNotNull('service', instance.service?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  return val;
}

_$CapabilityStatementResourceImpl _$$CapabilityStatementResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementResourceImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null ? null : FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : PrimitiveElement.fromJson(json['_type'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : FhirCanonical.fromJson(json['profile']),
      supportedProfile: (json['supportedProfile'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_documentation'] as Map<String, dynamic>),
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementInteraction.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      versioning: json['versioning'] == null
          ? null
          : FhirCode.fromJson(json['versioning']),
      versioningElement: json['_versioning'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_versioning'] as Map<String, dynamic>),
      readHistory: json['readHistory'] == null
          ? null
          : FhirBoolean.fromJson(json['readHistory']),
      readHistoryElement: json['_readHistory'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_readHistory'] as Map<String, dynamic>),
      updateCreate: json['updateCreate'] == null
          ? null
          : FhirBoolean.fromJson(json['updateCreate']),
      updateCreateElement: json['_updateCreate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_updateCreate'] as Map<String, dynamic>),
      conditionalCreate: json['conditionalCreate'] == null
          ? null
          : FhirBoolean.fromJson(json['conditionalCreate']),
      conditionalCreateElement: json['_conditionalCreate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_conditionalCreate'] as Map<String, dynamic>),
      conditionalRead: json['conditionalRead'] == null
          ? null
          : FhirCode.fromJson(json['conditionalRead']),
      conditionalReadElement: json['_conditionalRead'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_conditionalRead'] as Map<String, dynamic>),
      conditionalUpdate: json['conditionalUpdate'] == null
          ? null
          : FhirBoolean.fromJson(json['conditionalUpdate']),
      conditionalUpdateElement: json['_conditionalUpdate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_conditionalUpdate'] as Map<String, dynamic>),
      conditionalDelete: json['conditionalDelete'] == null
          ? null
          : FhirCode.fromJson(json['conditionalDelete']),
      conditionalDeleteElement: json['_conditionalDelete'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_conditionalDelete'] as Map<String, dynamic>),
      referencePolicy: (json['referencePolicy'] as List<dynamic>?)
          ?.map(FhirCode.fromJson)
          .toList(),
      referencePolicyElement: (json['_referencePolicy'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchInclude: (json['searchInclude'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchIncludeElement: (json['_searchInclude'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchRevInclude: (json['searchRevInclude'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchRevIncludeElement: (json['_searchRevInclude'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementSearchParam.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementOperation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CapabilityStatementResourceImplToJson(
    _$CapabilityStatementResourceImpl instance) {
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
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('supportedProfile',
      instance.supportedProfile?.map((e) => e.toJson()).toList());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull(
      'interaction', instance.interaction?.map((e) => e.toJson()).toList());
  writeNotNull('versioning', instance.versioning?.toJson());
  writeNotNull('_versioning', instance.versioningElement?.toJson());
  writeNotNull('readHistory', instance.readHistory?.toJson());
  writeNotNull('_readHistory', instance.readHistoryElement?.toJson());
  writeNotNull('updateCreate', instance.updateCreate?.toJson());
  writeNotNull('_updateCreate', instance.updateCreateElement?.toJson());
  writeNotNull('conditionalCreate', instance.conditionalCreate?.toJson());
  writeNotNull(
      '_conditionalCreate', instance.conditionalCreateElement?.toJson());
  writeNotNull('conditionalRead', instance.conditionalRead?.toJson());
  writeNotNull('_conditionalRead', instance.conditionalReadElement?.toJson());
  writeNotNull('conditionalUpdate', instance.conditionalUpdate?.toJson());
  writeNotNull(
      '_conditionalUpdate', instance.conditionalUpdateElement?.toJson());
  writeNotNull('conditionalDelete', instance.conditionalDelete?.toJson());
  writeNotNull(
      '_conditionalDelete', instance.conditionalDeleteElement?.toJson());
  writeNotNull('referencePolicy',
      instance.referencePolicy?.map((e) => e.toJson()).toList());
  writeNotNull('_referencePolicy',
      instance.referencePolicyElement?.map((e) => e?.toJson()).toList());
  writeNotNull('searchInclude', instance.searchInclude);
  writeNotNull('_searchInclude',
      instance.searchIncludeElement?.map((e) => e?.toJson()).toList());
  writeNotNull('searchRevInclude', instance.searchRevInclude);
  writeNotNull('_searchRevInclude',
      instance.searchRevIncludeElement?.map((e) => e?.toJson()).toList());
  writeNotNull(
      'searchParam', instance.searchParam?.map((e) => e.toJson()).toList());
  writeNotNull(
      'operation', instance.operation?.map((e) => e.toJson()).toList());
  return val;
}

_$CapabilityStatementInteractionImpl
    _$$CapabilityStatementInteractionImplFromJson(Map<String, dynamic> json) =>
        _$CapabilityStatementInteractionImpl(
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
          documentation: json['documentation'] == null
              ? null
              : FhirMarkdown.fromJson(json['documentation']),
          documentationElement: json['_documentation'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_documentation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CapabilityStatementInteractionImplToJson(
    _$CapabilityStatementInteractionImpl instance) {
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
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

_$CapabilityStatementSearchParamImpl
    _$$CapabilityStatementSearchParamImplFromJson(Map<String, dynamic> json) =>
        _$CapabilityStatementSearchParamImpl(
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
          definition: json['definition'] == null
              ? null
              : FhirCanonical.fromJson(json['definition']),
          type: json['type'] == null ? null : FhirCode.fromJson(json['type']),
          typeElement: json['_type'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_type'] as Map<String, dynamic>),
          documentation: json['documentation'] == null
              ? null
              : FhirMarkdown.fromJson(json['documentation']),
          documentationElement: json['_documentation'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_documentation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CapabilityStatementSearchParamImplToJson(
    _$CapabilityStatementSearchParamImpl instance) {
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
  writeNotNull('definition', instance.definition?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

_$CapabilityStatementOperationImpl _$$CapabilityStatementOperationImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementOperationImpl(
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
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      definition: FhirCanonical.fromJson(json['definition']),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_documentation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CapabilityStatementOperationImplToJson(
    _$CapabilityStatementOperationImpl instance) {
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
  val['definition'] = instance.definition.toJson();
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

_$CapabilityStatementInteraction1Impl
    _$$CapabilityStatementInteraction1ImplFromJson(Map<String, dynamic> json) =>
        _$CapabilityStatementInteraction1Impl(
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
          documentation: json['documentation'] == null
              ? null
              : FhirMarkdown.fromJson(json['documentation']),
          documentationElement: json['_documentation'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_documentation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CapabilityStatementInteraction1ImplToJson(
    _$CapabilityStatementInteraction1Impl instance) {
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
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  return val;
}

_$CapabilityStatementMessagingImpl _$$CapabilityStatementMessagingImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementMessagingImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map((e) =>
              CapabilityStatementEndpoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      reliableCache: json['reliableCache'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['reliableCache']),
      reliableCacheElement: json['_reliableCache'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_reliableCache'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_documentation'] as Map<String, dynamic>),
      supportedMessage: (json['supportedMessage'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementSupportedMessage.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CapabilityStatementMessagingImplToJson(
    _$CapabilityStatementMessagingImpl instance) {
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
  writeNotNull('endpoint', instance.endpoint?.map((e) => e.toJson()).toList());
  writeNotNull('reliableCache', instance.reliableCache?.toJson());
  writeNotNull('_reliableCache', instance.reliableCacheElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  writeNotNull('supportedMessage',
      instance.supportedMessage?.map((e) => e.toJson()).toList());
  return val;
}

_$CapabilityStatementEndpointImpl _$$CapabilityStatementEndpointImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementEndpointImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      protocol: Coding.fromJson(json['protocol'] as Map<String, dynamic>),
      address:
          json['address'] == null ? null : FhirUrl.fromJson(json['address']),
      addressElement: json['_address'] == null
          ? null
          : PrimitiveElement.fromJson(json['_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CapabilityStatementEndpointImplToJson(
    _$CapabilityStatementEndpointImpl instance) {
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
  val['protocol'] = instance.protocol.toJson();
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('_address', instance.addressElement?.toJson());
  return val;
}

_$CapabilityStatementSupportedMessageImpl
    _$$CapabilityStatementSupportedMessageImplFromJson(
            Map<String, dynamic> json) =>
        _$CapabilityStatementSupportedMessageImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          mode: json['mode'] == null ? null : FhirCode.fromJson(json['mode']),
          modeElement: json['_mode'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_mode'] as Map<String, dynamic>),
          definition: FhirCanonical.fromJson(json['definition']),
        );

Map<String, dynamic> _$$CapabilityStatementSupportedMessageImplToJson(
    _$CapabilityStatementSupportedMessageImpl instance) {
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
  writeNotNull('mode', instance.mode?.toJson());
  writeNotNull('_mode', instance.modeElement?.toJson());
  val['definition'] = instance.definition.toJson();
  return val;
}

_$CapabilityStatementDocumentImpl _$$CapabilityStatementDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$CapabilityStatementDocumentImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      mode: json['mode'] == null ? null : FhirCode.fromJson(json['mode']),
      modeElement: json['_mode'] == null
          ? null
          : PrimitiveElement.fromJson(json['_mode'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirMarkdown.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_documentation'] as Map<String, dynamic>),
      profile: FhirCanonical.fromJson(json['profile']),
    );

Map<String, dynamic> _$$CapabilityStatementDocumentImplToJson(
    _$CapabilityStatementDocumentImpl instance) {
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
  writeNotNull('mode', instance.mode?.toJson());
  writeNotNull('_mode', instance.modeElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  val['profile'] = instance.profile.toJson();
  return val;
}
