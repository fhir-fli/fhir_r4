import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class HealthcareService {
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
  final Reference providedBy;
  final List<CodeableConcept> category;
  final List<CodeableConcept> type;
  final List<CodeableConcept> specialty;
  final List<Reference> location;
  final String name;
  final PrimitiveElement Name;
  final String comment;
  final PrimitiveElement Comment;
  final FhirMarkdown extraDetails;
  final PrimitiveElement ExtraDetails;
  final Attachment photo;
  final List<ContactPoint> telecom;
  final List<Reference> coverageArea;
  final List<CodeableConcept> serviceProvisionCode;
  final List<HealthcareServiceEligibility> eligibility;
  final List<CodeableConcept> program;
  final List<CodeableConcept> characteristic;
  final List<CodeableConcept> communication;
  final List<CodeableConcept> referralMethod;
  final FhirBoolean appointmentRequired;
  final PrimitiveElement AppointmentRequired;
  final List<HealthcareServiceAvailableTime> availableTime;
  final List<HealthcareServiceNotAvailable> notAvailable;
  final String availabilityExceptions;
  final PrimitiveElement AvailabilityExceptions;
  final List<Reference> endpoint;
  const HealthcareService({
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
    this.providedBy,
    this.category,
    this.type,
    this.specialty,
    this.location,
    this.name,
    this.Name,
    this.comment,
    this.Comment,
    this.extraDetails,
    this.ExtraDetails,
    this.photo,
    this.telecom,
    this.coverageArea,
    this.serviceProvisionCode,
    this.eligibility,
    this.program,
    this.characteristic,
    this.communication,
    this.referralMethod,
    this.appointmentRequired,
    this.AppointmentRequired,
    this.availableTime,
    this.notAvailable,
    this.availabilityExceptions,
    this.AvailabilityExceptions,
    this.endpoint,
  });
}
