import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Slot]
/// A slot of time on a schedule that may be available for booking
/// appointments.
class Slot extends DomainResource {
  /// Primary constructor for
  /// [Slot]

  const Slot({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
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
    required this.start,
    required this.end,
    this.overbooked,
    this.comment,
  }) : super(
          resourceType: R4ResourceType.Slot,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Slot.fromJson(
    Map<String, dynamic> json,
  ) {
    return Slot(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceCategory: json['serviceCategory'] != null
          ? (json['serviceCategory'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      serviceType: json['serviceType'] != null
          ? (json['serviceType'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      specialty: json['specialty'] != null
          ? (json['specialty'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      appointmentType: json['appointmentType'] != null
          ? CodeableConcept.fromJson(
              json['appointmentType'] as Map<String, dynamic>,
            )
          : null,
      schedule: Reference.fromJson(
        json['schedule'] as Map<String, dynamic>,
      ),
      status: SlotStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      start: FhirInstant.fromJson({
        'value': json['start'],
        '_value': json['_start'],
      }),
      end: FhirInstant.fromJson({
        'value': json['end'],
        '_value': json['_end'],
      }),
      overbooked: (json['overbooked'] != null || json['_overbooked'] != null)
          ? FhirBoolean.fromJson({
              'value': json['overbooked'],
              '_value': json['_overbooked'],
            })
          : null,
      comment: (json['comment'] != null || json['_comment'] != null)
          ? FhirString.fromJson({
              'value': json['comment'],
              '_value': json['_comment'],
            })
          : null,
    );
  }

  /// Deserialize [Slot]
  /// from a [String] or [YamlMap] object
  factory Slot.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Slot.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Slot.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Slot '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Slot]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Slot.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Slot.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Slot';

  /// [identifier]
  /// External Ids for this item.
  final List<Identifier>? identifier;

  /// [serviceCategory]
  /// A broad categorization of the service that is to be performed during
  /// this appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType]
  /// The type of appointments that can be booked into this slot (ideally
  /// this would be an identifiable service - which is at a location, rather
  /// than the location itself). If provided then this overrides the value
  /// provided on the availability resource.
  final List<CodeableConcept>? serviceType;

  /// [specialty]
  /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [appointmentType]
  /// The style of appointment or patient that may be booked in the slot (not
  /// service type).
  final CodeableConcept? appointmentType;

  /// [schedule]
  /// The schedule resource that this slot defines an interval of status
  /// information.
  final Reference schedule;

  /// [status]
  /// busy | free | busy-unavailable | busy-tentative | entered-in-error.
  final SlotStatus status;

  /// [start]
  /// Date/Time that the slot is to begin.
  final FhirInstant start;

  /// [end]
  /// Date/Time that the slot is to conclude.
  final FhirInstant end;

  /// [overbooked]
  /// This slot has already been overbooked, appointments are unlikely to be
  /// accepted for this time.
  final FhirBoolean? overbooked;

  /// [comment]
  /// Comments on the slot to describe any extended information. Such as
  /// custom constraints on the slot.
  final FhirString? comment;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (serviceCategory != null && serviceCategory!.isNotEmpty) {
      json['serviceCategory'] =
          serviceCategory!.map((e) => e.toJson()).toList();
    }

    if (serviceType != null && serviceType!.isNotEmpty) {
      json['serviceType'] = serviceType!.map((e) => e.toJson()).toList();
    }

    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] = specialty!.map((e) => e.toJson()).toList();
    }

    if (appointmentType != null) {
      json['appointmentType'] = appointmentType!.toJson();
    }

    json['schedule'] = schedule.toJson();

    addField('status', status);
    addField('start', start);
    addField('end', end);
    if (overbooked != null) {
      addField('overbooked', overbooked);
    }

    if (comment != null) {
      addField('comment', comment);
    }

    return json;
  }

  @override
  Slot clone() => throw UnimplementedError();
  @override
  Slot copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
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
    FhirInstant? start,
    FhirInstant? end,
    FhirBoolean? overbooked,
    FhirString? comment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Slot(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
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
      start: start ?? this.start,
      end: end ?? this.end,
      overbooked: overbooked ?? this.overbooked,
      comment: comment ?? this.comment,
    );
  }
}
