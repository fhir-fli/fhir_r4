import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'count.g.dart';

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
  }) : super(fhirType: 'Count');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CountToJson(this);

  @override
  Count clone() => throw UnimplementedError();
  @override
  Count copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    Element? valueElement,
    FhirCode? comparator,
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
