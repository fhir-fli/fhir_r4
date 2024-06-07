import 'package:realm/realm.dart';
@RealmModel()
class _InsurancePlanRealm {
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
  late List<_CodeableConceptRealm> type;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String alias;
  late List<_PrimitiveElementRealm> aliasElement;
  late _PeriodRealm period;
  late _ReferenceRealm ownedBy;
  late _ReferenceRealm administeredBy;
  late List<_ReferenceRealm> coverageArea;
  late List<_InsurancePlanContactRealm> contact;
  late List<_ReferenceRealm> endpoint;
  late List<_ReferenceRealm> network;
  late List<_InsurancePlanCoverageRealm> coverage;
  late List<_InsurancePlanPlanRealm> plan;
}
@RealmModel()
class _InsurancePlanContactRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm purpose;
  late _HumanNameRealm name;
  late List<_ContactPointRealm> telecom;
  late _AddressRealm address;
}
@RealmModel()
class _InsurancePlanCoverageRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_ReferenceRealm> network;
  late List<_InsurancePlanBenefitRealm> benefit;
}
@RealmModel()
class _InsurancePlanBenefitRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String requirement;
  late _PrimitiveElementRealm requirementElement;
  late List<_InsurancePlanLimitRealm> limit;
}
@RealmModel()
class _InsurancePlanLimitRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _QuantityRealm value;
  late _CodeableConceptRealm code;
}
@RealmModel()
class _InsurancePlanPlanRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _CodeableConceptRealm type;
  late List<_ReferenceRealm> coverageArea;
  late List<_ReferenceRealm> network;
  late List<_InsurancePlanGeneralCostRealm> generalCost;
  late List<_InsurancePlanSpecificCostRealm> specificCost;
}
@RealmModel()
class _InsurancePlanGeneralCostRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _FhirPositiveIntRealm groupSize;
  late _PrimitiveElementRealm groupSizeElement;
  late _MoneyRealm cost;
  late String comment;
  late _PrimitiveElementRealm commentElement;
}
@RealmModel()
class _InsurancePlanSpecificCostRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm category;
  late List<_InsurancePlanBenefit1Realm> benefit;
}
@RealmModel()
class _InsurancePlanBenefit1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_InsurancePlanCostRealm> cost;
}
@RealmModel()
class _InsurancePlanCostRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm applicability;
  late List<_CodeableConceptRealm> qualifiers;
  late _QuantityRealm value;
}
