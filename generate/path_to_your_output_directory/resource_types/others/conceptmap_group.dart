import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ConceptMap_Group] A statement of relationships from one set of
/// concepts to one or more other concepts - either concepts in code systems,
/// or data element/data element concepts, or classes in class models.

@freezed
class ConceptMap_Group with _$ConceptMap_Group {
  const ConceptMap_Group._();

  const factory ConceptMap_Group({
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
/// [source] An absolute URI that identifies the source system where the
/// concepts to be mapped are defined.

    @JsonKey(name: 'source') FhirCanonical? source,
/// [target] An absolute URI that identifies the target system that the
/// concepts will be mapped to.

    @JsonKey(name: 'target') FhirCanonical? target,
/// [element] Mappings for an individual concept in the source to one or
/// more concepts in the target.

    @JsonKey(name: 'element') List<List<ConceptMap_Element>>? element,
/// [unmapped] What to do when there is no mapping to a target concept from
/// the source concept and ConceptMap.group.element.noMap is not true. This
/// provides the "default" to be applied when there is no target concept
/// mapping specified or the expansion of
/// ConceptMap.group.element.target.valueSet is empty.

    @JsonKey(name: 'unmapped') ConceptMap_Unmapped? unmapped,
  }) = _$ConceptMap_Group;

  @override
  String get fhirType => 'ConceptMap_Group';

  factory ConceptMap_Group.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_GroupFromJson(json);

  factory ConceptMap_Group.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap_Group.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap_Group.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap_Group cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap_Group.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMap_GroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
