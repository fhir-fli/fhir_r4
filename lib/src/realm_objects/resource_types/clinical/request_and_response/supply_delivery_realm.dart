import 'package:realm/realm.dart';
@RealmModel()
class _SupplyDeliveryRealm {
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
  late _ReferenceRealm patient;
  late _CodeableConceptRealm type;
  late _SupplyDeliverySuppliedItemRealm suppliedItem;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late _PeriodRealm occurrencePeriod;
  late _TimingRealm occurrenceTiming;
  late _ReferenceRealm supplier;
  late _ReferenceRealm destination;
  late List<_ReferenceRealm> receiver;
}
@RealmModel()
class _SupplyDeliverySuppliedItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _QuantityRealm quantity;
  late _CodeableConceptRealm itemCodeableConcept;
  late _ReferenceRealm itemReference;
}
