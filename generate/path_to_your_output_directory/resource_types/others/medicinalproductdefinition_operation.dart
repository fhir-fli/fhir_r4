/// /// [MedicinalProductDefinition_Operation] A medicinal product, being a
/// substance or combination of substances that is intended to treat, prevent
/// or diagnose a disease, or to restore, correct or modify physiological
/// functions by exerting a pharmacological, immunological or metabolic action.
/// This resource is intended to define and detail such products and their
/// properties, for uses other than direct patient care (e.g. regulatory use,
/// or drug catalogs).

@freezed
class MedicinalProductDefinition_Operation with _$MedicinalProductDefinition_Operation {
  const MedicinalProductDefinition_Operation._();

  const factory MedicinalProductDefinition_Operation({
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
/// /// [type] The type of manufacturing operation e.g. manufacturing itself,
/// re-packaging. For the authorization of this, a RegulatedAuthorization would
/// point to the same plan or activity referenced here.

    @JsonKey(name: 'type') CodeableReference? type,
/// /// [effectiveDate] Date range of applicability.

    @JsonKey(name: 'effectiveDate') Period? effectiveDate,
/// /// [organization] The organization or establishment responsible for (or
/// associated with) the particular process or step, examples include the
/// manufacturer, importer, agent.

    @JsonKey(name: 'organization') List<List<Reference>>? organization,
/// /// [confidentialityIndicator] Specifies whether this particular business
/// or manufacturing process is considered proprietary or confidential.

    @JsonKey(name: 'confidentialityIndicator') CodeableConcept? confidentialityIndicator,
  }) = _$MedicinalProductDefinition_Operation;

  @override
  String get fhirType => 'MedicinalProductDefinition_Operation';

  factory MedicinalProductDefinition_Operation.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinition_OperationFromJson(json);

  factory MedicinalProductDefinition_Operation.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition_Operation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinition_Operation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinition_Operation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinition_Operation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinition_OperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
