import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Person {
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
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final FhirCode gender;
  final PrimitiveElement Gender;
  final FhirDate birthDate;
  final PrimitiveElement BirthDate;
  final List<Address> address;
  final Attachment photo;
  final Reference managingOrganization;
  final FhirBoolean active;
  final PrimitiveElement Active;
  final List<PersonLink> link;
  const Person({
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
    this.name,
    this.telecom,
    this.gender,
    this.Gender,
    this.birthDate,
    this.BirthDate,
    this.address,
    this.photo,
    this.managingOrganization,
    this.active,
    this.Active,
    this.link,
  });
}
