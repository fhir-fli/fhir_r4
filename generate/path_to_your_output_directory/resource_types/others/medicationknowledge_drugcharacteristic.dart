/// /// [MedicationKnowledge_DrugCharacteristic] Information about a medication
/// that is used to support knowledge.

@freezed
class MedicationKnowledge_DrugCharacteristic with _$MedicationKnowledge_DrugCharacteristic {
  const MedicationKnowledge_DrugCharacteristic._();

  const factory MedicationKnowledge_DrugCharacteristic({
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
/// /// [type] A code specifying which characteristic of the medicine is being
/// described (for example, colour, shape, imprint).

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [valueCodeableConcept] Description of the characteristic.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// /// [valueString] Description of the characteristic.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueQuantity] Description of the characteristic.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueBase64Binary] Description of the characteristic.

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
/// /// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary') FhirElement? valueBase64BinaryElement,
/// /// [valueAttachment] Description of the characteristic.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
  }) = _$MedicationKnowledge_DrugCharacteristic;

  @override
  String get fhirType => 'MedicationKnowledge_DrugCharacteristic';

  factory MedicationKnowledge_DrugCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_DrugCharacteristicFromJson(json);

  factory MedicationKnowledge_DrugCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_DrugCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_DrugCharacteristic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_DrugCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_DrugCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_DrugCharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
