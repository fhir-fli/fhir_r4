// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substance_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubstanceDefinitionImpl _$$SubstanceDefinitionImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstanceDefinitionImpl(
      resourceType:
          $enumDecodeNullable(_$R4ResourceTypeEnumMap, json['resourceType']) ??
              R4ResourceType.SubstanceDefinition,
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
      version: json['version'] as String?,
      versionElement: json['_version'] == null
          ? null
          : PrimitiveElement.fromJson(json['_version'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      classification: (json['classification'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      domain: json['domain'] == null
          ? null
          : CodeableConcept.fromJson(json['domain'] as Map<String, dynamic>),
      grade: (json['grade'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : FhirMarkdown.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_description'] as Map<String, dynamic>),
      informationSource: (json['informationSource'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      supplier: (json['supplier'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      moiety: (json['moiety'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceDefinitionMoiety.fromJson(e as Map<String, dynamic>))
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceDefinitionProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      molecularWeight: (json['molecularWeight'] as List<dynamic>?)
          ?.map((e) => SubstanceDefinitionMolecularWeight.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      structure: json['structure'] == null
          ? null
          : SubstanceDefinitionStructure.fromJson(
              json['structure'] as Map<String, dynamic>),
      code: (json['code'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceDefinitionCode.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceDefinitionName.fromJson(e as Map<String, dynamic>))
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map((e) => SubstanceDefinitionRelationship.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      sourceMaterial: json['sourceMaterial'] == null
          ? null
          : SubstanceDefinitionSourceMaterial.fromJson(
              json['sourceMaterial'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubstanceDefinitionImplToJson(
    _$SubstanceDefinitionImpl instance) {
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
  writeNotNull('version', instance.version);
  writeNotNull('_version', instance.versionElement?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('classification',
      instance.classification?.map((e) => e.toJson()).toList());
  writeNotNull('domain', instance.domain?.toJson());
  writeNotNull('grade', instance.grade?.map((e) => e.toJson()).toList());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('informationSource',
      instance.informationSource?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  writeNotNull(
      'manufacturer', instance.manufacturer?.map((e) => e.toJson()).toList());
  writeNotNull('supplier', instance.supplier?.map((e) => e.toJson()).toList());
  writeNotNull('moiety', instance.moiety?.map((e) => e.toJson()).toList());
  writeNotNull('property', instance.property?.map((e) => e.toJson()).toList());
  writeNotNull('molecularWeight',
      instance.molecularWeight?.map((e) => e.toJson()).toList());
  writeNotNull('structure', instance.structure?.toJson());
  writeNotNull('code', instance.code?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.map((e) => e.toJson()).toList());
  writeNotNull(
      'relationship', instance.relationship?.map((e) => e.toJson()).toList());
  writeNotNull('sourceMaterial', instance.sourceMaterial?.toJson());
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

_$SubstanceDefinitionMoietyImpl _$$SubstanceDefinitionMoietyImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstanceDefinitionMoietyImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] == null
          ? null
          : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nameElement: json['_name'] == null
          ? null
          : PrimitiveElement.fromJson(json['_name'] as Map<String, dynamic>),
      stereochemistry: json['stereochemistry'] == null
          ? null
          : CodeableConcept.fromJson(
              json['stereochemistry'] as Map<String, dynamic>),
      opticalActivity: json['opticalActivity'] == null
          ? null
          : CodeableConcept.fromJson(
              json['opticalActivity'] as Map<String, dynamic>),
      molecularFormula: json['molecularFormula'] as String?,
      molecularFormulaElement: json['_molecularFormula'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_molecularFormula'] as Map<String, dynamic>),
      amountQuantity: json['amountQuantity'] == null
          ? null
          : Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>),
      amountString: json['amountString'] == null
          ? null
          : FhirMarkdown.fromJson(json['amountString']),
      amountStringElement: json['_amountString'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_amountString'] as Map<String, dynamic>),
      measurementType: json['measurementType'] == null
          ? null
          : CodeableConcept.fromJson(
              json['measurementType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubstanceDefinitionMoietyImplToJson(
    _$SubstanceDefinitionMoietyImpl instance) {
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
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('stereochemistry', instance.stereochemistry?.toJson());
  writeNotNull('opticalActivity', instance.opticalActivity?.toJson());
  writeNotNull('molecularFormula', instance.molecularFormula);
  writeNotNull('_molecularFormula', instance.molecularFormulaElement?.toJson());
  writeNotNull('amountQuantity', instance.amountQuantity?.toJson());
  writeNotNull('amountString', instance.amountString?.toJson());
  writeNotNull('_amountString', instance.amountStringElement?.toJson());
  writeNotNull('measurementType', instance.measurementType?.toJson());
  return val;
}

_$SubstanceDefinitionPropertyImpl _$$SubstanceDefinitionPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstanceDefinitionPropertyImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueCodeableConcept: json['valueCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>),
      valueQuantity: json['valueQuantity'] == null
          ? null
          : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueDate: json['valueDate'] == null
          ? null
          : FhirDate.fromJson(json['valueDate'] as String),
      valueDateElement: json['_valueDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_valueDate'] as Map<String, dynamic>),
      valueBoolean: json['valueBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_valueBoolean'] as Map<String, dynamic>),
      valueAttachment: json['valueAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubstanceDefinitionPropertyImplToJson(
    _$SubstanceDefinitionPropertyImpl instance) {
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
  writeNotNull('valueCodeableConcept', instance.valueCodeableConcept?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueDate', instance.valueDate?.toJson());
  writeNotNull('_valueDate', instance.valueDateElement?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean?.toJson());
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  return val;
}

_$SubstanceDefinitionMolecularWeightImpl
    _$$SubstanceDefinitionMolecularWeightImplFromJson(
            Map<String, dynamic> json) =>
        _$SubstanceDefinitionMolecularWeightImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          method: json['method'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['method'] as Map<String, dynamic>),
          type: json['type'] == null
              ? null
              : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
          amount: Quantity.fromJson(json['amount'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubstanceDefinitionMolecularWeightImplToJson(
    _$SubstanceDefinitionMolecularWeightImpl instance) {
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
  writeNotNull('method', instance.method?.toJson());
  writeNotNull('type', instance.type?.toJson());
  val['amount'] = instance.amount.toJson();
  return val;
}

_$SubstanceDefinitionStructureImpl _$$SubstanceDefinitionStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstanceDefinitionStructureImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      stereochemistry: json['stereochemistry'] == null
          ? null
          : CodeableConcept.fromJson(
              json['stereochemistry'] as Map<String, dynamic>),
      opticalActivity: json['opticalActivity'] == null
          ? null
          : CodeableConcept.fromJson(
              json['opticalActivity'] as Map<String, dynamic>),
      molecularFormula: json['molecularFormula'] as String?,
      molecularFormulaElement: json['_molecularFormula'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_molecularFormula'] as Map<String, dynamic>),
      molecularFormulaByMoiety: json['molecularFormulaByMoiety'] as String?,
      molecularFormulaByMoietyElement: json['_molecularFormulaByMoiety'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_molecularFormulaByMoiety'] as Map<String, dynamic>),
      molecularWeight: json['molecularWeight'] == null
          ? null
          : SubstanceDefinitionMolecularWeight.fromJson(
              json['molecularWeight'] as Map<String, dynamic>),
      technique: (json['technique'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceDocument: (json['sourceDocument'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      representation: (json['representation'] as List<dynamic>?)
          ?.map((e) => SubstanceDefinitionRepresentation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubstanceDefinitionStructureImplToJson(
    _$SubstanceDefinitionStructureImpl instance) {
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
  writeNotNull('stereochemistry', instance.stereochemistry?.toJson());
  writeNotNull('opticalActivity', instance.opticalActivity?.toJson());
  writeNotNull('molecularFormula', instance.molecularFormula);
  writeNotNull('_molecularFormula', instance.molecularFormulaElement?.toJson());
  writeNotNull('molecularFormulaByMoiety', instance.molecularFormulaByMoiety);
  writeNotNull('_molecularFormulaByMoiety',
      instance.molecularFormulaByMoietyElement?.toJson());
  writeNotNull('molecularWeight', instance.molecularWeight?.toJson());
  writeNotNull(
      'technique', instance.technique?.map((e) => e.toJson()).toList());
  writeNotNull('sourceDocument',
      instance.sourceDocument?.map((e) => e.toJson()).toList());
  writeNotNull('representation',
      instance.representation?.map((e) => e.toJson()).toList());
  return val;
}

_$SubstanceDefinitionRepresentationImpl
    _$$SubstanceDefinitionRepresentationImplFromJson(
            Map<String, dynamic> json) =>
        _$SubstanceDefinitionRepresentationImpl(
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
          representation: json['representation'] as String?,
          representationElement: json['_representation'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_representation'] as Map<String, dynamic>),
          format: json['format'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['format'] as Map<String, dynamic>),
          document: json['document'] == null
              ? null
              : Reference.fromJson(json['document'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SubstanceDefinitionRepresentationImplToJson(
    _$SubstanceDefinitionRepresentationImpl instance) {
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
  writeNotNull('representation', instance.representation);
  writeNotNull('_representation', instance.representationElement?.toJson());
  writeNotNull('format', instance.format?.toJson());
  writeNotNull('document', instance.document?.toJson());
  return val;
}

_$SubstanceDefinitionCodeImpl _$$SubstanceDefinitionCodeImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstanceDefinitionCodeImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] == null
          ? null
          : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      statusDate: json['statusDate'] == null
          ? null
          : FhirDateTime.fromJson(json['statusDate'] as String),
      statusDateElement: json['_statusDate'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_statusDate'] as Map<String, dynamic>),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubstanceDefinitionCodeImplToJson(
    _$SubstanceDefinitionCodeImpl instance) {
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
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('statusDate', instance.statusDate?.toJson());
  writeNotNull('_statusDate', instance.statusDateElement?.toJson());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  writeNotNull('source', instance.source?.map((e) => e.toJson()).toList());
  return val;
}

_$SubstanceDefinitionNameImpl _$$SubstanceDefinitionNameImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstanceDefinitionNameImpl(
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
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      preferred: json['preferred'] == null
          ? null
          : FhirBoolean.fromJson(json['preferred']),
      preferredElement: json['_preferred'] == null
          ? null
          : PrimitiveElement.fromJson(
              json['_preferred'] as Map<String, dynamic>),
      language: (json['language'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      synonym: (json['synonym'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceDefinitionName.fromJson(e as Map<String, dynamic>))
          .toList(),
      translation: (json['translation'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceDefinitionName.fromJson(e as Map<String, dynamic>))
          .toList(),
      official: (json['official'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceDefinitionOfficial.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubstanceDefinitionNameImplToJson(
    _$SubstanceDefinitionNameImpl instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('preferred', instance.preferred?.toJson());
  writeNotNull('_preferred', instance.preferredElement?.toJson());
  writeNotNull('language', instance.language?.map((e) => e.toJson()).toList());
  writeNotNull('domain', instance.domain?.map((e) => e.toJson()).toList());
  writeNotNull(
      'jurisdiction', instance.jurisdiction?.map((e) => e.toJson()).toList());
  writeNotNull('synonym', instance.synonym?.map((e) => e.toJson()).toList());
  writeNotNull(
      'translation', instance.translation?.map((e) => e.toJson()).toList());
  writeNotNull('official', instance.official?.map((e) => e.toJson()).toList());
  writeNotNull('source', instance.source?.map((e) => e.toJson()).toList());
  return val;
}

_$SubstanceDefinitionOfficialImpl _$$SubstanceDefinitionOfficialImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstanceDefinitionOfficialImpl(
      id: json['id'] as String?,
      extension_: (json['extension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      authority: json['authority'] == null
          ? null
          : CodeableConcept.fromJson(json['authority'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : PrimitiveElement.fromJson(json['_date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubstanceDefinitionOfficialImplToJson(
    _$SubstanceDefinitionOfficialImpl instance) {
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
  writeNotNull('authority', instance.authority?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  return val;
}

_$SubstanceDefinitionRelationshipImpl
    _$$SubstanceDefinitionRelationshipImplFromJson(Map<String, dynamic> json) =>
        _$SubstanceDefinitionRelationshipImpl(
          id: json['id'] as String?,
          extension_: (json['extension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          substanceDefinitionReference: json['substanceDefinitionReference'] ==
                  null
              ? null
              : Reference.fromJson(
                  json['substanceDefinitionReference'] as Map<String, dynamic>),
          substanceDefinitionCodeableConcept:
              json['substanceDefinitionCodeableConcept'] == null
                  ? null
                  : CodeableConcept.fromJson(
                      json['substanceDefinitionCodeableConcept']
                          as Map<String, dynamic>),
          type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
          isDefining: json['isDefining'] == null
              ? null
              : FhirBoolean.fromJson(json['isDefining']),
          isDefiningElement: json['_isDefining'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_isDefining'] as Map<String, dynamic>),
          amountQuantity: json['amountQuantity'] == null
              ? null
              : Quantity.fromJson(
                  json['amountQuantity'] as Map<String, dynamic>),
          amountRatio: json['amountRatio'] == null
              ? null
              : Ratio.fromJson(json['amountRatio'] as Map<String, dynamic>),
          amountString: json['amountString'] == null
              ? null
              : FhirMarkdown.fromJson(json['amountString']),
          amountStringElement: json['_amountString'] == null
              ? null
              : PrimitiveElement.fromJson(
                  json['_amountString'] as Map<String, dynamic>),
          ratioHighLimitAmount: json['ratioHighLimitAmount'] == null
              ? null
              : Ratio.fromJson(
                  json['ratioHighLimitAmount'] as Map<String, dynamic>),
          comparator: json['comparator'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['comparator'] as Map<String, dynamic>),
          source: (json['source'] as List<dynamic>?)
              ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SubstanceDefinitionRelationshipImplToJson(
    _$SubstanceDefinitionRelationshipImpl instance) {
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
  writeNotNull('substanceDefinitionReference',
      instance.substanceDefinitionReference?.toJson());
  writeNotNull('substanceDefinitionCodeableConcept',
      instance.substanceDefinitionCodeableConcept?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('isDefining', instance.isDefining?.toJson());
  writeNotNull('_isDefining', instance.isDefiningElement?.toJson());
  writeNotNull('amountQuantity', instance.amountQuantity?.toJson());
  writeNotNull('amountRatio', instance.amountRatio?.toJson());
  writeNotNull('amountString', instance.amountString?.toJson());
  writeNotNull('_amountString', instance.amountStringElement?.toJson());
  writeNotNull('ratioHighLimitAmount', instance.ratioHighLimitAmount?.toJson());
  writeNotNull('comparator', instance.comparator?.toJson());
  writeNotNull('source', instance.source?.map((e) => e.toJson()).toList());
  return val;
}

_$SubstanceDefinitionSourceMaterialImpl
    _$$SubstanceDefinitionSourceMaterialImplFromJson(
            Map<String, dynamic> json) =>
        _$SubstanceDefinitionSourceMaterialImpl(
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
          genus: json['genus'] == null
              ? null
              : CodeableConcept.fromJson(json['genus'] as Map<String, dynamic>),
          species: json['species'] == null
              ? null
              : CodeableConcept.fromJson(
                  json['species'] as Map<String, dynamic>),
          part_: json['part'] == null
              ? null
              : CodeableConcept.fromJson(json['part'] as Map<String, dynamic>),
          countryOfOrigin: (json['countryOfOrigin'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SubstanceDefinitionSourceMaterialImplToJson(
    _$SubstanceDefinitionSourceMaterialImpl instance) {
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
  writeNotNull('genus', instance.genus?.toJson());
  writeNotNull('species', instance.species?.toJson());
  writeNotNull('part', instance.part_?.toJson());
  writeNotNull('countryOfOrigin',
      instance.countryOfOrigin?.map((e) => e.toJson()).toList());
  return val;
}
