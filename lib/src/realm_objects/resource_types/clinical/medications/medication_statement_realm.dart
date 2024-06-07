import 'package:realm/realm.dart';
@RealmModel()
class _MedicationStatementRealm {
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
  late List<_ReferenceRealm> basedOn;
  late List<_ReferenceRealm> partOf;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_CodeableConceptRealm> statusReason;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm medicationCodeableConcept;
  late _ReferenceRealm medicationReference;
  late _ReferenceRealm subject;
  late _ReferenceRealm context;
  late String effectiveDateTime;
  late _PrimitiveElementRealm effectiveDateTimeElement;
  late _PeriodRealm effectivePeriod;
  late String dateAsserted;
  late _PrimitiveElementRealm dateAssertedElement;
  late _ReferenceRealm informationSource;
  late List<_ReferenceRealm> derivedFrom;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late List<_AnnotationRealm> note;
  late List<_DosageRealm> dosage;
}
