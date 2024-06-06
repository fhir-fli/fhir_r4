import 'package:objectbox/objectbox.dart';
@Entity()
class RelatedPersonDbObject {
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
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> relationship = ToMany<CodeableConceptDbObject>();
  final ToMany<HumanNameDbObject> name = ToMany<HumanNameDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToOne<FhirCodeDbObject> gender = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> genderElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> birthDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> birthDateElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AddressDbObject> address = ToMany<AddressDbObject>();
  final ToMany<AttachmentDbObject> photo = ToMany<AttachmentDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToMany<RelatedPersonCommunicationDbObject> communication = ToMany<RelatedPersonCommunicationDbObject>();
  RelatedPersonDbObject({required this.id});
}
@Entity()
class RelatedPersonCommunicationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> language = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> preferred = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> preferredElement = ToOne<PrimitiveElementDbObject>();
  RelatedPersonCommunicationDbObject({required this.id});
}
