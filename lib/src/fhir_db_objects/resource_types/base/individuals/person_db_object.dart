import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class PersonDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<HumanNameDbObject> name = ToMany<HumanNameDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToOne<FhirCodeDbObject> gender = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> genderElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> birthDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> birthDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AddressDbObject> address = ToMany<AddressDbObject>();
  final ToOne<AttachmentDbObject> photo = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> managingOrganization =
      ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<PersonLinkDbObject> link = ToMany<PersonLinkDbObject>();
  PersonDbObject({required this.id});
}

@Entity()
class PersonLinkDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> target = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> assurance = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> assuranceElement =
      ToOne<PrimitiveElementDbObject>();
  PersonLinkDbObject({required this.id});
}
