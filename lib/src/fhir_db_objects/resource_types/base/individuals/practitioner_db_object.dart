import 'package:objectbox/objectbox.dart';
@Entity()
class PractitionerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<HumanNameDbObject> name = ToMany<HumanNameDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToMany<AddressDbObject> address = ToMany<AddressDbObject>();
  final ToOne<FhirCodeDbObject> gender = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> genderElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> birthDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> birthDateElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AttachmentDbObject> photo = ToMany<AttachmentDbObject>();
  final ToMany<PractitionerQualificationDbObject> qualification = ToMany<PractitionerQualificationDbObject>();
  final ToMany<CodeableConceptDbObject> communication = ToMany<CodeableConceptDbObject>();
  PractitionerDbObject({required this.id});
}
@Entity()
class PractitionerQualificationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> issuer = ToOne<ReferenceDbObject>();
  PractitionerQualificationDbObject({required this.id});
}
