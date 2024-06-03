import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CompartmentDefinition_Resource] A compartment definition that defines
/// how resources are accessed on a server.

@freezed
class CompartmentDefinition_Resource with _$CompartmentDefinition_Resource {
  const CompartmentDefinition_Resource._();

  const factory CompartmentDefinition_Resource({
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
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [code] The name of a resource supported by the server.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [param] The name of a search parameter that represents the link to the
/// compartment. More than one may be listed because a resource may be linked
/// to a compartment in more than one way,.

    @JsonKey(name: 'param') List<List<String>>? param,
/// [_param] Extensions for param

    @JsonKey(name: '_param') List<PrimitiveElement>? paramElement,
/// [documentation] Additional documentation about the resource and
/// compartment.

    @JsonKey(name: 'documentation') String? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
/// [startParam] Search Parameter for mapping requests made with
/// $everything.start (e.g. on
/// [Patient.$everything](patient-operation-everything.html)).

    @JsonKey(name: 'startParam') FhirUri? startParam,
/// [_startParam] Extensions for startParam

    @JsonKey(name: '_startParam') PrimitiveElement? startParamElement,
/// [endParam] Search Parameter for mapping requests made with
/// $everything.end (e.g. on
/// [Patient.$everything](patient-operation-everything.html)).

    @JsonKey(name: 'endParam') FhirUri? endParam,
/// [_endParam] Extensions for endParam

    @JsonKey(name: '_endParam') PrimitiveElement? endParamElement,
  }) = _$CompartmentDefinition_Resource;

  @override
  String get fhirType => 'CompartmentDefinition_Resource';

  factory CompartmentDefinition_Resource.fromJson(Map<String, dynamic> json) =>
      _$CompartmentDefinition_ResourceFromJson(json);

  factory CompartmentDefinition_Resource.fromYaml(dynamic yaml) => yaml is String
      ? CompartmentDefinition_Resource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CompartmentDefinition_Resource.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CompartmentDefinition_Resource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CompartmentDefinition_Resource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompartmentDefinition_ResourceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
