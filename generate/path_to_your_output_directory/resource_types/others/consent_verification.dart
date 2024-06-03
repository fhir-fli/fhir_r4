/// /// [Consent_Verification] A record of a healthcare consumer’s  choices  or
/// choices made on their behalf by a third party, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more actions
/// within a given policy context, for specific purposes and periods of time.

@freezed
class Consent_Verification with _$Consent_Verification {
  const Consent_Verification._();

  const factory Consent_Verification({
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
/// /// [verified] Has the instruction been verified.

    @JsonKey(name: 'verified') FhirBoolean? verified,
/// /// [_verified] Extensions for verified

    @JsonKey(name: '_verified') FhirElement? verifiedElement,
/// /// [verificationType] Extensible list of verification type starting with
/// verification and re-validation.

    @JsonKey(name: 'verificationType') CodeableConcept? verificationType,
/// /// [verifiedBy] The person who conducted the verification/validation of
/// the Grantor decision.

    @JsonKey(name: 'verifiedBy') Reference? verifiedBy,
/// /// [verifiedWith] Who verified the instruction (Patient, Relative or other
/// Authorized Person).

    @JsonKey(name: 'verifiedWith') Reference? verifiedWith,
/// /// [verificationDate] Date(s) verification was collected.

    @JsonKey(name: 'verificationDate') List<List<FhirDateTime>>? verificationDate,
/// /// [_verificationDate] Extensions for verificationDate

    @JsonKey(name: '_verificationDate') List<FhirElement>? verificationDateElement,
  }) = _$Consent_Verification;

  @override
  String get fhirType => 'Consent_Verification';

  factory Consent_Verification.fromJson(Map<String, dynamic> json) =>
      _$Consent_VerificationFromJson(json);

  factory Consent_Verification.fromYaml(dynamic yaml) => yaml is String
      ? Consent_Verification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Consent_Verification.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Consent_Verification cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Consent_Verification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Consent_VerificationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
