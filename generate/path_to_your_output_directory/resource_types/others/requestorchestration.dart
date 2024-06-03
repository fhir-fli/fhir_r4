import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RequestOrchestration] A set of related requests that can be used to
/// capture intended activities that have inter-dependencies such as "give this
/// medication after that one".

@freezed
class RequestOrchestration with _$RequestOrchestration {
  const RequestOrchestration._();

  const factory RequestOrchestration({
/// [resourceType] This is a RequestOrchestration resource

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
/// [identifier] Allows a service to provide a unique, business identifier
/// for the request.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] A canonical URL referencing a FHIR-defined
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this request.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// [_instantiatesCanonical] Extensions for instantiatesCanonical

    @JsonKey(name: '_instantiatesCanonical') List<PrimitiveElement>? instantiatesCanonicalElement,
/// [instantiatesUri] A URL referencing an externally defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this request.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<PrimitiveElement>? instantiatesUriElement,
/// [basedOn] A plan, proposal or order that is fulfilled in whole or in
/// part by this request.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [replaces] Completed or terminated request(s) whose function is taken
/// by this new request.

    @JsonKey(name: 'replaces') List<List<Reference>>? replaces,
/// [groupIdentifier] A shared identifier common to multiple independent
/// Request instances that were activated/authorized more or less
/// simultaneously by a single author.  The presence of the same identifier on
/// each request ties those requests together and may have business
/// ramifications in terms of reporting of results, billing, etc.  E.g. a
/// requisition number shared by a set of lab tests ordered together, or a
/// prescription number shared by all meds ordered at one time.

    @JsonKey(name: 'groupIdentifier') Identifier? groupIdentifier,
/// [status] The current state of the request. For request orchestrations,
/// the status reflects the status of all the requests in the orchestration.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [intent] Indicates the level of authority/intentionality associated
/// with the request and where the request fits into the workflow chain.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [priority] Indicates how quickly the request should be addressed with
/// respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [code] A code that identifies what the overall request orchestration
/// is.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [subject] The subject for which the request orchestration was created.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] Describes the context of the request orchestration, if any.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [authoredOn] Indicates when the request orchestration was created.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,
/// [author] Provides a reference to the author of the request
/// orchestration.

    @JsonKey(name: 'author') Reference? author,
/// [reason] Describes the reason for the request orchestration in coded or
/// textual form.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [goal] Goals that are intended to be achieved by following the requests
/// in this RequestOrchestration.

    @JsonKey(name: 'goal') List<List<Reference>>? goal,
/// [note] Provides a mechanism to communicate additional information about
/// the response.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [action] The actions, if any, produced by the evaluation of the
/// artifact.

    @JsonKey(name: 'action') List<List<RequestOrchestration_Action>>? action,
  }) = _$RequestOrchestration;

  @override
  String get fhirType => 'RequestOrchestration';

  factory RequestOrchestration.fromJson(Map<String, dynamic> json) =>
      _$RequestOrchestrationFromJson(json);

  factory RequestOrchestration.fromYaml(dynamic yaml) => yaml is String
      ? RequestOrchestration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RequestOrchestration.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RequestOrchestration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RequestOrchestration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RequestOrchestrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
