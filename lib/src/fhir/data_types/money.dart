import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Money]
/// An amount of economic utility in some recognized currency.
class Money extends DataType {
  /// Primary constructor for [Money]

  Money({
    super.id,
    super.extension_,
    this.value,

    /// Extensions for [value]
    this.valueElement,
    this.currency,

    /// Extensions for [currency]
    this.currencyElement,
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
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      value: json['value'] != null ? FhirDecimal.fromJson(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(
              json['_value'] as Map<String, dynamic>,
            )
          : null,
      currency:
          json['currency'] != null ? FhirCode.fromJson(json['currency']) : null,
      currencyElement: json['_currency'] != null
          ? Element.fromJson(
              json['_currency'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Money] from a [String] or [YamlMap] object
  factory Money.fromYaml(dynamic yaml) => yaml is String
      ? Money.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Money.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Money cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Money] that takes in a [String]
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

  /// [value]
  /// Numerical value (with implicit precision).
  final FhirDecimal? value;

  /// Extensions for [value]
  final Element? valueElement;

  /// [currency]
  /// ISO 4217 Currency Code.
  final FhirCode? currency;

  /// Extensions for [currency]
  final Element? currencyElement;
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
    if (value?.value != null) {
      json['value'] = value!.toJson();
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (currency?.value != null) {
      json['currency'] = currency!.toJson();
    }
    if (currencyElement != null) {
      json['_currency'] = currencyElement!.toJson();
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
    Element? valueElement,
    FhirCode? currency,
    Element? currencyElement,
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
      valueElement: valueElement ?? this.valueElement,
      currency: currency ?? this.currency,
      currencyElement: currencyElement ?? this.currencyElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
