import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Slot] A slot of time on a schedule that may be available for booking
/// appointments.

@freezed
class Slot with _$Slot {
  const Slot._();

  const factory Slot({
/// [resourceType] This is a Slot resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] External Ids for this item.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [serviceCategory] A broad categorization of the service that is to be
/// performed during this appointment.

    @JsonKey(name: 'serviceCategory') List<List<CodeableConcept>>? serviceCategory,
/// [serviceType] The type of appointments that can be booked into this
/// slot (ideally this would be an identifiable service - which is at a
/// location, rather than the location itself). If provided then this overrides
/// the value provided on the Schedule resource.

    @JsonKey(name: 'serviceType') List<List<CodeableReference>>? serviceType,
/// [specialty] The specialty of a practitioner that would be required to
/// perform the service requested in this appointment.

    @JsonKey(name: 'specialty') List<List<CodeableConcept>>? specialty,
/// [appointmentType] The style of appointment or patient that may be
/// booked in the slot (not service type).

    @JsonKey(name: 'appointmentType') List<List<CodeableConcept>>? appointmentType,
/// [schedule] The schedule resource that this slot defines an interval of
/// status information.

    @JsonKey(name: 'schedule') Reference? schedule,
/// [status] busy | free | busy-unavailable | busy-tentative |
/// entered-in-error.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [start] Date/Time that the slot is to begin.

    @JsonKey(name: 'start') FhirInstant? start,
/// [_start] Extensions for start

    @JsonKey(name: '_start') PrimitiveElement? startElement,
/// [end] Date/Time that the slot is to conclude.

    @JsonKey(name: 'end') FhirInstant? end,
/// [_end] Extensions for end

    @JsonKey(name: '_end') PrimitiveElement? endElement,
/// [overbooked] This slot has already been overbooked, appointments are
/// unlikely to be accepted for this time.

    @JsonKey(name: 'overbooked') FhirBoolean? overbooked,
/// [_overbooked] Extensions for overbooked

    @JsonKey(name: '_overbooked') PrimitiveElement? overbookedElement,
/// [comment] Comments on the slot to describe any extended information.
/// Such as custom constraints on the slot.

    @JsonKey(name: 'comment') String? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
  }) = _$Slot;

  @override
  String get fhirType => 'Slot';

  factory Slot.fromJson(Map<String, dynamic> json) =>
      _$SlotFromJson(json);

  factory Slot.fromYaml(dynamic yaml) => yaml is String
      ? Slot.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Slot.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Slot cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Slot.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SlotFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
