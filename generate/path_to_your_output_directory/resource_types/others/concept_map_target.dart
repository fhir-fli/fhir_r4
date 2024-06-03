import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ConceptMap_Target] A statement of relationships from one set of
/// concepts to one or more other concepts - either concepts in code systems,
/// or data element/data element concepts, or classes in class models.

@freezed
class ConceptMap_Target with _$ConceptMap_Target {
  const ConceptMap_Target._();

  const factory ConceptMap_Target({
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
/// [code] Identity (code or path) or the element/item that the map refers
/// to.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [display] The display for the code. The display is only provided to
/// help editors when editing the concept map.

    @JsonKey(name: 'display') String? display,
/// [_display] Extensions for display

    @JsonKey(name: '_display') PrimitiveElement? displayElement,
/// [valueSet] The set of concepts from the ConceptMap.group.target code
/// system which are all being mapped to as part of this mapping rule. The
/// effect of using this data element is the same as having multiple
/// ConceptMap.group.element.target elements with one for each concept in the
/// ConceptMap.group.element.target.valueSet value set.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
/// [relationship] The relationship between the source and target concepts.
/// The relationship is read from source to target (e.g.
/// source-is-narrower-than-target).

    @JsonKey(name: 'relationship') FhirCode? relationship,
/// [_relationship] Extensions for relationship

    @JsonKey(name: '_relationship') PrimitiveElement? relationshipElement,
/// [comment] A description of status/issues in mapping that conveys
/// additional information not represented in  the structured data.

    @JsonKey(name: 'comment') String? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
/// [property] A property value for this source -> target mapping.

    @JsonKey(name: 'property') List<List<ConceptMap_Property1>>? property,
/// [dependsOn] A set of additional dependencies for this mapping to hold.
/// This mapping is only applicable if the specified data attribute can be
/// resolved, and it has the specified value.

    @JsonKey(name: 'dependsOn') List<List<ConceptMap_DependsOn>>? dependsOn,
/// [product] Product is the output of a ConceptMap that provides
/// additional values that go in other attributes / data elemnts of the target
/// data.

    @JsonKey(name: 'product') List<List<ConceptMap_DependsOn>>? product,
  }) = _$ConceptMap_Target;

  @override
  String get fhirType => 'ConceptMap_Target';

  factory ConceptMap_Target.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_TargetFromJson(json);

  factory ConceptMap_Target.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap_Target.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap_Target.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap_Target cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap_Target.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMap_TargetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
