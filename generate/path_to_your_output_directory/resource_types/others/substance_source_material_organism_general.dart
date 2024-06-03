import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceSourceMaterial_OrganismGeneral] Source material shall capture
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
class SubstanceSourceMaterial_OrganismGeneral with _$SubstanceSourceMaterial_OrganismGeneral {
  const SubstanceSourceMaterial_OrganismGeneral._();

  const factory SubstanceSourceMaterial_OrganismGeneral({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [kingdom] The kingdom of an organism shall be specified.

    @JsonKey(name: 'kingdom') CodeableConcept? kingdom,
/// [phylum] The phylum of an organism shall be specified.

    @JsonKey(name: 'phylum') CodeableConcept? phylum,
/// [class] The class of an organism shall be specified.

    @JsonKey(name: 'class') CodeableConcept? class,
/// [order] The order of an organism shall be specified,.

    @JsonKey(name: 'order') CodeableConcept? order,
  }) = _$SubstanceSourceMaterial_OrganismGeneral;

  @override
  String get fhirType => 'SubstanceSourceMaterial_OrganismGeneral';

  factory SubstanceSourceMaterial_OrganismGeneral.fromJson(Map<String, dynamic> json) =>
      _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);

  factory SubstanceSourceMaterial_OrganismGeneral.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceSourceMaterial_OrganismGeneral.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceSourceMaterial_OrganismGeneral.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceSourceMaterial_OrganismGeneral cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceSourceMaterial_OrganismGeneral.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceSourceMaterial_OrganismGeneralFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
