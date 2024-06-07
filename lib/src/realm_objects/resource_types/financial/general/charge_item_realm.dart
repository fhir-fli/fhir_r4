import 'package:realm/realm.dart';
@RealmModel()
class _ChargeItemRealm {
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
  late List<_FhirUriRealm> definitionUri;
  late List<_PrimitiveElementRealm> definitionUriElement;
  late List<_FhirCanonicalRealm> definitionCanonical;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late List<_ReferenceRealm> partOf;
  late _CodeableConceptRealm code;
  late _ReferenceRealm subject;
  late _ReferenceRealm context;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late _PeriodRealm occurrencePeriod;
  late _TimingRealm occurrenceTiming;
  late List<_ChargeItemPerformerRealm> performer;
  late _ReferenceRealm performingOrganization;
  late _ReferenceRealm requestingOrganization;
  late _ReferenceRealm costCenter;
  late _QuantityRealm quantity;
  late List<_CodeableConceptRealm> bodysite;
  late _FhirDecimalRealm factorOverride;
  late _PrimitiveElementRealm factorOverrideElement;
  late _MoneyRealm priceOverride;
  late String overrideReason;
  late _PrimitiveElementRealm overrideReasonElement;
  late _ReferenceRealm enterer;
  late String enteredDate;
  late _PrimitiveElementRealm enteredDateElement;
  late List<_CodeableConceptRealm> reason;
  late List<_ReferenceRealm> service;
  late _ReferenceRealm productReference;
  late _CodeableConceptRealm productCodeableConcept;
  late List<_ReferenceRealm> account;
  late List<_AnnotationRealm> note;
  late List<_ReferenceRealm> supportingInformation;
}
@RealmModel()
class _ChargeItemPerformerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm function;
  late _ReferenceRealm actor;
}
