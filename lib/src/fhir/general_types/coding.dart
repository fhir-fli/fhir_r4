// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'coding.freezed.dart';
part 'coding.g.dart';

/// [Coding] A reference to a code defined by a terminology system.
@freezed
class Coding extends DataType with _$Coding {
  /// [Coding] A reference to a code defined by a terminology system.
  Coding._();

  /// [Coding] A reference to a code defined by a terminology system.
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
  /// [system] The identification of the code system that defines the meaning
  ///  of the symbol in the code.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [version] The version of the code system which was used when choosing
  /// this code. Note that a well-maintained code system does not need the
  /// version reported, because the meaning of codes is consistent across
  /// versions. However this cannot consistently be assured, and when the
  /// meaning is not guaranteed to be consistent, the version SHOULD be
  ///  exchanged.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [code] A symbol in syntax defined by the system. The symbol may be a
  /// predefined code or an expression in a syntax defined by the coding system
  ///  (e.g. post-coordination).
  ///
  /// [codeElement] Extensions for code
  ///
  /// [display] A representation of the meaning of the code in the system,
  ///  following the rules of the system.
  ///
  /// [displayElement] Extensions for display
  ///
  /// [userSelected] Indicates that this coding was chosen by a user directly -
  ///  e.g. off a pick list of available items (codes or displays).
  ///
  /// [userSelectedElement] Extensions for userSelected
  const factory Coding({
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

    /// [system] The identification of the code system that defines the meaning
    ///  of the symbol in the code.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') PrimitiveElement? systemElement,

    /// [version] The version of the code system which was used when choosing
    /// this code. Note that a well-maintained code system does not need the
    /// version reported, because the meaning of codes is consistent across
    /// versions. However this cannot consistently be assured, and when the
    /// meaning is not guaranteed to be consistent, the version SHOULD be
    ///  exchanged.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [code] A symbol in syntax defined by the system. The symbol may be a
    /// predefined code or an expression in a syntax defined by the coding system
    ///  (e.g. post-coordination).
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [display] A representation of the meaning of the code in the system,
    ///  following the rules of the system.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') PrimitiveElement? displayElement,

    /// [userSelected] Indicates that this coding was chosen by a user directly -
    ///  e.g. off a pick list of available items (codes or displays).
    FhirBoolean? userSelected,

    /// [userSelectedElement] Extensions for userSelected
    @JsonKey(name: '_userSelected') PrimitiveElement? userSelectedElement,
  }) = _Coding;

  @override
  String get fhirType => 'Coding';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Coding.fromYaml(dynamic yaml) => yaml is String
      ? Coding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Coding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Coding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);

  /// Acts like a constructor, returns a [Coding], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Coding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
