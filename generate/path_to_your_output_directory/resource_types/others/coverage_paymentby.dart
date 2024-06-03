/// /// [Coverage_PaymentBy] Financial instrument which may be used to
/// reimburse or pay for health care products and services. Includes both
/// insurance and self-payment.

@freezed
class Coverage_PaymentBy with _$Coverage_PaymentBy {
  const Coverage_PaymentBy._();

  const factory Coverage_PaymentBy({
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
/// /// [party] The list of parties providing non-insurance payment for the
/// treatment costs.

    @JsonKey(name: 'party') Reference? party,
/// /// [responsibility]  Description of the financial responsibility.

    @JsonKey(name: 'responsibility') String? responsibility,
/// /// [_responsibility] Extensions for responsibility

    @JsonKey(name: '_responsibility') FhirElement? responsibilityElement,
  }) = _$Coverage_PaymentBy;

  @override
  String get fhirType => 'Coverage_PaymentBy';

  factory Coverage_PaymentBy.fromJson(Map<String, dynamic> json) =>
      _$Coverage_PaymentByFromJson(json);

  factory Coverage_PaymentBy.fromYaml(dynamic yaml) => yaml is String
      ? Coverage_PaymentBy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Coverage_PaymentBy.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Coverage_PaymentBy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Coverage_PaymentBy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Coverage_PaymentByFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
