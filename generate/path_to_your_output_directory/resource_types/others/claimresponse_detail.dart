/// /// [ClaimResponse_Detail] This resource provides the adjudication details
/// from the processing of a Claim resource.

@freezed
class ClaimResponse_Detail with _$ClaimResponse_Detail {
  const ClaimResponse_Detail._();

  const factory ClaimResponse_Detail({
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
/// /// [detailSequence] A number to uniquely reference the claim detail entry.

    @JsonKey(name: 'detailSequence') FhirPositiveInt? detailSequence,
/// /// [_detailSequence] Extensions for detailSequence

    @JsonKey(name: '_detailSequence') FhirElement? detailSequenceElement,
/// /// [traceNumber] Trace number for tracking purposes. May be defined at the
/// jurisdiction level or between trading partners.

    @JsonKey(name: 'traceNumber') List<List<Identifier>>? traceNumber,
/// /// [noteNumber] The numbers associated with notes below which apply to the
/// adjudication of this item.

    @JsonKey(name: 'noteNumber') List<List<FhirPositiveInt>>? noteNumber,
/// /// [_noteNumber] Extensions for noteNumber

    @JsonKey(name: '_noteNumber') List<FhirElement>? noteNumberElement,
/// /// [reviewOutcome] The high-level results of the adjudication if
/// adjudication has been performed.

    @JsonKey(name: 'reviewOutcome') ClaimResponse_ReviewOutcome? reviewOutcome,
/// /// [adjudication] The adjudication results.

    @JsonKey(name: 'adjudication') List<List<ClaimResponse_Adjudication>>? adjudication,
/// /// [subDetail] A sub-detail adjudication of a simple product or service.

    @JsonKey(name: 'subDetail') List<List<ClaimResponse_SubDetail>>? subDetail,
  }) = _$ClaimResponse_Detail;

  @override
  String get fhirType => 'ClaimResponse_Detail';

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_DetailFromJson(json);

  factory ClaimResponse_Detail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse_Detail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse_Detail.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse_Detail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClaimResponse_Detail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponse_DetailFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
