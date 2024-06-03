import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceDefinition_SourceMaterial] The detailed description of a
/// substance, typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_SourceMaterial with _$SubstanceDefinition_SourceMaterial {
  const SubstanceDefinition_SourceMaterial._();

  const factory SubstanceDefinition_SourceMaterial({
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
/// [type] A classification that provides the origin of the raw material.
/// Example: cat hair would be an Animal source type.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [genus] The genus of an organism, typically referring to the Latin
/// epithet of the genus element of the plant/animal scientific name.

    @JsonKey(name: 'genus') CodeableConcept? genus,
/// [species] The species of an organism, typically referring to the Latin
/// epithet of the species of the plant/animal.

    @JsonKey(name: 'species') CodeableConcept? species,
/// [part] An anatomical origin of the source material within an organism.

    @JsonKey(name: 'part') CodeableConcept? part,
/// [countryOfOrigin] The country or countries where the material is
/// harvested.

    @JsonKey(name: 'countryOfOrigin') List<List<CodeableConcept>>? countryOfOrigin,
  }) = _$SubstanceDefinition_SourceMaterial;

  @override
  String get fhirType => 'SubstanceDefinition_SourceMaterial';

  factory SubstanceDefinition_SourceMaterial.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_SourceMaterialFromJson(json);

  factory SubstanceDefinition_SourceMaterial.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_SourceMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_SourceMaterial.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_SourceMaterial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_SourceMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_SourceMaterialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
