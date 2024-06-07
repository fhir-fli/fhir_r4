import 'package:realm/realm.dart';
@RealmModel()
class _RelatedPersonRealm {
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
  late _ReferenceRealm patient;
  late List<_CodeableConceptRealm> relationship;
  late List<_HumanNameRealm> name;
  late List<_ContactPointRealm> telecom;
  late _FhirCodeRealm gender;
  late _PrimitiveElementRealm genderElement;
  late _FhirDateRealm birthDate;
  late _PrimitiveElementRealm birthDateElement;
  late List<_AddressRealm> address;
  late List<_AttachmentRealm> photo;
  late _PeriodRealm period;
  late List<_RelatedPersonCommunicationRealm> communication;
}
@RealmModel()
class _RelatedPersonCommunicationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm language;
  late _FhirBooleanRealm preferred;
  late _PrimitiveElementRealm preferredElement;
}
