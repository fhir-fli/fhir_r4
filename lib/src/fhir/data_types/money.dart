import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'money.g.dart';

/// [Money] /// An amount of economic utility in some recognized currency.
@JsonSerializable()
class Money extends DataType {
  Money({
    super.id,
    super.extension_,
    this.value,
    this.valueElement,
    this.currency,
    this.currencyElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Money';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// Numerical value (with implicit precision).
  @JsonKey(name: 'value')
  final FhirDecimal? value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [currency] /// ISO 4217 Currency Code.
  @JsonKey(name: 'currency')
  final FhirCode? currency;
  @JsonKey(name: '_currency')
  final Element? currencyElement;
  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MoneyToJson(this);

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

  factory Money.fromYaml(dynamic yaml) => yaml is String
      ? Money.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Money.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Money cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Money.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Money.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
