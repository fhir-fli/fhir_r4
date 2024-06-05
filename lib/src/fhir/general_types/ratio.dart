// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'ratio.freezed.dart';
part 'ratio.g.dart';

/// [Ratio] A relationship of two Quantity values - expressed as a numerator
@freezed
class Ratio with _$Ratio implements DataType {
  /// [Ratio] A relationship of two Quantity values - expressed as a numerator
  const Ratio._();

  /// [Ratio] A relationship of two Quantity values - expressed as a numerator
  ///  and a denominator.
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
  /// [numerator] The value of the numerator.
  ///
  /// [denominator] The value of the denominator.
  const factory Ratio({
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

    /// [numerator] The value of the numerator.
    Quantity? numerator,

    /// [denominator] The value of the denominator.
    Quantity? denominator,
  }) = _Ratio;

  @override
  String get fhirType => 'Ratio';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Ratio.fromYaml(dynamic yaml) => yaml is String
      ? Ratio.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Ratio.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Ratio cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);

  /// Acts like a constructor, returns a [Ratio], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Ratio.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RatioFromJson(json);
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
