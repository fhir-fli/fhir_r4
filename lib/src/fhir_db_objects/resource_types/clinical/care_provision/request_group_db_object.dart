import 'package:objectbox/objectbox.dart';
@Entity()
class RequestGroupDbObject {
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
  final ToMany<FhirCanonicalDbObject> instantiatesCanonical = ToMany<FhirCanonicalDbObject>();
  final ToMany<ElementDbObject> instantiatesCanonicalElement = ToMany<ElementDbObject>();
  final ToMany<FhirUriDbObject> instantiatesUri = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> instantiatesUriElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> replaces = ToMany<ReferenceDbObject>();
  final ToOne<IdentifierDbObject> groupIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> intent = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> intentElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> authoredOn = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> authoredOnElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> author = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<RequestGroupActionDbObject> action = ToMany<RequestGroupActionDbObject>();
  RequestGroupDbObject({required this.id});
}
@Entity()
class RequestGroupActionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> prefix = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> prefixElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> textEquivalent = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textEquivalentElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToMany<RelatedArtifactDbObject> documentation = ToMany<RelatedArtifactDbObject>();
  final ToMany<RequestGroupConditionDbObject> condition = ToMany<RequestGroupConditionDbObject>();
  final ToMany<RequestGroupRelatedActionDbObject> relatedAction = ToMany<RequestGroupRelatedActionDbObject>();
  final ToOne<FhirDateTimeDbObject> timingDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timingDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> timingAge = ToOne<AgeDbObject>();
  final ToOne<PeriodDbObject> timingPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDurationDbObject> timingDuration = ToOne<FhirDurationDbObject>();
  final ToOne<RangeDbObject> timingRange = ToOne<RangeDbObject>();
  final ToOne<TimingDbObject> timingTiming = ToOne<TimingDbObject>();
  final ToMany<ReferenceDbObject> participant = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> groupingBehavior = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> groupingBehaviorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> selectionBehavior = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> selectionBehaviorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> requiredBehavior = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> requiredBehaviorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> precheckBehavior = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> precheckBehaviorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> cardinalityBehavior = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> cardinalityBehaviorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> resource = ToOne<ReferenceDbObject>();
  final ToMany<RequestGroupActionDbObject> action = ToMany<RequestGroupActionDbObject>();
  RequestGroupActionDbObject({required this.id});
}
@Entity()
class RequestGroupConditionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> expression = ToOne<FhirExpressionDbObject>();
  RequestGroupConditionDbObject({required this.id});
}
@Entity()
class RequestGroupRelatedActionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIdDbObject> actionId = ToOne<FhirIdDbObject>();
  final ToOne<PrimitiveElementDbObject> actionIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> relationship = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> relationshipElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDurationDbObject> offsetDuration = ToOne<FhirDurationDbObject>();
  final ToOne<RangeDbObject> offsetRange = ToOne<RangeDbObject>();
  RequestGroupRelatedActionDbObject({required this.id});
}
