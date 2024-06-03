import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ImplementationGuide_Definition] A set of rules of how a particular
/// interoperability or standards problem is solved - typically through the use
/// of FHIR resources. This resource is used to gather all the parts of an
/// implementation guide into a logical whole and to publish a computable
/// definition of all the parts.

@freezed
class ImplementationGuide_Definition with _$ImplementationGuide_Definition {
  const ImplementationGuide_Definition._();

  const factory ImplementationGuide_Definition({
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
/// [grouping] A logical group of resources. Logical groups can be used
/// when building pages.

    @JsonKey(name: 'grouping') List<List<ImplementationGuide_Grouping>>? grouping,
/// [resource] A resource that is part of the implementation guide.
/// Conformance resources (value set, structure definition, capability
/// statements etc.) are obvious candidates for inclusion, but any kind of
/// resource can be included as an example resource.

    @JsonKey(name: 'resource') List<List<ImplementationGuide_Resource>>? resource,
/// [page] A page / section in the implementation guide. The root page is
/// the implementation guide home page.

    @JsonKey(name: 'page') ImplementationGuide_Page? page,
/// [parameter] A set of parameters that defines how the implementation
/// guide is built. The parameters are defined by the relevant tools that build
/// the implementation guides.

    @JsonKey(name: 'parameter') List<List<ImplementationGuide_Parameter>>? parameter,
/// [template] A template for building resources.

    @JsonKey(name: 'template') List<List<ImplementationGuide_Template>>? template,
  }) = _$ImplementationGuide_Definition;

  @override
  String get fhirType => 'ImplementationGuide_Definition';

  factory ImplementationGuide_Definition.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_DefinitionFromJson(json);

  factory ImplementationGuide_Definition.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide_Definition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide_Definition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide_Definition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide_Definition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuide_DefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
