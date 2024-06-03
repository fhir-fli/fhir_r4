/// /// [RegulatedAuthorization_Case] Regulatory approval, clearance or
/// licencing related to a regulated product, treatment, facility or activity
/// that is cited in a guidance, regulation, rule or legislative act. An
/// example is Market Authorization relating to a Medicinal Product.

@freezed
class RegulatedAuthorization_Case with _$RegulatedAuthorization_Case {
  const RegulatedAuthorization_Case._();

  const factory RegulatedAuthorization_Case({
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
/// /// [identifier] Identifier by which this case can be referenced.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// /// [type] The defining type of case.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [status] The status associated with the case.

    @JsonKey(name: 'status') CodeableConcept? status,
/// /// [datePeriod] Relevant date for this case.

    @JsonKey(name: 'datePeriod') Period? datePeriod,
/// /// [dateDateTime] Relevant date for this case.

    @JsonKey(name: 'dateDateTime') FhirDateTime? dateDateTime,
/// /// [_dateDateTime] Extensions for dateDateTime

    @JsonKey(name: '_dateDateTime') FhirElement? dateDateTimeElement,
/// /// [application] A regulatory submission from an organization to a
/// regulator, as part of an assessing case. Multiple applications may occur
/// over time, with more or different information to support or modify the
/// submission or the authorization. The applications can be considered as
/// steps within the longer running case or procedure for this authorization
/// process.

    @JsonKey(name: 'application') List<List<RegulatedAuthorization_Case>>? application,
  }) = _$RegulatedAuthorization_Case;

  @override
  String get fhirType => 'RegulatedAuthorization_Case';

  factory RegulatedAuthorization_Case.fromJson(Map<String, dynamic> json) =>
      _$RegulatedAuthorization_CaseFromJson(json);

  factory RegulatedAuthorization_Case.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorization_Case.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RegulatedAuthorization_Case.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RegulatedAuthorization_Case cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RegulatedAuthorization_Case.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RegulatedAuthorization_CaseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
