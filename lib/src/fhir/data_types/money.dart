import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Money]
/// An amount of economic utility in some recognized currency.
class Money extends DataType {
  /// Primary constructor for [Money]

  Money({
    super.id,
    this.extension_,
    this.value,
    this.currency,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Money.fromJson(Map<String, dynamic> json) {
    return Money(
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
      currency: json['currency'] != null
          ? FhirCode.fromJson({
              'value': json['currency'],
              '_value': json['_currency'],
            })
          : null,
    );
  }

  /// Deserialize [Money] from a [String]
  /// or [YamlMap] object
  factory Money.fromYaml(dynamic yaml) => yaml is String
      ? Money.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Money.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Money cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Money]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Money.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Money.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Money';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [value]
  /// Numerical value (with implicit precision).
  final FhirDecimal? value;

  /// [currency]
  /// ISO 4217 Currency Code.
  final FhirCode? currency;
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

    if (currency != null) {
      final fieldJson2 = currency!.toJson();
      json['currency'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_currency'] = fieldJson2['_value'];
      }
    }

    return json;
  }

  @override
  Money clone() => throw UnimplementedError();
  @override
  Money copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    FhirCode? currency,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Money(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      currency: currency ?? this.currency,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
