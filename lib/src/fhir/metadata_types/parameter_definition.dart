// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'parameter_definition.freezed.dart';
part 'parameter_definition.g.dart';

/// [ParameterDefinition] The parameters to the module. This collection
@freezed
class ParameterDefinition extends DataType with _$ParameterDefinition {
  /// [ParameterDefinition] The parameters to the module. This collection
  ParameterDefinition._();

  /// [ParameterDefinition] The parameters to the module. This collection
  /// specifies both the input and output parameters. Input parameters are
  /// provided by the caller as part of the $evaluate operation. Output
  ///  parameters are included in the GuidanceResponse.
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
  /// [name] The name of the parameter used to allow access to the value of the
  ///  parameter in evaluation contexts.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [use] Whether the parameter is input or output for the module.
  ///
  /// [useElement] Extensions for use
  ///
  /// [min] The minimum number of times this parameter SHALL appear in the
  ///  request or response.
  ///
  /// [minElement] Extensions for min
  ///
  /// [max] The maximum number of times this element is permitted to appear in
  ///  the request or response.
  ///
  /// [maxElement] Extensions for max
  ///
  /// [documentation] A brief discussion of what the parameter is for and how
  ///  it is used by the module.
  ///
  /// [documentationElement] Extensions for documentation
  ///
  /// [type] The type of the parameter.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [profile] If specified, this indicates a profile that the input data must
  ///  conform to, or that the output data will conform to.
  const factory ParameterDefinition({
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

    /// [name] The name of the parameter used to allow access to the value of the
    ///  parameter in evaluation contexts.
    FhirCode? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [use] Whether the parameter is input or output for the module.
    FhirCode? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') PrimitiveElement? useElement,

    /// [min] The minimum number of times this parameter SHALL appear in the
    ///  request or response.
    FhirInteger? min,

    /// [minElement] Extensions for min
    @JsonKey(name: '_min') PrimitiveElement? minElement,

    /// [max] The maximum number of times this element is permitted to appear in
    ///  the request or response.
    String? max,

    /// [maxElement] Extensions for max
    @JsonKey(name: '_max') PrimitiveElement? maxElement,

    /// [documentation] A brief discussion of what the parameter is for and how
    ///  it is used by the module.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,

    /// [type] The type of the parameter.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [profile] If specified, this indicates a profile that the input data must
    ///  conform to, or that the output data will conform to.
    FhirCanonical? profile,
  }) = _ParameterDefinition;

  @override
  String get fhirType => 'ParameterDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ParameterDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ParameterDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ParameterDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ParameterDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ParameterDefinition.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ParameterDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ParameterDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ParameterDefinitionFromJson(json);
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
