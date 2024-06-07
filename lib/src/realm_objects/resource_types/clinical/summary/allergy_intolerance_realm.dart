import 'package:realm/realm.dart';
@RealmModel()
class _AllergyIntoleranceRealm {
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
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late List<_FhirCodeRealm> category;
  late List<_PrimitiveElementRealm> categoryElement;
  late _FhirCodeRealm criticality;
  late _PrimitiveElementRealm criticalityElement;
  late _CodeableConceptRealm code;
  late _ReferenceRealm patient;
  late _ReferenceRealm encounter;
  late String onsetDateTime;
  late _PrimitiveElementRealm onsetDateTimeElement;
  late _AgeRealm onsetAge;
  late _PeriodRealm onsetPeriod;
  late _RangeRealm onsetRange;
  late String onsetString;
  late _PrimitiveElementRealm onsetStringElement;
  late String recordedDate;
  late _PrimitiveElementRealm recordedDateElement;
  late _ReferenceRealm recorder;
  late _ReferenceRealm asserter;
  late String lastOccurrence;
  late _PrimitiveElementRealm lastOccurrenceElement;
  late List<_AnnotationRealm> note;
  late List<_AllergyIntoleranceReactionRealm> reaction;
}
@RealmModel()
class _AllergyIntoleranceReactionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm substance;
  late List<_CodeableConceptRealm> manifestation;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late String onset;
  late _PrimitiveElementRealm onsetElement;
  late _FhirCodeRealm severity;
  late _PrimitiveElementRealm severityElement;
  late _CodeableConceptRealm exposureRoute;
  late List<_AnnotationRealm> note;
}
