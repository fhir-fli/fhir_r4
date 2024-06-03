/// /// [SubstanceDefinition_Official] The detailed description of a substance,
/// typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Official with _$SubstanceDefinition_Official {
  const SubstanceDefinition_Official._();

  const factory SubstanceDefinition_Official({
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
/// /// [authority] Which authority uses this official name.

    @JsonKey(name: 'authority') CodeableConcept? authority,
/// /// [status] The status of the official name, for example 'draft',
/// 'active', 'retired'.

    @JsonKey(name: 'status') CodeableConcept? status,
/// /// [date] Date of the official name change.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
  }) = _$SubstanceDefinition_Official;

  @override
  String get fhirType => 'SubstanceDefinition_Official';

  factory SubstanceDefinition_Official.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_OfficialFromJson(json);

  factory SubstanceDefinition_Official.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Official.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Official.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Official cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Official.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_OfficialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
