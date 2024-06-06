import 'package:objectbox/objectbox.dart';
@Entity()
class OrganizationDbObject {
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
  final ToMany<CodeableConceptDbObject> type = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> alias = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> aliasElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToMany<AddressDbObject> address = ToMany<AddressDbObject>();
  final ToOne<ReferenceDbObject> partOf = ToOne<ReferenceDbObject>();
  final ToMany<OrganizationContactDbObject> contact = ToMany<OrganizationContactDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  OrganizationDbObject({required this.id});
}
@Entity()
class OrganizationContactDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> purpose = ToOne<CodeableConceptDbObject>();
  final ToOne<HumanNameDbObject> name = ToOne<HumanNameDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToOne<AddressDbObject> address = ToOne<AddressDbObject>();
  OrganizationContactDbObject({required this.id});
}
