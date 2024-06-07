import 'package:realm/realm.dart';
@RealmModel()
class _ImmunizationRecommendationRealm {
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
  late _ReferenceRealm patient;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late _ReferenceRealm authority;
  late List<_ImmunizationRecommendationRecommendationRealm> recommendation;
}
@RealmModel()
class _ImmunizationRecommendationRecommendationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> vaccineCode;
  late _CodeableConceptRealm targetDisease;
  late List<_CodeableConceptRealm> contraindicatedVaccineCode;
  late _CodeableConceptRealm forecastStatus;
  late List<_CodeableConceptRealm> forecastReason;
  late List<_ImmunizationRecommendationDateCriterionRealm> dateCriterion;
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
  late List<_ReferenceRealm> supportingImmunization;
  late List<_ReferenceRealm> supportingPatientInformation;
}
@RealmModel()
class _ImmunizationRecommendationDateCriterionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late String value;
  late _PrimitiveElementRealm valueElement;
}
