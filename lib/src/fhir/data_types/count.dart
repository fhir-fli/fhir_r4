import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Count] /// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely quantified,
/// including amounts involving arbitrary units and floating currencies.
@JsonSerializable()
class Count extends Quantity {
  Count({
    super.id,
    super.extension_,
    super.value,
    super.valueElement,
    super.comparator,
    super.comparatorElement,
    super.unit,
    super.unitElement,
    super.system,
    super.systemElement,
    super.code,
    super.codeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'Count';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (value?.value != null) {
      json['value'] = value!.value;
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    if (comparator != null) {
      json['comparator'] = comparator!.toJson();
    }
    if (unit?.value != null) {
      json['unit'] = unit!.value;
    }
    if (unitElement != null) {
      json['_unit'] = unitElement!.toJson();
    }
    if (system?.value != null) {
      json['system'] = system!.value;
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    if (code?.value != null) {
      json['code'] = code!.value;
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    return json;
  }

  factory Count.fromJson(Map<String, dynamic> json) {
    return Count(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      value: json['value'] != null ? FhirDecimal(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
      comparator: json['comparator'] != null
          ? QuantityComparator.fromJson(
              json['comparator'] as Map<String, dynamic>)
          : null,
      unit: json['unit'] != null ? FhirString(json['unit']) : null,
      unitElement: json['_unit'] != null
          ? Element.fromJson(json['_unit'] as Map<String, dynamic>)
          : null,
      system: json['system'] != null ? FhirUri(json['system']) : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(json['_system'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null ? FhirCode(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Count clone() => throw UnimplementedError();
  @override
  Count copyWith({
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
    return Count(
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

  factory Count.fromYaml(dynamic yaml) => yaml is String
      ? Count.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Count.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Count cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Count.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Count.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
