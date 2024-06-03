import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AuditEvent] A record of an event relevant for purposes such as
/// operations, privacy, security, maintenance, and performance analysis.

@freezed
class AuditEvent with _$AuditEvent {
  const AuditEvent._();

  const factory AuditEvent({
/// [resourceType] This is a AuditEvent resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] Partitions the audit event into one or more categories that can
/// be used to filter searching, to govern access control and/or to guide
/// system behavior.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [subtype] Describes what happened. The most specific codes for the
/// event.

    @JsonKey(name: 'subtype') List<List<CodeableConcept>>? subtype,
/// [action] Indicator for type of action performed during the event that
/// generated the audit.

    @JsonKey(name: 'action') FhirCode? action,
/// [_action] Extensions for action

    @JsonKey(name: '_action') PrimitiveElement? actionElement,
/// [severity] Indicates and enables segmentation of various severity
/// including debugging from critical.

    @JsonKey(name: 'severity') FhirCode? severity,
/// [_severity] Extensions for severity

    @JsonKey(name: '_severity') PrimitiveElement? severityElement,
/// [occurredPeriod] The time or period during which the activity occurred.

    @JsonKey(name: 'occurredPeriod') Period? occurredPeriod,
/// [occurredDateTime] The time or period during which the activity
/// occurred.

    @JsonKey(name: 'occurredDateTime') FhirDateTime? occurredDateTime,
/// [_occurredDateTime] Extensions for occurredDateTime

    @JsonKey(name: '_occurredDateTime') PrimitiveElement? occurredDateTimeElement,
/// [recorded] The time when the event was recorded.

    @JsonKey(name: 'recorded') FhirInstant? recorded,
/// [_recorded] Extensions for recorded

    @JsonKey(name: '_recorded') PrimitiveElement? recordedElement,
/// [outcome] Indicates whether the event succeeded or failed. A free text
/// descripiton can be given in outcome.text.

    @JsonKey(name: 'outcome') AuditEvent_Outcome? outcome,
/// [authorization] The authorization (e.g., PurposeOfUse) that was used
/// during the event being recorded.

    @JsonKey(name: 'authorization') List<List<CodeableConcept>>? authorization,
/// [basedOn] Allows tracing of authorizatino for the events and tracking
/// whether proposals/recommendations were acted upon.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [patient] The patient element is available to enable deterministic
/// tracking of activities that involve the patient as the subject of the data
/// used in an activity.

    @JsonKey(name: 'patient') Reference? patient,
/// [encounter] This will typically be the encounter the event occurred,
/// but some events may be initiated prior to or after the official completion
/// of an encounter but still be tied to the context of the encounter (e.g.
/// pre-admission lab tests).

    @JsonKey(name: 'encounter') Reference? encounter,
/// [agent] An actor taking an active role in the event or activity that is
/// logged.

    @JsonKey(name: 'agent') List<List<AuditEvent_Agent>>? agent,
/// [source] The actor that is reporting the event.

    @JsonKey(name: 'source') AuditEvent_Source? source,
/// [entity] Specific instances of data or objects that have been accessed.

    @JsonKey(name: 'entity') List<List<AuditEvent_Entity>>? entity,
  }) = _$AuditEvent;

  @override
  String get fhirType => 'AuditEvent';

  factory AuditEvent.fromJson(Map<String, dynamic> json) =>
      _$AuditEventFromJson(json);

  factory AuditEvent.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEvent.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEvent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AuditEvent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEventFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
