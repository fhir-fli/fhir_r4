import 'package:realm/realm.dart';
@RealmModel()
class _OrganizationAffiliationRealm {
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
  late _PeriodRealm period;
  late _ReferenceRealm organization;
  late _ReferenceRealm participatingOrganization;
  late List<_ReferenceRealm> network;
  late List<_CodeableConceptRealm> code;
  late List<_CodeableConceptRealm> specialty;
  late List<_ReferenceRealm> location;
  late List<_ReferenceRealm> healthcareService;
  late List<_ContactPointRealm> telecom;
  late List<_ReferenceRealm> endpoint;
}
