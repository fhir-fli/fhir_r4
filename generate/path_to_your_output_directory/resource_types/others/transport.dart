/// /// [Transport] Record of transport of item.

@freezed
class Transport with _$Transport {
  const Transport._();

  const factory Transport({
/// /// [resourceType] This is a Transport resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [identifier] Identifier for the transport event that is used to
/// identify it across multiple disparate systems.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [instantiatesCanonical] The URL pointing to a *FHIR*-defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this Transport.

    @JsonKey(name: 'instantiatesCanonical') FhirCanonical? instantiatesCanonical,
/// /// [instantiatesUri] The URL pointing to an *externally* maintained
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this Transport.

    @JsonKey(name: 'instantiatesUri') FhirUri? instantiatesUri,
/// /// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') FhirElement? instantiatesUriElement,
/// /// [basedOn] BasedOn refers to a higher-level authorization that triggered
/// the creation of the transport.  It references a "request" resource such as
/// a ServiceRequest or Transport, which is distinct from the "request"
/// resource the Transport is seeking to fulfill.  This latter resource is
/// referenced by FocusOn.  For example, based on a ServiceRequest (= BasedOn),
/// a transport is created to fulfill a procedureRequest ( = FocusOn ) to
/// transport a specimen to the lab.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// /// [groupIdentifier] A shared identifier common to multiple independent
/// Request instances that were activated/authorized more or less
/// simultaneously by a single author.  The presence of the same identifier on
/// each request ties those requests together and may have business
/// ramifications in terms of reporting of results, billing, etc.  E.g. a
/// requisition number shared by a set of lab tests ordered together, or a
/// prescription number shared by all meds ordered at one time.

    @JsonKey(name: 'groupIdentifier') Identifier? groupIdentifier,
/// /// [partOf] A larger event of which this particular event is a component
/// or step.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// /// [status] A code specifying the state of the transport event.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [statusReason] An explanation as to why this transport is held, failed,
/// was refused, etc.

    @JsonKey(name: 'statusReason') CodeableConcept? statusReason,
/// /// [intent] Indicates the "level" of actionability associated with the
/// Transport, i.e. i+R[9]Cs this a proposed transport, a planned transport, an
/// actionable transport, etc.

    @JsonKey(name: 'intent') FhirCode? intent,
/// /// [_intent] Extensions for intent

    @JsonKey(name: '_intent') FhirElement? intentElement,
/// /// [priority] Indicates how quickly the Transport should be addressed with
/// respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// /// [_priority] Extensions for priority

    @JsonKey(name: '_priority') FhirElement? priorityElement,
/// /// [code] A name or code (or both) briefly describing what the transport
/// involves.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [description] A free-text description of what is to be performed.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [focus] The request being actioned or the resource being manipulated by
/// this transport.

    @JsonKey(name: 'focus') Reference? focus,
/// /// [for] The entity who benefits from the performance of the service
/// specified in the transport (e.g., the patient).

    @JsonKey(name: 'for') Reference? for,
/// /// [encounter] The healthcare event  (e.g. a patient and healthcare
/// provider interaction) during which this transport was created.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [completionTime] Identifies the completion time of the event (the
/// occurrence).

    @JsonKey(name: 'completionTime') FhirDateTime? completionTime,
/// /// [_completionTime] Extensions for completionTime

    @JsonKey(name: '_completionTime') FhirElement? completionTimeElement,
/// /// [authoredOn] The date and time this transport was created.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// /// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') FhirElement? authoredOnElement,
/// /// [lastModified] The date and time of last modification to this
/// transport.

    @JsonKey(name: 'lastModified') FhirDateTime? lastModified,
/// /// [_lastModified] Extensions for lastModified

    @JsonKey(name: '_lastModified') FhirElement? lastModifiedElement,
/// /// [requester] The creator of the transport.

    @JsonKey(name: 'requester') Reference? requester,
/// /// [performerType] The kind of participant that should perform the
/// transport.

    @JsonKey(name: 'performerType') List<List<CodeableConcept>>? performerType,
/// /// [owner] Individual organization or Device currently responsible for
/// transport execution.

    @JsonKey(name: 'owner') Reference? owner,
/// /// [location] Principal physical location where this transport is
/// performed.

    @JsonKey(name: 'location') Reference? location,
/// /// [insurance] Insurance plans, coverage extensions, pre-authorizations
/// and/or pre-determinations that may be relevant to the Transport.

    @JsonKey(name: 'insurance') List<List<Reference>>? insurance,
/// /// [note] Free-text information captured about the transport as it
/// progresses.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [relevantHistory] Links to Provenance records for past versions of this
/// Transport that identify key state transitions or updates that are likely to
/// be relevant to a user looking at the current version of the transport.

    @JsonKey(name: 'relevantHistory') List<List<Reference>>? relevantHistory,
/// /// [restriction] If the Transport.focus is a request resource and the
/// transport is seeking fulfillment (i.e. is asking for the request to be
/// actioned), this element identifies any limitations on what parts of the
/// referenced request should be actioned.

    @JsonKey(name: 'restriction') Transport_Restriction? restriction,
/// /// [input] Additional information that may be needed in the execution of
/// the transport.

    @JsonKey(name: 'input') List<List<Transport_Input>>? input,
/// /// [output] Outputs produced by the Transport.

    @JsonKey(name: 'output') List<List<Transport_Output>>? output,
/// /// [requestedLocation] The desired or final location for the transport.

    @JsonKey(name: 'requestedLocation') Reference? requestedLocation,
/// /// [currentLocation] The current location for the entity to be
/// transported.

    @JsonKey(name: 'currentLocation') Reference? currentLocation,
/// /// [reason] A resource reference indicating why this transport needs to be
/// performed.

    @JsonKey(name: 'reason') CodeableReference? reason,
/// /// [history] The transport event prior to this one.

    @JsonKey(name: 'history') Reference? history,
  }) = _$Transport;

  @override
  String get fhirType => 'Transport';

  factory Transport.fromJson(Map<String, dynamic> json) =>
      _$TransportFromJson(json);

  factory Transport.fromYaml(dynamic yaml) => yaml is String
      ? Transport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Transport.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Transport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Transport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TransportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
