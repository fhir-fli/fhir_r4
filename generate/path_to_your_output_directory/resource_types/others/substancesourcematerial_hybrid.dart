/// /// [SubstanceSourceMaterial_Hybrid] Source material shall capture
/// information on the taxonomic and anatomical origins as well as the fraction
/// of a material that can result in or can be modified to form a substance.
/// This set of data elements shall be used to define polymer substances
/// isolated from biological matrices. Taxonomic and anatomical origins shall
/// be described using a controlled vocabulary as required. This information is
/// captured for naturally derived polymers ( . starch) and structurally
/// diverse substances. For Organisms belonging to the Kingdom Plantae the
/// Substance level defines the fresh material of a single species or
/// infraspecies, the Herbal Drug and the Herbal preparation. For Herbal
/// preparations, the fraction information will be captured at the Substance
/// information level and additional information for herbal extracts will be
/// captured at the Specified Substance Group 1 information level. See for
/// further explanation the Substance Class: Structurally Diverse and the
/// herbal annex.

@freezed
class SubstanceSourceMaterial_Hybrid with _$SubstanceSourceMaterial_Hybrid {
  const SubstanceSourceMaterial_Hybrid._();

  const factory SubstanceSourceMaterial_Hybrid({
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
/// /// [maternalOrganismId] The identifier of the maternal species
/// constituting the hybrid organism shall be specified based on a controlled
/// vocabulary. For plants, the parents aren’t always known, and it is unlikely
/// that it will be known which is maternal and which is paternal.

    @JsonKey(name: 'maternalOrganismId') String? maternalOrganismId,
/// /// [_maternalOrganismId] Extensions for maternalOrganismId

    @JsonKey(name: '_maternalOrganismId') FhirElement? maternalOrganismIdElement,
/// /// [maternalOrganismName] The name of the maternal species constituting
/// the hybrid organism shall be specified. For plants, the parents aren’t
/// always known, and it is unlikely that it will be known which is maternal
/// and which is paternal.

    @JsonKey(name: 'maternalOrganismName') String? maternalOrganismName,
/// /// [_maternalOrganismName] Extensions for maternalOrganismName

    @JsonKey(name: '_maternalOrganismName') FhirElement? maternalOrganismNameElement,
/// /// [paternalOrganismId] The identifier of the paternal species
/// constituting the hybrid organism shall be specified based on a controlled
/// vocabulary.

    @JsonKey(name: 'paternalOrganismId') String? paternalOrganismId,
/// /// [_paternalOrganismId] Extensions for paternalOrganismId

    @JsonKey(name: '_paternalOrganismId') FhirElement? paternalOrganismIdElement,
/// /// [paternalOrganismName] The name of the paternal species constituting
/// the hybrid organism shall be specified.

    @JsonKey(name: 'paternalOrganismName') String? paternalOrganismName,
/// /// [_paternalOrganismName] Extensions for paternalOrganismName

    @JsonKey(name: '_paternalOrganismName') FhirElement? paternalOrganismNameElement,
/// /// [hybridType] The hybrid type of an organism shall be specified.

    @JsonKey(name: 'hybridType') CodeableConcept? hybridType,
  }) = _$SubstanceSourceMaterial_Hybrid;

  @override
  String get fhirType => 'SubstanceSourceMaterial_Hybrid';

  factory SubstanceSourceMaterial_Hybrid.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_HybridFromJson(json);

  factory SubstanceSourceMaterial_Hybrid.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceSourceMaterial_Hybrid.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceSourceMaterial_Hybrid.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceSourceMaterial_Hybrid cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceSourceMaterial_Hybrid.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceSourceMaterial_HybridFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
