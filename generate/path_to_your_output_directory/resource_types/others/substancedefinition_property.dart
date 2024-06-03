/// /// [SubstanceDefinition_Property] The detailed description of a substance,
/// typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Property with _$SubstanceDefinition_Property {
  const SubstanceDefinition_Property._();

  const factory SubstanceDefinition_Property({
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
/// /// [type] A code expressing the type of property.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [valueCodeableConcept] A value for the property.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// /// [valueQuantity] A value for the property.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueDate] A value for the property.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// /// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') FhirElement? valueDateElement,
/// /// [valueBoolean] A value for the property.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') FhirElement? valueBooleanElement,
/// /// [valueAttachment] A value for the property.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
  }) = _$SubstanceDefinition_Property;

  @override
  String get fhirType => 'SubstanceDefinition_Property';

  factory SubstanceDefinition_Property.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_PropertyFromJson(json);

  factory SubstanceDefinition_Property.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Property.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Property.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Property cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Property.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_PropertyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
