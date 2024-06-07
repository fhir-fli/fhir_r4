import 'package:realm/realm.dart';
@RealmModel()
class _PlanDefinitionRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String subtitle;
  late _PrimitiveElementRealm subtitleElement;
  late _CodeableConceptRealm type;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late _CodeableConceptRealm subjectCodeableConcept;
  late _ReferenceRealm subjectReference;
  late _FhirCanonicalRealm subjectCanonical;
  late _PrimitiveElementRealm subjectCanonicalElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late String usage;
  late _PrimitiveElementRealm usageElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirDateRealm approvalDate;
  late _PrimitiveElementRealm approvalDateElement;
  late _FhirDateRealm lastReviewDate;
  late _PrimitiveElementRealm lastReviewDateElement;
  late _PeriodRealm effectivePeriod;
  late List<_CodeableConceptRealm> topic;
  late List<_ContactDetailRealm> author;
  late List<_ContactDetailRealm> editor;
  late List<_ContactDetailRealm> reviewer;
  late List<_ContactDetailRealm> endorser;
  late List<_RelatedArtifactRealm> relatedArtifact;
  late List<_FhirCanonicalRealm> library_;
  late List<_PlanDefinitionGoalRealm> goal;
  late List<_PlanDefinitionActionRealm> action;
}
@RealmModel()
class _PlanDefinitionGoalRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm description;
  late _CodeableConceptRealm priority;
  late _CodeableConceptRealm start;
  late List<_CodeableConceptRealm> addresses;
  late List<_RelatedArtifactRealm> documentation;
  late List<_PlanDefinitionTargetRealm> target;
}
@RealmModel()
class _PlanDefinitionTargetRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm measure;
  late _QuantityRealm detailQuantity;
  late _RangeRealm detailRange;
  late _CodeableConceptRealm detailCodeableConcept;
  late _FhirDurationRealm due;
}
@RealmModel()
class _PlanDefinitionActionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String prefix;
  late _PrimitiveElementRealm prefixElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late String textEquivalent;
  late _PrimitiveElementRealm textEquivalentElement;
  late _FhirCodeRealm priority;
  late _PrimitiveElementRealm priorityElement;
  late List<_CodeableConceptRealm> code;
  late List<_CodeableConceptRealm> reason;
  late List<_RelatedArtifactRealm> documentation;
  late List<_FhirIdRealm> goalId;
  late List<_PrimitiveElementRealm> goalIdElement;
  late _CodeableConceptRealm subjectCodeableConcept;
  late _ReferenceRealm subjectReference;
  late _FhirCanonicalRealm subjectCanonical;
  late List<_PrimitiveElementRealm> subjectCanonicalElement;
  late List<_TriggerDefinitionRealm> trigger;
  late List<_PlanDefinitionConditionRealm> condition;
  late List<_DataRequirementRealm> input;
  late List<_DataRequirementRealm> output;
  late List<_PlanDefinitionRelatedActionRealm> relatedAction;
  late String timingDateTime;
  late _PrimitiveElementRealm timingDateTimeElement;
  late _AgeRealm timingAge;
  late _PeriodRealm timingPeriod;
  late _FhirDurationRealm timingDuration;
  late _RangeRealm timingRange;
  late _TimingRealm timingTiming;
  late List<_PlanDefinitionParticipantRealm> participant;
  late _CodeableConceptRealm type;
  late _FhirCodeRealm groupingBehavior;
  late _PrimitiveElementRealm groupingBehaviorElement;
  late _FhirCodeRealm selectionBehavior;
  late _PrimitiveElementRealm selectionBehaviorElement;
  late _FhirCodeRealm requiredBehavior;
  late _PrimitiveElementRealm requiredBehaviorElement;
  late _FhirCodeRealm precheckBehavior;
  late _PrimitiveElementRealm precheckBehaviorElement;
  late _FhirCodeRealm cardinalityBehavior;
  late _PrimitiveElementRealm cardinalityBehaviorElement;
  late _FhirCanonicalRealm definitionCanonical;
  late _PrimitiveElementRealm definitionCanonicalElement;
  late _FhirUriRealm definitionUri;
  late _PrimitiveElementRealm definitionUriElement;
  late _FhirCanonicalRealm transform;
  late List<_PlanDefinitionDynamicValueRealm> dynamicValue;
  late List<_PlanDefinitionActionRealm> action;
}
@RealmModel()
class _PlanDefinitionConditionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
  late _FhirExpressionRealm expression;
}
@RealmModel()
class _PlanDefinitionRelatedActionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIdRealm actionId;
  late _PrimitiveElementRealm actionIdElement;
  late _FhirCodeRealm relationship;
  late _PrimitiveElementRealm relationshipElement;
  late _FhirDurationRealm offsetDuration;
  late _RangeRealm offsetRange;
}
@RealmModel()
class _PlanDefinitionParticipantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _CodeableConceptRealm role;
}
@RealmModel()
class _PlanDefinitionDynamicValueRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String path;
  late _PrimitiveElementRealm pathElement;
  late _FhirExpressionRealm expression;
}
