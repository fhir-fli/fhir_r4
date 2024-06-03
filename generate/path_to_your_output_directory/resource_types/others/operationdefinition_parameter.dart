import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [OperationDefinition_Parameter] A formal computable definition of an
/// operation (on the RESTful interface) or a named query (using the search
/// interaction).

@freezed
class OperationDefinition_Parameter with _$OperationDefinition_Parameter {
  const OperationDefinition_Parameter._();

  const factory OperationDefinition_Parameter({
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
/// [name] The name of used to identify the parameter.

    @JsonKey(name: 'name') FhirCode? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [use] Whether this is an input or an output parameter.

    @JsonKey(name: 'use') FhirCode? use,
/// [_use] Extensions for use

    @JsonKey(name: '_use') PrimitiveElement? useElement,
/// [scope] If present, indicates that the parameter applies when the
/// operation is being invoked at the specified level.

    @JsonKey(name: 'scope') List<List<FhirCode>>? scope,
/// [_scope] Extensions for scope

    @JsonKey(name: '_scope') List<PrimitiveElement>? scopeElement,
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
/// [documentation] Describes the meaning or use of this parameter.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
/// [type] The type for this parameter.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [allowedType] Support for polymorphic types. If the parameter type is
/// abstract, this element lists allowed sub-types for the parameter.

    @JsonKey(name: 'allowedType') List<List<FhirCode>>? allowedType,
/// [_allowedType] Extensions for allowedType

    @JsonKey(name: '_allowedType') List<PrimitiveElement>? allowedTypeElement,
/// [targetProfile] Used when the type is "Reference" or "canonical", and
/// identifies a profile structure or implementation Guide that applies to the
/// target of the reference this parameter refers to. If any profiles are
/// specified, then the content must conform to at least one of them. The URL
/// can be a local reference - to a contained StructureDefinition, or a
/// reference to another StructureDefinition or Implementation Guide by a
/// canonical URL. When an implementation guide is specified, the target
/// resource SHALL conform to at least one profile defined in the
/// implementation guide.

    @JsonKey(name: 'targetProfile') List<List<FhirCanonical>>? targetProfile,
/// [searchType] How the parameter is understood if/when it used as search
/// parameter. This is only used if the parameter is a string.

    @JsonKey(name: 'searchType') FhirCode? searchType,
/// [_searchType] Extensions for searchType

    @JsonKey(name: '_searchType') PrimitiveElement? searchTypeElement,
/// [binding] Binds to a value set if this parameter is coded (code,
/// Coding, CodeableConcept).

    @JsonKey(name: 'binding') OperationDefinition_Binding? binding,
/// [referencedFrom] Identifies other resource parameters within the
/// operation invocation that are expected to resolve to this resource.

    @JsonKey(name: 'referencedFrom') List<List<OperationDefinition_ReferencedFrom>>? referencedFrom,
/// [part] The parts of a nested Parameter.

    @JsonKey(name: 'part') List<List<OperationDefinition_Parameter>>? part,
  }) = _$OperationDefinition_Parameter;

  @override
  String get fhirType => 'OperationDefinition_Parameter';

  factory OperationDefinition_Parameter.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinition_ParameterFromJson(json);

  factory OperationDefinition_Parameter.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition_Parameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinition_Parameter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinition_Parameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory OperationDefinition_Parameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinition_ParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
