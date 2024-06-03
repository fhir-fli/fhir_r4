import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Condition] A clinical condition, problem, diagnosis, or other event,
/// situation, issue, or clinical concept that has risen to a level of concern.

@freezed
class Condition with _$Condition {
  const Condition._();

  const factory Condition({
/// [resourceType] This is a Condition resource

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
/// [identifier] Business identifiers assigned to this condition by the
/// performer or other systems which remain constant as the resource is updated
/// and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [clinicalStatus] The clinical status of the condition.

    @JsonKey(name: 'clinicalStatus') CodeableConcept? clinicalStatus,
/// [verificationStatus] The verification status to support the clinical
/// status of the condition.  The verification status pertains to the
/// condition, itself, not to any specific condition attribute.

    @JsonKey(name: 'verificationStatus') CodeableConcept? verificationStatus,
/// [category] A category assigned to the condition.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [severity] A subjective assessment of the severity of the condition as
/// evaluated by the clinician.

    @JsonKey(name: 'severity') CodeableConcept? severity,
/// [code] Identification of the condition, problem or diagnosis.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [bodySite] The anatomical location where this condition manifests
/// itself.

    @JsonKey(name: 'bodySite') List<List<CodeableConcept>>? bodySite,
/// [bodyStructure] Indicates the body structure on the subject's body
/// where this condition manifests itself.

    @JsonKey(name: 'bodyStructure') Reference? bodyStructure,
/// [subject] Indicates the patient or group who the condition record is
/// associated with.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The Encounter during which this Condition was created or to
/// which the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [onsetDateTime] Estimated or actual date or date-time the condition,
/// situation, or concern began, in the opinion of the clinician.

    @JsonKey(name: 'onsetDateTime') FhirDateTime? onsetDateTime,
/// [_onsetDateTime] Extensions for onsetDateTime

    @JsonKey(name: '_onsetDateTime') PrimitiveElement? onsetDateTimeElement,
/// [onsetAge] Estimated or actual date or date-time the condition,
/// situation, or concern began, in the opinion of the clinician.

    @JsonKey(name: 'onsetAge') Age? onsetAge,
/// [onsetPeriod] Estimated or actual date or date-time the condition,
/// situation, or concern began, in the opinion of the clinician.

    @JsonKey(name: 'onsetPeriod') Period? onsetPeriod,
/// [onsetRange] Estimated or actual date or date-time the condition,
/// situation, or concern began, in the opinion of the clinician.

    @JsonKey(name: 'onsetRange') Range? onsetRange,
/// [onsetString] Estimated or actual date or date-time the condition,
/// situation, or concern began, in the opinion of the clinician.

    @JsonKey(name: 'onsetString') String? onsetString,
/// [_onsetString] Extensions for onsetString

    @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
/// [abatementDateTime] The date or estimated date that the condition
/// resolved or went into remission. This is called "abatement" because of the
/// many overloaded connotations associated with "remission" or "resolution" -
/// Some conditions, such as chronic conditions, are never really resolved, but
/// they can abate.

    @JsonKey(name: 'abatementDateTime') FhirDateTime? abatementDateTime,
/// [_abatementDateTime] Extensions for abatementDateTime

    @JsonKey(name: '_abatementDateTime') PrimitiveElement? abatementDateTimeElement,
/// [abatementAge] The date or estimated date that the condition resolved
/// or went into remission. This is called "abatement" because of the many
/// overloaded connotations associated with "remission" or "resolution" - Some
/// conditions, such as chronic conditions, are never really resolved, but they
/// can abate.

    @JsonKey(name: 'abatementAge') Age? abatementAge,
/// [abatementPeriod] The date or estimated date that the condition
/// resolved or went into remission. This is called "abatement" because of the
/// many overloaded connotations associated with "remission" or "resolution" -
/// Some conditions, such as chronic conditions, are never really resolved, but
/// they can abate.

    @JsonKey(name: 'abatementPeriod') Period? abatementPeriod,
/// [abatementRange] The date or estimated date that the condition resolved
/// or went into remission. This is called "abatement" because of the many
/// overloaded connotations associated with "remission" or "resolution" - Some
/// conditions, such as chronic conditions, are never really resolved, but they
/// can abate.

    @JsonKey(name: 'abatementRange') Range? abatementRange,
/// [abatementString] The date or estimated date that the condition
/// resolved or went into remission. This is called "abatement" because of the
/// many overloaded connotations associated with "remission" or "resolution" -
/// Some conditions, such as chronic conditions, are never really resolved, but
/// they can abate.

    @JsonKey(name: 'abatementString') String? abatementString,
/// [_abatementString] Extensions for abatementString

    @JsonKey(name: '_abatementString') PrimitiveElement? abatementStringElement,
/// [recordedDate] The recordedDate represents when this particular
/// Condition record was created in the system, which is often a
/// system-generated date.

    @JsonKey(name: 'recordedDate') FhirDateTime? recordedDate,
/// [_recordedDate] Extensions for recordedDate

    @JsonKey(name: '_recordedDate') PrimitiveElement? recordedDateElement,
/// [participant] Indicates who or what participated in the activities
/// related to the condition and how they were involved.

    @JsonKey(name: 'participant') List<List<Condition_Participant>>? participant,
/// [stage] A simple summary of the stage such as "Stage 3" or "Early
/// Onset". The determination of the stage is disease-specific, such as cancer,
/// retinopathy of prematurity, kidney diseases, Alzheimer's, or Parkinson
/// disease.

    @JsonKey(name: 'stage') List<List<Condition_Stage>>? stage,
/// [evidence] Supporting evidence / manifestations that are the basis for
/// determining the Condition.

    @JsonKey(name: 'evidence') List<List<CodeableReference>>? evidence,
/// [note] Additional information about the Condition. This is a general
/// notes/comments entry  for description of the Condition, its diagnosis and
/// prognosis.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$Condition;

  @override
  String get fhirType => 'Condition';

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  factory Condition.fromYaml(dynamic yaml) => yaml is String
      ? Condition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Condition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Condition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Condition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConditionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
