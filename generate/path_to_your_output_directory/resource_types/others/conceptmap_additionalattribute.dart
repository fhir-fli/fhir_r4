/// /// [ConceptMap_AdditionalAttribute] A statement of relationships from one
/// set of concepts to one or more other concepts - either concepts in code
/// systems, or data element/data element concepts, or classes in class models.

@freezed
class ConceptMap_AdditionalAttribute with _$ConceptMap_AdditionalAttribute {
  const ConceptMap_AdditionalAttribute._();

  const factory ConceptMap_AdditionalAttribute({
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
/// /// [code] A code that is used to identify this additional data attribute.
/// The code is used internally in
/// ConceptMap.group.element.target.dependsOn.attribute and
/// ConceptMap.group.element.target.product.attribute.

    @JsonKey(name: 'code') FhirCode? code,
/// /// [_code] Extensions for code

    @JsonKey(name: '_code') FhirElement? codeElement,
/// /// [uri] Reference to the formal definition of the source/target data
/// element. For elements defined by the FHIR specification, or using a FHIR
/// logical model, the correct format is {canonical-url}#{element-id}.

    @JsonKey(name: 'uri') FhirUri? uri,
/// /// [_uri] Extensions for uri

    @JsonKey(name: '_uri') FhirElement? uriElement,
/// /// [description] A description of the additional attribute and/or the data
/// element it refers to - why it is defined, and how the value might be used
/// in mappings, and a discussion of issues associated with the use of the data
/// element.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [type] The type of the source data contained in this concept map for
/// this data element.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
  }) = _$ConceptMap_AdditionalAttribute;

  @override
  String get fhirType => 'ConceptMap_AdditionalAttribute';

  factory ConceptMap_AdditionalAttribute.fromJson(Map<String, dynamic> json) =>
      _$ConceptMap_AdditionalAttributeFromJson(json);

  factory ConceptMap_AdditionalAttribute.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap_AdditionalAttribute.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap_AdditionalAttribute.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap_AdditionalAttribute cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap_AdditionalAttribute.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMap_AdditionalAttributeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
