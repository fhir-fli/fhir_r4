import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ParameterDefinition] The parameters to the module. This collection
/// specifies both the input and output parameters. Input parameters are
/// provided by the caller as part of the $evaluate operation. Output
/// parameters are included in the GuidanceResponse.

@freezed
class ParameterDefinition with _$ParameterDefinition {
  const ParameterDefinition._();

  const factory ParameterDefinition({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [name] The name of the parameter used to allow access to the value of
/// the parameter in evaluation contexts.

    @JsonKey(name: 'name') FhirCode? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [use] Whether the parameter is input or output for the module.

    @JsonKey(name: 'use') FhirCode? use,
/// [_use] Extensions for use

    @JsonKey(name: '_use') PrimitiveElement? useElement,
/// [min] The minimum number of times this parameter SHALL appear in the
/// request or response.

    @JsonKey(name: 'min') FhirInteger? min,
/// [_min] Extensions for min

    @JsonKey(name: '_min') PrimitiveElement? minElement,
/// [max] The maximum number of times this element is permitted to appear
/// in the request or response.

    @JsonKey(name: 'max') String? max,
/// [_max] Extensions for max

    @JsonKey(name: '_max') PrimitiveElement? maxElement,
/// [documentation] A brief discussion of what the parameter is for and how
/// it is used by the module.

    @JsonKey(name: 'documentation') String? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
/// [type] The type of the parameter.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [profile] If specified, this indicates a profile that the input data
/// must conform to, or that the output data will conform to.

    @JsonKey(name: 'profile') FhirCanonical? profile,
  }) = _$ParameterDefinition;

  @override
  String get fhirType => 'ParameterDefinition';

  factory ParameterDefinition.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefinitionFromJson(json);

  factory ParameterDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ParameterDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ParameterDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ParameterDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

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
  String toJsonString() => jsonEncode(toJson());
}
