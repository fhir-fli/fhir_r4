import 'package:realm/realm.dart';
@RealmModel()
class _ImmunizationEvaluationRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _ReferenceRealm patient;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm authority;
  late _CodeableConceptRealm targetDisease;
  late _ReferenceRealm immunizationEvent;
  late _CodeableConceptRealm doseStatus;
  late List<_CodeableConceptRealm> doseStatusReason;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late String series;
  late _PrimitiveElementRealm seriesElement;
  late _FhirPositiveIntRealm doseNumberPositiveInt;
  late _PrimitiveElementRealm doseNumberPositiveIntElement;
  late String doseNumberString;
  late _PrimitiveElementRealm doseNumberStringElement;
  late _FhirPositiveIntRealm seriesDosesPositiveInt;
  late _PrimitiveElementRealm seriesDosesPositiveIntElement;
  late String seriesDosesString;
  late _PrimitiveElementRealm seriesDosesStringElement;
}
