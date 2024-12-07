import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Range]
/// A set of ordered Quantities defined by a low and high limit.
class Range extends DataType {
  /// Primary constructor for
  /// [Range]

  const Range({
    super.id,
    super.extension_,
    this.low,
    this.high,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Range.fromJson(
    Map<String, dynamic> json,
  ) {
    return Range(
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
      low: json['low'] != null
          ? Quantity.fromJson(
              json['low'] as Map<String, dynamic>,
            )
          : null,
      high: json['high'] != null
          ? Quantity.fromJson(
              json['high'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Range]
  /// from a [String] or [YamlMap] object
  factory Range.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Range.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Range.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Range '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Range]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Range.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Range.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Range';

  /// [low]
  /// The low limit. The boundary is inclusive.
  final Quantity? low;

  /// [high]
  /// The high limit. The boundary is inclusive.
  final Quantity? high;
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

    if (low != null) {
      json['low'] = low!.toJson();
    }

    if (high != null) {
      json['high'] = high!.toJson();
    }

    return json;
  }

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
    );
  }
}
