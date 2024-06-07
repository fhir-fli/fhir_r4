import 'package:realm/realm.dart';
@RealmModel()
class _FamilyMemberHistoryRealm {
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
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm dataAbsentReason;
  late _ReferenceRealm patient;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _CodeableConceptRealm relationship;
  late _CodeableConceptRealm sex;
  late _PeriodRealm bornPeriod;
  late _FhirDateRealm bornDate;
  late _PrimitiveElementRealm bornDateElement;
  late String bornString;
  late _PrimitiveElementRealm bornStringElement;
  late _AgeRealm ageAge;
  late _RangeRealm ageRange;
  late String ageString;
  late _PrimitiveElementRealm ageStringElement;
  late _FhirBooleanRealm estimatedAge;
  late _PrimitiveElementRealm estimatedAgeElement;
  late _FhirBooleanRealm deceasedBoolean;
  late _PrimitiveElementRealm deceasedBooleanElement;
  late _AgeRealm deceasedAge;
  late _RangeRealm deceasedRange;
  late _FhirDateRealm deceasedDate;
  late _PrimitiveElementRealm deceasedDateElement;
  late String deceasedString;
  late _PrimitiveElementRealm deceasedStringElement;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_AnnotationRealm> note;
  late List<_FamilyMemberHistoryConditionRealm> condition;
}
@RealmModel()
class _FamilyMemberHistoryConditionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _CodeableConceptRealm outcome;
  late _FhirBooleanRealm contributedToDeath;
  late _PrimitiveElementRealm contributedToDeathElement;
  late _AgeRealm onsetAge;
  late _RangeRealm onsetRange;
  late _PeriodRealm onsetPeriod;
  late String onsetString;
  late _PrimitiveElementRealm onsetStringElement;
  late List<_AnnotationRealm> note;
}
