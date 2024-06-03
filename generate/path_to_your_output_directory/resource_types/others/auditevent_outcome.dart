/// /// [AuditEvent_Outcome] A record of an event relevant for purposes such as
/// operations, privacy, security, maintenance, and performance analysis.

@freezed
class AuditEvent_Outcome with _$AuditEvent_Outcome {
  const AuditEvent_Outcome._();

  const factory AuditEvent_Outcome({
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
/// /// [code] Indicates whether the event succeeded or failed.

    @JsonKey(name: 'code') Coding? code,
/// /// [detail] Additional details about the error. This may be a text
/// description of the error or a system code that identifies the error.

    @JsonKey(name: 'detail') List<List<CodeableConcept>>? detail,
  }) = _$AuditEvent_Outcome;

  @override
  String get fhirType => 'AuditEvent_Outcome';

  factory AuditEvent_Outcome.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_OutcomeFromJson(json);

  factory AuditEvent_Outcome.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent_Outcome.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEvent_Outcome.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEvent_Outcome cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AuditEvent_Outcome.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEvent_OutcomeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
