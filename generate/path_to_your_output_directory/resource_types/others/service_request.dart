import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ServiceRequest] A record of a request for service such as diagnostic
/// investigations, treatments, or operations to be performed.

@freezed
class ServiceRequest with _$ServiceRequest {
  const ServiceRequest._();

  const factory ServiceRequest({
/// [resourceType] This is a ServiceRequest resource

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
/// [identifier] Identifiers assigned to this order instance by the orderer
/// and/or the receiver and/or order fulfiller.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this ServiceRequest.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this ServiceRequest.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [basedOn] Plan/proposal/order fulfilled by this request.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [replaces] The request takes the place of the referenced completed or
/// terminated request(s).

    @JsonKey(name: 'replaces') List<List<Reference>>? replaces,
/// [requisition] A shared identifier common to all service requests that
/// were authorized more or less simultaneously by a single author,
/// representing the composite or group identifier.

    @JsonKey(name: 'requisition') Identifier? requisition,
/// [status] The status of the order.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [intent] Whether the request is a proposal, plan, an original order or
/// a reflex order.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [category] A code that classifies the service for searching, sorting
/// and display purposes (e.g. "Surgical Procedure").

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [priority] Indicates how quickly the ServiceRequest should be addressed
/// with respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [doNotPerform] Set this to true if the record is saying that the
/// service/procedure should NOT be performed.

    @JsonKey(name: 'doNotPerform') FhirBoolean? doNotPerform,
/// [_doNotPerform] Extensions for doNotPerform

    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
/// [code] A code or reference that identifies a particular service (i.e.,
/// procedure, diagnostic investigation, or panel of investigations) that have
/// been requested.

    @JsonKey(name: 'code') CodeableReference? code,
/// [orderDetail] Additional details and instructions about the how the
/// services are to be delivered.   For example, and order for a urinary
/// catheter may have an order detail for an external or indwelling catheter,
/// or an order for a bandage may require additional instructions specifying
/// how the bandage should be applied.

    @JsonKey(name: 'orderDetail') List<List<ServiceRequest_OrderDetail>>? orderDetail,
/// [quantityQuantity] An amount of service being requested which can be a
/// quantity ( for example $1,500 home modification), a ratio ( for example, 20
/// half day visits per month), or a range (2.0 to 1.8 Gy per fraction).

    @JsonKey(name: 'quantityQuantity') Quantity? quantityQuantity,
/// [quantityRatio] An amount of service being requested which can be a
/// quantity ( for example $1,500 home modification), a ratio ( for example, 20
/// half day visits per month), or a range (2.0 to 1.8 Gy per fraction).

    @JsonKey(name: 'quantityRatio') Ratio? quantityRatio,
/// [quantityRange] An amount of service being requested which can be a
/// quantity ( for example $1,500 home modification), a ratio ( for example, 20
/// half day visits per month), or a range (2.0 to 1.8 Gy per fraction).

    @JsonKey(name: 'quantityRange') Range? quantityRange,
/// [subject] On whom or what the service is to be performed. This is
/// usually a human patient, but can also be requested on animals, groups of
/// humans or animals, devices such as dialysis machines, or even locations
/// (typically for environmental scans).

    @JsonKey(name: 'subject') Reference? subject,
/// [focus] The actual focus of a service request when it is not the
/// subject of record representing something or someone associated with the
/// subject such as a spouse, parent, fetus, or donor. The focus of a service
/// request could also be an existing condition,  an intervention, the
/// subject's diet,  another service request on the subject,  or a body
/// structure such as tumor or implanted device.

    @JsonKey(name: 'focus') List<List<Reference>>? focus,
/// [encounter] An encounter that provides additional information about the
/// healthcare context in which this request is made.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [occurrenceDateTime] The date/time at which the requested service
/// should occur.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] The date/time at which the requested service should
/// occur.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [occurrenceTiming] The date/time at which the requested service should
/// occur.

    @JsonKey(name: 'occurrenceTiming') Timing? occurrenceTiming,
/// [asNeededBoolean] If a CodeableConcept is present, it indicates the
/// pre-condition for performing the service.  For example "pain", "on
/// flare-up", etc.

    @JsonKey(name: 'asNeededBoolean') FhirBoolean? asNeededBoolean,
/// [_asNeededBoolean] Extensions for asNeededBoolean

    @JsonKey(name: '_asNeededBoolean') PrimitiveElement? asNeededBooleanElement,
/// [asNeededCodeableConcept] If a CodeableConcept is present, it indicates
/// the pre-condition for performing the service.  For example "pain", "on
/// flare-up", etc.

    @JsonKey(name: 'asNeededCodeableConcept') CodeableConcept? asNeededCodeableConcept,
/// [authoredOn] When the request transitioned to being actionable.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,
/// [requester] The individual who initiated the request and has
/// responsibility for its activation.

    @JsonKey(name: 'requester') Reference? requester,
/// [performerType] Desired type of performer for doing the requested
/// service.

    @JsonKey(name: 'performerType') CodeableConcept? performerType,
/// [performer] The desired performer for doing the requested service.  For
/// example, the surgeon, dermatopathologist, endoscopist, etc.

    @JsonKey(name: 'performer') List<List<Reference>>? performer,
/// [location] The preferred location(s) where the procedure should
/// actually happen in coded or free text form. E.g. at home or nursing day
/// care center.

    @JsonKey(name: 'location') List<List<CodeableReference>>? location,
/// [reason] An explanation or justification for why this service is being
/// requested in coded or textual form.   This is often for billing purposes.
/// May relate to the resources referred to in `supportingInfo`.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [insurance] Insurance plans, coverage extensions, pre-authorizations
/// and/or pre-determinations that may be needed for delivering the requested
/// service.

    @JsonKey(name: 'insurance') List<List<Reference>>? insurance,
/// [supportingInfo] Additional clinical information about the patient or
/// specimen that may influence the services or their interpretations.     This
/// information includes diagnosis, clinical findings and other observations.
/// In laboratory ordering these are typically referred to as "ask at order
/// entry questions (AOEs)".  This includes observations explicitly requested
/// by the producer (filler) to provide context or supporting information
/// needed to complete the order. For example,  reporting the amount of
/// inspired oxygen for blood gas measurements.

    @JsonKey(name: 'supportingInfo') List<List<CodeableReference>>? supportingInfo,
/// [specimen] One or more specimens that the laboratory procedure will
/// use.

    @JsonKey(name: 'specimen') List<List<Reference>>? specimen,
/// [bodySite] Anatomic location where the procedure should be performed.
/// This is the target site.

    @JsonKey(name: 'bodySite') List<List<CodeableConcept>>? bodySite,
/// [bodyStructure] Anatomic location where the procedure should be
/// performed. This is the target site.

    @JsonKey(name: 'bodyStructure') Reference? bodyStructure,
/// [note] Any other notes and comments made about the service request. For
/// example, internal billing notes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [patientInstruction] Instructions in terms that are understood by the
/// patient or consumer.

    @JsonKey(name: 'patientInstruction') List<List<ServiceRequest_PatientInstruction>>? patientInstruction,
/// [relevantHistory] Key events in the history of the request.

    @JsonKey(name: 'relevantHistory') List<List<Reference>>? relevantHistory,
  }) = _$ServiceRequest;

  @override
  String get fhirType => 'ServiceRequest';

  factory ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestFromJson(json);

  factory ServiceRequest.fromYaml(dynamic yaml) => yaml is String
      ? ServiceRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ServiceRequest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ServiceRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ServiceRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ServiceRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
