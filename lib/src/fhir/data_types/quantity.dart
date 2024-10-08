import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'quantity.g.dart';

/// [Quantity] /// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely quantified,
/// including amounts involving arbitrary units and floating currencies.
@JsonSerializable()
class Quantity extends DataType {
  Quantity(
      {super.id,
      super.extension_,
      this.value,
      this.valueElement,
      this.comparator,
      this.comparatorElement,
      this.unit,
      this.unitElement,
      this.system,
      this.systemElement,
      this.code,
      this.codeElement,
      super.userData,
      super.formatCommentsPre,
      super.formatCommentsPost,
      super.annotations,
      super.children,
      super.namedChildren,
      super.fhirType = 'Quantity'});
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [value] /// The value of the measured amount. The value includes an implicit precision
  /// in the presentation of the value.
  @JsonKey(name: 'value')
  final FhirDecimal? value;
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [comparator] /// How the value should be understood and represented - whether the actual
  /// value is greater or less than the stated value due to measurement issues;
  /// e.g. if the comparator is "<" , then the real value is < stated value.
  @JsonKey(name: 'comparator')
  final QuantityComparator? comparator;
  @JsonKey(name: '_comparator')
  final Element? comparatorElement;

  /// [unit] /// A human-readable form of the unit.
  @JsonKey(name: 'unit')
  final FhirString? unit;
  @JsonKey(name: '_unit')
  final Element? unitElement;

  /// [system] /// The identification of the system that provides the coded form of the unit.
  @JsonKey(name: 'system')
  final FhirUri? system;
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [code] /// A computer processable form of the unit in some unit representation system.
  @JsonKey(name: 'code')
  final FhirCode? code;
  @JsonKey(name: '_code')
  final Element? codeElement;
  factory Quantity.fromJson(Map<String, dynamic> json) =>
      _$QuantityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuantityToJson(this);

  @override
  Quantity clone() => throw UnimplementedError();
  @override
  Quantity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    Element? valueElement,
    QuantityComparator? comparator,
    Element? comparatorElement,
    FhirString? unit,
    Element? unitElement,
    FhirUri? system,
    Element? systemElement,
    FhirCode? code,
    Element? codeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Quantity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      comparator: comparator ?? this.comparator,
      comparatorElement: comparatorElement ?? this.comparatorElement,
      unit: unit ?? this.unit,
      unitElement: unitElement ?? this.unitElement,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Quantity.fromYaml(dynamic yaml) => yaml is String
      ? Quantity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Quantity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Quantity cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Quantity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Quantity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
