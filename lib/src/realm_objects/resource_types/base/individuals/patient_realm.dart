import 'package:realm/realm.dart';
@RealmModel()
class _PatientRealm {
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
  late _FhirCodeRealm gender;
  late _PrimitiveElementRealm genderElement;
  late _FhirDateRealm birthDate;
  late _PrimitiveElementRealm birthDateElement;
  late _FhirBooleanRealm deceasedBoolean;
  late _PrimitiveElementRealm deceasedBooleanElement;
  late String deceasedDateTime;
  late _PrimitiveElementRealm deceasedDateTimeElement;
  late List<_AddressRealm> address;
  late _CodeableConceptRealm maritalStatus;
  late _FhirBooleanRealm multipleBirthBoolean;
  late _PrimitiveElementRealm multipleBirthBooleanElement;
  late _FhirIntegerRealm multipleBirthInteger;
  late _PrimitiveElementRealm multipleBirthIntegerElement;
  late List<_AttachmentRealm> photo;
  late List<_PatientContactRealm> contact;
  late List<_PatientCommunicationRealm> communication;
  late List<_ReferenceRealm> generalPractitioner;
  late _ReferenceRealm managingOrganization;
  late List<_PatientLinkRealm> link;
}
@RealmModel()
class _PatientContactRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> relationship;
  late _HumanNameRealm name;
  late List<_ContactPointRealm> telecom;
  late _AddressRealm address;
  late _FhirCodeRealm gender;
  late _PrimitiveElementRealm genderElement;
  late _ReferenceRealm organization;
  late _PeriodRealm period;
}
@RealmModel()
class _PatientCommunicationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm language;
  late _FhirBooleanRealm preferred;
  late _PrimitiveElementRealm preferredElement;
}
@RealmModel()
class _PatientLinkRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm other;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
}
