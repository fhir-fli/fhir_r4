/// /// [SubstanceNucleicAcid] Nucleic acids are defined by three distinct
/// elements: the base, sugar and linkage. Individual substance/moiety IDs will
/// be created for each of these elements. The nucleotide sequence will be
/// always entered in the 5’-3’ direction.

@freezed
class SubstanceNucleicAcid with _$SubstanceNucleicAcid {
  const SubstanceNucleicAcid._();

  const factory SubstanceNucleicAcid({
/// /// [resourceType] This is a SubstanceNucleicAcid resource

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
/// /// [sequenceType] The type of the sequence shall be specified based on a
/// controlled vocabulary.

    @JsonKey(name: 'sequenceType') CodeableConcept? sequenceType,
/// /// [numberOfSubunits] The number of linear sequences of nucleotides linked
/// through phosphodiester bonds shall be described. Subunits would be strands
/// of nucleic acids that are tightly associated typically through Watson-Crick
/// base pairing. NOTE: If not specified in the reference source, the
/// assumption is that there is 1 subunit.

    @JsonKey(name: 'numberOfSubunits') FhirInteger? numberOfSubunits,
/// /// [_numberOfSubunits] Extensions for numberOfSubunits

    @JsonKey(name: '_numberOfSubunits') FhirElement? numberOfSubunitsElement,
/// /// [areaOfHybridisation] The area of hybridisation shall be described if
/// applicable for double stranded RNA or DNA. The number associated with the
/// subunit followed by the number associated to the residue shall be specified
/// in increasing order. The underscore “” shall be used as separator as
/// follows: “Subunitnumber Residue”.

    @JsonKey(name: 'areaOfHybridisation') String? areaOfHybridisation,
/// /// [_areaOfHybridisation] Extensions for areaOfHybridisation

    @JsonKey(name: '_areaOfHybridisation') FhirElement? areaOfHybridisationElement,
/// /// [oligoNucleotideType] (TBC).

    @JsonKey(name: 'oligoNucleotideType') CodeableConcept? oligoNucleotideType,
/// /// [subunit] Subunits are listed in order of decreasing length; sequences
/// of the same length will be ordered by molecular weight; subunits that have
/// identical sequences will be repeated multiple times.

    @JsonKey(name: 'subunit') List<List<SubstanceNucleicAcid_Subunit>>? subunit,
  }) = _$SubstanceNucleicAcid;

  @override
  String get fhirType => 'SubstanceNucleicAcid';

  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcidFromJson(json);

  factory SubstanceNucleicAcid.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceNucleicAcid.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceNucleicAcid.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceNucleicAcid cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceNucleicAcid.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceNucleicAcidFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
