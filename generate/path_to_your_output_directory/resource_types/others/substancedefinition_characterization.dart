/// /// [SubstanceDefinition_Characterization] The detailed description of a
/// substance, typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Characterization with _$SubstanceDefinition_Characterization {
  const SubstanceDefinition_Characterization._();

  const factory SubstanceDefinition_Characterization({
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
/// /// [technique] The method used to elucidate the characterization of the
/// drug substance. Example: HPLC.

    @JsonKey(name: 'technique') CodeableConcept? technique,
/// /// [form] Describes the nature of the chemical entity and explains, for
/// instance, whether this is a base or a salt form.

    @JsonKey(name: 'form') CodeableConcept? form,
/// /// [description] The description or justification in support of the
/// interpretation of the data file.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [file] The data produced by the analytical instrument or a pictorial
/// representation of that data. Examples: a JCAMP, JDX, or ADX file, or a
/// chromatogram or spectrum analysis.

    @JsonKey(name: 'file') List<List<Attachment>>? file,
  }) = _$SubstanceDefinition_Characterization;

  @override
  String get fhirType => 'SubstanceDefinition_Characterization';

  factory SubstanceDefinition_Characterization.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_CharacterizationFromJson(json);

  factory SubstanceDefinition_Characterization.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Characterization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Characterization.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Characterization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Characterization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_CharacterizationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
