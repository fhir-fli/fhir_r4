// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'human_name.freezed.dart';
part 'human_name.g.dart';

/// [HumanName] A human's name with the ability to identify parts and usage.
@freezed
class HumanName with _$HumanName implements DataType {
  /// [HumanName] A human's name with the ability to identify parts and usage.
  const HumanName._();

  /// [HumanName] A human's name with the ability to identify parts and usage.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [use] Identifies the purpose for this name.
  ///
  /// [useElement] Extensions for use
  ///
  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  ///
  /// [textElement] Extensions for text
  ///
  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  ///
  /// [familyElement] Extensions for family
  ///
  /// [given] Given name.
  ///
  /// [givenElement] Extensions for given
  ///
  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  ///
  /// [prefixElement] Extensions for prefix
  ///
  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  ///
  /// [suffixElement] Extensions for suffix
  ///
  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  const factory HumanName({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [use] Identifies the purpose for this name.
    @JsonKey(unknownEnumValue: HumanNameUse.unknown) HumanNameUse? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') Element? useElement,

    /// [text] Specifies the entire name as it should be displayed e.g. on an
    /// application UI. This may be provided instead of or as well as the specific
    ///  parts.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') Element? textElement,

    /// [family] The part of a name that links to the genealogy. In some cultures
    ///  (e.g. Eritrea) the family name of a son is the first name of his father.
    String? family,

    /// [familyElement] Extensions for family
    @JsonKey(name: '_family') Element? familyElement,

    /// [given] Given name.
    List<String>? given,

    /// [givenElement] Extensions for given
    @JsonKey(name: '_given') List<Element?>? givenElement,

    /// [prefix] Part of the name that is acquired as a title due to academic,
    /// legal, employment or nobility status, etc. and that appears at the start
    ///  of the name.
    List<String>? prefix,

    /// [prefixElement] Extensions for prefix
    @JsonKey(name: '_prefix') List<Element?>? prefixElement,

    /// [suffix] Part of the name that is acquired as a title due to academic,
    /// legal, employment or nobility status, etc. and that appears at the end of
    ///  the name.
    List<String>? suffix,

    /// [suffixElement] Extensions for suffix
    @JsonKey(name: '_suffix') List<Element?>? suffixElement,

    /// [period] Indicates the period of time when this name was valid for the
    ///  named person.
    Period? period,
  }) = _HumanName;

  @override
  String get fhirType => 'HumanName';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory HumanName.fromYaml(dynamic yaml) => yaml is String
      ? HumanName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? HumanName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'HumanName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory HumanName.fromJson(Map<String, dynamic> json) =>
      _$HumanNameFromJson(json);

  /// Acts like a constructor, returns a [HumanName], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory HumanName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$HumanNameFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());

  HumanName updateUse(HumanNameUse use) => copyWith(use: use);

  HumanName updateText(String text) => copyWith(text: text);

  HumanName updateFamily(String family) => copyWith(family: family);

  HumanName updateGiven(List<String> given) => copyWith(given: given);

  HumanName updatePrefix(List<String> prefix) => copyWith(prefix: prefix);

  HumanName updateSuffix(List<String> suffix) => copyWith(suffix: suffix);

  HumanName updatePeriod(Period period) => copyWith(period: period);
}
