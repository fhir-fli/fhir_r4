import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExampleScenario_Version] Example of workflow instance.

@freezed
class ExampleScenario_Version with _$ExampleScenario_Version {
  const ExampleScenario_Version._();

  const factory ExampleScenario_Version({
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
/// [key] A unique string within the instance that is used to reference the
/// version of the instance.

    @JsonKey(name: 'key') String? key,
/// [_key] Extensions for key

    @JsonKey(name: '_key') PrimitiveElement? keyElement,
/// [title] A short descriptive label the version to be used in tables or
/// diagrams.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [description] An explanation of what this specific version of the
/// instance contains and represents.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [content] Points to an instance (typically an example) that shows the
/// data that would flow at this point in the scenario.

    @JsonKey(name: 'content') Reference? content,
  }) = _$ExampleScenario_Version;

  @override
  String get fhirType => 'ExampleScenario_Version';

  factory ExampleScenario_Version.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_VersionFromJson(json);

  factory ExampleScenario_Version.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario_Version.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExampleScenario_Version.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExampleScenario_Version cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExampleScenario_Version.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExampleScenario_VersionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
