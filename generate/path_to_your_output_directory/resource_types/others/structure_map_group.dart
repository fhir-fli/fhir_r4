import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [StructureMap_Group] A Map of relationships between 2 structures that
/// can be used to transform data.

@freezed
class StructureMap_Group with _$StructureMap_Group {
  const StructureMap_Group._();

  const factory StructureMap_Group({
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
/// [name] A unique name for the group for the convenience of human
/// readers.

    @JsonKey(name: 'name') FhirId? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [extends] Another group that this group adds rules to.

    @JsonKey(name: 'extends') FhirId? extends,
/// [_extends] Extensions for extends

    @JsonKey(name: '_extends') PrimitiveElement? extendsElement,
/// [typeMode] If this is the default rule set to apply for the source type
/// or this combination of types.

    @JsonKey(name: 'typeMode') FhirCode? typeMode,
/// [_typeMode] Extensions for typeMode

    @JsonKey(name: '_typeMode') PrimitiveElement? typeModeElement,
/// [documentation] Additional supporting documentation that explains the
/// purpose of the group and the types of mappings within it.

    @JsonKey(name: 'documentation') String? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
/// [input] A name assigned to an instance of data. The instance must be
/// provided when the mapping is invoked.

    @JsonKey(name: 'input') List<List<StructureMap_Input>>? input,
/// [rule] Transform Rule from source to target.

    @JsonKey(name: 'rule') List<List<StructureMap_Rule>>? rule,
  }) = _$StructureMap_Group;

  @override
  String get fhirType => 'StructureMap_Group';

  factory StructureMap_Group.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_GroupFromJson(json);

  factory StructureMap_Group.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap_Group.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMap_Group.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMap_Group cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureMap_Group.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMap_GroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
