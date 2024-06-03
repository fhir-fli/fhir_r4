import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExampleScenario_ContainedInstance] Example of workflow instance.

@freezed
class ExampleScenario_ContainedInstance with _$ExampleScenario_ContainedInstance {
  const ExampleScenario_ContainedInstance._();

  const factory ExampleScenario_ContainedInstance({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [instanceReference] A reference to the key of an instance found within
/// this one.

    @JsonKey(name: 'instanceReference') String? instanceReference,
/// [_instanceReference] Extensions for instanceReference

    @JsonKey(name: '_instanceReference') PrimitiveElement? instanceReferenceElement,
/// [versionReference] A reference to the key of a specific version of an
/// instance in this instance.

    @JsonKey(name: 'versionReference') String? versionReference,
/// [_versionReference] Extensions for versionReference

    @JsonKey(name: '_versionReference') PrimitiveElement? versionReferenceElement,
  }) = _$ExampleScenario_ContainedInstance;

  @override
  String get fhirType => 'ExampleScenario_ContainedInstance';

  factory ExampleScenario_ContainedInstance.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_ContainedInstanceFromJson(json);

  factory ExampleScenario_ContainedInstance.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario_ContainedInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExampleScenario_ContainedInstance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExampleScenario_ContainedInstance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExampleScenario_ContainedInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExampleScenario_ContainedInstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
