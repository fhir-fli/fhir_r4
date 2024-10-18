import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Period]
/// A time period defined by a start and end date and optionally time.
class Period extends DataType {
  /// Primary constructor for
  /// [Period]

  Period({
    super.id,
    super.extension_,
    this.start,
    this.end,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Period.fromJson(
    Map<String, dynamic> json,
  ) {
    return Period(
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
      start: json['start'] != null
          ? FhirDateTime.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: json['end'] != null
          ? FhirDateTime.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
    );
  }

  /// Deserialize [Period]
  /// from a [String] or [YamlMap] object
  factory Period.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? Period.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? Period.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'Period '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [Period]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Period.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Period.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Period';

  /// [start]
  /// The start of the period. The boundary is inclusive.
  final FhirDateTime? start;

  /// [end]
  /// The end of the period. If the end of the period is missing, it means no
  /// end was known or planned at the time the instance was created. The
  /// start may be in the past, and the end date in the future, which means
  /// that period is expected/planned to end at that time.
  final FhirDateTime? end;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (start != null) {
      final fieldJson1 = start!.toJson();
      json['start'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_start'] = fieldJson1['_value'];
      }
    }

    if (end != null) {
      final fieldJson2 = end!.toJson();
      json['end'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_end'] = fieldJson2['_value'];
      }
    }

    return json;
  }

  @override
  Period clone() => throw UnimplementedError();
  @override
  Period copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDateTime? start,
    FhirDateTime? end,
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
      end: end ?? this.end,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
