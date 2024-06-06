import 'package:objectbox/objectbox.dart';
@Entity()
class GoalDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
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
  final ToOne<FhirCodeDbObject> lifecycleStatus = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> lifecycleStatusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> achievementStatus = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> priority = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> description = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateDbObject> startDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> startDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> startCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToMany<GoalTargetDbObject> target = ToMany<GoalTargetDbObject>();
  final ToOne<FhirDateDbObject> statusDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> statusDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> statusReason = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> statusReasonElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> expressedBy = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> addresses = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<CodeableConceptDbObject> outcomeCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> outcomeReference = ToMany<ReferenceDbObject>();
  GoalDbObject({required this.id});
}
@Entity()
class GoalTargetDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> measure = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> detailQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> detailRange = ToOne<RangeDbObject>();
  final ToOne<CodeableConceptDbObject> detailCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> detailString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> detailStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> detailBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> detailBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> detailInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> detailIntegerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<RatioDbObject> detailRatio = ToOne<RatioDbObject>();
  final ToOne<FhirDateDbObject> dueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> dueDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDurationDbObject> dueDuration = ToOne<FhirDurationDbObject>();
  GoalTargetDbObject({required this.id});
}
