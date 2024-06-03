import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImplementationGuide_Resource] A set of rules of how a particular
/// interoperability or standards problem is solved - typically through the use
/// of FHIR resources. This resource is used to gather all the parts of an
/// implementation guide into a logical whole and to publish a computable
/// definition of all the parts.

@freezed
class ImplementationGuide_Resource with _$ImplementationGuide_Resource {
  const ImplementationGuide_Resource._();

  const factory ImplementationGuide_Resource({
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
/// [fhirVersion] Indicates the FHIR Version(s) this artifact is intended
/// to apply to. If no versions are specified, the resource is assumed to apply
/// to all the versions stated in ImplementationGuide.fhirVersion.

    @JsonKey(name: 'fhirVersion') List<List<FhirCode>>? fhirVersion,
/// [_fhirVersion] Extensions for fhirVersion

    @JsonKey(name: '_fhirVersion') List<PrimitiveElement>? fhirVersionElement,
/// [name] A human assigned name for the resource. All resources SHOULD
/// have a name, but the name may be extracted from the resource (e.g.
/// ValueSet.name).

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [description] A description of the reason that a resource has been
/// included in the implementation guide.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [isExample] If true, indicates the resource is an example instance.

    @JsonKey(name: 'isExample') FhirBoolean? isExample,
/// [_isExample] Extensions for isExample

    @JsonKey(name: '_isExample') PrimitiveElement? isExampleElement,
/// [profile] If present, indicates profile(s) the instance is valid
/// against.

    @JsonKey(name: 'profile') List<List<FhirCanonical>>? profile,
/// [groupingId] Reference to the id of the grouping this resource appears
/// in.

    @JsonKey(name: 'groupingId') FhirId? groupingId,
/// [_groupingId] Extensions for groupingId

    @JsonKey(name: '_groupingId') PrimitiveElement? groupingIdElement,
  }) = _$ImplementationGuide_Resource;

  @override
  String get fhirType => 'ImplementationGuide_Resource';

  factory ImplementationGuide_Resource.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_ResourceFromJson(json);

  factory ImplementationGuide_Resource.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide_Resource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide_Resource.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide_Resource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide_Resource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuide_ResourceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
