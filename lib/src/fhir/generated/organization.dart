import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Organization {
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
  final List<CodeableConcept> type;
  final String name;
  final PrimitiveElement Name;
  final List<String> alias;
  final List<PrimitiveElement> Alias;
  final List<ContactPoint> telecom;
  final List<Address> address;
  final Reference partOf;
  final List<OrganizationContact> contact;
  final List<Reference> endpoint;
  const Organization({
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
    this.type,
    this.name,
    this.Name,
    this.alias,
    this.Alias,
    this.telecom,
    this.address,
    this.partOf,
    this.contact,
    this.endpoint,
  });
}
