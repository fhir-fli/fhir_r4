/// /// [BodyStructure_IncludedStructure] Record details about an anatomical
/// structure.  This resource may be used when a coded concept does not provide
/// the necessary detail needed for the use case.

@freezed
class BodyStructure_IncludedStructure with _$BodyStructure_IncludedStructure {
  const BodyStructure_IncludedStructure._();

  const factory BodyStructure_IncludedStructure({
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
/// /// [structure] Code that represents the included structure.

    @JsonKey(name: 'structure') CodeableConcept? structure,
/// /// [laterality] Code that represents the included structure laterality.

    @JsonKey(name: 'laterality') CodeableConcept? laterality,
/// /// [bodyLandmarkOrientation] Body locations in relation to a specific body
/// landmark (tatoo, scar, other body structure).

    @JsonKey(name: 'bodyLandmarkOrientation') List<List<BodyStructure_BodyLandmarkOrientation>>? bodyLandmarkOrientation,
/// /// [spatialReference] XY or XYZ-coordinate orientation for structure.

    @JsonKey(name: 'spatialReference') List<List<Reference>>? spatialReference,
/// /// [qualifier] Code that represents the included structure qualifier.

    @JsonKey(name: 'qualifier') List<List<CodeableConcept>>? qualifier,
  }) = _$BodyStructure_IncludedStructure;

  @override
  String get fhirType => 'BodyStructure_IncludedStructure';

  factory BodyStructure_IncludedStructure.fromJson(Map<String, dynamic> json) =>
      _$BodyStructure_IncludedStructureFromJson(json);

  factory BodyStructure_IncludedStructure.fromYaml(dynamic yaml) => yaml is String
      ? BodyStructure_IncludedStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BodyStructure_IncludedStructure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BodyStructure_IncludedStructure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BodyStructure_IncludedStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BodyStructure_IncludedStructureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
