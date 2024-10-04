import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Slot {
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
  final List<CodeableConcept> serviceCategory;
  final List<CodeableConcept> serviceType;
  final List<CodeableConcept> specialty;
  final CodeableConcept appointmentType;
  final Reference schedule;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirInstant start;
  final PrimitiveElement Start;
  final FhirInstant end;
  final PrimitiveElement End;
  final FhirBoolean overbooked;
  final PrimitiveElement Overbooked;
  final String comment;
  final PrimitiveElement Comment;
  const Slot({
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
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    required this.schedule,
    this.status,
    this.Status,
    this.start,
    this.Start,
    this.end,
    this.End,
    this.overbooked,
    this.Overbooked,
    this.comment,
    this.Comment,
  });
}
