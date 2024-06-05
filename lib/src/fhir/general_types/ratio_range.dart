// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'ratio_range.freezed.dart';
part 'ratio_range.g.dart';

/// [RatioRangeRange] "A range of ratios expressed as a low and high numerator and a denominator.",
@freezed
class RatioRange with _$RatioRange implements DataType {
  /// [RatioRangeRange] "A range of ratios expressed as a low and high numerator and a denominator.",
  const RatioRange._();

  /// [RatioRangeRange] "A range of ratios expressed as a low and high numerator and a denominator.",
  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  /// [lowNumerator] "The value of the low limit numerator."
  /// [highNumerator] "The value of the high limit numerator."
  /// [denominator] "The value of the denominator."
  const factory RatioRange({
    /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
    String? id,

    /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [lowNumerator] "The value of the low limit numerator."
    Quantity? lowNumerator,

    /// [highNumerator] "The value of the high limit numerator."
    Quantity? highNumerator,

    /// [denominator] "The value of the denominator."
    Quantity? denominator,
  }) = _RatioRange;

  @override
  String get fhirType => 'RatioRange';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RatioRange.fromYaml(dynamic yaml) => yaml is String
      ? RatioRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RatioRange.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RatioRange cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RatioRange.fromJson(Map<String, dynamic> json) =>
      _$RatioRangeFromJson(json);

  /// Acts like a constructor, returns a [RatioRange], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RatioRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RatioRangeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
