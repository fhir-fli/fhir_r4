import 'package:objectbox/objectbox.dart';
@Entity()
class PlanDefinitionDbObject {
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
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> subtitle = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> subtitleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> subjectCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subjectReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirCanonicalDbObject> subjectCanonical = ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> subjectCanonicalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext = ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> usage = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> usageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> approvalDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> approvalDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> lastReviewDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lastReviewDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToMany<CodeableConceptDbObject> topic = ToMany<CodeableConceptDbObject>();
  final ToMany<ContactDetailDbObject> author = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> editor = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> reviewer = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> endorser = ToMany<ContactDetailDbObject>();
  final ToMany<RelatedArtifactDbObject> relatedArtifact = ToMany<RelatedArtifactDbObject>();
  final ToMany<FhirCanonicalDbObject> library_ = ToMany<FhirCanonicalDbObject>();
  final ToMany<PlanDefinitionGoalDbObject> goal = ToMany<PlanDefinitionGoalDbObject>();
  final ToMany<PlanDefinitionActionDbObject> action = ToMany<PlanDefinitionActionDbObject>();
  PlanDefinitionDbObject({required this.id});
}
@Entity()
class PlanDefinitionGoalDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> category = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> description = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> priority = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> start = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> addresses = ToMany<CodeableConceptDbObject>();
  final ToMany<RelatedArtifactDbObject> documentation = ToMany<RelatedArtifactDbObject>();
  final ToMany<PlanDefinitionTargetDbObject> target = ToMany<PlanDefinitionTargetDbObject>();
  PlanDefinitionGoalDbObject({required this.id});
}
@Entity()
class PlanDefinitionTargetDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> measure = ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> detailQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> detailRange = ToOne<RangeDbObject>();
  final ToOne<CodeableConceptDbObject> detailCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDurationDbObject> due = ToOne<FhirDurationDbObject>();
  PlanDefinitionTargetDbObject({required this.id});
}
@Entity()
class PlanDefinitionActionDbObject {
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
  final ToMany<CodeableConceptDbObject> reason = ToMany<CodeableConceptDbObject>();
  final ToMany<RelatedArtifactDbObject> documentation = ToMany<RelatedArtifactDbObject>();
  final ToMany<FhirIdDbObject> goalId = ToMany<FhirIdDbObject>();
  final ToMany<PrimitiveElementDbObject> goalIdElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> subjectCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subjectReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirCanonicalDbObject> subjectCanonical = ToOne<FhirCanonicalDbObject>();
  final ToMany<PrimitiveElementDbObject> subjectCanonicalElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<TriggerDefinitionDbObject> trigger = ToMany<TriggerDefinitionDbObject>();
  final ToMany<PlanDefinitionConditionDbObject> condition = ToMany<PlanDefinitionConditionDbObject>();
  final ToMany<DataRequirementDbObject> input = ToMany<DataRequirementDbObject>();
  final ToMany<DataRequirementDbObject> output = ToMany<DataRequirementDbObject>();
  final ToMany<PlanDefinitionRelatedActionDbObject> relatedAction = ToMany<PlanDefinitionRelatedActionDbObject>();
  final ToOne<FhirDateTimeDbObject> timingDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timingDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AgeDbObject> timingAge = ToOne<AgeDbObject>();
  final ToOne<PeriodDbObject> timingPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDurationDbObject> timingDuration = ToOne<FhirDurationDbObject>();
  final ToOne<RangeDbObject> timingRange = ToOne<RangeDbObject>();
  final ToOne<TimingDbObject> timingTiming = ToOne<TimingDbObject>();
  final ToMany<PlanDefinitionParticipantDbObject> participant = ToMany<PlanDefinitionParticipantDbObject>();
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
  final ToOne<FhirCanonicalDbObject> definitionCanonical = ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> definitionCanonicalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> definitionUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> definitionUriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> transform = ToOne<FhirCanonicalDbObject>();
  final ToMany<PlanDefinitionDynamicValueDbObject> dynamicValue = ToMany<PlanDefinitionDynamicValueDbObject>();
  final ToMany<PlanDefinitionActionDbObject> action = ToMany<PlanDefinitionActionDbObject>();
  PlanDefinitionActionDbObject({required this.id});
}
@Entity()
class PlanDefinitionConditionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> kind = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> kindElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> expression = ToOne<FhirExpressionDbObject>();
  PlanDefinitionConditionDbObject({required this.id});
}
@Entity()
class PlanDefinitionRelatedActionDbObject {
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
  PlanDefinitionRelatedActionDbObject({required this.id});
}
@Entity()
class PlanDefinitionParticipantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  PlanDefinitionParticipantDbObject({required this.id});
}
@Entity()
class PlanDefinitionDynamicValueDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> path = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pathElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirExpressionDbObject> expression = ToOne<FhirExpressionDbObject>();
  PlanDefinitionDynamicValueDbObject({required this.id});
}
