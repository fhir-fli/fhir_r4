import 'package:realm/realm.dart';
@RealmModel()
class _CarePlanRealm {
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
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late List<_ReferenceRealm> basedOn;
  late List<_ReferenceRealm> replaces;
  late List<_ReferenceRealm> partOf;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm intent;
  late _PrimitiveElementRealm intentElement;
  late List<_CodeableConceptRealm> category;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late _PeriodRealm period;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm author;
  late List<_ReferenceRealm> contributor;
  late List<_ReferenceRealm> careTeam;
  late List<_ReferenceRealm> addresses;
  late List<_ReferenceRealm> supportingInfo;
  late List<_ReferenceRealm> goal;
  late List<_CarePlanActivityRealm> activity;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _CarePlanActivityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> outcomeCodeableConcept;
  late List<_ReferenceRealm> outcomeReference;
  late List<_AnnotationRealm> progress;
  late _ReferenceRealm reference;
  late _CarePlanDetailRealm detail;
}
@RealmModel()
class _CarePlanDetailRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
  late List<_FhirCanonicalRealm> instantiatesCanonical;
  late List<_FhirUriRealm> instantiatesUri;
  late List<_PrimitiveElementRealm> instantiatesUriElement;
  late _CodeableConceptRealm code;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_ReferenceRealm> goal;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm statusReason;
  late _FhirBooleanRealm doNotPerform;
  late _PrimitiveElementRealm doNotPerformElement;
  late _TimingRealm scheduledTiming;
  late _PeriodRealm scheduledPeriod;
  late String scheduledString;
  late _PrimitiveElementRealm scheduledStringElement;
  late _ReferenceRealm location;
  late List<_ReferenceRealm> performer;
  late _CodeableConceptRealm productCodeableConcept;
  late _ReferenceRealm productReference;
  late _QuantityRealm dailyAmount;
  late _QuantityRealm quantity;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
}
