import 'package:realm/realm.dart';
@RealmModel()
class _RiskAssessmentRealm {
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
  late _ReferenceRealm basedOn;
  late _ReferenceRealm parent;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm method;
  late _CodeableConceptRealm code;
  late _ReferenceRealm subject;
  late _ReferenceRealm encounter;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late _PeriodRealm occurrencePeriod;
  late _ReferenceRealm condition;
  late _ReferenceRealm performer;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_ReferenceRealm> basis;
  late List<_RiskAssessmentPredictionRealm> prediction;
  late String mitigation;
  late _PrimitiveElementRealm mitigationElement;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _RiskAssessmentPredictionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm outcome;
  late _FhirDecimalRealm probabilityDecimal;
  late _PrimitiveElementRealm probabilityDecimalElement;
  late _RangeRealm probabilityRange;
  late _CodeableConceptRealm qualitativeRisk;
  late _FhirDecimalRealm relativeRisk;
  late _PrimitiveElementRealm relativeRiskElement;
  late _PeriodRealm whenPeriod;
  late _RangeRealm whenRange;
  late String rationale;
  late _PrimitiveElementRealm rationaleElement;
}
