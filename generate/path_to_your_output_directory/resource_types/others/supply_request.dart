import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SupplyRequest] A record of a request to deliver a medication,
/// substance or device used in the healthcare setting to a particular
/// destination for a particular person or organization.

@freezed
class SupplyRequest with _$SupplyRequest {
  const SupplyRequest._();

  const factory SupplyRequest({
/// [resourceType] This is a SupplyRequest resource

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
/// [identifier] Business identifiers assigned to this SupplyRequest by the
/// author and/or other systems. These identifiers remain constant as the
/// resource is updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] Status of the supply request.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [intent] Whether the request is a proposal, plan, or an original order.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [basedOn] Plan/proposal/order fulfilled by this request.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [category] Category of supply, e.g.  central, non-stock, etc. This is
/// used to support work flows associated with the supply process.

    @JsonKey(name: 'category') CodeableConcept? category,
/// [priority] Indicates how quickly this SupplyRequest should be addressed
/// with respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [deliverFor] The patient to whom the supply will be given or for whom
/// they will be used.

    @JsonKey(name: 'deliverFor') Reference? deliverFor,
/// [item] The item that is requested to be supplied. This is either a link
/// to a resource representing the details of the item or a code that
/// identifies the item from a known list.

    @JsonKey(name: 'item') CodeableReference? item,
/// [quantity] The amount that is being ordered of the indicated item.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [parameter] Specific parameters for the ordered item.  For example, the
/// size of the indicated item.

    @JsonKey(name: 'parameter') List<List<SupplyRequest_Parameter>>? parameter,
/// [occurrenceDateTime] When the request should be fulfilled.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] When the request should be fulfilled.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [occurrenceTiming] When the request should be fulfilled.

    @JsonKey(name: 'occurrenceTiming') Timing? occurrenceTiming,
/// [authoredOn] When the request was made.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,
/// [requester] The device, practitioner, etc. who initiated the request.

    @JsonKey(name: 'requester') Reference? requester,
/// [supplier] Who is intended to fulfill the request.

    @JsonKey(name: 'supplier') List<List<Reference>>? supplier,
/// [reason] The reason why the supply item was requested.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [deliverFrom] Where the supply is expected to come from.

    @JsonKey(name: 'deliverFrom') Reference? deliverFrom,
/// [deliverTo] Where the supply is destined to go.

    @JsonKey(name: 'deliverTo') Reference? deliverTo,
  }) = _$SupplyRequest;

  @override
  String get fhirType => 'SupplyRequest';

  factory SupplyRequest.fromJson(Map<String, dynamic> json) =>
      _$SupplyRequestFromJson(json);

  factory SupplyRequest.fromYaml(dynamic yaml) => yaml is String
      ? SupplyRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SupplyRequest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SupplyRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SupplyRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SupplyRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
