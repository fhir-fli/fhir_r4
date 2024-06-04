// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'distance.freezed.dart';
part 'distance.g.dart';

/// [Distance] A length - a value with a unit that is a physical distance.
@freezed
class Distance with _$Distance implements DataType {
  /// [Distance] A length - a value with a unit that is a physical distance.
  const Distance._();

  /// [Distance] A length - a value with a unit that is a physical distance.
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
  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  ///
  /// [comparatorElement] Extensions for comparator
  ///
  /// [unit] A human-readable form of the unit.
  ///
  /// [unitElement] Extensions for unit
  ///
  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  ///
  /// [codeElement] Extensions for code
  const factory Distance({
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

    /// [value] The value of the measured amount. The value includes an implicit
    ///  precision in the presentation of the value.
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,
    @JsonKey(unknownEnumValue: DistanceComparator.unknown)

    /// [comparator] How the value should be understood and represented - whether
    /// the actual value is greater or less than the stated value due to
    /// measurement issues; e.g. if the comparator is "<" , then the real value is
    ///  < stated value.
    DistanceComparator? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') Element? comparatorElement,

    /// [unit] A human-readable form of the unit.
    String? unit,

    /// [unitElement] Extensions for unit
    @JsonKey(name: '_unit') Element? unitElement,

    /// [system] The identification of the system that provides the coded form of
    ///  the unit.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [code] A computer processable form of the unit in some unit
    ///  representation system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') Element? codeElement,
  }) = _Distance;

  @override
  String get fhirType => 'Distance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Distance.fromYaml(dynamic yaml) => yaml is String
      ? Distance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Distance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Distance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);

  /// Acts like a constructor, returns a [Distance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Distance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DistanceFromJson(json);
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
