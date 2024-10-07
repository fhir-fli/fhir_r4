import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Slot] /// A slot of time on a schedule that may be available for booking
/// appointments.
class Slot extends DomainResource {
  Slot({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    required this.schedule,
    required this.status,
    this.statusElement,
    required this.start,
    this.startElement,
    required this.end,
    this.endElement,
    this.overbooked,
    this.overbookedElement,
    this.comment,
    this.commentElement,
  }) : super(resourceType: R4ResourceType.Slot);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// External Ids for this item.
  final List<Identifier>? identifier;

  /// [serviceCategory] /// A broad categorization of the service that is to be performed during this
  /// appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType] /// The type of appointments that can be booked into this slot (ideally this
  /// would be an identifiable service - which is at a location, rather than the
  /// location itself). If provided then this overrides the value provided on the
  /// availability resource.
  final List<CodeableConcept>? serviceType;

  /// [specialty] /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [appointmentType] /// The style of appointment or patient that may be booked in the slot (not
  /// service type).
  final CodeableConcept? appointmentType;

  /// [schedule] /// The schedule resource that this slot defines an interval of status
  /// information.
  final Reference schedule;

  /// [status] /// busy | free | busy-unavailable | busy-tentative | entered-in-error.
  final FhirCode status;
  final Element? statusElement;

  /// [start] /// Date/Time that the slot is to begin.
  final FhirInstant start;
  final Element? startElement;

  /// [end] /// Date/Time that the slot is to conclude.
  final FhirInstant end;
  final Element? endElement;

  /// [overbooked] /// This slot has already been overbooked, appointments are unlikely to be
  /// accepted for this time.
  final FhirBoolean? overbooked;
  final Element? overbookedElement;

  /// [comment] /// Comments on the slot to describe any extended information. Such as custom
  /// constraints on the slot.
  final FhirString? comment;
  final Element? commentElement;
  @override
  Slot clone() => throw UnimplementedError();
  Slot copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    CodeableConcept? appointmentType,
    Reference? schedule,
    FhirCode? status,
    Element? statusElement,
    FhirInstant? start,
    Element? startElement,
    FhirInstant? end,
    Element? endElement,
    FhirBoolean? overbooked,
    Element? overbookedElement,
    FhirString? comment,
    Element? commentElement,
  }) {
    return Slot(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      appointmentType: appointmentType ?? this.appointmentType,
      schedule: schedule ?? this.schedule,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      overbooked: overbooked ?? this.overbooked,
      overbookedElement: overbookedElement ?? this.overbookedElement,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
    );
  }
}
