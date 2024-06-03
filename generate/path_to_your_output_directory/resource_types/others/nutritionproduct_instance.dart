/// /// [NutritionProduct_Instance] A food or supplement that is consumed by
/// patients.

@freezed
class NutritionProduct_Instance with _$NutritionProduct_Instance {
  const NutritionProduct_Instance._();

  const factory NutritionProduct_Instance({
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
/// /// [quantity] The amount of items or instances that the resource
/// considers, for instance when referring to 2 identical units together.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [identifier] The identifier for the physical instance, typically a
/// serial number or manufacturer number.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [name] The name for the specific product.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [lotNumber] The identification of the batch or lot of the product.

    @JsonKey(name: 'lotNumber') String? lotNumber,
/// /// [_lotNumber] Extensions for lotNumber

    @JsonKey(name: '_lotNumber') FhirElement? lotNumberElement,
/// /// [expiry] The time after which the product is no longer expected to be
/// in proper condition, or its use is not advised or not allowed.

    @JsonKey(name: 'expiry') FhirDateTime? expiry,
/// /// [_expiry] Extensions for expiry

    @JsonKey(name: '_expiry') FhirElement? expiryElement,
/// /// [useBy] The time after which the product is no longer expected to be in
/// proper condition, or its use is not advised or not allowed.

    @JsonKey(name: 'useBy') FhirDateTime? useBy,
/// /// [_useBy] Extensions for useBy

    @JsonKey(name: '_useBy') FhirElement? useByElement,
/// /// [biologicalSourceEvent] An identifier that supports traceability to the
/// event during which material in this product from one or more biological
/// entities was obtained or pooled.

    @JsonKey(name: 'biologicalSourceEvent') Identifier? biologicalSourceEvent,
  }) = _$NutritionProduct_Instance;

  @override
  String get fhirType => 'NutritionProduct_Instance';

  factory NutritionProduct_Instance.fromJson(Map<String, dynamic> json) =>
      _$NutritionProduct_InstanceFromJson(json);

  factory NutritionProduct_Instance.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProduct_Instance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionProduct_Instance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionProduct_Instance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionProduct_Instance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionProduct_InstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
