import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceRequest] Represents a request for a patient to employ a medical
/// device. The device may be an implantable device, or an external assistive
/// device, such as a walker.

@freezed
class DeviceRequest with _$DeviceRequest {
  const DeviceRequest._();

  const factory DeviceRequest({
/// [resourceType] This is a DeviceRequest resource

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
/// [identifier] Identifiers assigned to this order by the orderer or by
/// the receiver.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this DeviceRequest.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this DeviceRequest.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [basedOn] Plan/proposal/order fulfilled by this request.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [replaces] The request takes the place of the referenced completed or
/// terminated request(s).

    @JsonKey(name: 'replaces') List<List<Reference>>? replaces,
/// [groupIdentifier] A shared identifier common to multiple independent
/// Request instances that were activated/authorized more or less
/// simultaneously by a single author.  The presence of the same identifier on
/// each request ties those requests together and may have business
/// ramifications in terms of reporting of results, billing, etc.  E.g. a
/// requisition number shared by a set of lab tests ordered together, or a
/// prescription number shared by all meds ordered at one time.

    @JsonKey(name: 'groupIdentifier') Identifier? groupIdentifier,
/// [status] The status of the request.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [intent] Whether the request is a proposal, plan, an original order or
/// a reflex order.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [priority] Indicates how quickly the request should be addressed with
/// respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [doNotPerform] If true, indicates that the provider is asking for the
/// patient to either stop using or to not start using the specified device or
/// category of devices. For example, the patient has undergone surgery and the
/// provider is indicating that the patient should not wear contact lenses.

    @JsonKey(name: 'doNotPerform') FhirBoolean? doNotPerform,
/// [_doNotPerform] Extensions for doNotPerform

    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
/// [code] The details of the device to be used.

    @JsonKey(name: 'code') CodeableReference? code,
/// [quantity] The number of devices to be provided.

    @JsonKey(name: 'quantity') FhirInteger? quantity,
/// [_quantity] Extensions for quantity

    @JsonKey(name: '_quantity') PrimitiveElement? quantityElement,
/// [parameter] Specific parameters for the ordered item.  For example, the
/// prism value for lenses.

    @JsonKey(name: 'parameter') List<List<DeviceRequest_Parameter>>? parameter,
/// [subject] The patient who will use the device.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] An encounter that provides additional context in which this
/// request is made.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [occurrenceDateTime] The timing schedule for the use of the device. The
/// Schedule data type allows many different expressions, for example. "Every 8
/// hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days from
/// 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] The timing schedule for the use of the device. The
/// Schedule data type allows many different expressions, for example. "Every 8
/// hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days from
/// 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [occurrenceTiming] The timing schedule for the use of the device. The
/// Schedule data type allows many different expressions, for example. "Every 8
/// hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days from
/// 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".

    @JsonKey(name: 'occurrenceTiming') Timing? occurrenceTiming,
/// [authoredOn] When the request transitioned to being actionable.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,
/// [requester] The individual or entity who initiated the request and has
/// responsibility for its activation.

    @JsonKey(name: 'requester') Reference? requester,
/// [performer] The desired individual or entity to provide the device to
/// the subject of the request (e.g., patient, location).

    @JsonKey(name: 'performer') CodeableReference? performer,
/// [reason] Reason or justification for the use of this device.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [asNeeded] This status is to indicate whether the request is a PRN or
/// may be given as needed.

    @JsonKey(name: 'asNeeded') FhirBoolean? asNeeded,
/// [_asNeeded] Extensions for asNeeded

    @JsonKey(name: '_asNeeded') PrimitiveElement? asNeededElement,
/// [asNeededFor] The reason for using the device.

    @JsonKey(name: 'asNeededFor') CodeableConcept? asNeededFor,
/// [insurance] Insurance plans, coverage extensions, pre-authorizations
/// and/or pre-determinations that may be required for delivering the requested
/// service.

    @JsonKey(name: 'insurance') List<List<Reference>>? insurance,
/// [supportingInfo] Additional clinical information about the patient that
/// may influence the request fulfilment.  For example, this may include where
/// on the subject's body the device will be used (i.e. the target site).

    @JsonKey(name: 'supportingInfo') List<List<Reference>>? supportingInfo,
/// [note] Details about this request that were not represented at all or
/// sufficiently in one of the attributes provided in a class. These may
/// include for example a comment, an instruction, or a note associated with
/// the statement.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [relevantHistory] Key events in the history of the request.

    @JsonKey(name: 'relevantHistory') List<List<Reference>>? relevantHistory,
  }) = _$DeviceRequest;

  @override
  String get fhirType => 'DeviceRequest';

  factory DeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceRequestFromJson(json);

  factory DeviceRequest.fromYaml(dynamic yaml) => yaml is String
      ? DeviceRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceRequest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
