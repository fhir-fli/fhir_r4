import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RelatedPerson {
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
  final Reference patient;
  final List<CodeableConcept> relationship;
  final List<HumanName> name;
  final List<ContactPoint> telecom;
  final FhirCode gender;
  final PrimitiveElement Gender;
  final FhirDate birthDate;
  final PrimitiveElement BirthDate;
  final List<Address> address;
  final List<Attachment> photo;
  final Period period;
  final List<RelatedPersonCommunication> communication;
  const RelatedPerson({
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
    required this.patient,
    this.relationship,
    this.name,
    this.telecom,
    this.gender,
    this.Gender,
    this.birthDate,
    this.BirthDate,
    this.address,
    this.photo,
    this.period,
    this.communication,
  });
}
