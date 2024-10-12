import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Quantity]
/// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely
/// quantified, including amounts involving arbitrary units and floating
/// currencies.
class Quantity extends DataType {
  /// Primary constructor for [Quantity]

  Quantity({
    super.id,
    super.extension_,
    this.value,

    /// Extensions for [value]
    this.valueElement,
    this.comparator,

    /// Extensions for [comparator]
    this.comparatorElement,
    this.unit,

    /// Extensions for [unit]
    this.unitElement,
    this.system,

    /// Extensions for [system]
    this.systemElement,
    this.code,

    /// Extensions for [code]
    this.codeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Quantity.fromJson(Map<String, dynamic> json) {
    return Quantity(
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
      comparator: json['comparator'] != null
          ? QuantityComparator.fromJson(json['comparator'])
          : null,
      comparatorElement: json['_comparator'] != null
          ? Element.fromJson(
              json['_comparator'] as Map<String, dynamic>,
            )
          : null,
      unit: json['unit'] != null ? FhirString.fromJson(json['unit']) : null,
      unitElement: json['_unit'] != null
          ? Element.fromJson(
              json['_unit'] as Map<String, dynamic>,
            )
          : null,
      system: json['system'] != null ? FhirUri.fromJson(json['system']) : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(
              json['_system'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null ? FhirCode.fromJson(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(
              json['_code'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Quantity] from a [String] or [YamlMap] object
  factory Quantity.fromYaml(dynamic yaml) => yaml is String
      ? Quantity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Quantity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Quantity cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Quantity] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Quantity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Quantity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Quantity';

  /// [value]
  /// The value of the measured amount. The value includes an implicit
  /// precision in the presentation of the value.
  final FhirDecimal? value;

  /// Extensions for [value]
  final Element? valueElement;

  /// [comparator]
  /// How the value should be understood and represented - whether the actual
  /// value is greater or less than the stated value due to measurement
  /// issues; e.g. if the comparator is "<" , then the real value is < stated
  /// value.
  final QuantityComparator? comparator;

  /// Extensions for [comparator]
  final Element? comparatorElement;

  /// [unit]
  /// A human-readable form of the unit.
  final FhirString? unit;

  /// Extensions for [unit]
  final Element? unitElement;

  /// [system]
  /// The identification of the system that provides the coded form of the
  /// unit.
  final FhirUri? system;

  /// Extensions for [system]
  final Element? systemElement;

  /// [code]
  /// A computer processable form of the unit in some unit representation
  /// system.
  final FhirCode? code;

  /// Extensions for [code]
  final Element? codeElement;
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
    if (comparator != null) {
      json['comparator'] = comparator!.toJson();
    }
    if (unit?.value != null) {
      json['unit'] = unit!.toJson();
    }
    if (unitElement != null) {
      json['_unit'] = unitElement!.toJson();
    }
    if (system?.value != null) {
      json['system'] = system!.toJson();
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    if (code?.value != null) {
      json['code'] = code!.toJson();
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    return json;
  }

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
}
