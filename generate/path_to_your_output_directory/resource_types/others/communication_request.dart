import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CommunicationRequest] A request to convey information; e.g. the CDS
/// system proposes that an alert be sent to a responsible provider, the CDS
/// system proposes that the public health agency be notified about a
/// reportable condition.

@freezed
class CommunicationRequest with _$CommunicationRequest {
  const CommunicationRequest._();

  const factory CommunicationRequest({
/// [resourceType] This is a CommunicationRequest resource

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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Business identifiers assigned to this communication
/// request by the performer or other systems which remain constant as the
/// resource is updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A plan or proposal that is fulfilled in whole or in part by
/// this request.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [replaces] Completed or terminated request(s) whose function is taken
/// by this new request.

    @JsonKey(name: 'replaces') List<List<Reference>>? replaces,
/// [groupIdentifier] A shared identifier common to multiple independent
/// Request instances that were activated/authorized more or less
/// simultaneously by a single author.  The presence of the same identifier on
/// each request ties those requests together and may have business
/// ramifications in terms of reporting of results, billing, etc.  E.g. a
/// requisition number shared by a set of lab tests ordered together, or a
/// prescription number shared by all meds ordered at one time.

    @JsonKey(name: 'groupIdentifier') Identifier? groupIdentifier,
/// [status] The status of the proposal or order.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] Captures the reason for the current state of the
/// CommunicationRequest.

    @JsonKey(name: 'statusReason') CodeableConcept? statusReason,
/// [intent] Indicates the level of authority/intentionality associated
/// with the CommunicationRequest and where the request fits into the workflow
/// chain.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [category] The type of message to be sent such as alert, notification,
/// reminder, instruction, etc.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [priority] Characterizes how quickly the proposed act must be
/// initiated. Includes concepts such as stat, urgent, routine.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [doNotPerform] If true indicates that the CommunicationRequest is
/// asking for the specified action to *not* occur.

    @JsonKey(name: 'doNotPerform') FhirBoolean? doNotPerform,
/// [_doNotPerform] Extensions for doNotPerform

    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
/// [medium] A channel that was used for this communication (e.g. email,
/// fax).

    @JsonKey(name: 'medium') List<List<CodeableConcept>>? medium,
/// [subject] The patient or group that is the focus of this communication
/// request.

    @JsonKey(name: 'subject') Reference? subject,
/// [about] Other resources that pertain to this communication request and
/// to which this communication request should be associated.

    @JsonKey(name: 'about') List<List<Reference>>? about,
/// [encounter] The Encounter during which this CommunicationRequest was
/// created or to which the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [payload] Text, attachment(s), or resource(s) to be communicated to the
/// recipient.

    @JsonKey(name: 'payload') List<List<CommunicationRequest_Payload>>? payload,
/// [occurrenceDateTime] The time when this communication is to occur.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] The time when this communication is to occur.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [authoredOn] For draft requests, indicates the date of initial
/// creation.  For requests with other statuses, indicates the date of
/// activation.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,
/// [requester] The device, individual, or organization who asks for the
/// information to be shared.

    @JsonKey(name: 'requester') Reference? requester,
/// [recipient] The entity (e.g. person, organization, clinical information
/// system, device, group, or care team) which is the intended target of the
/// communication.

    @JsonKey(name: 'recipient') List<List<Reference>>? recipient,
/// [informationProvider] The entity (e.g. person, organization, clinical
/// information system, or device) which is to be the source of the
/// communication.

    @JsonKey(name: 'informationProvider') List<List<Reference>>? informationProvider,
/// [reason] Describes why the request is being made in coded or textual
/// form.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [note] Comments made about the request by the requester, sender,
/// recipient, subject or other participants.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$CommunicationRequest;

  @override
  String get fhirType => 'CommunicationRequest';

  factory CommunicationRequest.fromJson(Map<String, dynamic> json) =>
      _$CommunicationRequestFromJson(json);

  factory CommunicationRequest.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CommunicationRequest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CommunicationRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CommunicationRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CommunicationRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
