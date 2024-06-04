// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'contributor.freezed.dart';
part 'contributor.g.dart';

/// [Contributor] A contributor to the content of a knowledge asset,
@freezed
class Contributor with _$Contributor implements DataType {
  /// [Contributor] A contributor to the content of a knowledge asset,
  const Contributor._();

  /// [Contributor] A contributor to the content of a knowledge asset,
  ///  including authors, editors, reviewers, and endorsers.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [type] The type of contributor.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [name] The name of the individual or organization responsible for the
  ///  contribution.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the contributor.
  const factory Contributor({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [type] The type of contributor.
    @JsonKey(unknownEnumValue: ContributorType.unknown) ContributorType? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') Element? typeElement,

    /// [name] The name of the individual or organization responsible for the
    ///  contribution.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') Element? nameElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the contributor.
    List<ContactDetail>? contact,
  }) = _Contributor;

  @override
  String get fhirType => 'Contributor';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Contributor.fromYaml(dynamic yaml) => yaml is String
      ? Contributor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contributor.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contributor cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Contributor.fromJson(Map<String, dynamic> json) =>
      _$ContributorFromJson(json);

  /// Acts like a constructor, returns a [Contributor], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Contributor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContributorFromJson(json);
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
