/// /// [Medication_Ingredient] This resource is primarily used for the
/// identification and definition of a medication, including ingredients, for
/// the purposes of prescribing, dispensing, and administering a medication as
/// well as for making statements about medication use.

@freezed
class Medication_Ingredient with _$Medication_Ingredient {
  const Medication_Ingredient._();

  const factory Medication_Ingredient({
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
/// /// [item] The ingredient (substance or medication) that the
/// ingredient.strength relates to.  This is represented as a concept from a
/// code system or described in another resource (Substance or Medication).

    @JsonKey(name: 'item') CodeableReference? item,
/// /// [isActive] Indication of whether this ingredient affects the
/// therapeutic action of the drug.

    @JsonKey(name: 'isActive') FhirBoolean? isActive,
/// /// [_isActive] Extensions for isActive

    @JsonKey(name: '_isActive') FhirElement? isActiveElement,
/// /// [strengthRatio] Specifies how many (or how much) of the items there are
/// in this Medication.  For example, 250 mg per tablet.  This is expressed as
/// a ratio where the numerator is 250mg and the denominator is 1 tablet but
/// can also be expressed a quantity when the denominator is assumed to be 1
/// tablet.

    @JsonKey(name: 'strengthRatio') Ratio? strengthRatio,
/// /// [strengthCodeableConcept] Specifies how many (or how much) of the items
/// there are in this Medication.  For example, 250 mg per tablet.  This is
/// expressed as a ratio where the numerator is 250mg and the denominator is 1
/// tablet but can also be expressed a quantity when the denominator is assumed
/// to be 1 tablet.

    @JsonKey(name: 'strengthCodeableConcept') CodeableConcept? strengthCodeableConcept,
/// /// [strengthQuantity] Specifies how many (or how much) of the items there
/// are in this Medication.  For example, 250 mg per tablet.  This is expressed
/// as a ratio where the numerator is 250mg and the denominator is 1 tablet but
/// can also be expressed a quantity when the denominator is assumed to be 1
/// tablet.

    @JsonKey(name: 'strengthQuantity') Quantity? strengthQuantity,
  }) = _$Medication_Ingredient;

  @override
  String get fhirType => 'Medication_Ingredient';

  factory Medication_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$Medication_IngredientFromJson(json);

  factory Medication_Ingredient.fromYaml(dynamic yaml) => yaml is String
      ? Medication_Ingredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Medication_Ingredient.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Medication_Ingredient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Medication_Ingredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Medication_IngredientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
