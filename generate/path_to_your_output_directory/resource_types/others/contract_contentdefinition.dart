/// /// [Contract_ContentDefinition] Legally enforceable, formally recorded
/// unilateral or bilateral directive i.e., a policy or agreement.

@freezed
class Contract_ContentDefinition with _$Contract_ContentDefinition {
  const Contract_ContentDefinition._();

  const factory Contract_ContentDefinition({
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
/// /// [type] Precusory content structure and use, i.e., a boilerplate,
/// template, application for a contract such as an insurance policy or
/// benefits under a program, e.g., workers compensation.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [subType] Detailed Precusory content type.

    @JsonKey(name: 'subType') CodeableConcept? subType,
/// /// [publisher] The  individual or organization that published the Contract
/// precursor content.

    @JsonKey(name: 'publisher') Reference? publisher,
/// /// [publicationDate] The date (and optionally time) when the contract was
/// last significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the contract changes.

    @JsonKey(name: 'publicationDate') FhirDateTime? publicationDate,
/// /// [_publicationDate] Extensions for publicationDate

    @JsonKey(name: '_publicationDate') FhirElement? publicationDateElement,
/// /// [publicationStatus] amended | appended | cancelled | disputed |
/// entered-in-error | executable +.

    @JsonKey(name: 'publicationStatus') FhirCode? publicationStatus,
/// /// [_publicationStatus] Extensions for publicationStatus

    @JsonKey(name: '_publicationStatus') FhirElement? publicationStatusElement,
/// /// [copyright] A copyright statement relating to Contract precursor
/// content. Copyright statements are generally legal restrictions on the use
/// and publishing of the Contract precursor content.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// /// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') FhirElement? copyrightElement,
  }) = _$Contract_ContentDefinition;

  @override
  String get fhirType => 'Contract_ContentDefinition';

  factory Contract_ContentDefinition.fromJson(Map<String, dynamic> json) =>
      _$Contract_ContentDefinitionFromJson(json);

  factory Contract_ContentDefinition.fromYaml(dynamic yaml) => yaml is String
      ? Contract_ContentDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_ContentDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_ContentDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_ContentDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_ContentDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
