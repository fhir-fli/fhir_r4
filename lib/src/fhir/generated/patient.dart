import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Patient {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirBoolean active;
  final PrimitiveElement Active;
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final FhirCode gender;
  final PrimitiveElement Gender;
  final FhirDate birthDate;
  final PrimitiveElement BirthDate;
  final bool deceasedBoolean;
  final PrimitiveElement DeceasedBoolean;
  final String deceasedDateTime;
  final PrimitiveElement DeceasedDateTime;
  final List<Address> address;
  final CodeableConcept maritalStatus;
  final bool multipleBirthBoolean;
  final PrimitiveElement MultipleBirthBoolean;
  final double multipleBirthInteger;
  final PrimitiveElement MultipleBirthInteger;
  final List<Attachment> photo;
  final List<PatientContact> contact;
  final List<PatientCommunication> communication;
  final List<Reference> generalPractitioner;
  final Reference managingOrganization;
  final List<PatientLink> link;
  const Patient({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.Active,
    this.name,
    this.telecom,
    this.gender,
    this.Gender,
    this.birthDate,
    this.BirthDate,
    this.deceasedBoolean,
    this.DeceasedBoolean,
    this.deceasedDateTime,
    this.DeceasedDateTime,
    this.address,
    this.maritalStatus,
    this.multipleBirthBoolean,
    this.MultipleBirthBoolean,
    this.multipleBirthInteger,
    this.MultipleBirthInteger,
    this.photo,
    this.contact,
    this.communication,
    this.generalPractitioner,
    this.managingOrganization,
    this.link,
  });
}
