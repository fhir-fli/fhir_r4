/// /// [ManufacturedItemDefinition_Constituent] The definition and
/// characteristics of a medicinal manufactured item, such as a tablet or
/// capsule, as contained in a packaged medicinal product.

@freezed
class ManufacturedItemDefinition_Constituent with _$ManufacturedItemDefinition_Constituent {
  const ManufacturedItemDefinition_Constituent._();

  const factory ManufacturedItemDefinition_Constituent({
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
/// /// [amount] The measurable amount of the substance, expressable in
/// different ways (e.g. by mass or volume).

    @JsonKey(name: 'amount') List<List<Quantity>>? amount,
/// /// [location] The physical location of the constituent/ingredient within
/// the component. Example – if the component is the bead in the capsule, then
/// the location would be where the ingredient resides within the product part
/// – intragranular, extra-granular, etc.

    @JsonKey(name: 'location') List<List<CodeableConcept>>? location,
/// /// [function] The function of this constituent within the component e.g.
/// binder.

    @JsonKey(name: 'function') List<List<CodeableConcept>>? function,
/// /// [hasIngredient] The ingredient that is the constituent of the given
/// component.

    @JsonKey(name: 'hasIngredient') List<List<CodeableReference>>? hasIngredient,
  }) = _$ManufacturedItemDefinition_Constituent;

  @override
  String get fhirType => 'ManufacturedItemDefinition_Constituent';

  factory ManufacturedItemDefinition_Constituent.fromJson(Map<String, dynamic> json) =>
      _$ManufacturedItemDefinition_ConstituentFromJson(json);

  factory ManufacturedItemDefinition_Constituent.fromYaml(dynamic yaml) => yaml is String
      ? ManufacturedItemDefinition_Constituent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ManufacturedItemDefinition_Constituent.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ManufacturedItemDefinition_Constituent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ManufacturedItemDefinition_Constituent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ManufacturedItemDefinition_ConstituentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
