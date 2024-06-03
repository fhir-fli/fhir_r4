/// /// [Account_RelatedAccount] A financial tool for tracking value accrued
/// for a particular purpose.  In the healthcare field, used to track charges
/// for a patient, cost centers, etc.

@freezed
class Account_RelatedAccount with _$Account_RelatedAccount {
  const Account_RelatedAccount._();

  const factory Account_RelatedAccount({
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
/// /// [relationship] Relationship of the associated Account.

    @JsonKey(name: 'relationship') CodeableConcept? relationship,
/// /// [account] Reference to an associated Account.

    @JsonKey(name: 'account') Reference? account,
  }) = _$Account_RelatedAccount;

  @override
  String get fhirType => 'Account_RelatedAccount';

  factory Account_RelatedAccount.fromJson(Map<String, dynamic> json) =>
      _$Account_RelatedAccountFromJson(json);

  factory Account_RelatedAccount.fromYaml(dynamic yaml) => yaml is String
      ? Account_RelatedAccount.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Account_RelatedAccount.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Account_RelatedAccount cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Account_RelatedAccount.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Account_RelatedAccountFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
