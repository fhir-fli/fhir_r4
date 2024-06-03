import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RiskAssessment] An assessment of the likely outcome(s) for a patient
/// or other subject as well as the likelihood of each outcome.

@freezed
class RiskAssessment with _$RiskAssessment {
  const RiskAssessment._();

  const factory RiskAssessment({
/// [resourceType] This is a RiskAssessment resource

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
/// [identifier] Business identifier assigned to the risk assessment.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [basedOn] A reference to the request that is fulfilled by this risk
/// assessment.

    @JsonKey(name: 'basedOn') Reference? basedOn,
/// [parent] A reference to a resource that this risk assessment is part
/// of, such as a Procedure.

    @JsonKey(name: 'parent') Reference? parent,
/// [status] The status of the RiskAssessment, using the same statuses as
/// an Observation.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [method] The algorithm, process or mechanism used to evaluate the risk.

    @JsonKey(name: 'method') CodeableConcept? method,
/// [code] The type of the risk assessment performed.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [subject] The patient or group the risk assessment applies to.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The encounter where the assessment was performed.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [occurrenceDateTime] The date (and possibly time) the risk assessment
/// was performed.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] The date (and possibly time) the risk assessment was
/// performed.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [condition] For assessments or prognosis specific to a particular
/// condition, indicates the condition being assessed.

    @JsonKey(name: 'condition') Reference? condition,
/// [performer] The provider, patient, related person, or software
/// application that performed the assessment.

    @JsonKey(name: 'performer') Reference? performer,
/// [reason] The reason the risk assessment was performed.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [basis] Indicates the source data considered as part of the assessment
/// (for example, FamilyHistory, Observations, Procedures, Conditions, etc.).

    @JsonKey(name: 'basis') List<List<Reference>>? basis,
/// [prediction] Describes the expected outcome for the subject.

    @JsonKey(name: 'prediction') List<List<RiskAssessment_Prediction>>? prediction,
/// [mitigation] A description of the steps that might be taken to reduce
/// the identified risk(s).

    @JsonKey(name: 'mitigation') String? mitigation,
/// [_mitigation] Extensions for mitigation

    @JsonKey(name: '_mitigation') PrimitiveElement? mitigationElement,
/// [note] Additional comments about the risk assessment.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$RiskAssessment;

  @override
  String get fhirType => 'RiskAssessment';

  factory RiskAssessment.fromJson(Map<String, dynamic> json) =>
      _$RiskAssessmentFromJson(json);

  factory RiskAssessment.fromYaml(dynamic yaml) => yaml is String
      ? RiskAssessment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RiskAssessment.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RiskAssessment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RiskAssessment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RiskAssessmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
