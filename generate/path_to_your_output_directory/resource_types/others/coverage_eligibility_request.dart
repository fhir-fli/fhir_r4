import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CoverageEligibilityRequest] The CoverageEligibilityRequest provides
/// patient and insurance coverage information to an insurer for them to
/// respond, in the form of an CoverageEligibilityResponse, with information
/// regarding whether the stated coverage is valid and in-force and optionally
/// to provide the insurance details of the policy.

@freezed
class CoverageEligibilityRequest with _$CoverageEligibilityRequest {
  const CoverageEligibilityRequest._();

  const factory CoverageEligibilityRequest({
/// [resourceType] This is a CoverageEligibilityRequest resource

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
/// [identifier] A unique identifier assigned to this coverage eligiblity
/// request.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The status of the resource instance.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [priority] When the requestor expects the processor to complete
/// processing.

    @JsonKey(name: 'priority') CodeableConcept? priority,
/// [purpose] Code to specify whether requesting: prior authorization
/// requirements for some service categories or billing codes; benefits for
/// coverages specified or discovered; discovery and return of coverages for
/// the patient; and/or validation that the specified coverage is in-force at
/// the date/period specified or 'now' if not specified.

    @JsonKey(name: 'purpose') List<List<FhirCode>>? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') List<PrimitiveElement>? purposeElement,
/// [patient] The party who is the beneficiary of the supplied coverage and
/// for whom eligibility is sought.

    @JsonKey(name: 'patient') Reference? patient,
/// [event] Information code for an event with a corresponding date or
/// period.

    @JsonKey(name: 'event') List<List<CoverageEligibilityRequest_Event>>? event,
/// [servicedDate] The date or dates when the enclosed suite of services
/// were performed or completed.

    @JsonKey(name: 'servicedDate') FhirDate? servicedDate,
/// [_servicedDate] Extensions for servicedDate

    @JsonKey(name: '_servicedDate') PrimitiveElement? servicedDateElement,
/// [servicedPeriod] The date or dates when the enclosed suite of services
/// were performed or completed.

    @JsonKey(name: 'servicedPeriod') Period? servicedPeriod,
/// [created] The date when this resource was created.

    @JsonKey(name: 'created') FhirDateTime? created,
/// [_created] Extensions for created

    @JsonKey(name: '_created') PrimitiveElement? createdElement,
/// [enterer] Person who created the request.

    @JsonKey(name: 'enterer') Reference? enterer,
/// [provider] The provider which is responsible for the request.

    @JsonKey(name: 'provider') Reference? provider,
/// [insurer] The Insurer who issued the coverage in question and is the
/// recipient of the request.

    @JsonKey(name: 'insurer') Reference? insurer,
/// [facility] Facility where the services are intended to be provided.

    @JsonKey(name: 'facility') Reference? facility,
/// [supportingInfo] Additional information codes regarding exceptions,
/// special considerations, the condition, situation, prior or concurrent
/// issues.

    @JsonKey(name: 'supportingInfo') List<List<CoverageEligibilityRequest_SupportingInfo>>? supportingInfo,
/// [insurance] Financial instruments for reimbursement for the health care
/// products and services.

    @JsonKey(name: 'insurance') List<List<CoverageEligibilityRequest_Insurance>>? insurance,
/// [item] Service categories or billable services for which benefit
/// details and/or an authorization prior to service delivery may be required
/// by the payor.

    @JsonKey(name: 'item') List<List<CoverageEligibilityRequest_Item>>? item,
  }) = _$CoverageEligibilityRequest;

  @override
  String get fhirType => 'CoverageEligibilityRequest';

  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequestFromJson(json);

  factory CoverageEligibilityRequest.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityRequest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
