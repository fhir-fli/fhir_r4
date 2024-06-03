/// /// [ExplanationOfBenefit_ProcessNote] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_ProcessNote with _$ExplanationOfBenefit_ProcessNote {
  const ExplanationOfBenefit_ProcessNote._();

  const factory ExplanationOfBenefit_ProcessNote({
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
/// /// [number] A number to uniquely identify a note entry.

    @JsonKey(name: 'number') FhirPositiveInt? number,
/// /// [_number] Extensions for number

    @JsonKey(name: '_number') FhirElement? numberElement,
/// /// [type] The business purpose of the note text.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [text] The explanation or description associated with the processing.

    @JsonKey(name: 'text') String? text,
/// /// [_text] Extensions for text

    @JsonKey(name: '_text') FhirElement? textElement,
/// /// [language] A code to define the language used in the text of the note.

    @JsonKey(name: 'language') CodeableConcept? language,
  }) = _$ExplanationOfBenefit_ProcessNote;

  @override
  String get fhirType => 'ExplanationOfBenefit_ProcessNote';

  factory ExplanationOfBenefit_ProcessNote.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_ProcessNoteFromJson(json);

  factory ExplanationOfBenefit_ProcessNote.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_ProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_ProcessNote.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_ProcessNote cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_ProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_ProcessNoteFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
