import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RatioRange]
/// A range of ratios expressed as a low and high numerator and a
/// denominator.
class RatioRange extends DataType {
  /// Primary constructor for [RatioRange]

  RatioRange({
    super.id,
    this.extension_,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RatioRange.fromJson(Map<String, dynamic> json) {
    return RatioRange(
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
      lowNumerator: json['lowNumerator'] != null
          ? Quantity.fromJson(
              json['lowNumerator'] as Map<String, dynamic>,
            )
          : null,
      highNumerator: json['highNumerator'] != null
          ? Quantity.fromJson(
              json['highNumerator'] as Map<String, dynamic>,
            )
          : null,
      denominator: json['denominator'] != null
          ? Quantity.fromJson(
              json['denominator'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [RatioRange] from a [String]
  /// or [YamlMap] object
  factory RatioRange.fromYaml(dynamic yaml) => yaml is String
      ? RatioRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? RatioRange.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('RatioRange cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [RatioRange]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RatioRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return RatioRange.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'RatioRange';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [lowNumerator]
  /// The value of the low limit numerator.
  final Quantity? lowNumerator;

  /// [highNumerator]
  /// The value of the high limit numerator.
  final Quantity? highNumerator;

  /// [denominator]
  /// The value of the denominator.
  final Quantity? denominator;
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

    if (lowNumerator != null) {
      final primitiveJson = lowNumerator!.toJson();
      json['lowNumerator'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_lowNumerator'] = primitiveJson['_value'];
      }
    }

    if (highNumerator != null) {
      final primitiveJson = highNumerator!.toJson();
      json['highNumerator'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_highNumerator'] = primitiveJson['_value'];
      }
    }

    if (denominator != null) {
      final primitiveJson = denominator!.toJson();
      json['denominator'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_denominator'] = primitiveJson['_value'];
      }
    }

    return json;
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
}
