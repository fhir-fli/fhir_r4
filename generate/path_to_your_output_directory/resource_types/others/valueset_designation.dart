/// /// [ValueSet_Designation] A ValueSet resource instance specifies a set of
/// codes drawn from one or more code systems, intended for use in a particular
/// context. Value sets link between [CodeSystem](codesystem.html) definitions
/// and their use in [coded elements](terminologies.html).

@freezed
class ValueSet_Designation with _$ValueSet_Designation {
  const ValueSet_Designation._();

  const factory ValueSet_Designation({
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
/// /// [language] The language this designation is defined for.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [use] A code that represents types of uses of designations.

    @JsonKey(name: 'use') Coding? use,
/// /// [additionalUse] Additional codes that detail how this designation would
/// be used, if there is more than one use.

    @JsonKey(name: 'additionalUse') List<List<Coding>>? additionalUse,
/// /// [value] The text value for this designation.

    @JsonKey(name: 'value') String? value,
/// /// [_value] Extensions for value

    @JsonKey(name: '_value') FhirElement? valueElement,
  }) = _$ValueSet_Designation;

  @override
  String get fhirType => 'ValueSet_Designation';

  factory ValueSet_Designation.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_DesignationFromJson(json);

  factory ValueSet_Designation.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet_Designation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ValueSet_Designation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ValueSet_Designation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ValueSet_Designation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ValueSet_DesignationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
