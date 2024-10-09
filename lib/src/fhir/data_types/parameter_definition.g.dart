// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterDefinition _$ParameterDefinitionFromJson(Map<String, dynamic> json) =>
    ParameterDefinition(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] == null ? null : FhirCode.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      use: $enumDecode(_$OperationParameterUseEnumMap, json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      min: json['min'] == null ? null : FhirInteger.fromJson(json['min']),
      minElement: json['_min'] == null
          ? null
          : Element.fromJson(json['_min'] as Map<String, dynamic>),
      max: json['max'] == null ? null : FhirString.fromJson(json['max']),
      maxElement: json['_max'] == null
          ? null
          : Element.fromJson(json['_max'] as Map<String, dynamic>),
      documentation: json['documentation'] == null
          ? null
          : FhirString.fromJson(json['documentation']),
      documentationElement: json['_documentation'] == null
          ? null
          : Element.fromJson(json['_documentation'] as Map<String, dynamic>),
      type: $enumDecode(_$FHIRAllTypesEnumMap, json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : FhirCanonical.fromJson(json['profile']),
      profileElement: json['_profile'] == null
          ? null
          : Element.fromJson(json['_profile'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>?,
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      annotations: json['annotations'] as List<dynamic>?,
      children:
          (json['children'] as List<dynamic>?)?.map(FhirBase.fromJson).toList(),
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FhirBase.fromJson(e)),
      ),
    );

Map<String, dynamic> _$ParameterDefinitionToJson(ParameterDefinition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userData', instance.userData);
  writeNotNull('formatCommentsPre', instance.formatCommentsPre);
  writeNotNull('formatCommentsPost', instance.formatCommentsPost);
  writeNotNull('annotations', instance.annotations);
  writeNotNull('children', instance.children?.map((e) => e.toJson()).toList());
  writeNotNull('namedChildren',
      instance.namedChildren?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  val['use'] = instance.use.toJson();
  writeNotNull('_use', instance.useElement?.toJson());
  writeNotNull('min', instance.min?.toJson());
  writeNotNull('_min', instance.minElement?.toJson());
  writeNotNull('max', instance.max?.toJson());
  writeNotNull('_max', instance.maxElement?.toJson());
  writeNotNull('documentation', instance.documentation?.toJson());
  writeNotNull('_documentation', instance.documentationElement?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('profile', instance.profile?.toJson());
  writeNotNull('_profile', instance.profileElement?.toJson());
  return val;
}

const _$OperationParameterUseEnumMap = {
  OperationParameterUse.in_: 'in',
  OperationParameterUse.out: 'out',
};

const _$FHIRAllTypesEnumMap = {
  FHIRAllTypes.Address: 'Address',
  FHIRAllTypes.Age: 'Age',
  FHIRAllTypes.Annotation: 'Annotation',
  FHIRAllTypes.Attachment: 'Attachment',
  FHIRAllTypes.BackboneElement: 'BackboneElement',
  FHIRAllTypes.CodeableConcept: 'CodeableConcept',
  FHIRAllTypes.CodeableReference: 'CodeableReference',
  FHIRAllTypes.Coding: 'Coding',
  FHIRAllTypes.ContactDetail: 'ContactDetail',
  FHIRAllTypes.ContactPoint: 'ContactPoint',
  FHIRAllTypes.Contributor: 'Contributor',
  FHIRAllTypes.Count: 'Count',
  FHIRAllTypes.DataRequirement: 'DataRequirement',
  FHIRAllTypes.Distance: 'Distance',
  FHIRAllTypes.Dosage: 'Dosage',
  FHIRAllTypes.Duration: 'Duration',
  FHIRAllTypes.Element: 'Element',
  FHIRAllTypes.ElementDefinition: 'ElementDefinition',
  FHIRAllTypes.Expression: 'Expression',
  FHIRAllTypes.Extension: 'Extension',
  FHIRAllTypes.HumanName: 'HumanName',
  FHIRAllTypes.Identifier: 'Identifier',
  FHIRAllTypes.MarketingStatus: 'MarketingStatus',
  FHIRAllTypes.Meta: 'Meta',
  FHIRAllTypes.Money: 'Money',
  FHIRAllTypes.MoneyQuantity: 'MoneyQuantity',
  FHIRAllTypes.Narrative: 'Narrative',
  FHIRAllTypes.ParameterDefinition: 'ParameterDefinition',
  FHIRAllTypes.Period: 'Period',
  FHIRAllTypes.Population: 'Population',
  FHIRAllTypes.ProdCharacteristic: 'ProdCharacteristic',
  FHIRAllTypes.ProductShelfLife: 'ProductShelfLife',
  FHIRAllTypes.Quantity: 'Quantity',
  FHIRAllTypes.Range: 'Range',
  FHIRAllTypes.Ratio: 'Ratio',
  FHIRAllTypes.RatioRange: 'RatioRange',
  FHIRAllTypes.Reference: 'Reference',
  FHIRAllTypes.RelatedArtifact: 'RelatedArtifact',
  FHIRAllTypes.SampledData: 'SampledData',
  FHIRAllTypes.Signature: 'Signature',
  FHIRAllTypes.SimpleQuantity: 'SimpleQuantity',
  FHIRAllTypes.Timing: 'Timing',
  FHIRAllTypes.TriggerDefinition: 'TriggerDefinition',
  FHIRAllTypes.UsageContext: 'UsageContext',
  FHIRAllTypes.base64Binary: 'base64Binary',
  FHIRAllTypes.boolean: 'boolean',
  FHIRAllTypes.canonical: 'canonical',
  FHIRAllTypes.code: 'code',
  FHIRAllTypes.date: 'date',
  FHIRAllTypes.dateTime: 'dateTime',
  FHIRAllTypes.decimal: 'decimal',
  FHIRAllTypes.id: 'id',
  FHIRAllTypes.instant: 'instant',
  FHIRAllTypes.integer: 'integer',
  FHIRAllTypes.markdown: 'markdown',
  FHIRAllTypes.oid: 'oid',
  FHIRAllTypes.positiveInt: 'positiveInt',
  FHIRAllTypes.string: 'string',
  FHIRAllTypes.time: 'time',
  FHIRAllTypes.unsignedInt: 'unsignedInt',
  FHIRAllTypes.uri: 'uri',
  FHIRAllTypes.url: 'url',
  FHIRAllTypes.uuid: 'uuid',
  FHIRAllTypes.xhtml: 'xhtml',
  FHIRAllTypes.Resource: 'Resource',
  FHIRAllTypes.Binary: 'Binary',
  FHIRAllTypes.Bundle: 'Bundle',
  FHIRAllTypes.DomainResource: 'DomainResource',
  FHIRAllTypes.Account: 'Account',
  FHIRAllTypes.ActivityDefinition: 'ActivityDefinition',
  FHIRAllTypes.AdministrableProductDefinition: 'AdministrableProductDefinition',
  FHIRAllTypes.AdverseEvent: 'AdverseEvent',
  FHIRAllTypes.AllergyIntolerance: 'AllergyIntolerance',
  FHIRAllTypes.Appointment: 'Appointment',
  FHIRAllTypes.AppointmentResponse: 'AppointmentResponse',
  FHIRAllTypes.AuditEvent: 'AuditEvent',
  FHIRAllTypes.Basic: 'Basic',
  FHIRAllTypes.BiologicallyDerivedProduct: 'BiologicallyDerivedProduct',
  FHIRAllTypes.BodyStructure: 'BodyStructure',
  FHIRAllTypes.CapabilityStatement: 'CapabilityStatement',
  FHIRAllTypes.CarePlan: 'CarePlan',
  FHIRAllTypes.CareTeam: 'CareTeam',
  FHIRAllTypes.CatalogEntry: 'CatalogEntry',
  FHIRAllTypes.ChargeItem: 'ChargeItem',
  FHIRAllTypes.ChargeItemDefinition: 'ChargeItemDefinition',
  FHIRAllTypes.Citation: 'Citation',
  FHIRAllTypes.Claim: 'Claim',
  FHIRAllTypes.ClaimResponse: 'ClaimResponse',
  FHIRAllTypes.ClinicalImpression: 'ClinicalImpression',
  FHIRAllTypes.ClinicalUseDefinition: 'ClinicalUseDefinition',
  FHIRAllTypes.CodeSystem: 'CodeSystem',
  FHIRAllTypes.Communication: 'Communication',
  FHIRAllTypes.CommunicationRequest: 'CommunicationRequest',
  FHIRAllTypes.CompartmentDefinition: 'CompartmentDefinition',
  FHIRAllTypes.Composition: 'Composition',
  FHIRAllTypes.ConceptMap: 'ConceptMap',
  FHIRAllTypes.Condition: 'Condition',
  FHIRAllTypes.Consent: 'Consent',
  FHIRAllTypes.Contract: 'Contract',
  FHIRAllTypes.Coverage: 'Coverage',
  FHIRAllTypes.CoverageEligibilityRequest: 'CoverageEligibilityRequest',
  FHIRAllTypes.CoverageEligibilityResponse: 'CoverageEligibilityResponse',
  FHIRAllTypes.DetectedIssue: 'DetectedIssue',
  FHIRAllTypes.Device: 'Device',
  FHIRAllTypes.DeviceDefinition: 'DeviceDefinition',
  FHIRAllTypes.DeviceMetric: 'DeviceMetric',
  FHIRAllTypes.DeviceRequest: 'DeviceRequest',
  FHIRAllTypes.DeviceUseStatement: 'DeviceUseStatement',
  FHIRAllTypes.DiagnosticReport: 'DiagnosticReport',
  FHIRAllTypes.DocumentManifest: 'DocumentManifest',
  FHIRAllTypes.DocumentReference: 'DocumentReference',
  FHIRAllTypes.Encounter: 'Encounter',
  FHIRAllTypes.Endpoint: 'Endpoint',
  FHIRAllTypes.EnrollmentRequest: 'EnrollmentRequest',
  FHIRAllTypes.EnrollmentResponse: 'EnrollmentResponse',
  FHIRAllTypes.EpisodeOfCare: 'EpisodeOfCare',
  FHIRAllTypes.EventDefinition: 'EventDefinition',
  FHIRAllTypes.Evidence: 'Evidence',
  FHIRAllTypes.EvidenceReport: 'EvidenceReport',
  FHIRAllTypes.EvidenceVariable: 'EvidenceVariable',
  FHIRAllTypes.ExampleScenario: 'ExampleScenario',
  FHIRAllTypes.ExplanationOfBenefit: 'ExplanationOfBenefit',
  FHIRAllTypes.FamilyMemberHistory: 'FamilyMemberHistory',
  FHIRAllTypes.Flag: 'Flag',
  FHIRAllTypes.Goal: 'Goal',
  FHIRAllTypes.GraphDefinition: 'GraphDefinition',
  FHIRAllTypes.Group: 'Group',
  FHIRAllTypes.GuidanceResponse: 'GuidanceResponse',
  FHIRAllTypes.HealthcareService: 'HealthcareService',
  FHIRAllTypes.ImagingStudy: 'ImagingStudy',
  FHIRAllTypes.Immunization: 'Immunization',
  FHIRAllTypes.ImmunizationEvaluation: 'ImmunizationEvaluation',
  FHIRAllTypes.ImmunizationRecommendation: 'ImmunizationRecommendation',
  FHIRAllTypes.ImplementationGuide: 'ImplementationGuide',
  FHIRAllTypes.Ingredient: 'Ingredient',
  FHIRAllTypes.InsurancePlan: 'InsurancePlan',
  FHIRAllTypes.Invoice: 'Invoice',
  FHIRAllTypes.Library: 'Library',
  FHIRAllTypes.Linkage: 'Linkage',
  FHIRAllTypes.List: 'List',
  FHIRAllTypes.Location: 'Location',
  FHIRAllTypes.ManufacturedItemDefinition: 'ManufacturedItemDefinition',
  FHIRAllTypes.Measure: 'Measure',
  FHIRAllTypes.MeasureReport: 'MeasureReport',
  FHIRAllTypes.Media: 'Media',
  FHIRAllTypes.Medication: 'Medication',
  FHIRAllTypes.MedicationAdministration: 'MedicationAdministration',
  FHIRAllTypes.MedicationDispense: 'MedicationDispense',
  FHIRAllTypes.MedicationKnowledge: 'MedicationKnowledge',
  FHIRAllTypes.MedicationRequest: 'MedicationRequest',
  FHIRAllTypes.MedicationStatement: 'MedicationStatement',
  FHIRAllTypes.MedicinalProductDefinition: 'MedicinalProductDefinition',
  FHIRAllTypes.MessageDefinition: 'MessageDefinition',
  FHIRAllTypes.MessageHeader: 'MessageHeader',
  FHIRAllTypes.MolecularSequence: 'MolecularSequence',
  FHIRAllTypes.NamingSystem: 'NamingSystem',
  FHIRAllTypes.NutritionOrder: 'NutritionOrder',
  FHIRAllTypes.NutritionProduct: 'NutritionProduct',
  FHIRAllTypes.Observation: 'Observation',
  FHIRAllTypes.ObservationDefinition: 'ObservationDefinition',
  FHIRAllTypes.OperationDefinition: 'OperationDefinition',
  FHIRAllTypes.OperationOutcome: 'OperationOutcome',
  FHIRAllTypes.Organization: 'Organization',
  FHIRAllTypes.OrganizationAffiliation: 'OrganizationAffiliation',
  FHIRAllTypes.PackagedProductDefinition: 'PackagedProductDefinition',
  FHIRAllTypes.Patient: 'Patient',
  FHIRAllTypes.PaymentNotice: 'PaymentNotice',
  FHIRAllTypes.PaymentReconciliation: 'PaymentReconciliation',
  FHIRAllTypes.Person: 'Person',
  FHIRAllTypes.PlanDefinition: 'PlanDefinition',
  FHIRAllTypes.Practitioner: 'Practitioner',
  FHIRAllTypes.PractitionerRole: 'PractitionerRole',
  FHIRAllTypes.Procedure: 'Procedure',
  FHIRAllTypes.Provenance: 'Provenance',
  FHIRAllTypes.Questionnaire: 'Questionnaire',
  FHIRAllTypes.QuestionnaireResponse: 'QuestionnaireResponse',
  FHIRAllTypes.RegulatedAuthorization: 'RegulatedAuthorization',
  FHIRAllTypes.RelatedPerson: 'RelatedPerson',
  FHIRAllTypes.RequestGroup: 'RequestGroup',
  FHIRAllTypes.ResearchDefinition: 'ResearchDefinition',
  FHIRAllTypes.ResearchElementDefinition: 'ResearchElementDefinition',
  FHIRAllTypes.ResearchStudy: 'ResearchStudy',
  FHIRAllTypes.ResearchSubject: 'ResearchSubject',
  FHIRAllTypes.RiskAssessment: 'RiskAssessment',
  FHIRAllTypes.Schedule: 'Schedule',
  FHIRAllTypes.SearchParameter: 'SearchParameter',
  FHIRAllTypes.ServiceRequest: 'ServiceRequest',
  FHIRAllTypes.Slot: 'Slot',
  FHIRAllTypes.Specimen: 'Specimen',
  FHIRAllTypes.SpecimenDefinition: 'SpecimenDefinition',
  FHIRAllTypes.StructureDefinition: 'StructureDefinition',
  FHIRAllTypes.StructureMap: 'StructureMap',
  FHIRAllTypes.Subscription: 'Subscription',
  FHIRAllTypes.SubscriptionStatus: 'SubscriptionStatus',
  FHIRAllTypes.SubscriptionTopic: 'SubscriptionTopic',
  FHIRAllTypes.Substance: 'Substance',
  FHIRAllTypes.SubstanceDefinition: 'SubstanceDefinition',
  FHIRAllTypes.SupplyDelivery: 'SupplyDelivery',
  FHIRAllTypes.SupplyRequest: 'SupplyRequest',
  FHIRAllTypes.Task: 'Task',
  FHIRAllTypes.TerminologyCapabilities: 'TerminologyCapabilities',
  FHIRAllTypes.TestReport: 'TestReport',
  FHIRAllTypes.TestScript: 'TestScript',
  FHIRAllTypes.ValueSet: 'ValueSet',
  FHIRAllTypes.VerificationResult: 'VerificationResult',
  FHIRAllTypes.VisionPrescription: 'VisionPrescription',
  FHIRAllTypes.Parameters: 'Parameters',
  FHIRAllTypes.Type: 'Type',
  FHIRAllTypes.Any: 'Any',
};
