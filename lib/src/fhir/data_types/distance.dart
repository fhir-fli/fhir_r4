import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Distance]
/// A length - a value with a unit that is a physical distance.
class Distance extends Quantity {
  /// Primary constructor for [Distance]

  Distance({
    super.id,
    super.extension_,
    super.value,

    /// Extensions for [value]
    super.valueElement,
    super.comparator,

    /// Extensions for [comparator]
    super.comparatorElement,
    super.unit,

    /// Extensions for [unit]
    super.unitElement,
    super.system,

    /// Extensions for [system]
    super.systemElement,
    super.code,

    /// Extensions for [code]
    super.codeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Distance.fromJson(Map<String, dynamic> json) {
    return Distance(
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

  /// Deserialize [Distance] from a [String] or [YamlMap] object
  factory Distance.fromYaml(dynamic yaml) => yaml is String
      ? Distance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Distance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Distance cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Distance] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Distance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Distance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Distance';

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
  Distance clone() => throw UnimplementedError();
  @override
  Distance copyWith({
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
    return Distance(
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
