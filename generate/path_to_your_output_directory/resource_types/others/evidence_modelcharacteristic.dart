/// /// [Evidence_ModelCharacteristic] The Evidence Resource provides a
/// machine-interpretable expression of an evidence concept including the
/// evidence variables (e.g., population, exposures/interventions, comparators,
/// outcomes, measured variables, confounding variables), the statistics, and
/// the certainty of this evidence.

@freezed
class Evidence_ModelCharacteristic with _$Evidence_ModelCharacteristic {
  const Evidence_ModelCharacteristic._();

  const factory Evidence_ModelCharacteristic({
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
/// /// [code] Description of a component of the method to generate the
/// statistic.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [valueQuantity] Further specification of the value of the component of
/// the method to generate the statistic.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueRange] Further specification of the value of the component of the
/// method to generate the statistic.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// /// [valueCodeableConcept] Further specification of the value of the
/// component of the method to generate the statistic.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// /// [intended] The plan for analysis.

    @JsonKey(name: 'intended') FhirBoolean? intended,
/// /// [_intended] Extensions for intended

    @JsonKey(name: '_intended') FhirElement? intendedElement,
/// /// [applied] The analysis that was applied.

    @JsonKey(name: 'applied') FhirBoolean? applied,
/// /// [_applied] Extensions for applied

    @JsonKey(name: '_applied') FhirElement? appliedElement,
/// /// [variable] A variable adjusted for in the adjusted analysis.

    @JsonKey(name: 'variable') List<List<Evidence_Variable>>? variable,
/// /// [attribute] An attribute of the statistic used as a model
/// characteristic.

    @JsonKey(name: 'attribute') List<List<Evidence_AttributeEstimate>>? attribute,
  }) = _$Evidence_ModelCharacteristic;

  @override
  String get fhirType => 'Evidence_ModelCharacteristic';

  factory Evidence_ModelCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$Evidence_ModelCharacteristicFromJson(json);

  factory Evidence_ModelCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? Evidence_ModelCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence_ModelCharacteristic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence_ModelCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Evidence_ModelCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Evidence_ModelCharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
