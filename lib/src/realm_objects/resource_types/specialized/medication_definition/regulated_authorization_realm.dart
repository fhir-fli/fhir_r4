import 'package:realm/realm.dart';
@RealmModel()
class _RegulatedAuthorizationRealm {
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
  late List<_ReferenceRealm> subject;
  late _CodeableConceptRealm type;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_CodeableConceptRealm> region;
  late _CodeableConceptRealm status;
  late String statusDate;
  late _PrimitiveElementRealm statusDateElement;
  late _PeriodRealm validityPeriod;
  late _CodeableReferenceRealm indication;
  late _CodeableConceptRealm intendedUse;
  late List<_CodeableConceptRealm> basis;
  late _ReferenceRealm holder;
  late _ReferenceRealm regulator;
  late _RegulatedAuthorizationCaseRealm case_;
}
@RealmModel()
class _RegulatedAuthorizationCaseRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm status;
  late _PeriodRealm datePeriod;
  late String dateDateTime;
  late _PrimitiveElementRealm dateDateTimeElement;
  late List<_RegulatedAuthorizationCaseRealm> application;
}
