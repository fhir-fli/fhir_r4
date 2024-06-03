import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [FamilyMemberHistory] Significant health conditions for a person
/// related to the patient relevant in the context of care for the patient.

@freezed
class FamilyMemberHistory with _$FamilyMemberHistory {
  const FamilyMemberHistory._();

  const factory FamilyMemberHistory({
/// [resourceType] This is a FamilyMemberHistory resource

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
/// [identifier] Business identifiers assigned to this family member
/// history by the performer or other systems which remain constant as the
/// resource is updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this FamilyMemberHistory.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this FamilyMemberHistory.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [status] A code specifying the status of the record of the family
/// history of a specific family member.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [dataAbsentReason] Describes why the family member's history is not
/// available.

    @JsonKey(name: 'dataAbsentReason') CodeableConcept? dataAbsentReason,
/// [patient] The person who this history concerns.

    @JsonKey(name: 'patient') Reference? patient,
/// [date] The date (and possibly time) when the family member history was
/// recorded or last updated.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [participant] Indicates who or what participated in the activities
/// related to the family member history and how they were involved.

    @JsonKey(name: 'participant') List<List<FamilyMemberHistory_Participant>>? participant,
/// [name] This will either be a name or a description; e.g. "Aunt Susan",
/// "my cousin with the red hair".

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [relationship] The type of relationship this person has to the patient
/// (father, mother, brother etc.).

    @JsonKey(name: 'relationship') CodeableConcept? relationship,
/// [sex] The birth sex of the family member.

    @JsonKey(name: 'sex') CodeableConcept? sex,
/// [bornPeriod] The actual or approximate date of birth of the relative.

    @JsonKey(name: 'bornPeriod') Period? bornPeriod,
/// [bornDate] The actual or approximate date of birth of the relative.

    @JsonKey(name: 'bornDate') FhirDate? bornDate,
/// [_bornDate] Extensions for bornDate

    @JsonKey(name: '_bornDate') PrimitiveElement? bornDateElement,
/// [bornString] The actual or approximate date of birth of the relative.

    @JsonKey(name: 'bornString') String? bornString,
/// [_bornString] Extensions for bornString

    @JsonKey(name: '_bornString') PrimitiveElement? bornStringElement,
/// [ageAge] The age of the relative at the time the family member history
/// is recorded.

    @JsonKey(name: 'ageAge') Age? ageAge,
/// [ageRange] The age of the relative at the time the family member
/// history is recorded.

    @JsonKey(name: 'ageRange') Range? ageRange,
/// [ageString] The age of the relative at the time the family member
/// history is recorded.

    @JsonKey(name: 'ageString') String? ageString,
/// [_ageString] Extensions for ageString

    @JsonKey(name: '_ageString') PrimitiveElement? ageStringElement,
/// [estimatedAge] If true, indicates that the age value specified is an
/// estimated value.

    @JsonKey(name: 'estimatedAge') FhirBoolean? estimatedAge,
/// [_estimatedAge] Extensions for estimatedAge

    @JsonKey(name: '_estimatedAge') PrimitiveElement? estimatedAgeElement,
/// [deceasedBoolean] Deceased flag or the actual or approximate age of the
/// relative at the time of death for the family member history record.

    @JsonKey(name: 'deceasedBoolean') FhirBoolean? deceasedBoolean,
/// [_deceasedBoolean] Extensions for deceasedBoolean

    @JsonKey(name: '_deceasedBoolean') PrimitiveElement? deceasedBooleanElement,
/// [deceasedAge] Deceased flag or the actual or approximate age of the
/// relative at the time of death for the family member history record.

    @JsonKey(name: 'deceasedAge') Age? deceasedAge,
/// [deceasedRange] Deceased flag or the actual or approximate age of the
/// relative at the time of death for the family member history record.

    @JsonKey(name: 'deceasedRange') Range? deceasedRange,
/// [deceasedDate] Deceased flag or the actual or approximate age of the
/// relative at the time of death for the family member history record.

    @JsonKey(name: 'deceasedDate') FhirDate? deceasedDate,
/// [_deceasedDate] Extensions for deceasedDate

    @JsonKey(name: '_deceasedDate') PrimitiveElement? deceasedDateElement,
/// [deceasedString] Deceased flag or the actual or approximate age of the
/// relative at the time of death for the family member history record.

    @JsonKey(name: 'deceasedString') String? deceasedString,
/// [_deceasedString] Extensions for deceasedString

    @JsonKey(name: '_deceasedString') PrimitiveElement? deceasedStringElement,
/// [reason] Describes why the family member history occurred in coded or
/// textual form, or Indicates a Condition, Observation, AllergyIntolerance, or
/// QuestionnaireResponse that justifies this family member history event.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [note] This property allows a non condition-specific note to the made
/// about the related person. Ideally, the note would be in the condition
/// property, but this is not always possible.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [condition] The significant Conditions (or condition) that the family
/// member had. This is a repeating section to allow a system to represent more
/// than one condition per resource, though there is nothing stopping multiple
/// resources - one per condition.

    @JsonKey(name: 'condition') List<List<FamilyMemberHistory_Condition>>? condition,
/// [procedure] The significant Procedures (or procedure) that the family
/// member had. This is a repeating section to allow a system to represent more
/// than one procedure per resource, though there is nothing stopping multiple
/// resources - one per procedure.

    @JsonKey(name: 'procedure') List<List<FamilyMemberHistory_Procedure>>? procedure,
  }) = _$FamilyMemberHistory;

  @override
  String get fhirType => 'FamilyMemberHistory';

  factory FamilyMemberHistory.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistoryFromJson(json);

  factory FamilyMemberHistory.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FamilyMemberHistory.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FamilyMemberHistory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory FamilyMemberHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FamilyMemberHistoryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
