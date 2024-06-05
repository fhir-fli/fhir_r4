// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionTopicImpl _$$SubscriptionTopicImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionTopicImpl(
      resourceType:
          $enumDecodeNullable(_$R4ResourceTypeEnumMap, json['resourceType']) ??
              R4ResourceType.SubscriptionTopic,
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String?,
      versionElement: json['_version'] == null
          ? null
          : PrimitiveElement.fromJson(json['_version'] as Map<String, dynamic>),
      title: json['title'] as String?,
      titleElement: json['_title'] == null
          ? null
          : PrimitiveElement.fromJson(json['_title'] as Map<String, dynamic>),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map(FhirCanonical.fromJson)
          .toList(),
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
      approvalDate: json['approvalDate'] == null
          ? null
          : FhirDate.fromJson(json['approvalDate'] as String),
      approvalDateElement: json['_approvalDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_approvalDate'] as Map<String, dynamic>),
      lastReviewDate: json['lastReviewDate'] == null
          ? null
          : FhirDate.fromJson(json['lastReviewDate'] as String),
      lastReviewDateElement: json['_lastReviewDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_lastReviewDate'] as Map<String, dynamic>),
      effectivePeriod: json['effectivePeriod'] == null
          ? null
          : Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>),
      resourceTrigger: (json['resourceTrigger'] as List<dynamic>?)
          ?.map((e) => SubscriptionTopicResourceTrigger.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      eventTrigger: (json['eventTrigger'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionTopicEventTrigger.fromJson(e as Map<String, dynamic>))
          .toList(),
      canFilterBy: (json['canFilterBy'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionTopicCanFilterBy.fromJson(e as Map<String, dynamic>))
          .toList(),
      notificationShape: (json['notificationShape'] as List<dynamic>?)
          ?.map((e) => SubscriptionTopicNotificationShape.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscriptionTopicImplToJson(
    _$SubscriptionTopicImpl instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  writeNotNull('version', instance.version);
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('_title', instance.titleElement?.toJson());
  writeNotNull(
      'derivedFrom', instance.derivedFrom?.map((e) => e.toJson()).toList());
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
  writeNotNull('approvalDate', instance.approvalDate?.toJson());
  writeNotNull('_approvalDate', instance.approvalDateElement?.toJson());
  writeNotNull('lastReviewDate', instance.lastReviewDate?.toJson());
  writeNotNull('_lastReviewDate', instance.lastReviewDateElement?.toJson());
  writeNotNull('effectivePeriod', instance.effectivePeriod?.toJson());
  writeNotNull('resourceTrigger',
      instance.resourceTrigger?.map((e) => e.toJson()).toList());
  writeNotNull(
      'eventTrigger', instance.eventTrigger?.map((e) => e.toJson()).toList());
  writeNotNull(
      'canFilterBy', instance.canFilterBy?.map((e) => e.toJson()).toList());
  writeNotNull('notificationShape',
      instance.notificationShape?.map((e) => e.toJson()).toList());
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

_$SubscriptionTopicResourceTriggerImpl
    _$$SubscriptionTopicResourceTriggerImplFromJson(
            Map<String, dynamic> json) =>
        _$SubscriptionTopicResourceTriggerImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          description: json['description'] == null
              ? null
              : FhirMarkdown.fromJson(json['description']),
          descriptionElement: json['_description'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_description'] as Map<String, dynamic>),
          resource: json['resource'] == null
              ? null
              : FhirUri.fromJson(json['resource']),
          resourceElement: json['_resource'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_resource'] as Map<String, dynamic>),
          supportedInteraction: (json['supportedInteraction'] as List<dynamic>?)
              ?.map(FhirCode.fromJson)
              .toList(),
          supportedInteractionElement:
              (json['_supportedInteraction'] as List<dynamic>?)
                  ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
                  .toList(),
          queryCriteria: json['queryCriteria'] == null
              ? null
              : SubscriptionTopicQueryCriteria.fromJson(
                  json['queryCriteria'] as Map<String, dynamic>),
          fhirPathCriteria: json['fhirPathCriteria'] as String?,
          fhirPathCriteriaElement: json['_fhirPathCriteria'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_fhirPathCriteria'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionTopicResourceTriggerImplToJson(
    _$SubscriptionTopicResourceTriggerImpl instance) {
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
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('_resource', instance.resourceElement?.toJson());
  writeNotNull('supportedInteraction',
      instance.supportedInteraction?.map((e) => e.toJson()).toList());
  writeNotNull('_supportedInteraction',
      instance.supportedInteractionElement?.map((e) => e.toJson()).toList());
  writeNotNull('queryCriteria', instance.queryCriteria?.toJson());
  writeNotNull('fhirPathCriteria', instance.fhirPathCriteria);
  writeNotNull('_fhirPathCriteria', instance.fhirPathCriteriaElement?.toJson());
  return val;
}

_$SubscriptionTopicQueryCriteriaImpl
    _$$SubscriptionTopicQueryCriteriaImplFromJson(Map<String, dynamic> json) =>
        _$SubscriptionTopicQueryCriteriaImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          previous: json['previous'] as String?,
          previousElement: json['_previous'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_previous'] as Map<String, dynamic>),
          resultForCreate: json['resultForCreate'] == null
              ? null
              : FhirCode.fromJson(json['resultForCreate']),
          resultForCreateElement: json['_resultForCreate'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_resultForCreate'] as Map<String, dynamic>),
          current: json['current'] as String?,
          currentElement: json['_current'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_current'] as Map<String, dynamic>),
          resultForDelete: json['resultForDelete'] == null
              ? null
              : FhirCode.fromJson(json['resultForDelete']),
          resultForDeleteElement: json['_resultForDelete'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_resultForDelete'] as Map<String, dynamic>),
          requireBoth: json['requireBoth'] == null
              ? null
              : FhirBoolean.fromJson(json['requireBoth']),
          requireBothElement: json['_requireBoth'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_requireBoth'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionTopicQueryCriteriaImplToJson(
    _$SubscriptionTopicQueryCriteriaImpl instance) {
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
  writeNotNull('previous', instance.previous);
  writeNotNull('_previous', instance.previousElement?.toJson());
  writeNotNull('resultForCreate', instance.resultForCreate?.toJson());
  writeNotNull('_resultForCreate', instance.resultForCreateElement?.toJson());
  writeNotNull('current', instance.current);
  writeNotNull('_current', instance.currentElement?.toJson());
  writeNotNull('resultForDelete', instance.resultForDelete?.toJson());
  writeNotNull('_resultForDelete', instance.resultForDeleteElement?.toJson());
  writeNotNull('requireBoth', instance.requireBoth?.toJson());
  writeNotNull('_requireBoth', instance.requireBothElement?.toJson());
  return val;
}

_$SubscriptionTopicEventTriggerImpl
    _$$SubscriptionTopicEventTriggerImplFromJson(Map<String, dynamic> json) =>
        _$SubscriptionTopicEventTriggerImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          description: json['description'] == null
              ? null
              : FhirMarkdown.fromJson(json['description']),
          descriptionElement: json['_description'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_description'] as Map<String, dynamic>),
          event:
              CodeableConcept.fromJson(json['event'] as Map<String, dynamic>),
          resource: json['resource'] == null
              ? null
              : FhirUri.fromJson(json['resource']),
          resourceElement: json['_resource'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_resource'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubscriptionTopicEventTriggerImplToJson(
    _$SubscriptionTopicEventTriggerImpl instance) {
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
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  val['event'] = instance.event.toJson();
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('_resource', instance.resourceElement?.toJson());
  return val;
}

_$SubscriptionTopicCanFilterByImpl _$$SubscriptionTopicCanFilterByImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionTopicCanFilterByImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      resource:
          json['resource'] == null ? null : FhirUri.fromJson(json['resource']),
      resourceElement: json['_resource'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_resource'] as Map<String, dynamic>),
      filterParameter: json['filterParameter'] as String?,
      filterParameterElement: json['_filterParameter'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_filterParameter'] as Map<String, dynamic>),
      filterDefinition: json['filterDefinition'] == null
          ? null
          : FhirUri.fromJson(json['filterDefinition']),
      filterDefinitionElement: json['_filterDefinition'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_filterDefinition'] as Map<String, dynamic>),
      modifier:
          (json['modifier'] as List<dynamic>?)?.map(FhirCode.fromJson).toList(),
      modifierElement: (json['_modifier'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscriptionTopicCanFilterByImplToJson(
    _$SubscriptionTopicCanFilterByImpl instance) {
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
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('_resource', instance.resourceElement?.toJson());
  writeNotNull('filterParameter', instance.filterParameter);
  writeNotNull('_filterParameter', instance.filterParameterElement?.toJson());
  writeNotNull('filterDefinition', instance.filterDefinition?.toJson());
  writeNotNull('_filterDefinition', instance.filterDefinitionElement?.toJson());
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      '_modifier', instance.modifierElement?.map((e) => e.toJson()).toList());
  return val;
}

_$SubscriptionTopicNotificationShapeImpl
    _$$SubscriptionTopicNotificationShapeImplFromJson(
            Map<String, dynamic> json) =>
        _$SubscriptionTopicNotificationShapeImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          resource: json['resource'] == null
              ? null
              : FhirUri.fromJson(json['resource']),
          resourceElement: json['_resource'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_resource'] as Map<String, dynamic>),
          include: (json['include'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          includeElement: (json['_include'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
          revInclude: (json['revInclude'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          revIncludeElement: (json['_revInclude'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SubscriptionTopicNotificationShapeImplToJson(
    _$SubscriptionTopicNotificationShapeImpl instance) {
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
  writeNotNull('resource', instance.resource?.toJson());
  writeNotNull('_resource', instance.resourceElement?.toJson());
  writeNotNull('include', instance.include);
  writeNotNull(
      '_include', instance.includeElement?.map((e) => e.toJson()).toList());
  writeNotNull('revInclude', instance.revInclude);
  writeNotNull('_revInclude',
      instance.revIncludeElement?.map((e) => e.toJson()).toList());
  return val;
}
