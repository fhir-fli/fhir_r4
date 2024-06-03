import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceSourceMaterial_Organism] Source material shall capture
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
class SubstanceSourceMaterial_Organism with _$SubstanceSourceMaterial_Organism {
  const SubstanceSourceMaterial_Organism._();

  const factory SubstanceSourceMaterial_Organism({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
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
/// [family] The family of an organism shall be specified.

    @JsonKey(name: 'family') CodeableConcept? family,
/// [genus] The genus of an organism shall be specified; refers to the
/// Latin epithet of the genus element of the plant/animal scientific name; it
/// is present in names for genera, species and infraspecies.

    @JsonKey(name: 'genus') CodeableConcept? genus,
/// [species] The species of an organism shall be specified; refers to the
/// Latin epithet of the species of the plant/animal; it is present in names
/// for species and infraspecies.

    @JsonKey(name: 'species') CodeableConcept? species,
/// [intraspecificType] The Intraspecific type of an organism shall be
/// specified.

    @JsonKey(name: 'intraspecificType') CodeableConcept? intraspecificType,
/// [intraspecificDescription] The intraspecific description of an organism
/// shall be specified based on a controlled vocabulary. For Influenza Vaccine,
/// the intraspecific description shall contain the syntax of the antigen in
/// line with the WHO convention.

    @JsonKey(name: 'intraspecificDescription') String? intraspecificDescription,
/// [_intraspecificDescription] Extensions for intraspecificDescription

    @JsonKey(name: '_intraspecificDescription') PrimitiveElement? intraspecificDescriptionElement,
/// [author] 4.9.13.6.1 Author type (Conditional).

    @JsonKey(name: 'author') List<List<SubstanceSourceMaterial_Author>>? author,
/// [hybrid] 4.9.13.8.1 Hybrid species maternal organism ID (Optional).

    @JsonKey(name: 'hybrid') SubstanceSourceMaterial_Hybrid? hybrid,
/// [organismGeneral] 4.9.13.7.1 Kingdom (Conditional).

    @JsonKey(name: 'organismGeneral') SubstanceSourceMaterial_OrganismGeneral? organismGeneral,
  }) = _$SubstanceSourceMaterial_Organism;

  @override
  String get fhirType => 'SubstanceSourceMaterial_Organism';

  factory SubstanceSourceMaterial_Organism.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_OrganismFromJson(json);

  factory SubstanceSourceMaterial_Organism.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceSourceMaterial_Organism.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceSourceMaterial_Organism.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceSourceMaterial_Organism cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceSourceMaterial_Organism.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceSourceMaterial_OrganismFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
