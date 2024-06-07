import 'package:realm/realm.dart';
@RealmModel()
class _FhirGroupRealm {
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
  late _FhirBooleanRealm active;
  late _PrimitiveElementRealm activeElement;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirBooleanRealm actual;
  late _PrimitiveElementRealm actualElement;
  late _CodeableConceptRealm code;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirUnsignedIntRealm quantity;
  late _PrimitiveElementRealm quantityElement;
  late _ReferenceRealm managingEntity;
  late List<_GroupCharacteristicRealm> characteristic;
  late List<_GroupMemberRealm> member;
}
@RealmModel()
class _GroupCharacteristicRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
  late _CodeableConceptRealm valueCodeableConcept;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _QuantityRealm valueQuantity;
  late _RangeRealm valueRange;
  late _ReferenceRealm valueReference;
  late _FhirBooleanRealm exclude;
  late _PrimitiveElementRealm excludeElement;
  late _PeriodRealm period;
}
@RealmModel()
class _GroupMemberRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm entity;
  late _PeriodRealm period;
  late _FhirBooleanRealm inactive;
  late _PrimitiveElementRealm inactiveElement;
}
