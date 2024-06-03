/// /// [AppointmentResponse] A reply to an appointment request for a patient
/// and/or practitioner(s), such as a confirmation or rejection.

@freezed
class AppointmentResponse with _$AppointmentResponse {
  const AppointmentResponse._();

  const factory AppointmentResponse({
/// /// [resourceType] This is a AppointmentResponse resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [identifier] This records identifiers associated with this appointment
/// response concern that are defined by business processes and/ or used to
/// refer to it when a direct URL reference to the resource itself is not
/// appropriate.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [appointment] Appointment that this response is replying to.

    @JsonKey(name: 'appointment') Reference? appointment,
/// /// [proposedNewTime] Indicates that the response is proposing a different
/// time that was initially requested.  The new proposed time will be indicated
/// in the start and end properties.

    @JsonKey(name: 'proposedNewTime') FhirBoolean? proposedNewTime,
/// /// [_proposedNewTime] Extensions for proposedNewTime

    @JsonKey(name: '_proposedNewTime') FhirElement? proposedNewTimeElement,
/// /// [start] Date/Time that the appointment is to take place, or requested
/// new start time.

    @JsonKey(name: 'start') FhirInstant? start,
/// /// [_start] Extensions for start

    @JsonKey(name: '_start') FhirElement? startElement,
/// /// [end] This may be either the same as the appointment request to confirm
/// the details of the appointment, or alternately a new time to request a
/// re-negotiation of the end time.

    @JsonKey(name: 'end') FhirInstant? end,
/// /// [_end] Extensions for end

    @JsonKey(name: '_end') FhirElement? endElement,
/// /// [participantType] Role of participant in the appointment.

    @JsonKey(name: 'participantType') List<List<CodeableConcept>>? participantType,
/// /// [actor] A Person, Location, HealthcareService, or Device that is
/// participating in the appointment.

    @JsonKey(name: 'actor') Reference? actor,
/// /// [participantStatus] Participation status of the participant. When the
/// status is declined or tentative if the start/end times are different to the
/// appointment, then these times should be interpreted as a requested time
/// change. When the status is accepted, the times can either be the time of
/// the appointment (as a confirmation of the time) or can be empty.

    @JsonKey(name: 'participantStatus') FhirCode? participantStatus,
/// /// [_participantStatus] Extensions for participantStatus

    @JsonKey(name: '_participantStatus') FhirElement? participantStatusElement,
/// /// [comment] Additional comments about the appointment.

    @JsonKey(name: 'comment') FhirMarkdown? comment,
/// /// [_comment] Extensions for comment

    @JsonKey(name: '_comment') FhirElement? commentElement,
/// /// [recurring] Indicates that this AppointmentResponse applies to all
/// occurrences in a recurring request.

    @JsonKey(name: 'recurring') FhirBoolean? recurring,
/// /// [_recurring] Extensions for recurring

    @JsonKey(name: '_recurring') FhirElement? recurringElement,
/// /// [occurrenceDate] The original date within a recurring request. This
/// could be used in place of the recurrenceId to be more direct (or where the
/// template is provided through the simple list of dates in
/// `Appointment.occurrenceDate`).

    @JsonKey(name: 'occurrenceDate') FhirDate? occurrenceDate,
/// /// [_occurrenceDate] Extensions for occurrenceDate

    @JsonKey(name: '_occurrenceDate') FhirElement? occurrenceDateElement,
/// /// [recurrenceId] The recurrence ID (sequence number) of the specific
/// appointment when responding to a recurring request.

    @JsonKey(name: 'recurrenceId') FhirPositiveInt? recurrenceId,
/// /// [_recurrenceId] Extensions for recurrenceId

    @JsonKey(name: '_recurrenceId') FhirElement? recurrenceIdElement,
  }) = _$AppointmentResponse;

  @override
  String get fhirType => 'AppointmentResponse';

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResponseFromJson(json);

  factory AppointmentResponse.fromYaml(dynamic yaml) => yaml is String
      ? AppointmentResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AppointmentResponse.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AppointmentResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AppointmentResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AppointmentResponseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
