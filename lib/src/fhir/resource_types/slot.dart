import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Slot);

  @override
  String get fhirType => 'Slot';

  @Id()
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
  final SlotStatus status;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (serviceCategory != null && serviceCategory!.isNotEmpty) {
      json['serviceCategory'] = serviceCategory!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (serviceType != null && serviceType!.isNotEmpty) {
      json['serviceType'] =
          serviceType!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] =
          specialty!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (appointmentType != null) {
      json['appointmentType'] = appointmentType!.toJson();
    }
    json['schedule'] = schedule.toJson();
    json['status'] = status.toJson();
    json['start'] = start.value;
    if (startElement != null) {
      json['_start'] = startElement!.toJson();
    }
    json['end'] = end.value;
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    if (overbooked?.value != null) {
      json['overbooked'] = overbooked!.value;
    }
    if (overbookedElement != null) {
      json['_overbooked'] = overbookedElement!.toJson();
    }
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    return json;
  }

  factory Slot.fromJson(Map<String, dynamic> json) {
    return Slot(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      serviceCategory: json['serviceCategory'] != null
          ? (json['serviceCategory'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      serviceType: json['serviceType'] != null
          ? (json['serviceType'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      appointmentType: json['appointmentType'] != null
          ? CodeableConcept.fromJson(
              json['appointmentType'] as Map<String, dynamic>)
          : null,
      schedule: Reference.fromJson(json['schedule'] as Map<String, dynamic>),
      status: SlotStatus.fromJson(json['status'] as Map<String, dynamic>),
      start: FhirInstant(json['start']),
      startElement: Element.fromJson(json['_start'] as Map<String, dynamic>),
      end: FhirInstant(json['end']),
      endElement: Element.fromJson(json['_end'] as Map<String, dynamic>),
      overbooked:
          json['overbooked'] != null ? FhirBoolean(json['overbooked']) : null,
      overbookedElement: json['_overbooked'] != null
          ? Element.fromJson(json['_overbooked'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] != null ? FhirString(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
    );
  }
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
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
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
