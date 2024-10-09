import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [HumanName] /// A human's name with the ability to identify parts and usage.
@JsonSerializable()
class HumanName extends DataType {
  HumanName({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.text,
    this.textElement,
    this.family,
    this.familyElement,
    this.given,
    this.givenElement,
    this.prefix,
    this.prefixElement,
    this.suffix,
    this.suffixElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'HumanName';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// Identifies the purpose for this name.
  @JsonKey(name: 'use')
  final NameUse? use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [text] /// Specifies the entire name as it should be displayed e.g. on an application
  /// UI. This may be provided instead of or as well as the specific parts.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [family] /// The part of a name that links to the genealogy. In some cultures (e.g.
  /// Eritrea) the family name of a son is the first name of his father.
  @JsonKey(name: 'family')
  final FhirString? family;
  @JsonKey(name: '_family')
  final Element? familyElement;

  /// [given] /// Given name.
  @JsonKey(name: 'given')
  final List<FhirString>? given;
  @JsonKey(name: '_given')
  final List<Element>? givenElement;

  /// [prefix] /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the start of the
  /// name.
  @JsonKey(name: 'prefix')
  final List<FhirString>? prefix;
  @JsonKey(name: '_prefix')
  final List<Element>? prefixElement;

  /// [suffix] /// Part of the name that is acquired as a title due to academic, legal,
  /// employment or nobility status, etc. and that appears at the end of the
  /// name.
  @JsonKey(name: 'suffix')
  final List<FhirString>? suffix;
  @JsonKey(name: '_suffix')
  final List<Element>? suffixElement;

  /// [period] /// Indicates the period of time when this name was valid for the named person.
  @JsonKey(name: 'period')
  final Period? period;
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
    if (use != null) {
      json['use'] = use!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.value;
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (family?.value != null) {
      json['family'] = family!.value;
    }
    if (familyElement != null) {
      json['_family'] = familyElement!.toJson();
    }
    if (given != null && given!.isNotEmpty) {
      json['given'] = given!.map((FhirString v) => v.value).toList();
    }
    if (givenElement != null && givenElement!.isNotEmpty) {
      json['_given'] = givenElement!.map((Element v) => v.toJson()).toList();
    }
    if (prefix != null && prefix!.isNotEmpty) {
      json['prefix'] = prefix!.map((FhirString v) => v.value).toList();
    }
    if (prefixElement != null && prefixElement!.isNotEmpty) {
      json['_prefix'] = prefixElement!.map((Element v) => v.toJson()).toList();
    }
    if (suffix != null && suffix!.isNotEmpty) {
      json['suffix'] = suffix!.map((FhirString v) => v.value).toList();
    }
    if (suffixElement != null && suffixElement!.isNotEmpty) {
      json['_suffix'] = suffixElement!.map((Element v) => v.toJson()).toList();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

  factory HumanName.fromJson(Map<String, dynamic> json) {
    return HumanName(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      use: json['use'] != null
          ? NameUse.fromJson(json['use'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      family: json['family'] != null ? FhirString(json['family']) : null,
      familyElement: json['_family'] != null
          ? Element.fromJson(json['_family'] as Map<String, dynamic>)
          : null,
      given: json['given'] != null
          ? (json['given'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      givenElement: json['_given'] != null
          ? (json['_given'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      prefix: json['prefix'] != null
          ? (json['prefix'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      prefixElement: json['_prefix'] != null
          ? (json['_prefix'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      suffix: json['suffix'] != null
          ? (json['suffix'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString(v))
              .toList()
          : null,
      suffixElement: json['_suffix'] != null
          ? (json['_suffix'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  HumanName clone() => throw UnimplementedError();
  @override
  HumanName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    NameUse? use,
    Element? useElement,
    FhirString? text,
    Element? textElement,
    FhirString? family,
    Element? familyElement,
    List<FhirString>? given,
    List<Element>? givenElement,
    List<FhirString>? prefix,
    List<Element>? prefixElement,
    List<FhirString>? suffix,
    List<Element>? suffixElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return HumanName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      family: family ?? this.family,
      familyElement: familyElement ?? this.familyElement,
      given: given ?? this.given,
      givenElement: givenElement ?? this.givenElement,
      prefix: prefix ?? this.prefix,
      prefixElement: prefixElement ?? this.prefixElement,
      suffix: suffix ?? this.suffix,
      suffixElement: suffixElement ?? this.suffixElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory HumanName.fromYaml(dynamic yaml) => yaml is String
      ? HumanName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? HumanName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'HumanName cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory HumanName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return HumanName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
