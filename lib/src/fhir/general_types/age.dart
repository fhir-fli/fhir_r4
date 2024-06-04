// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'age.freezed.dart';
part 'age.g.dart';

/// [Age] A duration of time during which an organism (or a process) has
@freezed
class Age with _$Age implements DataType {
  /// [Age] A duration of time during which an organism (or a process) has
  const Age._();

  /// [Age] A duration of time during which an organism (or a process) has
  ///  existed.
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
  const factory Age({
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
    @JsonKey(name: '_value') PrimitiveElement? valueElement,

    /// [comparator] How the value should be understood and represented - whether
    /// the actual value is greater or less than the stated value due to
    /// measurement issues; e.g. if the comparator is "<" , then the real value is
    ///  < stated value.
    @JsonKey(unknownEnumValue: AgeComparator.unknown) AgeComparator? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') PrimitiveElement? comparatorElement,

    /// [unit] A human-readable form of the unit.
    String? unit,

    /// [unitElement] Extensions for unit
    @JsonKey(name: '_unit') PrimitiveElement? unitElement,

    /// [system] The identification of the system that provides the coded form of
    ///  the unit.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') PrimitiveElement? systemElement,

    /// [code] A computer processable form of the unit in some unit
    ///  representation system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,
  }) = _Age;

  @override
  String get fhirType => 'Age';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Age.fromYaml(dynamic yaml) => yaml is String
      ? Age.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Age.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError('Age cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  /// Acts like a constructor, returns a [Age], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Age.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AgeFromJson(json);
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
