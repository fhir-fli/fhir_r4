import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [TriggerDefinition] /// A description of a triggering event. Triggering events can be named events,
/// data events, or periodic, as determined by the type element.
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
  });

  @override
  String get fhirType => 'TriggerDefinition';

  /// [type] /// The type of triggering event.
  final TriggerType type;
  final Element? typeElement;

  /// [name] /// A formal name for the event. This may be an absolute URI that identifies
  /// the event formally (e.g. from a trigger registry), or a simple relative URI
  /// that identifies the event in a local context.
  final FhirString? name;
  final Element? nameElement;

  /// [timingTiming] /// The timing of the event (if this is a periodic trigger).
  final Timing? timingTiming;

  /// [timingReference] /// The timing of the event (if this is a periodic trigger).
  final Reference? timingReference;

  /// [timingDate] /// The timing of the event (if this is a periodic trigger).
  final FhirDate? timingDate;
  final Element? timingDateElement;

  /// [timingDateTime] /// The timing of the event (if this is a periodic trigger).
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;

  /// [data] /// The triggering data of the event (if this is a data trigger). If more than
  /// one data is requirement is specified, then all the data requirements must
  /// be true.
  final List<DataRequirement>? data;

  /// [condition] /// A boolean-valued expression that is evaluated in the context of the
  /// container of the trigger definition and returns whether or not the trigger
  /// fires.
  final FhirExpression? condition;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    json['type'] = type.toJson();
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (timingTiming != null) {
      json['timingTiming'] = timingTiming!.toJson();
    }
    if (timingReference != null) {
      json['timingReference'] = timingReference!.toJson();
    }
    if (timingDate?.value != null) {
      json['timingDate'] = timingDate!.toJson();
    }
    if (timingDateElement != null) {
      json['_timingDate'] = timingDateElement!.toJson();
    }
    if (timingDateTime?.value != null) {
      json['timingDateTime'] = timingDateTime!.toJson();
    }
    if (timingDateTimeElement != null) {
      json['_timingDateTime'] = timingDateTimeElement!.toJson();
    }
    if (data != null && data!.isNotEmpty) {
      json['data'] =
          data!.map<dynamic>((DataRequirement v) => v.toJson()).toList();
    }
    if (condition != null) {
      json['condition'] = condition!.toJson();
    }
    return json;
  }

  factory TriggerDefinition.fromJson(Map<String, dynamic> json) {
    return TriggerDefinition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: TriggerType.fromJson(json['type']),
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(json['timingTiming'] as Map<String, dynamic>)
          : null,
      timingReference: json['timingReference'] != null
          ? Reference.fromJson(json['timingReference'] as Map<String, dynamic>)
          : null,
      timingDate: json['timingDate'] != null
          ? FhirDate.fromJson(json['timingDate'])
          : null,
      timingDateElement: json['_timingDate'] != null
          ? Element.fromJson(json['_timingDate'] as Map<String, dynamic>)
          : null,
      timingDateTime: json['timingDateTime'] != null
          ? FhirDateTime.fromJson(json['timingDateTime'])
          : null,
      timingDateTimeElement: json['_timingDateTime'] != null
          ? Element.fromJson(json['_timingDateTime'] as Map<String, dynamic>)
          : null,
      data: json['data'] != null
          ? (json['data'] as List<dynamic>)
              .map<DataRequirement>((dynamic v) =>
                  DataRequirement.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      condition: json['condition'] != null
          ? FhirExpression.fromJson(json['condition'] as Map<String, dynamic>)
          : null,
    );
  }
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
