/// /// [ConceptMap_Element] A statement of relationships from one set of
/// concepts to one or more other concepts - either concepts in code systems,
/// or data element/data element concepts, or classes in class models.

@freezed
class ConceptMap_Element with _$ConceptMap_Element {
  const ConceptMap_Element._();

  const factory ConceptMap_Element({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [code] Identity (code or path) or the element/item being mapped.

    @JsonKey(name: 'code') FhirCode? code,
/// /// [_code] Extensions for code

    @JsonKey(name: '_code') FhirElement? codeElement,
/// /// [display] The display for the code. The display is only provided to
/// help editors when editing the concept map.

    @JsonKey(name: 'display') String? display,
/// /// [_display] Extensions for display

    @JsonKey(name: '_display') FhirElement? displayElement,
/// /// [valueSet] The set of concepts from the ConceptMap.group.source code
/// system which are all being mapped to the target as part of this mapping
/// rule.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
/// /// [noMap] If noMap = true this indicates that no mapping to a target
/// concept exists for this source concept.

    @JsonKey(name: 'noMap') FhirBoolean? noMap,
/// /// [_noMap] Extensions for noMap

    @JsonKey(name: '_noMap') FhirElement? noMapElement,
/// /// [target] A concept from the target value set that this concept maps to.

    @JsonKey(name: 'target') List<List<ConceptMap_Target>>? target,
  }) = _$ConceptMap_Element;

  @override
  String get fhirType => 'ConceptMap_Element';

  factory ConceptMap_Element.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_ElementFromJson(json);

  factory ConceptMap_Element.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap_Element.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap_Element.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap_Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap_Element.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMap_ElementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
