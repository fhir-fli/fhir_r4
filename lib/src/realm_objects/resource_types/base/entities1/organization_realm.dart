import 'package:realm/realm.dart';
@RealmModel()
class _OrganizationRealm {
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
  late List<_CodeableConceptRealm> type;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String alias;
  late List<_PrimitiveElementRealm> aliasElement;
  late List<_ContactPointRealm> telecom;
  late List<_AddressRealm> address;
  late _ReferenceRealm partOf;
  late List<_OrganizationContactRealm> contact;
  late List<_ReferenceRealm> endpoint;
}
@RealmModel()
class _OrganizationContactRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm purpose;
  late _HumanNameRealm name;
  late List<_ContactPointRealm> telecom;
  late _AddressRealm address;
}
