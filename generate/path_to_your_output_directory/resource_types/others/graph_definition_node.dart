import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [GraphDefinition_Node] A formal computable definition of a graph of
/// resources - that is, a coherent set of resources that form a graph by
/// following references. The Graph Definition resource defines a set and makes
/// rules about the set.

@freezed
class GraphDefinition_Node with _$GraphDefinition_Node {
  const GraphDefinition_Node._();

  const factory GraphDefinition_Node({
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
/// [nodeId] Internal ID of node - target for link references.

    @JsonKey(name: 'nodeId') FhirId? nodeId,
/// [_nodeId] Extensions for nodeId

    @JsonKey(name: '_nodeId') PrimitiveElement? nodeIdElement,
/// [description] Information about why this node is of interest in this
/// graph definition.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [type] Type of resource this link refers to.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [profile] Profile for the target resource.

    @JsonKey(name: 'profile') FhirCanonical? profile,
  }) = _$GraphDefinition_Node;

  @override
  String get fhirType => 'GraphDefinition_Node';

  factory GraphDefinition_Node.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinition_NodeFromJson(json);

  factory GraphDefinition_Node.fromYaml(dynamic yaml) => yaml is String
      ? GraphDefinition_Node.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GraphDefinition_Node.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GraphDefinition_Node cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory GraphDefinition_Node.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GraphDefinition_NodeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
