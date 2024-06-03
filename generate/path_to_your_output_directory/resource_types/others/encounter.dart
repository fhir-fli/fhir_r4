import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Encounter] An interaction between a patient and healthcare provider(s)
/// for the purpose of providing healthcare service(s) or assessing the health
/// status of a patient.  Encounter is primarily used to record information
/// about the actual activities that occurred, where Appointment is used to
/// record planned activities.

@freezed
class Encounter with _$Encounter {
  const Encounter._();

  const factory Encounter({
/// [resourceType] This is a Encounter resource

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
/// [identifier] Identifier(s) by which this encounter is known.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The current state of the encounter (not the state of the
/// patient within the encounter - that is subjectState).

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [class] Concepts representing classification of patient encounter such
/// as ambulatory (outpatient), inpatient, emergency, home health or others due
/// to local variations.

    @JsonKey(name: 'class') List<List<CodeableConcept>>? class,
/// [priority] Indicates the urgency of the encounter.

    @JsonKey(name: 'priority') CodeableConcept? priority,
/// [type] Specific type of encounter (e.g. e-mail consultation, surgical
/// day-care, skilled nursing, rehabilitation).

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [serviceType] Broad categorization of the service that is to be
/// provided (e.g. cardiology).

    @JsonKey(name: 'serviceType') List<List<CodeableReference>>? serviceType,
/// [subject] The patient or group related to this encounter. In some
/// use-cases the patient MAY not be present, such as a case meeting about a
/// patient between several practitioners or a careteam.

    @JsonKey(name: 'subject') Reference? subject,
/// [subjectStatus] The subjectStatus value can be used to track the
/// patient's status within the encounter. It details whether the patient has
/// arrived or departed, has been triaged or is currently in a waiting status.

    @JsonKey(name: 'subjectStatus') CodeableConcept? subjectStatus,
/// [episodeOfCare] Where a specific encounter should be classified as a
/// part of a specific episode(s) of care this field should be used. This
/// association can facilitate grouping of related encounters together for a
/// specific purpose, such as government reporting, issue tracking, association
/// via a common problem.  The association is recorded on the encounter as
/// these are typically created after the episode of care and grouped on entry
/// rather than editing the episode of care to append another encounter to it
/// (the episode of care could span years).

    @JsonKey(name: 'episodeOfCare') List<List<Reference>>? episodeOfCare,
/// [basedOn] The request this encounter satisfies (e.g. incoming referral
/// or procedure request).

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [careTeam] The group(s) of individuals, organizations that are
/// allocated to participate in this encounter. The participants backbone will
/// record the actuals of when these individuals participated during the
/// encounter.

    @JsonKey(name: 'careTeam') List<List<Reference>>? careTeam,
/// [partOf] Another Encounter of which this encounter is a part of
/// (administratively or in time).

    @JsonKey(name: 'partOf') Reference? partOf,
/// [serviceProvider] The organization that is primarily responsible for
/// this Encounter's services. This MAY be the same as the organization on the
/// Patient record, however it could be different, such as if the actor
/// performing the services was from an external organization (which may be
/// billed seperately) for an external consultation.  Refer to the colonoscopy
/// example on the Encounter examples tab.

    @JsonKey(name: 'serviceProvider') Reference? serviceProvider,
/// [participant] The list of people responsible for providing the service.

    @JsonKey(name: 'participant') List<List<Encounter_Participant>>? participant,
/// [appointment] The appointment that scheduled this encounter.

    @JsonKey(name: 'appointment') List<List<Reference>>? appointment,
/// [virtualService] Connection details of a virtual service (e.g.
/// conference call).

    @JsonKey(name: 'virtualService') List<List<VirtualServiceDetail>>? virtualService,
/// [actualPeriod] The actual start and end time of the encounter.

    @JsonKey(name: 'actualPeriod') Period? actualPeriod,
/// [plannedStartDate] The planned start date/time (or admission date) of
/// the encounter.

    @JsonKey(name: 'plannedStartDate') FhirDateTime? plannedStartDate,
/// [_plannedStartDate] Extensions for plannedStartDate

    @JsonKey(name: '_plannedStartDate') PrimitiveElement? plannedStartDateElement,
/// [plannedEndDate] The planned end date/time (or discharge date) of the
/// encounter.

    @JsonKey(name: 'plannedEndDate') FhirDateTime? plannedEndDate,
/// [_plannedEndDate] Extensions for plannedEndDate

    @JsonKey(name: '_plannedEndDate') PrimitiveElement? plannedEndDateElement,
/// [length] Actual quantity of time the encounter lasted. This excludes
/// the time during leaves of absence.When missing it is the time in between
/// the start and end values.

    @JsonKey(name: 'length') FhirDuration? length,
/// [reason] The list of medical reasons that are expected to be addressed
/// during the episode of care.

    @JsonKey(name: 'reason') List<List<Encounter_Reason>>? reason,
/// [diagnosis] The list of diagnosis relevant to this encounter.

    @JsonKey(name: 'diagnosis') List<List<Encounter_Diagnosis>>? diagnosis,
/// [account] The set of accounts that may be used for billing for this
/// Encounter.

    @JsonKey(name: 'account') List<List<Reference>>? account,
/// [dietPreference] Diet preferences reported by the patient.

    @JsonKey(name: 'dietPreference') List<List<CodeableConcept>>? dietPreference,
/// [specialArrangement] Any special requests that have been made for this
/// encounter, such as the provision of specific equipment or other things.

    @JsonKey(name: 'specialArrangement') List<List<CodeableConcept>>? specialArrangement,
/// [specialCourtesy] Special courtesies that may be provided to the
/// patient during the encounter (VIP, board member, professional courtesy).

    @JsonKey(name: 'specialCourtesy') List<List<CodeableConcept>>? specialCourtesy,
/// [admission] Details about the stay during which a healthcare service is
/// provided.This does not describe the event of admitting the patient, but
/// rather any information that is relevant from the time of admittance until
/// the time of discharge.

    @JsonKey(name: 'admission') Encounter_Admission? admission,
/// [location] List of locations where  the patient has been during this
/// encounter.

    @JsonKey(name: 'location') List<List<Encounter_Location>>? location,
  }) = _$Encounter;

  @override
  String get fhirType => 'Encounter';

  factory Encounter.fromJson(Map<String, dynamic> json) =>
      _$EncounterFromJson(json);

  factory Encounter.fromYaml(dynamic yaml) => yaml is String
      ? Encounter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Encounter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Encounter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Encounter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
