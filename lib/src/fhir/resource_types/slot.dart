import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'slot.g.dart';

/// [Slot] /// A slot of time on a schedule that may be available for booking
/// appointments.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Slot, fhirType: 'Slot');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// External Ids for this item.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [serviceCategory] /// A broad categorization of the service that is to be performed during this
  /// appointment.
  @JsonKey(name: 'serviceCategory')
  final List<ServiceCategory>? serviceCategory;

  /// [serviceType] /// The type of appointments that can be booked into this slot (ideally this
  /// would be an identifiable service - which is at a location, rather than the
  /// location itself). If provided then this overrides the value provided on the
  /// availability resource.
  @JsonKey(name: 'serviceType')
  final List<ServiceType>? serviceType;

  /// [specialty] /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  @JsonKey(name: 'specialty')
  final List<PracticeSettingCodeValueSet>? specialty;

  /// [appointmentType] /// The style of appointment or patient that may be booked in the slot (not
  /// service type).
  @JsonKey(name: 'appointmentType')
  final CodeableConcept? appointmentType;

  /// [schedule] /// The schedule resource that this slot defines an interval of status
  /// information.
  @JsonKey(name: 'schedule')
  final Reference schedule;

  /// [status] /// busy | free | busy-unavailable | busy-tentative | entered-in-error.
  @JsonKey(name: 'status')
  final SlotStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [start] /// Date/Time that the slot is to begin.
  @JsonKey(name: 'start')
  final FhirInstant start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// Date/Time that the slot is to conclude.
  @JsonKey(name: 'end')
  final FhirInstant end;
  @JsonKey(name: '_end')
  final Element? endElement;

  /// [overbooked] /// This slot has already been overbooked, appointments are unlikely to be
  /// accepted for this time.
  @JsonKey(name: 'overbooked')
  final FhirBoolean? overbooked;
  @JsonKey(name: '_overbooked')
  final Element? overbookedElement;

  /// [comment] /// Comments on the slot to describe any extended information. Such as custom
  /// constraints on the slot.
  @JsonKey(name: 'comment')
  final FhirString? comment;
  @JsonKey(name: '_comment')
  final Element? commentElement;
  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SlotToJson(this);

  @override
  Slot clone() => throw UnimplementedError();
  @override
  Slot copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<ServiceCategory>? serviceCategory,
    List<ServiceType>? serviceType,
    List<PracticeSettingCodeValueSet>? specialty,
    CodeableConcept? appointmentType,
    Reference? schedule,
    SlotStatus? status,
    Element? statusElement,
    FhirInstant? start,
    Element? startElement,
    FhirInstant? end,
    Element? endElement,
    FhirBoolean? overbooked,
    Element? overbookedElement,
    FhirString? comment,
    Element? commentElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Slot.fromYaml(dynamic yaml) => yaml is String
      ? Slot.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Slot.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Slot cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Slot.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Slot.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
