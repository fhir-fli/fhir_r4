import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TriggerDefinition]
/// A description of a triggering event. Triggering events can be named
/// events, data events, or periodic, as determined by the type element.
class TriggerDefinition extends DataType {
  /// Primary constructor for
  /// [TriggerDefinition]

  TriggerDefinition({
    super.id,
    super.extension_,
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
  factory TriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return TriggerDefinition(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: TriggerType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      name: parseField<FhirString>(
        json['name'],
        json['_name'],
        FhirString.fromJson,
      ),
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
      timingDate: parseField<FhirDate>(
        json['timingDate'],
        json['_timingDate'],
        FhirDate.fromJson,
      ),
      timingDateTime: parseField<FhirDateTime>(
        json['timingDateTime'],
        json['_timingDateTime'],
        FhirDateTime.fromJson,
      ),
      data: parseList<DataRequirement>(
        json['data'] as List<dynamic>?,
        json['_data'] as List<dynamic>?,
        DataRequirement.fromJson,
      ),
      condition: json['condition'] != null
          ? FhirExpression.fromJson(
              json['condition'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [TriggerDefinition]
  /// from a [String] or [YamlMap] object
  factory TriggerDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return TriggerDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return TriggerDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'TriggerDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [TriggerDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory TriggerDefinition.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('name', name);
    if (timingTiming != null) {
      json['timingTiming'] = timingTiming!.toJson();
    }

    if (timingReference != null) {
      json['timingReference'] = timingReference!.toJson();
    }

    addField('timingDate', timingDate);
    addField('timingDateTime', timingDateTime);
    if (data != null && data!.isNotEmpty) {
      json['data'] = data!.map((e) => e.toJson()).toList();
    }

    if (condition != null) {
      json['condition'] = condition!.toJson();
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
