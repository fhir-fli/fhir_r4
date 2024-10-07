import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'range.g.dart';

/// [Range] /// A set of ordered Quantities defined by a low and high limit.
@JsonSerializable()
class Range extends DataType {
  Range({
    super.id,
    super.extension_,
    this.low,
    this.high,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'Range');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [low] /// The low limit. The boundary is inclusive.
  @JsonKey(name: 'low')
  final Quantity? low;

  /// [high] /// The high limit. The boundary is inclusive.
  @JsonKey(name: 'high')
  final Quantity? high;
  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RangeToJson(this);

  @override
  Range clone() => throw UnimplementedError();
  @override
  Range copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? low,
    Quantity? high,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Range(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      low: low ?? this.low,
      high: high ?? this.high,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Range.fromYaml(dynamic yaml) => yaml is String
      ? Range.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Range.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Range cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Range.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Range.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
