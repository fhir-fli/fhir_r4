import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Range]
/// A set of ordered Quantities defined by a low and high limit.
class Range extends DataType {
  /// Primary constructor for [Range]

  Range({
    super.id,
    this.extension_,
    this.low,
    this.high,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Range.fromJson(Map<String, dynamic> json) {
    return Range(
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

  /// Deserialize [Range] from a [String]
  /// or [YamlMap] object
  factory Range.fromYaml(dynamic yaml) => yaml is String
      ? Range.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Range.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Range cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Range]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Range.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [low]
  /// The low limit. The boundary is inclusive.
  final Quantity? low;

  /// [high]
  /// The high limit. The boundary is inclusive.
  final Quantity? high;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
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
}
