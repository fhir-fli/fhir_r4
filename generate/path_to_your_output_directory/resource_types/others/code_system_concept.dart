import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CodeSystem_Concept] The CodeSystem resource is used to declare the
/// existence of and describe a code system or code system supplement and its
/// key properties, and optionally define a part or all of its content.

@freezed
class CodeSystem_Concept with _$CodeSystem_Concept {
  const CodeSystem_Concept._();

  const factory CodeSystem_Concept({
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
/// [code] A code - a text symbol - that uniquely identifies the concept
/// within the code system.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [display] A human readable string that is the recommended default way
/// to present this concept to a user.

    @JsonKey(name: 'display') String? display,
/// [_display] Extensions for display

    @JsonKey(name: '_display') PrimitiveElement? displayElement,
/// [definition] The formal definition of the concept. The code system
/// resource does not make formal definitions required, because of the
/// prevalence of legacy systems. However, they are highly recommended, as
/// without them there is no formal meaning associated with the concept.

    @JsonKey(name: 'definition') String? definition,
/// [_definition] Extensions for definition

    @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
/// [designation] Additional representations for the concept - other
/// languages, aliases, specialized purposes, used for particular purposes,
/// etc.

    @JsonKey(name: 'designation') List<List<CodeSystem_Designation>>? designation,
/// [property] A property value for this concept.

    @JsonKey(name: 'property') List<List<CodeSystem_Property1>>? property,
/// [concept] Defines children of a concept to produce a hierarchy of
/// concepts. The nature of the relationships is variable
/// (is-a/contains/categorizes) - see hierarchyMeaning.

    @JsonKey(name: 'concept') List<List<CodeSystem_Concept>>? concept,
  }) = _$CodeSystem_Concept;

  @override
  String get fhirType => 'CodeSystem_Concept';

  factory CodeSystem_Concept.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_ConceptFromJson(json);

  factory CodeSystem_Concept.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystem_Concept.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystem_Concept.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystem_Concept cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CodeSystem_Concept.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystem_ConceptFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
