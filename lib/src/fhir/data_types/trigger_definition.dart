import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'trigger_definition.g.dart';

/// [TriggerDefinition] /// A description of a triggering event. Triggering events can be named events,
/// data events, or periodic, as determined by the type element.
@JsonSerializable()
class TriggerDefinition extends DataType {
  TriggerDefinition({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.timingTiming,
    this.timingReference,
    this.timingDate,
    this.timingDateElement,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.data,
    this.condition,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'TriggerDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of triggering event.
  @JsonKey(name: 'type')
  final TriggerType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [name] /// A formal name for the event. This may be an absolute URI that identifies
  /// the event formally (e.g. from a trigger registry), or a simple relative URI
  /// that identifies the event in a local context.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [timingTiming] /// The timing of the event (if this is a periodic trigger).
  @JsonKey(name: 'timingTiming')
  final Timing? timingTiming;

  /// [timingReference] /// The timing of the event (if this is a periodic trigger).
  @JsonKey(name: 'timingReference')
  final Reference? timingReference;

  /// [timingDate] /// The timing of the event (if this is a periodic trigger).
  @JsonKey(name: 'timingDate')
  final FhirDate? timingDate;
  @JsonKey(name: '_timingDate')
  final Element? timingDateElement;

  /// [timingDateTime] /// The timing of the event (if this is a periodic trigger).
  @JsonKey(name: 'timingDateTime')
  final FhirDateTime? timingDateTime;
  @JsonKey(name: '_timingDateTime')
  final Element? timingDateTimeElement;

  /// [data] /// The triggering data of the event (if this is a data trigger). If more than
  /// one data is requirement is specified, then all the data requirements must
  /// be true.
  @JsonKey(name: 'data')
  final List<DataRequirement>? data;

  /// [condition] /// A boolean-valued expression that is evaluated in the context of the
  /// container of the trigger definition and returns whether or not the trigger
  /// fires.
  @JsonKey(name: 'condition')
  final FhirExpression? condition;
  factory TriggerDefinition.fromJson(Map<String, dynamic> json) =>
      _$TriggerDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TriggerDefinitionToJson(this);

  @override
  TriggerDefinition clone() => throw UnimplementedError();
  @override
  TriggerDefinition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    TriggerType? type,
    Element? typeElement,
    FhirString? name,
    Element? nameElement,
    Timing? timingTiming,
    Reference? timingReference,
    FhirDate? timingDate,
    Element? timingDateElement,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
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
      typeElement: typeElement ?? this.typeElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      timingTiming: timingTiming ?? this.timingTiming,
      timingReference: timingReference ?? this.timingReference,
      timingDate: timingDate ?? this.timingDate,
      timingDateElement: timingDateElement ?? this.timingDateElement,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
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

  factory TriggerDefinition.fromYaml(dynamic yaml) => yaml is String
      ? TriggerDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? TriggerDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'TriggerDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory TriggerDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return TriggerDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
