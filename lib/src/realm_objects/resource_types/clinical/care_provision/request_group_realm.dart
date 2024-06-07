import 'package:realm/realm.dart';
@RealmModel()
class _RequestGroupRealm {
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
  late List<_IdentifierRealm> identifier;
  late List<_FhirCanonicalRealm> instantiatesCanonical;
  late List<_ElementRealm> instantiatesCanonicalElement;
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late List<_ReferenceRealm> basedOn;
  late List<_ReferenceRealm> replaces;
  late _IdentifierRealm groupIdentifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm intent;
  late _PrimitiveElementRealm intentElement;
  late _FhirCodeRealm priority;
  late _PrimitiveElementRealm priorityElement;
  late _CodeableConceptRealm code;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String authoredOn;
  late _PrimitiveElementRealm authoredOnElement;
  late _ReferenceRealm author;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_AnnotationRealm> note;
  late List<_RequestGroupActionRealm> action;
}
@RealmModel()
class _RequestGroupActionRealm {
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
  late List<_RelatedArtifactRealm> documentation;
  late List<_RequestGroupConditionRealm> condition;
  late List<_RequestGroupRelatedActionRealm> relatedAction;
  late String timingDateTime;
  late _PrimitiveElementRealm timingDateTimeElement;
  late _AgeRealm timingAge;
  late _PeriodRealm timingPeriod;
  late _FhirDurationRealm timingDuration;
  late _RangeRealm timingRange;
  late _TimingRealm timingTiming;
  late List<_ReferenceRealm> participant;
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
  late _ReferenceRealm resource;
  late List<_RequestGroupActionRealm> action;
}
@RealmModel()
class _RequestGroupConditionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
  late _FhirExpressionRealm expression;
}
@RealmModel()
class _RequestGroupRelatedActionRealm {
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
