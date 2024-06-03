/// /// [ExplanationOfBenefit_Event] This resource provides: the claim details;
/// adjudication details from the processing of a Claim; and optionally account
/// balance information, for informing the subscriber of the benefits provided.

@freezed
class ExplanationOfBenefit_Event with _$ExplanationOfBenefit_Event {
  const ExplanationOfBenefit_Event._();

  const factory ExplanationOfBenefit_Event({
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
/// /// [type] A coded event such as when a service is expected or a card
/// printed.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [whenDateTime] A date or period in the past or future indicating when
/// the event occurred or is expectd to occur.

    @JsonKey(name: 'whenDateTime') FhirDateTime? whenDateTime,
/// /// [_whenDateTime] Extensions for whenDateTime

    @JsonKey(name: '_whenDateTime') FhirElement? whenDateTimeElement,
/// /// [whenPeriod] A date or period in the past or future indicating when the
/// event occurred or is expectd to occur.

    @JsonKey(name: 'whenPeriod') Period? whenPeriod,
  }) = _$ExplanationOfBenefit_Event;

  @override
  String get fhirType => 'ExplanationOfBenefit_Event';

  factory ExplanationOfBenefit_Event.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_EventFromJson(json);

  factory ExplanationOfBenefit_Event.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_Event.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_Event.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_Event cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_Event.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_EventFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
