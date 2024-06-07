import 'package:realm/realm.dart';
@RealmModel()
class _ConditionRealm {
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
  late _CodeableConceptRealm clinicalStatus;
  late _CodeableConceptRealm verificationStatus;
  late List<_CodeableConceptRealm> category;
  late _CodeableConceptRealm severity;
  late _CodeableConceptRealm code;
  late List<_CodeableConceptRealm> bodySite;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String onsetDateTime;
  late _PrimitiveElementRealm onsetDateTimeElement;
  late _AgeRealm onsetAge;
  late _PeriodRealm onsetPeriod;
  late _RangeRealm onsetRange;
  late String onsetString;
  late _PrimitiveElementRealm onsetStringElement;
  late String abatementDateTime;
  late _PrimitiveElementRealm abatementDateTimeElement;
  late _AgeRealm abatementAge;
  late _PeriodRealm abatementPeriod;
  late _RangeRealm abatementRange;
  late String abatementString;
  late _PrimitiveElementRealm abatementStringElement;
  late String recordedDate;
  late _PrimitiveElementRealm recordedDateElement;
  late _ReferenceRealm recorder;
  late _ReferenceRealm asserter;
  late List<_ConditionStageRealm> stage;
  late List<_ConditionEvidenceRealm> evidence;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _ConditionStageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm summary;
  late List<_ReferenceRealm> assessment;
  late _CodeableConceptRealm type;
}
@RealmModel()
class _ConditionEvidenceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> code;
  late List<_ReferenceRealm> detail;
}
