/// /// [NutritionProduct_Characteristic] A food or supplement that is consumed
/// by patients.

@freezed
class NutritionProduct_Characteristic with _$NutritionProduct_Characteristic {
  const NutritionProduct_Characteristic._();

  const factory NutritionProduct_Characteristic({
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
/// /// [type] A code specifying which characteristic of the product is being
/// described (for example, colour, shape).

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [valueCodeableConcept] The actual characteristic value corresponding to
/// the type.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// /// [valueString] The actual characteristic value corresponding to the
/// type.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueQuantity] The actual characteristic value corresponding to the
/// type.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueBase64Binary] The actual characteristic value corresponding to
/// the type.

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
/// /// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary') FhirElement? valueBase64BinaryElement,
/// /// [valueAttachment] The actual characteristic value corresponding to the
/// type.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// /// [valueBoolean] The actual characteristic value corresponding to the
/// type.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') FhirElement? valueBooleanElement,
  }) = _$NutritionProduct_Characteristic;

  @override
  String get fhirType => 'NutritionProduct_Characteristic';

  factory NutritionProduct_Characteristic.fromJson(Map<String, dynamic> json) =>
      _$NutritionProduct_CharacteristicFromJson(json);

  factory NutritionProduct_Characteristic.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProduct_Characteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionProduct_Characteristic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionProduct_Characteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionProduct_Characteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionProduct_CharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
