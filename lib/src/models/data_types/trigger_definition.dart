import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [TriggerDefinition]
/// A description of a triggering event. Triggering events can be named
/// events, data events, or periodic, as determined by the type element.
class TriggerDefinition extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [TriggerDefinition]

  const TriggerDefinition({
    super.id,
    super.extension_,
    required this.type,
    this.name,
    this.timingX,
    this.data,
    this.condition,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory TriggerDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return TriggerDefinition(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      timingX: json['timingTiming'] != null || json['_timingTiming'] != null
          ? Timing.fromJson({
              'value': json['timingTiming'],
              '_value': json['_timingTiming'],
            })
          : json['timingReference'] != null || json['_timingReference'] != null
              ? Reference.fromJson({
                  'value': json['timingReference'],
                  '_value': json['_timingReference'],
                })
              : json['timingDate'] != null || json['_timingDate'] != null
                  ? FhirDate.fromJson({
                      'value': json['timingDate'],
                      '_value': json['_timingDate'],
                    })
                  : json['timingDateTime'] != null ||
                          json['_timingDateTime'] != null
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

  /// [timingX]
  /// The timing of the event (if this is a periodic trigger).
  final TimingXTriggerDefinition? timingX;

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
    if (timingX != null) {
      json['timing${timingX!.fhirType.capitalize()}'] = timingX!.toJson();
    }

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
    TimingXTriggerDefinition? timingX,
    List<DataRequirement>? data,
    FhirExpression? condition,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return TriggerDefinition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      name: name ?? this.name,
      timingX: timingX ?? this.timingX,
      data: data ?? this.data,
      condition: condition ?? this.condition,
    );
  }
}
