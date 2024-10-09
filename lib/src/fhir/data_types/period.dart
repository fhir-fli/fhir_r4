import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Period] /// A time period defined by a start and end date and optionally time.
@JsonSerializable()
class Period extends DataType {
  Period({
    super.id,
    super.extension_,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Period';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [start] /// The start of the period. The boundary is inclusive.
  @JsonKey(name: 'start')
  final FhirDateTime? start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// The end of the period. If the end of the period is missing, it means no end
  /// was known or planned at the time the instance was created. The start may be
  /// in the past, and the end date in the future, which means that period is
  /// expected/planned to end at that time.
  @JsonKey(name: 'end')
  final FhirDateTime? end;
  @JsonKey(name: '_end')
  final Element? endElement;
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
    if (start?.value != null) {
      json['start'] = start!.value;
    }
    if (startElement != null) {
      json['_start'] = startElement!.toJson();
    }
    if (end?.value != null) {
      json['end'] = end!.value;
    }
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    return json;
  }

  factory Period.fromJson(Map<String, dynamic> json) {
    return Period(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      start: json['start'] != null ? FhirDateTime(json['start']) : null,
      startElement: json['_start'] != null
          ? Element.fromJson(json['_start'] as Map<String, dynamic>)
          : null,
      end: json['end'] != null ? FhirDateTime(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(json['_end'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Period clone() => throw UnimplementedError();
  @override
  Period copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDateTime? start,
    Element? startElement,
    FhirDateTime? end,
    Element? endElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Period(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Period.fromYaml(dynamic yaml) => yaml is String
      ? Period.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Period.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Period cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Period.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Period.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
