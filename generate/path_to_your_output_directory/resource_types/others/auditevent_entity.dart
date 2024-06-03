/// /// [AuditEvent_Entity] A record of an event relevant for purposes such as
/// operations, privacy, security, maintenance, and performance analysis.

@freezed
class AuditEvent_Entity with _$AuditEvent_Entity {
  const AuditEvent_Entity._();

  const factory AuditEvent_Entity({
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
/// /// [what] Identifies a specific instance of the entity. The reference
/// should be version specific. This is allowed to be a Parameters resource.

    @JsonKey(name: 'what') Reference? what,
/// /// [role] Code representing the role the entity played in the event being
/// audited.

    @JsonKey(name: 'role') CodeableConcept? role,
/// /// [securityLabel] Security labels for the identified entity.

    @JsonKey(name: 'securityLabel') List<List<CodeableConcept>>? securityLabel,
/// /// [query] The query parameters for a query-type entities.

    @JsonKey(name: 'query') FhirBase64Binary? query,
/// /// [_query] Extensions for query

    @JsonKey(name: '_query') FhirElement? queryElement,
/// /// [detail] Tagged value pairs for conveying additional information about
/// the entity.

    @JsonKey(name: 'detail') List<List<AuditEvent_Detail>>? detail,
/// /// [agent] The entity is attributed to an agent to express the agent's
/// responsibility for that entity in the activity. This is most used to
/// indicate when persistence media (the entity) are used by an agent. For
/// example when importing data from a device, the device would be described in
/// an entity, and the user importing data from that media would be indicated
/// as the entity.agent.

    @JsonKey(name: 'agent') List<List<AuditEvent_Agent>>? agent,
  }) = _$AuditEvent_Entity;

  @override
  String get fhirType => 'AuditEvent_Entity';

  factory AuditEvent_Entity.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_EntityFromJson(json);

  factory AuditEvent_Entity.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent_Entity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEvent_Entity.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEvent_Entity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AuditEvent_Entity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEvent_EntityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
