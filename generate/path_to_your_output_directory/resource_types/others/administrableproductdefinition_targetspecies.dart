/// /// [AdministrableProductDefinition_TargetSpecies] A medicinal product in
/// the final form which is suitable for administering to a patient (after any
/// mixing of multiple components, dissolution etc. has been performed).

@freezed
class AdministrableProductDefinition_TargetSpecies with _$AdministrableProductDefinition_TargetSpecies {
  const AdministrableProductDefinition_TargetSpecies._();

  const factory AdministrableProductDefinition_TargetSpecies({
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
/// /// [code] Coded expression for the species.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [withdrawalPeriod] A species specific time during which consumption of
/// animal product is not appropriate.

    @JsonKey(name: 'withdrawalPeriod') List<List<AdministrableProductDefinition_WithdrawalPeriod>>? withdrawalPeriod,
  }) = _$AdministrableProductDefinition_TargetSpecies;

  @override
  String get fhirType => 'AdministrableProductDefinition_TargetSpecies';

  factory AdministrableProductDefinition_TargetSpecies.fromJson(Map<String, dynamic> json) =>
      _$AdministrableProductDefinition_TargetSpeciesFromJson(json);

  factory AdministrableProductDefinition_TargetSpecies.fromYaml(dynamic yaml) => yaml is String
      ? AdministrableProductDefinition_TargetSpecies.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinition_TargetSpecies.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinition_TargetSpecies cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinition_TargetSpecies.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinition_TargetSpeciesFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
