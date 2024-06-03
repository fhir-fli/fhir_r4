import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClaimResponse] This resource provides the adjudication details from
/// the processing of a Claim resource.

@freezed
class ClaimResponse with _$ClaimResponse {
  const ClaimResponse._();

  const factory ClaimResponse({
/// [resourceType] This is a ClaimResponse resource

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
/// [identifier] A unique identifier assigned to this claim response.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [traceNumber] Trace number for tracking purposes. May be defined at the
/// jurisdiction level or between trading partners.

    @JsonKey(name: 'traceNumber') List<List<Identifier>>? traceNumber,
/// [status] The status of the resource instance.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [type] A finer grained suite of claim type codes which may convey
/// additional information such as Inpatient vs Outpatient and/or a specialty
/// service.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [subType] A finer grained suite of claim type codes which may convey
/// additional information such as Inpatient vs Outpatient and/or a specialty
/// service.

    @JsonKey(name: 'subType') CodeableConcept? subType,
/// [use] A code to indicate whether the nature of the request is: Claim -
/// A request to an Insurer to adjudicate the supplied charges for health care
/// goods and services under the identified policy and to pay the determined
/// Benefit amount, if any; Preauthorization - A request to an Insurer to
/// adjudicate the supplied proposed future charges for health care goods and
/// services under the identified policy and to approve the services and
/// provide the expected benefit amounts and potentially to reserve funds to
/// pay the benefits when Claims for the indicated services are later
/// submitted; or, Pre-determination - A request to an Insurer to adjudicate
/// the supplied 'what if' charges for health care goods and services under the
/// identified policy and report back what the Benefit payable would be had the
/// services actually been provided.

    @JsonKey(name: 'use') FhirCode? use,
/// [_use] Extensions for use

    @JsonKey(name: '_use') PrimitiveElement? useElement,
/// [patient] The party to whom the professional services and/or products
/// have been supplied or are being considered and for whom actual for facast
/// reimbursement is sought.

    @JsonKey(name: 'patient') Reference? patient,
/// [created] The date this resource was created.

    @JsonKey(name: 'created') FhirDateTime? created,
/// [_created] Extensions for created

    @JsonKey(name: '_created') PrimitiveElement? createdElement,
/// [insurer] The party responsible for authorization, adjudication and
/// reimbursement.

    @JsonKey(name: 'insurer') Reference? insurer,
/// [requestor] The provider which is responsible for the claim,
/// predetermination or preauthorization.

    @JsonKey(name: 'requestor') Reference? requestor,
/// [request] Original request resource reference.

    @JsonKey(name: 'request') Reference? request,
/// [outcome] The outcome of the claim, predetermination, or
/// preauthorization processing.

    @JsonKey(name: 'outcome') FhirCode? outcome,
/// [_outcome] Extensions for outcome

    @JsonKey(name: '_outcome') PrimitiveElement? outcomeElement,
/// [decision] The result of the claim, predetermination, or
/// preauthorization adjudication.

    @JsonKey(name: 'decision') CodeableConcept? decision,
/// [disposition] A human readable description of the status of the
/// adjudication.

    @JsonKey(name: 'disposition') String? disposition,
/// [_disposition] Extensions for disposition

    @JsonKey(name: '_disposition') PrimitiveElement? dispositionElement,
/// [preAuthRef] Reference from the Insurer which is used in later
/// communications which refers to this adjudication.

    @JsonKey(name: 'preAuthRef') String? preAuthRef,
/// [_preAuthRef] Extensions for preAuthRef

    @JsonKey(name: '_preAuthRef') PrimitiveElement? preAuthRefElement,
/// [preAuthPeriod] The time frame during which this authorization is
/// effective.

    @JsonKey(name: 'preAuthPeriod') Period? preAuthPeriod,
/// [event] Information code for an event with a corresponding date or
/// period.

    @JsonKey(name: 'event') List<List<ClaimResponse_Event>>? event,
/// [payeeType] Type of Party to be reimbursed: subscriber, provider,
/// other.

    @JsonKey(name: 'payeeType') CodeableConcept? payeeType,
/// [encounter] Healthcare encounters related to this claim.

    @JsonKey(name: 'encounter') List<List<Reference>>? encounter,
/// [diagnosisRelatedGroup] A package billing code or bundle code used to
/// group products and services to a particular health condition (such as heart
/// attack) which is based on a predetermined grouping code system.

    @JsonKey(name: 'diagnosisRelatedGroup') CodeableConcept? diagnosisRelatedGroup,
/// [item] A claim line. Either a simple (a product or service) or a
/// 'group' of details which can also be a simple items or groups of
/// sub-details.

    @JsonKey(name: 'item') List<List<ClaimResponse_Item>>? item,
/// [addItem] The first-tier service adjudications for payor added product
/// or service lines.

    @JsonKey(name: 'addItem') List<List<ClaimResponse_AddItem>>? addItem,
/// [adjudication] The adjudication results which are presented at the
/// header level rather than at the line-item or add-item levels.

    @JsonKey(name: 'adjudication') List<List<ClaimResponse_Adjudication>>? adjudication,
/// [total] Categorized monetary totals for the adjudication.

    @JsonKey(name: 'total') List<List<ClaimResponse_Total>>? total,
/// [payment] Payment details for the adjudication of the claim.

    @JsonKey(name: 'payment') ClaimResponse_Payment? payment,
/// [fundsReserve] A code, used only on a response to a preauthorization,
/// to indicate whether the benefits payable have been reserved and for whom.

    @JsonKey(name: 'fundsReserve') CodeableConcept? fundsReserve,
/// [formCode] A code for the form to be used for printing the content.

    @JsonKey(name: 'formCode') CodeableConcept? formCode,
/// [form] The actual form, by reference or inclusion, for printing the
/// content or an EOB.

    @JsonKey(name: 'form') Attachment? form,
/// [processNote] A note that describes or explains adjudication results in
/// a human readable form.

    @JsonKey(name: 'processNote') List<List<ClaimResponse_ProcessNote>>? processNote,
/// [communicationRequest] Request for additional supporting or authorizing
/// information.

    @JsonKey(name: 'communicationRequest') List<List<Reference>>? communicationRequest,
/// [insurance] Financial instruments for reimbursement for the health care
/// products and services specified on the claim.

    @JsonKey(name: 'insurance') List<List<ClaimResponse_Insurance>>? insurance,
/// [error] Errors encountered during the processing of the adjudication.

    @JsonKey(name: 'error') List<List<ClaimResponse_Error>>? error,
  }) = _$ClaimResponse;

  @override
  String get fhirType => 'ClaimResponse';

  factory ClaimResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseFromJson(json);

  factory ClaimResponse.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClaimResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
