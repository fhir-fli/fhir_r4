// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'identifier.freezed.dart';
part 'identifier.g.dart';

/// [Identifier] An identifier - identifies some entity uniquely and
@freezed
class Identifier with _$Identifier implements DataType {
  /// [Identifier] An identifier - identifies some entity uniquely and
  const Identifier._();

  /// [Identifier] An identifier - identifies some entity uniquely and
  ///  unambiguously. Typically this is used for business identifiers.
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
  /// [use] The purpose of this identifier.
  ///
  /// [useElement] Extensions for use
  ///
  /// [type] A coded type for the identifier that can be used to determine
  ///  which identifier to use for a specific purpose.
  ///
  /// [system] Establishes the namespace for the value - that is, a URL that
  ///  describes a set values that are unique.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [value] The portion of the identifier typically relevant to the user and
  ///  which is unique within the context of the system.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [period] Time period during which identifier is/was valid for use.
  ///
  /// [assigner] Organization that issued/manages the identifier.
  const factory Identifier({
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

    /// [use] The purpose of this identifier.
    @JsonKey(unknownEnumValue: IdentifierUse.unknown) IdentifierUse? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') PrimitiveElement? useElement,

    /// [type] A coded type for the identifier that can be used to determine
    ///  which identifier to use for a specific purpose.
    CodeableConcept? type,

    /// [system] Establishes the namespace for the value - that is, a URL that
    ///  describes a set values that are unique.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') PrimitiveElement? systemElement,

    /// [value] The portion of the identifier typically relevant to the user and
    ///  which is unique within the context of the system.
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,

    /// [period] Time period during which identifier is/was valid for use.
    Period? period,

    /// [assigner] Organization that issued/manages the identifier.
    Reference? assigner,
  }) = _Identifier;

  @override
  String get fhirType => 'Identifier';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Identifier.fromYaml(dynamic yaml) => yaml is String
      ? Identifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Identifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Identifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);

  /// Acts like a constructor, returns a [Identifier], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Identifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IdentifierFromJson(json);
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
