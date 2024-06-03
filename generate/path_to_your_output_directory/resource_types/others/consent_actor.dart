/// /// [Consent_Actor] A record of a healthcare consumer’s  choices  or
/// choices made on their behalf by a third party, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more actions
/// within a given policy context, for specific purposes and periods of time.

@freezed
class Consent_Actor with _$Consent_Actor {
  const Consent_Actor._();

  const factory Consent_Actor({
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
/// /// [role] How the individual is involved in the resources content that is
/// described in the exception.

    @JsonKey(name: 'role') CodeableConcept? role,
/// /// [reference] The resource that identifies the actor. To identify actors
/// by type, use group to identify a set of actors by some property they share
/// (e.g. 'admitting officers').

    @JsonKey(name: 'reference') Reference? reference,
  }) = _$Consent_Actor;

  @override
  String get fhirType => 'Consent_Actor';

  factory Consent_Actor.fromJson(Map<String, dynamic> json) =>
      _$Consent_ActorFromJson(json);

  factory Consent_Actor.fromYaml(dynamic yaml) => yaml is String
      ? Consent_Actor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Consent_Actor.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Consent_Actor cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Consent_Actor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Consent_ActorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
