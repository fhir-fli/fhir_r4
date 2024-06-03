/// /// [Ingredient_Substance] An ingredient of a manufactured item or
/// pharmaceutical product.

@freezed
class Ingredient_Substance with _$Ingredient_Substance {
  const Ingredient_Substance._();

  const factory Ingredient_Substance({
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
/// /// [code] A code or full resource that represents the ingredient's
/// substance.

    @JsonKey(name: 'code') CodeableReference? code,
/// /// [strength] The quantity of substance in the unit of presentation, or in
/// the volume (or mass) of the single pharmaceutical product or manufactured
/// item. The allowed repetitions do not represent different strengths, but are
/// different representations - mathematically equivalent - of a single
/// strength.

    @JsonKey(name: 'strength') List<List<Ingredient_Strength>>? strength,
  }) = _$Ingredient_Substance;

  @override
  String get fhirType => 'Ingredient_Substance';

  factory Ingredient_Substance.fromJson(Map<String, dynamic> json) =>
      _$Ingredient_SubstanceFromJson(json);

  factory Ingredient_Substance.fromYaml(dynamic yaml) => yaml is String
      ? Ingredient_Substance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Ingredient_Substance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Ingredient_Substance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Ingredient_Substance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Ingredient_SubstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
