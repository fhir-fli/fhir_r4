import 'package:realm/realm.dart';
@RealmModel()
class _PractitionerRealm {
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
  late List<_HumanNameRealm> name;
  late List<_ContactPointRealm> telecom;
  late List<_AddressRealm> address;
  late _FhirCodeRealm gender;
  late _PrimitiveElementRealm genderElement;
  late _FhirDateRealm birthDate;
  late _PrimitiveElementRealm birthDateElement;
  late List<_AttachmentRealm> photo;
  late List<_PractitionerQualificationRealm> qualification;
  late List<_CodeableConceptRealm> communication;
}
@RealmModel()
class _PractitionerQualificationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _CodeableConceptRealm code;
  late _PeriodRealm period;
  late _ReferenceRealm issuer;
}
