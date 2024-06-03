import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [StructureDefinition_Mapping] A definition of a FHIR structure. This
/// resource is used to describe the underlying resources, data types defined
/// in FHIR, and also for describing extensions and constraints on resources
/// and data types.

@freezed
class StructureDefinition_Mapping with _$StructureDefinition_Mapping {
  const StructureDefinition_Mapping._();

  const factory StructureDefinition_Mapping({
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
/// [identity] An Internal id that is used to identify this mapping set
/// when specific mappings are made.

    @JsonKey(name: 'identity') FhirId? identity,
/// [_identity] Extensions for identity

    @JsonKey(name: '_identity') PrimitiveElement? identityElement,
/// [uri] An absolute URI that identifies the specification that this
/// mapping is expressed to.

    @JsonKey(name: 'uri') FhirUri? uri,
/// [_uri] Extensions for uri

    @JsonKey(name: '_uri') PrimitiveElement? uriElement,
/// [name] A name for the specification that is being mapped to.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [comment] Comments about this mapping, including version notes, issues,
/// scope limitations, and other important notes for usage.

    @JsonKey(name: 'comment') String? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
  }) = _$StructureDefinition_Mapping;

  @override
  String get fhirType => 'StructureDefinition_Mapping';

  factory StructureDefinition_Mapping.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinition_MappingFromJson(json);

  factory StructureDefinition_Mapping.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinition_Mapping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureDefinition_Mapping.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureDefinition_Mapping cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureDefinition_Mapping.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureDefinition_MappingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
