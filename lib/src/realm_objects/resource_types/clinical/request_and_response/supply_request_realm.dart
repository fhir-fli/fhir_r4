import 'package:realm/realm.dart';
@RealmModel()
class _SupplyRequestRealm {
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
  late _CodeableConceptRealm category;
  late _FhirCodeRealm priority;
  late _PrimitiveElementRealm priorityElement;
  late _CodeableConceptRealm itemCodeableConcept;
  late _ReferenceRealm itemReference;
  late _QuantityRealm quantity;
  late List<_SupplyRequestParameterRealm> parameter;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late _PeriodRealm occurrencePeriod;
  late _TimingRealm occurrenceTiming;
  late String authoredOn;
  late _PrimitiveElementRealm authoredOnElement;
  late _ReferenceRealm requester;
  late List<_ReferenceRealm> supplier;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late _ReferenceRealm deliverFrom;
  late _ReferenceRealm deliverTo;
}
@RealmModel()
class _SupplyRequestParameterRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _CodeableConceptRealm valueCodeableConcept;
  late _QuantityRealm valueQuantity;
  late _RangeRealm valueRange;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
}
