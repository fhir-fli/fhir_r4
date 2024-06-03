/// /// [SubstanceDefinition_Representation] The detailed description of a
/// substance, typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Representation with _$SubstanceDefinition_Representation {
  const SubstanceDefinition_Representation._();

  const factory SubstanceDefinition_Representation({
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
/// /// [type] The kind of structural representation (e.g. full, partial).

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [representation] The structural representation as a text string in a
/// standard format.

    @JsonKey(name: 'representation') String? representation,
/// /// [_representation] Extensions for representation

    @JsonKey(name: '_representation') FhirElement? representationElement,
/// /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE,
/// CDX, SDF, PDB, mmCIF. The logical content type rather than the physical
/// file format of a document.

    @JsonKey(name: 'format') CodeableConcept? format,
/// /// [document] An attached file with the structural representation e.g. a
/// molecular structure graphic of the substance, a JCAMP or AnIML file.

    @JsonKey(name: 'document') Reference? document,
  }) = _$SubstanceDefinition_Representation;

  @override
  String get fhirType => 'SubstanceDefinition_Representation';

  factory SubstanceDefinition_Representation.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_RepresentationFromJson(json);

  factory SubstanceDefinition_Representation.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Representation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Representation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Representation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Representation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_RepresentationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
