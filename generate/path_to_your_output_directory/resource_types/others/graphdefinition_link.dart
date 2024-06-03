import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [GraphDefinition_Link] A formal computable definition of a graph of
/// resources - that is, a coherent set of resources that form a graph by
/// following references. The Graph Definition resource defines a set and makes
/// rules about the set.

@freezed
class GraphDefinition_Link with _$GraphDefinition_Link {
  const GraphDefinition_Link._();

  const factory GraphDefinition_Link({
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
/// [description] Information about why this link is of interest in this
/// graph definition.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [min] Minimum occurrences for this link.

    @JsonKey(name: 'min') FhirInteger? min,
/// [_min] Extensions for min

    @JsonKey(name: '_min') PrimitiveElement? minElement,
/// [max] Maximum occurrences for this link.

    @JsonKey(name: 'max') String? max,
/// [_max] Extensions for max

    @JsonKey(name: '_max') PrimitiveElement? maxElement,
/// [sourceId] The source node for this link.

    @JsonKey(name: 'sourceId') FhirId? sourceId,
/// [_sourceId] Extensions for sourceId

    @JsonKey(name: '_sourceId') PrimitiveElement? sourceIdElement,
/// [path] A FHIRPath expression that identifies one of FHIR References to
/// other resources.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
/// [sliceName] Which slice (if profiled).

    @JsonKey(name: 'sliceName') String? sliceName,
/// [_sliceName] Extensions for sliceName

    @JsonKey(name: '_sliceName') PrimitiveElement? sliceNameElement,
/// [targetId] The target node for this link.

    @JsonKey(name: 'targetId') FhirId? targetId,
/// [_targetId] Extensions for targetId

    @JsonKey(name: '_targetId') PrimitiveElement? targetIdElement,
/// [params] A set of parameters to look up.

    @JsonKey(name: 'params') String? params,
/// [_params] Extensions for params

    @JsonKey(name: '_params') PrimitiveElement? paramsElement,
/// [compartment] Compartment Consistency Rules.

    @JsonKey(name: 'compartment') List<List<GraphDefinition_Compartment>>? compartment,
  }) = _$GraphDefinition_Link;

  @override
  String get fhirType => 'GraphDefinition_Link';

  factory GraphDefinition_Link.fromJson(Map<String, dynamic> json) =>
      _$GraphDefinition_LinkFromJson(json);

  factory GraphDefinition_Link.fromYaml(dynamic yaml) => yaml is String
      ? GraphDefinition_Link.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GraphDefinition_Link.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GraphDefinition_Link cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory GraphDefinition_Link.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GraphDefinition_LinkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
