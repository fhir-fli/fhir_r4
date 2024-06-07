import 'package:objectbox/objectbox.dart';
@Entity()
class ClinicalUseDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> subject = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
  final ToOne<ClinicalUseDefinitionContraindicationDbObject> contraindication = ToOne<ClinicalUseDefinitionContraindicationDbObject>();
  final ToOne<ClinicalUseDefinitionIndicationDbObject> indication = ToOne<ClinicalUseDefinitionIndicationDbObject>();
  final ToOne<ClinicalUseDefinitionInteractionDbObject> interaction = ToOne<ClinicalUseDefinitionInteractionDbObject>();
  final ToMany<ReferenceDbObject> population = ToMany<ReferenceDbObject>();
  final ToOne<ClinicalUseDefinitionUndesirableEffectDbObject> undesirableEffect = ToOne<ClinicalUseDefinitionUndesirableEffectDbObject>();
  final ToOne<ClinicalUseDefinitionWarningDbObject> warning = ToOne<ClinicalUseDefinitionWarningDbObject>();
  ClinicalUseDefinitionDbObject({required this.id});
}
@Entity()
class ClinicalUseDefinitionContraindicationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> diseaseSymptomProcedure = ToOne<CodeableReferenceDbObject>();
  final ToOne<CodeableReferenceDbObject> diseaseStatus = ToOne<CodeableReferenceDbObject>();
  final ToMany<CodeableReferenceDbObject> comorbidity = ToMany<CodeableReferenceDbObject>();
  final ToMany<ReferenceDbObject> indication = ToMany<ReferenceDbObject>();
  final ToMany<ClinicalUseDefinitionOtherTherapyDbObject> otherTherapy = ToMany<ClinicalUseDefinitionOtherTherapyDbObject>();
  ClinicalUseDefinitionContraindicationDbObject({required this.id});
}
@Entity()
class ClinicalUseDefinitionOtherTherapyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> relationshipType = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableReferenceDbObject> therapy = ToOne<CodeableReferenceDbObject>();
  ClinicalUseDefinitionOtherTherapyDbObject({required this.id});
}
@Entity()
class ClinicalUseDefinitionIndicationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> diseaseSymptomProcedure = ToOne<CodeableReferenceDbObject>();
  final ToOne<CodeableReferenceDbObject> diseaseStatus = ToOne<CodeableReferenceDbObject>();
  final ToMany<CodeableReferenceDbObject> comorbidity = ToMany<CodeableReferenceDbObject>();
  final ToOne<CodeableReferenceDbObject> intendedEffect = ToOne<CodeableReferenceDbObject>();
  final ToOne<RangeDbObject> durationRange = ToOne<RangeDbObject>();
  final ToOne<FhirMarkdownDbObject> durationString = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> durationStringElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> undesirableEffect = ToMany<ReferenceDbObject>();
  final ToMany<ClinicalUseDefinitionOtherTherapyDbObject> otherTherapy = ToMany<ClinicalUseDefinitionOtherTherapyDbObject>();
  ClinicalUseDefinitionIndicationDbObject({required this.id});
}
@Entity()
class ClinicalUseDefinitionInteractionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<ClinicalUseDefinitionInteractantDbObject> interactant = ToMany<ClinicalUseDefinitionInteractantDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableReferenceDbObject> effect = ToOne<CodeableReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> incidence = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> management = ToMany<CodeableConceptDbObject>();
  ClinicalUseDefinitionInteractionDbObject({required this.id});
}
@Entity()
class ClinicalUseDefinitionInteractantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> itemReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> itemCodeableConcept = ToOne<CodeableConceptDbObject>();
  ClinicalUseDefinitionInteractantDbObject({required this.id});
}
@Entity()
class ClinicalUseDefinitionUndesirableEffectDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> symptomConditionEffect = ToOne<CodeableReferenceDbObject>();
@Entity()
class classification,DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<CodeableConceptDbObject> frequencyOfOccurrence = ToOne<CodeableConceptDbObject>();
  classification,DbObject(<>{required this.id});
}
@Entity()
class ClinicalUseDefinitionWarningDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  ClinicalUseDefinitionWarningDbObject({required this.id});
}
