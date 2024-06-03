import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImplementationGuide_Resource1] A set of rules of how a particular
/// interoperability or standards problem is solved - typically through the use
/// of FHIR resources. This resource is used to gather all the parts of an
/// implementation guide into a logical whole and to publish a computable
/// definition of all the parts.

@freezed
class ImplementationGuide_Resource1 with _$ImplementationGuide_Resource1 {
  const ImplementationGuide_Resource1._();

  const factory ImplementationGuide_Resource1({
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
/// [reference] Where this resource is found.

    @JsonKey(name: 'reference') Reference? reference,
/// [isExample] If true, indicates the resource is an example instance.

    @JsonKey(name: 'isExample') FhirBoolean? isExample,
/// [_isExample] Extensions for isExample

    @JsonKey(name: '_isExample') PrimitiveElement? isExampleElement,
/// [profile] If present, indicates profile(s) the instance is valid
/// against.

    @JsonKey(name: 'profile') List<List<FhirCanonical>>? profile,
/// [relativePath] The relative path for primary page for this resource
/// within the IG.

    @JsonKey(name: 'relativePath') FhirUrl? relativePath,
/// [_relativePath] Extensions for relativePath

    @JsonKey(name: '_relativePath') PrimitiveElement? relativePathElement,
  }) = _$ImplementationGuide_Resource1;

  @override
  String get fhirType => 'ImplementationGuide_Resource1';

  factory ImplementationGuide_Resource1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_Resource1FromJson(json);

  factory ImplementationGuide_Resource1.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide_Resource1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide_Resource1.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide_Resource1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide_Resource1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuide_Resource1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
