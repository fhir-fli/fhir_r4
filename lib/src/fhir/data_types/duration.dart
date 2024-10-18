import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirDuration]
/// A length of time.
class FhirDuration extends Quantity {
  /// Primary constructor for [FhirDuration]

  FhirDuration({
    super.id,
    this.extension_,
    super.value,
    super.comparator,
    super.unit,
    super.system,
    super.code,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirDuration.fromJson(
    Map<String, dynamic> json,
  ) {
    return FhirDuration(
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
      value: json['value'] != null
          ? FhirDecimal.fromJson({
              'value': json['value'],
              '_value': json['_value'],
            })
          : null,
      comparator: json['comparator'] != null
          ? QuantityComparator.fromJson({
              'value': json['comparator'],
              '_value': json['_comparator'],
            })
          : null,
      unit: json['unit'] != null
          ? FhirString.fromJson({
              'value': json['unit'],
              '_value': json['_unit'],
            })
          : null,
      system: json['system'] != null
          ? FhirUri.fromJson({
              'value': json['system'],
              '_value': json['_system'],
            })
          : null,
      code: json['code'] != null
          ? FhirCode.fromJson({
              'value': json['code'],
              '_value': json['_code'],
            })
          : null,
    );
  }

  /// Deserialize [FhirDuration] from a [String]
  /// or [YamlMap] object
  factory FhirDuration.fromYaml(dynamic yaml) => yaml is String
      ? FhirDuration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirDuration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('FhirDuration cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FhirDuration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirDuration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirDuration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirDuration';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (value != null) {
      final fieldJson1 = value!.toJson();
      json['value'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_value'] = fieldJson1['_value'];
      }
    }

    if (comparator != null) {
      json['comparator'] = comparator!.toJson();
    }

    if (unit != null) {
      final fieldJson3 = unit!.toJson();
      json['unit'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_unit'] = fieldJson3['_value'];
      }
    }

    if (system != null) {
      final fieldJson4 = system!.toJson();
      json['system'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_system'] = fieldJson4['_value'];
      }
    }

    if (code != null) {
      final fieldJson5 = code!.toJson();
      json['code'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_code'] = fieldJson5['_value'];
      }
    }

    return json;
  }

  @override
  FhirDuration clone() => throw UnimplementedError();
  @override
  FhirDuration copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    QuantityComparator? comparator,
    FhirString? unit,
    FhirUri? system,
    FhirCode? code,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirDuration(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      comparator: comparator ?? this.comparator,
      unit: unit ?? this.unit,
      system: system ?? this.system,
      code: code ?? this.code,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
