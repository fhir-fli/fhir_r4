import 'package:realm/realm.dart';
@RealmModel()
class _NamingSystemRealm {
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
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirCodeRealm kind;
  late _PrimitiveElementRealm kindElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late String responsible;
  late _PrimitiveElementRealm responsibleElement;
  late _CodeableConceptRealm type;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late String usage;
  late _PrimitiveElementRealm usageElement;
  late List<_NamingSystemUniqueIdRealm> uniqueId;
}
@RealmModel()
class _NamingSystemUniqueIdRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late _FhirBooleanRealm preferred;
  late _PrimitiveElementRealm preferredElement;
  late String comment;
  late _PrimitiveElementRealm commentElement;
  late _PeriodRealm period;
}
