import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Communication] A clinical or business level record of information
/// being transmitted or shared; e.g. an alert that was sent to a responsible
/// provider, a public health agency communication to a provider/reporter in
/// response to a case report for a reportable condition.

@freezed
class Communication with _$Communication {
  const Communication._();

  const factory Communication({
/// [resourceType] This is a Communication resource

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
/// [identifier] Business identifiers assigned to this communication by the
/// performer or other systems which remain constant as the resource is updated
/// and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this Communication.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this Communication.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [basedOn] An order, proposal or plan fulfilled in whole or in part by
/// this Communication.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [partOf] A larger event (e.g. Communication, Procedure) of which this
/// particular communication is a component or step.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [inResponseTo] Prior communication that this communication is in
/// response to.

    @JsonKey(name: 'inResponseTo') List<List<Reference>>? inResponseTo,
/// [status] The status of the transmission.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] Captures the reason for the current state of the
/// Communication.

    @JsonKey(name: 'statusReason') CodeableConcept? statusReason,
/// [category] The type of message conveyed such as alert, notification,
/// reminder, instruction, etc.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [priority] Characterizes how quickly the planned or in progress
/// communication must be addressed. Includes concepts such as stat, urgent,
/// routine.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [medium] A channel that was used for this communication (e.g. email,
/// fax).

    @JsonKey(name: 'medium') List<List<CodeableConcept>>? medium,
/// [subject] The patient or group that was the focus of this
/// communication.

    @JsonKey(name: 'subject') Reference? subject,
/// [topic] Description of the purpose/content, similar to a subject line
/// in an email.

    @JsonKey(name: 'topic') CodeableConcept? topic,
/// [about] Other resources that pertain to this communication and to which
/// this communication should be associated.

    @JsonKey(name: 'about') List<List<Reference>>? about,
/// [encounter] The Encounter during which this Communication was created
/// or to which the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [sent] The time when this communication was sent.

    @JsonKey(name: 'sent') FhirDateTime? sent,
/// [_sent] Extensions for sent

    @JsonKey(name: '_sent') PrimitiveElement? sentElement,
/// [received] The time when this communication arrived at the destination.

    @JsonKey(name: 'received') FhirDateTime? received,
/// [_received] Extensions for received

    @JsonKey(name: '_received') PrimitiveElement? receivedElement,
/// [recipient] The entity (e.g. person, organization, clinical information
/// system, care team or device) which is the target of the communication.

    @JsonKey(name: 'recipient') List<List<Reference>>? recipient,
/// [sender] The entity (e.g. person, organization, clinical information
/// system, or device) which is the source of the communication.

    @JsonKey(name: 'sender') Reference? sender,
/// [reason] The reason or justification for the communication.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [payload] Text, attachment(s), or resource(s) that was communicated to
/// the recipient.

    @JsonKey(name: 'payload') List<List<Communication_Payload>>? payload,
/// [note] Additional notes or commentary about the communication by the
/// sender, receiver or other interested parties.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$Communication;

  @override
  String get fhirType => 'Communication';

  factory Communication.fromJson(Map<String, dynamic> json) =>
      _$CommunicationFromJson(json);

  factory Communication.fromYaml(dynamic yaml) => yaml is String
      ? Communication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Communication.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Communication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Communication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CommunicationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
