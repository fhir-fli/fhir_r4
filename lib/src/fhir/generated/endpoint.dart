import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Endpoint {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final Coding connectionType;
  final String name;
  final PrimitiveElement Name;
  final Reference managingOrganization;
  final List<ContactPoint> contact;
  final Period period;
  final List<CodeableConcept> payloadType;
  final List<FhirCode> payloadMimeType;
  final List<PrimitiveElement> PayloadMimeType;
  final FhirUrl address;
  final PrimitiveElement Address;
  final List<String> header;
  final List<PrimitiveElement> Header;
  const Endpoint({
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
    this.status,
    this.Status,
    required this.connectionType,
    this.name,
    this.Name,
    this.managingOrganization,
    this.contact,
    this.period,
    required this.payloadType,
    this.payloadMimeType,
    this.PayloadMimeType,
    this.address,
    this.Address,
    this.header,
    this.Header,
  });
}
