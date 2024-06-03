/// /// [Substance_Ingredient] A homogeneous material with a definite
/// composition.

@freezed
class Substance_Ingredient with _$Substance_Ingredient {
  const Substance_Ingredient._();

  const factory Substance_Ingredient({
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
/// /// [quantity] The amount of the ingredient in the substance - a
/// concentration ratio.

    @JsonKey(name: 'quantity') Ratio? quantity,
/// /// [substanceCodeableConcept] Another substance that is a component of
/// this substance.

    @JsonKey(name: 'substanceCodeableConcept') CodeableConcept? substanceCodeableConcept,
/// /// [substanceReference] Another substance that is a component of this
/// substance.

    @JsonKey(name: 'substanceReference') Reference? substanceReference,
  }) = _$Substance_Ingredient;

  @override
  String get fhirType => 'Substance_Ingredient';

  factory Substance_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$Substance_IngredientFromJson(json);

  factory Substance_Ingredient.fromYaml(dynamic yaml) => yaml is String
      ? Substance_Ingredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Substance_Ingredient.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Substance_Ingredient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Substance_Ingredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Substance_IngredientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
