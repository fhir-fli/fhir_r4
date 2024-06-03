/// /// [Ingredient_ReferenceStrength] An ingredient of a manufactured item or
/// pharmaceutical product.

@freezed
class Ingredient_ReferenceStrength with _$Ingredient_ReferenceStrength {
  const Ingredient_ReferenceStrength._();

  const factory Ingredient_ReferenceStrength({
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
/// /// [substance] Relevant reference substance.

    @JsonKey(name: 'substance') CodeableReference? substance,
/// /// [strengthRatio] Strength expressed in terms of a reference substance.

    @JsonKey(name: 'strengthRatio') Ratio? strengthRatio,
/// /// [strengthRatioRange] Strength expressed in terms of a reference
/// substance.

    @JsonKey(name: 'strengthRatioRange') RatioRange? strengthRatioRange,
/// /// [strengthQuantity] Strength expressed in terms of a reference
/// substance.

    @JsonKey(name: 'strengthQuantity') Quantity? strengthQuantity,
/// /// [measurementPoint] For when strength is measured at a particular point
/// or distance.

    @JsonKey(name: 'measurementPoint') String? measurementPoint,
/// /// [_measurementPoint] Extensions for measurementPoint

    @JsonKey(name: '_measurementPoint') FhirElement? measurementPointElement,
/// /// [country] The country or countries for which the strength range
/// applies.

    @JsonKey(name: 'country') List<List<CodeableConcept>>? country,
  }) = _$Ingredient_ReferenceStrength;

  @override
  String get fhirType => 'Ingredient_ReferenceStrength';

  factory Ingredient_ReferenceStrength.fromJson(Map<String, dynamic> json) =>
      _$Ingredient_ReferenceStrengthFromJson(json);

  factory Ingredient_ReferenceStrength.fromYaml(dynamic yaml) => yaml is String
      ? Ingredient_ReferenceStrength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Ingredient_ReferenceStrength.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Ingredient_ReferenceStrength cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Ingredient_ReferenceStrength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Ingredient_ReferenceStrengthFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
