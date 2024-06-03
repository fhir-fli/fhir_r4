/// /// [SubstancePolymer_StartingMaterial] Properties of a substance specific
/// to it being a polymer.

@freezed
class SubstancePolymer_StartingMaterial with _$SubstancePolymer_StartingMaterial {
  const SubstancePolymer_StartingMaterial._();

  const factory SubstancePolymer_StartingMaterial({
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
/// /// [code] The type of substance for this starting material.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [category] Substance high level category, e.g. chemical substance.

    @JsonKey(name: 'category') CodeableConcept? category,
/// /// [isDefining] Used to specify whether the attribute described is a
/// defining element for the unique identification of the polymer.

    @JsonKey(name: 'isDefining') FhirBoolean? isDefining,
/// /// [_isDefining] Extensions for isDefining

    @JsonKey(name: '_isDefining') FhirElement? isDefiningElement,
/// /// [amount] A percentage.

    @JsonKey(name: 'amount') Quantity? amount,
  }) = _$SubstancePolymer_StartingMaterial;

  @override
  String get fhirType => 'SubstancePolymer_StartingMaterial';

  factory SubstancePolymer_StartingMaterial.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymer_StartingMaterialFromJson(json);

  factory SubstancePolymer_StartingMaterial.fromYaml(dynamic yaml) => yaml is String
      ? SubstancePolymer_StartingMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstancePolymer_StartingMaterial.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstancePolymer_StartingMaterial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstancePolymer_StartingMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstancePolymer_StartingMaterialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
