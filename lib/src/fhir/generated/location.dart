import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Location {
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
  final Coding operationalStatus;
  final String name;
  final PrimitiveElement Name;
  final List<String> alias;
  final List<PrimitiveElement> Alias;
  final String description;
  final PrimitiveElement Description;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final List<CodeableConcept> type;
  final List<ContactPoint> telecom;
  final Address address;
  final CodeableConcept physicalType;
  final Location_Position position;
  final Reference managingOrganization;
  final Reference partOf;
  final List<LocationHoursOfOperation> hoursOfOperation;
  final String availabilityExceptions;
  final PrimitiveElement AvailabilityExceptions;
  final List<Reference> endpoint;
  const Location({
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
    this.operationalStatus,
    this.name,
    this.Name,
    this.alias,
    this.Alias,
    this.description,
    this.Description,
    this.mode,
    this.Mode,
    this.type,
    this.telecom,
    this.address,
    this.physicalType,
    this.position,
    this.managingOrganization,
    this.partOf,
    this.hoursOfOperation,
    this.availabilityExceptions,
    this.AvailabilityExceptions,
    this.endpoint,
  });
}
