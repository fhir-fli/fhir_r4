import 'package:realm/realm.dart';
@RealmModel()
class _ChargeItemDefinitionRealm {
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
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late List<_FhirUriRealm> derivedFromUri;
  late List<_PrimitiveElementRealm> derivedFromUriElement;
  late List<_FhirCanonicalRealm> partOf;
  late List<_FhirCanonicalRealm> replaces;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirDateRealm approvalDate;
  late _PrimitiveElementRealm approvalDateElement;
  late _FhirDateRealm lastReviewDate;
  late _PrimitiveElementRealm lastReviewDateElement;
  late _PeriodRealm effectivePeriod;
  late _CodeableConceptRealm code;
  late List<_ReferenceRealm> instance;
  late List<_ChargeItemDefinitionApplicabilityRealm> applicability;
  late List<_ChargeItemDefinitionPropertyGroupRealm> propertyGroup;
}
@RealmModel()
class _ChargeItemDefinitionApplicabilityRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late String language;
  late _PrimitiveElementRealm languageElement;
  late String expression;
  late _PrimitiveElementRealm expressionElement;
}
@RealmModel()
class _ChargeItemDefinitionPropertyGroupRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ChargeItemDefinitionApplicabilityRealm> applicability;
  late List<_ChargeItemDefinitionPriceComponentRealm> priceComponent;
}
@RealmModel()
class _ChargeItemDefinitionPriceComponentRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _CodeableConceptRealm code;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _MoneyRealm amount;
}
