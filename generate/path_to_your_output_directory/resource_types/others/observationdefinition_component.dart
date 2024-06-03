/// /// [ObservationDefinition_Component] Set of definitional characteristics
/// for a kind of observation or measurement produced or consumed by an
/// orderable health care service.

@freezed
class ObservationDefinition_Component with _$ObservationDefinition_Component {
  const ObservationDefinition_Component._();

  const factory ObservationDefinition_Component({
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
/// /// [code] Describes what will be observed.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [permittedDataType] The data types allowed for the value element of the
/// instance of this component observations.

    @JsonKey(name: 'permittedDataType') List<List<FhirCode>>? permittedDataType,
/// /// [_permittedDataType] Extensions for permittedDataType

    @JsonKey(name: '_permittedDataType') List<FhirElement>? permittedDataTypeElement,
/// /// [permittedUnit] Units allowed for the valueQuantity element in the
/// instance observations conforming to this ObservationDefinition.

    @JsonKey(name: 'permittedUnit') List<List<Coding>>? permittedUnit,
/// /// [qualifiedValue] A set of qualified values associated with a context
/// and a set of conditions -  provides a range for quantitative and ordinal
/// observations and a collection of value sets for qualitative observations.

    @JsonKey(name: 'qualifiedValue') List<List<ObservationDefinition_QualifiedValue>>? qualifiedValue,
  }) = _$ObservationDefinition_Component;

  @override
  String get fhirType => 'ObservationDefinition_Component';

  factory ObservationDefinition_Component.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinition_ComponentFromJson(json);

  factory ObservationDefinition_Component.fromYaml(dynamic yaml) => yaml is String
      ? ObservationDefinition_Component.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationDefinition_Component.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationDefinition_Component cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ObservationDefinition_Component.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationDefinition_ComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
