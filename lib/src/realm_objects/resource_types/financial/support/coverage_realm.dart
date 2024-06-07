import 'package:realm/realm.dart';
@RealmModel()
class _CoverageRealm {
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
  late _CodeableConceptRealm type;
  late _ReferenceRealm policyHolder;
  late _ReferenceRealm subscriber;
  late String subscriberId;
  late _PrimitiveElementRealm subscriberIdElement;
  late _ReferenceRealm beneficiary;
  late String dependent;
  late _PrimitiveElementRealm dependentElement;
  late _CodeableConceptRealm relationship;
  late _PeriodRealm period;
  late List<_ReferenceRealm> payor;
@RealmModel()
class _List<CoverageClass>?Realm {
  late _FhirPositiveIntRealm order;
  late _PrimitiveElementRealm orderElement;
  late String network;
  late _PrimitiveElementRealm networkElement;
  late List<_CoverageCostToBeneficiaryRealm> costToBeneficiary;
  late _FhirBooleanRealm subrogation;
  late _PrimitiveElementRealm subrogationElement;
  late List<_ReferenceRealm> contract;
}
@RealmModel()
class _CoverageClassRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
}
@RealmModel()
class _CoverageCostToBeneficiaryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _QuantityRealm valueQuantity;
  late _MoneyRealm valueMoney;
  late List<_CoverageExceptionRealm> exception;
}
@RealmModel()
class _CoverageExceptionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _PeriodRealm period;
}
