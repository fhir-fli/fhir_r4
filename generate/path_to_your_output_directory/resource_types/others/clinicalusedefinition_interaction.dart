/// /// [ClinicalUseDefinition_Interaction] A single issue - either an
/// indication, contraindication, interaction or an undesirable effect for a
/// medicinal product, medication, device or procedure.

@freezed
class ClinicalUseDefinition_Interaction with _$ClinicalUseDefinition_Interaction {
  const ClinicalUseDefinition_Interaction._();

  const factory ClinicalUseDefinition_Interaction({
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
/// /// [interactant] The specific medication, product, food, substance etc. or
/// laboratory test that interacts.

    @JsonKey(name: 'interactant') List<List<ClinicalUseDefinition_Interactant>>? interactant,
/// /// [type] The type of the interaction e.g. drug-drug interaction,
/// drug-food interaction, drug-lab test interaction.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [effect] The effect of the interaction, for example "reduced gastric
/// absorption of primary medication".

    @JsonKey(name: 'effect') CodeableReference? effect,
/// /// [incidence] The incidence of the interaction, e.g. theoretical,
/// observed.

    @JsonKey(name: 'incidence') CodeableConcept? incidence,
/// /// [management] Actions for managing the interaction.

    @JsonKey(name: 'management') List<List<CodeableConcept>>? management,
  }) = _$ClinicalUseDefinition_Interaction;

  @override
  String get fhirType => 'ClinicalUseDefinition_Interaction';

  factory ClinicalUseDefinition_Interaction.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinition_InteractionFromJson(json);

  factory ClinicalUseDefinition_Interaction.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition_Interaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition_Interaction.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition_Interaction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinition_Interaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinition_InteractionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
