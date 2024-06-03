import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [StructureMap_Target] A Map of relationships between 2 structures that
/// can be used to transform data.

@freezed
class StructureMap_Target with _$StructureMap_Target {
  const StructureMap_Target._();

  const factory StructureMap_Target({
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
/// [context] Variable this rule applies to.

    @JsonKey(name: 'context') String? context,
/// [_context] Extensions for context

    @JsonKey(name: '_context') PrimitiveElement? contextElement,
/// [element] Field to create in the context.

    @JsonKey(name: 'element') String? element,
/// [_element] Extensions for element

    @JsonKey(name: '_element') PrimitiveElement? elementElement,
/// [variable] Named context for field, if desired, and a field is
/// specified.

    @JsonKey(name: 'variable') FhirId? variable,
/// [_variable] Extensions for variable

    @JsonKey(name: '_variable') PrimitiveElement? variableElement,
/// [listMode] If field is a list, how to manage the list.

    @JsonKey(name: 'listMode') List<List<FhirCode>>? listMode,
/// [_listMode] Extensions for listMode

    @JsonKey(name: '_listMode') List<PrimitiveElement>? listModeElement,
/// [listRuleId] Internal rule reference for shared list items.

    @JsonKey(name: 'listRuleId') FhirId? listRuleId,
/// [_listRuleId] Extensions for listRuleId

    @JsonKey(name: '_listRuleId') PrimitiveElement? listRuleIdElement,
/// [transform] How the data is copied / created.

    @JsonKey(name: 'transform') FhirCode? transform,
/// [_transform] Extensions for transform

    @JsonKey(name: '_transform') PrimitiveElement? transformElement,
/// [parameter] Parameters to the transform.

    @JsonKey(name: 'parameter') List<List<StructureMap_Parameter>>? parameter,
  }) = _$StructureMap_Target;

  @override
  String get fhirType => 'StructureMap_Target';

  factory StructureMap_Target.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_TargetFromJson(json);

  factory StructureMap_Target.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap_Target.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMap_Target.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMap_Target cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureMap_Target.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMap_TargetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
