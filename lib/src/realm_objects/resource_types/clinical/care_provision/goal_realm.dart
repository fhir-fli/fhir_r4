import 'package:realm/realm.dart';
@RealmModel()
class _GoalRealm {
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
  late _FhirCodeRealm lifecycleStatus;
  late _PrimitiveElementRealm lifecycleStatusElement;
  late _CodeableConceptRealm achievementStatus;
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm priority;
  late _CodeableConceptRealm description;
  late _ReferenceRealm subject;
  late _FhirDateRealm startDate;
  late _PrimitiveElementRealm startDateElement;
  late _CodeableConceptRealm startCodeableConcept;
  late List<_GoalTargetRealm> target;
  late _FhirDateRealm statusDate;
  late _PrimitiveElementRealm statusDateElement;
  late String statusReason;
  late _PrimitiveElementRealm statusReasonElement;
  late _ReferenceRealm expressedBy;
  late List<_ReferenceRealm> addresses;
  late List<_AnnotationRealm> note;
  late List<_CodeableConceptRealm> outcomeCode;
  late List<_ReferenceRealm> outcomeReference;
}
@RealmModel()
class _GoalTargetRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm measure;
  late _QuantityRealm detailQuantity;
  late _RangeRealm detailRange;
  late _CodeableConceptRealm detailCodeableConcept;
  late String detailString;
  late _PrimitiveElementRealm detailStringElement;
  late _FhirBooleanRealm detailBoolean;
  late _PrimitiveElementRealm detailBooleanElement;
  late _FhirIntegerRealm detailInteger;
  late _PrimitiveElementRealm detailIntegerElement;
  late _RatioRealm detailRatio;
  late _FhirDateRealm dueDate;
  late _PrimitiveElementRealm dueDateElement;
  late _FhirDurationRealm dueDuration;
}
