/// /// [SubstanceSourceMaterial] Source material shall capture information on
/// the taxonomic and anatomical origins as well as the fraction of a material
/// that can result in or can be modified to form a substance. This set of data
/// elements shall be used to define polymer substances isolated from
/// biological matrices. Taxonomic and anatomical origins shall be described
/// using a controlled vocabulary as required. This information is captured for
/// naturally derived polymers ( . starch) and structurally diverse substances.
/// For Organisms belonging to the Kingdom Plantae the Substance level defines
/// the fresh material of a single species or infraspecies, the Herbal Drug and
/// the Herbal preparation. For Herbal preparations, the fraction information
/// will be captured at the Substance information level and additional
/// information for herbal extracts will be captured at the Specified Substance
/// Group 1 information level. See for further explanation the Substance Class:
/// Structurally Diverse and the herbal annex.

@freezed
class SubstanceSourceMaterial with _$SubstanceSourceMaterial {
  const SubstanceSourceMaterial._();

  const factory SubstanceSourceMaterial({
/// /// [resourceType] This is a SubstanceSourceMaterial resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [sourceMaterialClass] General high level classification of the source
/// material specific to the origin of the material.

    @JsonKey(name: 'sourceMaterialClass') CodeableConcept? sourceMaterialClass,
/// /// [sourceMaterialType] The type of the source material shall be specified
/// based on a controlled vocabulary. For vaccines, this subclause refers to
/// the class of infectious agent.

    @JsonKey(name: 'sourceMaterialType') CodeableConcept? sourceMaterialType,
/// /// [sourceMaterialState] The state of the source material when extracted.

    @JsonKey(name: 'sourceMaterialState') CodeableConcept? sourceMaterialState,
/// /// [organismId] The unique identifier associated with the source material
/// parent organism shall be specified.

    @JsonKey(name: 'organismId') Identifier? organismId,
/// /// [organismName] The organism accepted Scientific name shall be provided
/// based on the organism taxonomy.

    @JsonKey(name: 'organismName') String? organismName,
/// /// [_organismName] Extensions for organismName

    @JsonKey(name: '_organismName') FhirElement? organismNameElement,
/// /// [parentSubstanceId] The parent of the herbal drug Ginkgo biloba, Leaf
/// is the substance ID of the substance (fresh) of Ginkgo biloba L. or Ginkgo
/// biloba L. (Whole plant).

    @JsonKey(name: 'parentSubstanceId') List<List<Identifier>>? parentSubstanceId,
/// /// [parentSubstanceName] The parent substance of the Herbal Drug, or
/// Herbal preparation.

    @JsonKey(name: 'parentSubstanceName') List<List<String>>? parentSubstanceName,
/// /// [_parentSubstanceName] Extensions for parentSubstanceName

    @JsonKey(name: '_parentSubstanceName') List<FhirElement>? parentSubstanceNameElement,
/// /// [countryOfOrigin] The country where the plant material is harvested or
/// the countries where the plasma is sourced from as laid down in accordance
/// with the Plasma Master File. For “Plasma-derived substances” the attribute
/// country of origin provides information about the countries used for the
/// manufacturing of the Cryopoor plama or Crioprecipitate.

    @JsonKey(name: 'countryOfOrigin') List<List<CodeableConcept>>? countryOfOrigin,
/// /// [geographicalLocation] The place/region where the plant is harvested or
/// the places/regions where the animal source material has its habitat.

    @JsonKey(name: 'geographicalLocation') List<List<String>>? geographicalLocation,
/// /// [_geographicalLocation] Extensions for geographicalLocation

    @JsonKey(name: '_geographicalLocation') List<FhirElement>? geographicalLocationElement,
/// /// [developmentStage] Stage of life for animals, plants, insects and
/// microorganisms. This information shall be provided only when the substance
/// is significantly different in these stages (e.g. foetal bovine serum).

    @JsonKey(name: 'developmentStage') CodeableConcept? developmentStage,
/// /// [fractionDescription] Many complex materials are fractions of parts of
/// plants, animals, or minerals. Fraction elements are often necessary to
/// define both Substances and Specified Group 1 Substances. For substances
/// derived from Plants, fraction information will be captured at the Substance
/// information level ( . Oils, Juices and Exudates). Additional information
/// for Extracts, such as extraction solvent composition, will be captured at
/// the Specified Substance Group 1 information level. For plasma-derived
/// products fraction information will be captured at the Substance and the
/// Specified Substance Group 1 levels.

    @JsonKey(name: 'fractionDescription') List<List<SubstanceSourceMaterial_FractionDescription>>? fractionDescription,
/// /// [organism] This subclause describes the organism which the substance is
/// derived from. For vaccines, the parent organism shall be specified based on
/// these subclause elements. As an example, full taxonomy will be described
/// for the Substance Name: ., Leaf.

    @JsonKey(name: 'organism') SubstanceSourceMaterial_Organism? organism,
/// /// [partDescription] To do.

    @JsonKey(name: 'partDescription') List<List<SubstanceSourceMaterial_PartDescription>>? partDescription,
  }) = _$SubstanceSourceMaterial;

  @override
  String get fhirType => 'SubstanceSourceMaterial';

  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSourceMaterialFromJson(json);

  factory SubstanceSourceMaterial.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceSourceMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceSourceMaterial.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceSourceMaterial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceSourceMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceSourceMaterialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
