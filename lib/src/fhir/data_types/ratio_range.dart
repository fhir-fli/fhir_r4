import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [RatioRange] /// A range of ratios expressed as a low and high numerator and a denominator.
class RatioRange extends DataType {
  RatioRange({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'RatioRange';

  @Id()
  int dbId = 0;

  /// [lowNumerator] /// The value of the low limit numerator.
  final Quantity? lowNumerator;

  /// [highNumerator] /// The value of the high limit numerator.
  final Quantity? highNumerator;

  /// [denominator] /// The value of the denominator.
  final Quantity? denominator;
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
    if (lowNumerator != null) {
      json['lowNumerator'] = lowNumerator!.toJson();
    }
    if (highNumerator != null) {
      json['highNumerator'] = highNumerator!.toJson();
    }
    if (denominator != null) {
      json['denominator'] = denominator!.toJson();
    }
    return json;
  }

  factory RatioRange.fromJson(Map<String, dynamic> json) {
    return RatioRange(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      lowNumerator: json['lowNumerator'] != null
          ? Quantity.fromJson(json['lowNumerator'] as Map<String, dynamic>)
          : null,
      highNumerator: json['highNumerator'] != null
          ? Quantity.fromJson(json['highNumerator'] as Map<String, dynamic>)
          : null,
      denominator: json['denominator'] != null
          ? Quantity.fromJson(json['denominator'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  RatioRange clone() => throw UnimplementedError();
  @override
  RatioRange copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? lowNumerator,
    Quantity? highNumerator,
    Quantity? denominator,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return RatioRange(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      lowNumerator: lowNumerator ?? this.lowNumerator,
      highNumerator: highNumerator ?? this.highNumerator,
      denominator: denominator ?? this.denominator,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory RatioRange.fromYaml(dynamic yaml) => yaml is String
      ? RatioRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? RatioRange.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'RatioRange cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory RatioRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RatioRange.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
