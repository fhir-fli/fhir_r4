import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Ratio] /// A relationship of two Quantity values - expressed as a numerator and a
/// denominator.
class Ratio extends DataType {
  Ratio({
    super.id,
    super.extension_,
    this.numerator,
    this.denominator,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'Ratio';

  @Id()
  int dbId = 0;

  /// [numerator] /// The value of the numerator.
  final Quantity? numerator;

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
    if (numerator != null) {
      json['numerator'] = numerator!.toJson();
    }
    if (denominator != null) {
      json['denominator'] = denominator!.toJson();
    }
    return json;
  }

  factory Ratio.fromJson(Map<String, dynamic> json) {
    return Ratio(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      numerator: json['numerator'] != null
          ? Quantity.fromJson(json['numerator'] as Map<String, dynamic>)
          : null,
      denominator: json['denominator'] != null
          ? Quantity.fromJson(json['denominator'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Ratio clone() => throw UnimplementedError();
  @override
  Ratio copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? numerator,
    Quantity? denominator,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Ratio(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      numerator: numerator ?? this.numerator,
      denominator: denominator ?? this.denominator,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Ratio.fromYaml(dynamic yaml) => yaml is String
      ? Ratio.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Ratio.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Ratio cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Ratio.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Ratio.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
