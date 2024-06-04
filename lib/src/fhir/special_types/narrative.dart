// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'narrative.freezed.dart';
part 'narrative.g.dart';

/// [Narrative] A human-readable summary of the resource conveying the essential
/// clinical and business information for the resource.
@freezed
class Narrative with _$Narrative implements DataType {
  /// [Narrative] A human-readable summary of the resource conveying the essential
  /// clinical and business information for the resource.

  const Narrative._();

  /// [Narrative] A human-readable summary of the resource conveying the essential
  /// clinical and business information for the resource.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension.
  ///
  /// [status] The status of the narrative - whether it\u0027s entirely generated
  /// (from just the defined data or the extensions too), or whether a human
  /// authored it and it may contain additional data.
  ///
  /// [statusElement] (_status) Extensions for status
  ///
  /// [div] The actual narrative content, a stripped down version of XHTML.
  const factory Narrative({
    /// [id] Unique id for the element within a resource (for internal references).
    /// This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [status] The status of the narrative - whether it\u0027s entirely generated
    /// (from just the defined data or the extensions too), or whether a human
    /// authored it and it may contain additional data.
    @JsonKey(unknownEnumValue: NarrativeStatus.unknown) NarrativeStatus? status,

    /// [statusElement] (_status) Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [div] The actual narrative content, a stripped down version of XHTML.
    required String div,
  }) = _Narrative;

  @override
  String get fhirType => 'Narrative';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Narrative.fromYaml(dynamic yaml) => yaml is String
      ? Narrative.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Narrative.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Narrative cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Narrative.fromJson(Map<String, dynamic> json) =>
      _$NarrativeFromJson(json);

  /// Acts like a constructor, returns a [Narrative], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Narrative.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NarrativeFromJson(json);
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
