/// /// [Evidence_Variable] The Evidence Resource provides a
/// machine-interpretable expression of an evidence concept including the
/// evidence variables (e.g., population, exposures/interventions, comparators,
/// outcomes, measured variables, confounding variables), the statistics, and
/// the certainty of this evidence.

@freezed
class Evidence_Variable with _$Evidence_Variable {
  const Evidence_Variable._();

  const factory Evidence_Variable({
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
/// /// [variableDefinition] Description of the variable.

    @JsonKey(name: 'variableDefinition') Reference? variableDefinition,
/// /// [handling] How the variable is classified for use in adjusted analysis.

    @JsonKey(name: 'handling') FhirCode? handling,
/// /// [_handling] Extensions for handling

    @JsonKey(name: '_handling') FhirElement? handlingElement,
/// /// [valueCategory] Description for grouping of ordinal or polychotomous
/// variables.

    @JsonKey(name: 'valueCategory') List<List<CodeableConcept>>? valueCategory,
/// /// [valueQuantity] Discrete value for grouping of ordinal or polychotomous
/// variables.

    @JsonKey(name: 'valueQuantity') List<List<Quantity>>? valueQuantity,
/// /// [valueRange] Range of values for grouping of ordinal or polychotomous
/// variables.

    @JsonKey(name: 'valueRange') List<List<Range>>? valueRange,
  }) = _$Evidence_Variable;

  @override
  String get fhirType => 'Evidence_Variable';

  factory Evidence_Variable.fromJson(Map<String, dynamic> json) =>
      _$Evidence_VariableFromJson(json);

  factory Evidence_Variable.fromYaml(dynamic yaml) => yaml is String
      ? Evidence_Variable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence_Variable.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence_Variable cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Evidence_Variable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Evidence_VariableFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
