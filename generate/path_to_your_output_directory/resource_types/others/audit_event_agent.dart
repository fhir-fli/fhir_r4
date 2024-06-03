import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AuditEvent_Agent] A record of an event relevant for purposes such as
/// operations, privacy, security, maintenance, and performance analysis.

@freezed
class AuditEvent_Agent with _$AuditEvent_Agent {
  const AuditEvent_Agent._();

  const factory AuditEvent_Agent({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] The Functional Role of the user when performing the event.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [role] The structural roles of the agent indicating the agent's
/// competency. The security role enabling the agent with respect to the
/// activity.

    @JsonKey(name: 'role') List<List<CodeableConcept>>? role,
/// [who] Reference to who this agent is that was involved in the event.

    @JsonKey(name: 'who') Reference? who,
/// [requestor] Indicator that the user is or is not the requestor, or
/// initiator, for the event being audited.

    @JsonKey(name: 'requestor') FhirBoolean? requestor,
/// [_requestor] Extensions for requestor

    @JsonKey(name: '_requestor') PrimitiveElement? requestorElement,
/// [location] Where the agent location is known, the agent location when
/// the event occurred.

    @JsonKey(name: 'location') Reference? location,
/// [policy] Where the policy(ies) are known that authorized the agent
/// participation in the event. Typically, a single activity may have multiple
/// applicable policies, such as patient consent, guarantor funding, etc. The
/// policy would also indicate the security token used.

    @JsonKey(name: 'policy') List<List<FhirUri>>? policy,
/// [_policy] Extensions for policy

    @JsonKey(name: '_policy') List<PrimitiveElement>? policyElement,
/// [networkReference] When the event utilizes a network there should be an
/// agent describing the local system, and an agent describing remote system,
/// with the network interface details.

    @JsonKey(name: 'networkReference') Reference? networkReference,
/// [networkUri] When the event utilizes a network there should be an agent
/// describing the local system, and an agent describing remote system, with
/// the network interface details.

    @JsonKey(name: 'networkUri') FhirUri? networkUri,
/// [_networkUri] Extensions for networkUri

    @JsonKey(name: '_networkUri') PrimitiveElement? networkUriElement,
/// [networkString] When the event utilizes a network there should be an
/// agent describing the local system, and an agent describing remote system,
/// with the network interface details.

    @JsonKey(name: 'networkString') String? networkString,
/// [_networkString] Extensions for networkString

    @JsonKey(name: '_networkString') PrimitiveElement? networkStringElement,
/// [authorization] The authorization (e.g., PurposeOfUse) that was used
/// during the event being recorded.

    @JsonKey(name: 'authorization') List<List<CodeableConcept>>? authorization,
  }) = _$AuditEvent_Agent;

  @override
  String get fhirType => 'AuditEvent_Agent';

  factory AuditEvent_Agent.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_AgentFromJson(json);

  factory AuditEvent_Agent.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent_Agent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEvent_Agent.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEvent_Agent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AuditEvent_Agent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEvent_AgentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
