import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TriggerDefinition]
/// A description of a triggering event. Triggering events can be named
/// events, data events, or periodic, as determined by the type element.
class TriggerDefinition extends DataType {
  /// Primary constructor for [TriggerDefinition]

  TriggerDefinition({
    super.id,
    this.extension_,
    required this.type,
    this.name,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.timingDateTime,
    this.data,
    this.condition,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TriggerDefinition.fromJson(Map<String, dynamic> json) {
    return TriggerDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      type: TriggerType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              json['timingTiming'] as Map<String, dynamic>,
            )
          : null,
      timingReference: json['timingReference'] != null
          ? Reference.fromJson(
              json['timingReference'] as Map<String, dynamic>,
            )
          : null,
      timingDate: json['timingDate'] != null
          ? FhirDate.fromJson({
              'value': json['timingDate'],
              '_value': json['_timingDate'],
            })
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['timingDateTime'],
              '_value': json['_timingDateTime'],
            })
          : null,
      data: json['data'] != null
          ? (json['data'] as List<dynamic>)
              .map<DataRequirement>(
                (v) => DataRequirement.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: json['condition'] != null
          ? FhirExpression.fromJson(
              json['condition'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TriggerDefinition] from a [String]
  /// or [YamlMap] object
  factory TriggerDefinition.fromYaml(dynamic yaml) => yaml is String
      ? TriggerDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? TriggerDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('TriggerDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [TriggerDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TriggerDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TriggerDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'TriggerDefinition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The type of triggering event.
  final TriggerType type;

  /// [name]
  /// A formal name for the event. This may be an absolute URI that
  /// identifies the event formally (e.g. from a trigger registry), or a
  /// simple relative URI that identifies the event in a local context.
  final FhirString? name;

  /// [timingTiming]
  /// The timing of the event (if this is a periodic trigger).
  final Timing? timingTiming;

  /// [timingReference]
  /// The timing of the event (if this is a periodic trigger).
  final Reference? timingReference;

  /// [timingDate]
  /// The timing of the event (if this is a periodic trigger).
  final FhirDate? timingDate;

  /// [timingDateTime]
  /// The timing of the event (if this is a periodic trigger).
  final FhirDateTime? timingDateTime;

  /// [data]
  /// The triggering data of the event (if this is a data trigger). If more
  /// than one data is requirement is specified, then all the data
  /// requirements must be true.
  final List<DataRequirement>? data;

  /// [condition]
  /// A boolean-valued expression that is evaluated in the context of the
  /// container of the trigger definition and returns whether or not the
  /// trigger fires.
  final FhirExpression? condition;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final primitiveJson = type!.toJson();
      json['type'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_type'] = primitiveJson['_value'];
      }
    }

    if (name != null) {
      final primitiveJson = name!.toJson();
      json['name'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_name'] = primitiveJson['_value'];
      }
    }

    if (timingTiming != null) {
      final primitiveJson = timingTiming!.toJson();
      json['timingTiming'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_timingTiming'] = primitiveJson['_value'];
      }
    }

    if (timingReference != null) {
      final primitiveJson = timingReference!.toJson();
      json['timingReference'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_timingReference'] = primitiveJson['_value'];
      }
    }

    if (timingDate != null) {
      final primitiveJson = timingDate!.toJson();
      json['timingDate'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_timingDate'] = primitiveJson['_value'];
      }
    }

    if (timingDateTime != null) {
      final primitiveJson = timingDateTime!.toJson();
      json['timingDateTime'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_timingDateTime'] = primitiveJson['_value'];
      }
    }

    if (data != null && data!.isNotEmpty) {
      final primitiveList = data!.map((e) => e.toJson()).toList();
      json['data'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_data'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (condition != null) {
      final primitiveJson = condition!.toJson();
      json['condition'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_condition'] = primitiveJson['_value'];
      }
    }

    return json;
  }

  @override
  TriggerDefinition clone() => throw UnimplementedError();
  @override
  TriggerDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    TriggerType? type,
    FhirString? name,
    Timing? timingTiming,
    Reference? timingReference,
    FhirDate? timingDate,
    FhirDateTime? timingDateTime,
    List<DataRequirement>? data,
    FhirExpression? condition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return TriggerDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      name: name ?? this.name,
      timingTiming: timingTiming ?? this.timingTiming,
      timingReference: timingReference ?? this.timingReference,
      timingDate: timingDate ?? this.timingDate,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      data: data ?? this.data,
      condition: condition ?? this.condition,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
