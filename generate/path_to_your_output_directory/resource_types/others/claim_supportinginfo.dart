/// /// [Claim_SupportingInfo] A provider issued list of professional services
/// and products which have been provided, or are to be provided, to a patient
/// which is sent to an insurer for reimbursement.

@freezed
class Claim_SupportingInfo with _$Claim_SupportingInfo {
  const Claim_SupportingInfo._();

  const factory Claim_SupportingInfo({
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
/// /// [sequence] A number to uniquely identify supporting information
/// entries.

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// /// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') FhirElement? sequenceElement,
/// /// [category] The general class of the information supplied: information;
/// exception; accident, employment; onset, etc.

    @JsonKey(name: 'category') CodeableConcept? category,
/// /// [code] System and code pertaining to the specific information regarding
/// special conditions relating to the setting, treatment or patient  for which
/// care is sought.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [timingDate] The date when or period to which this information refers.

    @JsonKey(name: 'timingDate') FhirDate? timingDate,
/// /// [_timingDate] Extensions for timingDate

    @JsonKey(name: '_timingDate') FhirElement? timingDateElement,
/// /// [timingPeriod] The date when or period to which this information
/// refers.

    @JsonKey(name: 'timingPeriod') Period? timingPeriod,
/// /// [valueBoolean] Additional data or information such as resources,
/// documents, images etc. including references to the data or the actual
/// inclusion of the data.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// /// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') FhirElement? valueBooleanElement,
/// /// [valueString] Additional data or information such as resources,
/// documents, images etc. including references to the data or the actual
/// inclusion of the data.

    @JsonKey(name: 'valueString') String? valueString,
/// /// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') FhirElement? valueStringElement,
/// /// [valueQuantity] Additional data or information such as resources,
/// documents, images etc. including references to the data or the actual
/// inclusion of the data.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// /// [valueAttachment] Additional data or information such as resources,
/// documents, images etc. including references to the data or the actual
/// inclusion of the data.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// /// [valueReference] Additional data or information such as resources,
/// documents, images etc. including references to the data or the actual
/// inclusion of the data.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// /// [valueIdentifier] Additional data or information such as resources,
/// documents, images etc. including references to the data or the actual
/// inclusion of the data.

    @JsonKey(name: 'valueIdentifier') Identifier? valueIdentifier,
/// /// [reason] Provides the reason in the situation where a reason code is
/// required in addition to the content.

    @JsonKey(name: 'reason') CodeableConcept? reason,
  }) = _$Claim_SupportingInfo;

  @override
  String get fhirType => 'Claim_SupportingInfo';

  factory Claim_SupportingInfo.fromJson(Map<String, dynamic> json) =>
      _$Claim_SupportingInfoFromJson(json);

  factory Claim_SupportingInfo.fromYaml(dynamic yaml) => yaml is String
      ? Claim_SupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Claim_SupportingInfo.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Claim_SupportingInfo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Claim_SupportingInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Claim_SupportingInfoFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
