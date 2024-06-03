import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [VerificationResult] Describes validation requirements, source(s),
/// status and dates for one or more elements.

@freezed
class VerificationResult with _$VerificationResult {
  const VerificationResult._();

  const factory VerificationResult({
/// [resourceType] This is a VerificationResult resource

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
/// [target] A resource that was validated.

    @JsonKey(name: 'target') List<List<Reference>>? target,
/// [targetLocation] The fhirpath location(s) within the resource that was
/// validated.

    @JsonKey(name: 'targetLocation') List<List<String>>? targetLocation,
/// [_targetLocation] Extensions for targetLocation

    @JsonKey(name: '_targetLocation') List<PrimitiveElement>? targetLocationElement,
/// [need] The frequency with which the target must be validated (none;
/// initial; periodic).

    @JsonKey(name: 'need') CodeableConcept? need,
/// [status] The validation status of the target (attested; validated; in
/// process; requires revalidation; validation failed; revalidation failed).

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusDate] When the validation status was updated.

    @JsonKey(name: 'statusDate') FhirDateTime? statusDate,
/// [_statusDate] Extensions for statusDate

    @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
/// [validationType] What the target is validated against (nothing; primary
/// source; multiple sources).

    @JsonKey(name: 'validationType') CodeableConcept? validationType,
/// [validationProcess] The primary process by which the target is
/// validated (edit check; value set; primary source; multiple sources;
/// standalone; in context).

    @JsonKey(name: 'validationProcess') List<List<CodeableConcept>>? validationProcess,
/// [frequency] Frequency of revalidation.

    @JsonKey(name: 'frequency') Timing? frequency,
/// [lastPerformed] The date/time validation was last completed (including
/// failed validations).

    @JsonKey(name: 'lastPerformed') FhirDateTime? lastPerformed,
/// [_lastPerformed] Extensions for lastPerformed

    @JsonKey(name: '_lastPerformed') PrimitiveElement? lastPerformedElement,
/// [nextScheduled] The date when target is next validated, if appropriate.

    @JsonKey(name: 'nextScheduled') FhirDate? nextScheduled,
/// [_nextScheduled] Extensions for nextScheduled

    @JsonKey(name: '_nextScheduled') PrimitiveElement? nextScheduledElement,
/// [failureAction] The result if validation fails (fatal; warning; record
/// only; none).

    @JsonKey(name: 'failureAction') CodeableConcept? failureAction,
/// [primarySource] Information about the primary source(s) involved in
/// validation.

    @JsonKey(name: 'primarySource') List<List<VerificationResult_PrimarySource>>? primarySource,
/// [attestation] Information about the entity attesting to information.

    @JsonKey(name: 'attestation') VerificationResult_Attestation? attestation,
/// [validator] Information about the entity validating information.

    @JsonKey(name: 'validator') List<List<VerificationResult_Validator>>? validator,
  }) = _$VerificationResult;

  @override
  String get fhirType => 'VerificationResult';

  factory VerificationResult.fromJson(Map<String, dynamic> json) =>
      _$VerificationResultFromJson(json);

  factory VerificationResult.fromYaml(dynamic yaml) => yaml is String
      ? VerificationResult.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? VerificationResult.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'VerificationResult cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory VerificationResult.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$VerificationResultFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
