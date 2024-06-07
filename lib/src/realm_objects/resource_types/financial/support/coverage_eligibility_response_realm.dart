import 'package:realm/realm.dart';
@RealmModel()
class _CoverageEligibilityResponseRealm {
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
  late List<_FhirCodeRealm> purpose;
  late List<_PrimitiveElementRealm> purposeElement;
  late _ReferenceRealm patient;
  late _FhirDateRealm servicedDate;
  late _PrimitiveElementRealm servicedDateElement;
  late _PeriodRealm servicedPeriod;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm requestor;
  late _ReferenceRealm request;
  late _FhirCodeRealm outcome;
  late _PrimitiveElementRealm outcomeElement;
  late String disposition;
  late _PrimitiveElementRealm dispositionElement;
  late _ReferenceRealm insurer;
  late List<_CoverageEligibilityResponseInsuranceRealm> insurance;
  late String preAuthRef;
  late _PrimitiveElementRealm preAuthRefElement;
  late _CodeableConceptRealm form;
  late List<_CoverageEligibilityResponseErrorRealm> error;
}
@RealmModel()
class _CoverageEligibilityResponseInsuranceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm coverage;
  late _FhirBooleanRealm inforce;
  late _PrimitiveElementRealm inforceElement;
  late _PeriodRealm benefitPeriod;
  late List<_CoverageEligibilityResponseItemRealm> item;
}
@RealmModel()
class _CoverageEligibilityResponseItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm category;
  late _CodeableConceptRealm productOrService;
  late List<_CodeableConceptRealm> modifier;
  late _ReferenceRealm provider;
  late _FhirBooleanRealm excluded;
  late _PrimitiveElementRealm excludedElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late _CodeableConceptRealm network;
  late _CodeableConceptRealm unit;
  late _CodeableConceptRealm term;
  late List<_CoverageEligibilityResponseBenefitRealm> benefit;
  late _FhirBooleanRealm authorizationRequired;
  late _PrimitiveElementRealm authorizationRequiredElement;
  late List<_CodeableConceptRealm> authorizationSupporting;
  late _FhirUriRealm authorizationUrl;
  late _PrimitiveElementRealm authorizationUrlElement;
}
@RealmModel()
class _CoverageEligibilityResponseBenefitRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _FhirUnsignedIntRealm allowedUnsignedInt;
  late _PrimitiveElementRealm allowedUnsignedIntElement;
  late String allowedString;
  late _PrimitiveElementRealm allowedStringElement;
  late _MoneyRealm allowedMoney;
  late _FhirUnsignedIntRealm usedUnsignedInt;
  late _PrimitiveElementRealm usedUnsignedIntElement;
  late String usedString;
  late _PrimitiveElementRealm usedStringElement;
  late _MoneyRealm usedMoney;
}
@RealmModel()
class _CoverageEligibilityResponseErrorRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm code;
}
