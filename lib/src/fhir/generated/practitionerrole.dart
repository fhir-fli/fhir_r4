import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PractitionerRole {
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
  final Period period;
  final Reference practitioner;
  final Reference organization;
  final List<CodeableConcept> code;
  final List<CodeableConcept> specialty;
  final List<Reference> location;
  final List<Reference> healthcareService;
  final List<ContactPoint> telecom;
  final List<PractitionerRoleAvailableTime> availableTime;
  final List<PractitionerRoleNotAvailable> notAvailable;
  final String availabilityExceptions;
  final PrimitiveElement AvailabilityExceptions;
  final List<Reference> endpoint;
  const PractitionerRole({
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
    this.period,
    this.practitioner,
    this.organization,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.AvailabilityExceptions,
    this.endpoint,
  });
}
