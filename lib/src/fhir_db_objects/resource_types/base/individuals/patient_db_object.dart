import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class PatientDbObject {
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
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<HumanNameDbObject> name = ToMany<HumanNameDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToOne<FhirCodeDbObject> gender = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> genderElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> birthDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> birthDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> deceasedBoolean =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> deceasedBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> deceasedDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> deceasedDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AddressDbObject> address = ToMany<AddressDbObject>();
  final ToOne<CodeableConceptDbObject> maritalStatus =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> multipleBirthBoolean =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> multipleBirthBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> multipleBirthInteger =
      ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> multipleBirthIntegerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AttachmentDbObject> photo = ToMany<AttachmentDbObject>();
  final ToMany<PatientContactDbObject> contact =
      ToMany<PatientContactDbObject>();
  final ToMany<PatientCommunicationDbObject> communication =
      ToMany<PatientCommunicationDbObject>();
  final ToMany<ReferenceDbObject> generalPractitioner =
      ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> managingOrganization =
      ToOne<ReferenceDbObject>();
  final ToMany<PatientLinkDbObject> link = ToMany<PatientLinkDbObject>();
  PatientDbObject({required this.id});
}

@Entity()
class PatientContactDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> relationship =
      ToMany<CodeableConceptDbObject>();
  final ToOne<HumanNameDbObject> name = ToOne<HumanNameDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToOne<AddressDbObject> address = ToOne<AddressDbObject>();
  final ToOne<FhirCodeDbObject> gender = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> genderElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> organization = ToOne<ReferenceDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  PatientContactDbObject({required this.id});
}

@Entity()
class PatientCommunicationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> language =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> preferred = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> preferredElement =
      ToOne<PrimitiveElementDbObject>();
  PatientCommunicationDbObject({required this.id});
}

@Entity()
class PatientLinkDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> other = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  PatientLinkDbObject({required this.id});
}
