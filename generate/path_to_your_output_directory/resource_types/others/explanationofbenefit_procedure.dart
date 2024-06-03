/// /// [ExplanationOfBenefit_Procedure] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_Procedure with _$ExplanationOfBenefit_Procedure {
  const ExplanationOfBenefit_Procedure._();

  const factory ExplanationOfBenefit_Procedure({
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
/// /// [sequence] A number to uniquely identify procedure entries.

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// /// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') FhirElement? sequenceElement,
/// /// [type] When the condition was observed or the relative ranking.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// /// [date] Date and optionally time the procedure was performed.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [procedureCodeableConcept] The code or reference to a Procedure
/// resource which identifies the clinical intervention performed.

    @JsonKey(name: 'procedureCodeableConcept') CodeableConcept? procedureCodeableConcept,
/// /// [procedureReference] The code or reference to a Procedure resource
/// which identifies the clinical intervention performed.

    @JsonKey(name: 'procedureReference') Reference? procedureReference,
/// /// [udi] Unique Device Identifiers associated with this line item.

    @JsonKey(name: 'udi') List<List<Reference>>? udi,
  }) = _$ExplanationOfBenefit_Procedure;

  @override
  String get fhirType => 'ExplanationOfBenefit_Procedure';

  factory ExplanationOfBenefit_Procedure.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_ProcedureFromJson(json);

  factory ExplanationOfBenefit_Procedure.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_Procedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_Procedure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_Procedure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_Procedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_ProcedureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
