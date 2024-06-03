/// /// [Account_Guarantor] A financial tool for tracking value accrued for a
/// particular purpose.  In the healthcare field, used to track charges for a
/// patient, cost centers, etc.

@freezed
class Account_Guarantor with _$Account_Guarantor {
  const Account_Guarantor._();

  const factory Account_Guarantor({
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
/// /// [party] The entity who is responsible.

    @JsonKey(name: 'party') Reference? party,
/// /// [onHold] A guarantor may be placed on credit hold or otherwise have
/// their role temporarily suspended.

    @JsonKey(name: 'onHold') FhirBoolean? onHold,
/// /// [_onHold] Extensions for onHold

    @JsonKey(name: '_onHold') FhirElement? onHoldElement,
/// /// [period] The timeframe during which the guarantor accepts
/// responsibility for the account.

    @JsonKey(name: 'period') Period? period,
  }) = _$Account_Guarantor;

  @override
  String get fhirType => 'Account_Guarantor';

  factory Account_Guarantor.fromJson(Map<String, dynamic> json) =>
      _$Account_GuarantorFromJson(json);

  factory Account_Guarantor.fromYaml(dynamic yaml) => yaml is String
      ? Account_Guarantor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Account_Guarantor.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Account_Guarantor cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Account_Guarantor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Account_GuarantorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
