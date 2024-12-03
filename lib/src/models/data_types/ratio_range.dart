import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RatioRange]
/// A range of ratios expressed as a low and high numerator and a
/// denominator.
class RatioRange extends DataType {
  /// Primary constructor for
  /// [RatioRange]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RatioRange.fromJson(
    Map<String, dynamic> json,
  ) {
    return RatioRange(
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

  /// Deserialize [RatioRange]
  /// from a [String] or [YamlMap] object
  factory RatioRange.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RatioRange.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RatioRange.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RatioRange '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RatioRange]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RatioRange.fromJsonString(
    String source,
  ) {
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
