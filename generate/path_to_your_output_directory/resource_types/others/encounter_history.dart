import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [EncounterHistory] A record of significant events/milestones key data
/// throughout the history of an Encounter, often tracked for specific purposes
/// such as billing.

@freezed
class EncounterHistory with _$EncounterHistory {
  const EncounterHistory._();

  const factory EncounterHistory({
/// [resourceType] This is a EncounterHistory resource

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
/// [encounter] The Encounter associated with this set of historic values.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [identifier] Identifier(s) by which this encounter is known.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] planned | in-progress | on-hold | discharged | completed |
/// cancelled | discontinued | entered-in-error | unknown.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [class] Concepts representing classification of patient encounter such
/// as ambulatory (outpatient), inpatient, emergency, home health or others due
/// to local variations.

    @JsonKey(name: 'class') CodeableConcept? class,
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
/// [actualPeriod] The start and end time associated with this set of
/// values associated with the encounter, may be different to the planned times
/// for various reasons.

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
/// [location] The location of the patient at this point in the encounter,
/// the multiple cardinality permits de-normalizing the levels of the location
/// hierarchy, such as site/ward/room/bed.

    @JsonKey(name: 'location') List<List<EncounterHistory_Location>>? location,
  }) = _$EncounterHistory;

  @override
  String get fhirType => 'EncounterHistory';

  factory EncounterHistory.fromJson(Map<String, dynamic> json) =>
      _$EncounterHistoryFromJson(json);

  factory EncounterHistory.fromYaml(dynamic yaml) => yaml is String
      ? EncounterHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EncounterHistory.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EncounterHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EncounterHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EncounterHistoryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
