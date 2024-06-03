import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Task] A task to be performed as a part of a workflow and the related
/// informations like inputs, outputs and execution progress. While very simple
/// workflows can be implemented with Request alone, most workflows would
/// require a Task (explicit or contained) as a means to track the execution
/// data (i.e. inputs, outputs, status). Please refer to the workflow page for
/// more details.

@freezed
class Task with _$Task {
  const Task._();

  const factory Task({
/// [resourceType] This is a Task resource

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
/// [identifier] The business identifier for this task.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [instantiatesCanonical] The URL pointing to a *FHIR*-defined protocol,
/// guideline, orderset or other definition that is adhered to in whole or in
/// part by this Task.

    @JsonKey(name: 'instantiatesCanonical') FhirCanonical? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an *externally* maintained
/// protocol, guideline, orderset or other definition that is adhered to in
/// whole or in part by this Task.

    @JsonKey(name: 'instantiatesUri') FhirUri? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') PrimitiveElement? instantiatesUriElement,
/// [basedOn] BasedOn refers to a higher-level authorization that triggered
/// the creation of the task.  It references a "request" resource such as a
/// ServiceRequest, MedicationRequest, CarePlan, etc. which is distinct from
/// the "request" resource the task is seeking to fulfill.  This latter
/// resource is referenced by focus.  For example, based on a CarePlan (=
/// basedOn), a task is created to fulfill a ServiceRequest ( = focus ) to
/// collect a specimen from a patient.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [groupIdentifier] A shared identifier common to multiple independent
/// Task and Request instances that were activated/authorized more or less
/// simultaneously by a single author.  The presence of the same identifier on
/// each request ties those requests together and may have business
/// ramifications in terms of reporting of results, billing, etc.  E.g. a
/// requisition number shared by a set of lab tests ordered together, or a
/// prescription number shared by all meds ordered at one time.

    @JsonKey(name: 'groupIdentifier') Identifier? groupIdentifier,
/// [partOf] Task that this particular task is part of.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// [status] The current status of the task.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusReason] An explanation as to why this task is held, failed, was
/// refused, etc.

    @JsonKey(name: 'statusReason') CodeableReference? statusReason,
/// [businessStatus] Contains business-specific nuances of the business
/// state.

    @JsonKey(name: 'businessStatus') CodeableConcept? businessStatus,
/// [intent] Indicates the "level" of actionability associated with the
/// Task, i.e. i+R[9]Cs this a proposed task, a planned task, an actionable
/// task, etc.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [priority] Indicates how quickly the Task should be addressed with
/// respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [doNotPerform] If true indicates that the Task is asking for the
/// specified action to *not* occur.

    @JsonKey(name: 'doNotPerform') FhirBoolean? doNotPerform,
/// [_doNotPerform] Extensions for doNotPerform

    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
/// [code] A name or code (or both) briefly describing what the task
/// involves.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [description] A free-text description of what is to be performed.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [focus] The request being fulfilled or the resource being manipulated
/// (changed, suspended, etc.) by this task.

    @JsonKey(name: 'focus') Reference? focus,
/// [for] The entity who benefits from the performance of the service
/// specified in the task (e.g., the patient).

    @JsonKey(name: 'for') Reference? for,
/// [encounter] The healthcare event  (e.g. a patient and healthcare
/// provider interaction) during which this task was created.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [requestedPeriod] Indicates the start and/or end of the period of time
/// when completion of the task is desired to take place.

    @JsonKey(name: 'requestedPeriod') Period? requestedPeriod,
/// [executionPeriod] Identifies the time action was first taken against
/// the task (start) and/or the time final action was taken against the task
/// prior to marking it as completed (end).

    @JsonKey(name: 'executionPeriod') Period? executionPeriod,
/// [authoredOn] The date and time this task was created.

    @JsonKey(name: 'authoredOn') FhirDateTime? authoredOn,
/// [_authoredOn] Extensions for authoredOn

    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,
/// [lastModified] The date and time of last modification to this task.

    @JsonKey(name: 'lastModified') FhirDateTime? lastModified,
/// [_lastModified] Extensions for lastModified

    @JsonKey(name: '_lastModified') PrimitiveElement? lastModifiedElement,
/// [requester] The creator of the task.

    @JsonKey(name: 'requester') Reference? requester,
/// [requestedPerformer] The kind of participant or specific participant
/// that should perform the task.

    @JsonKey(name: 'requestedPerformer') List<List<CodeableReference>>? requestedPerformer,
/// [owner] Party responsible for managing task execution.

    @JsonKey(name: 'owner') Reference? owner,
/// [performer] The entity who performed the requested task.

    @JsonKey(name: 'performer') List<List<Task_Performer>>? performer,
/// [location] Principal physical location where this task is performed.

    @JsonKey(name: 'location') Reference? location,
/// [reason] A description, code, or reference indicating why this task
/// needs to be performed.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [insurance] Insurance plans, coverage extensions, pre-authorizations
/// and/or pre-determinations that may be relevant to the Task.

    @JsonKey(name: 'insurance') List<List<Reference>>? insurance,
/// [note] Free-text information captured about the task as it progresses.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [relevantHistory] Links to Provenance records for past versions of this
/// Task that identify key state transitions or updates that are likely to be
/// relevant to a user looking at the current version of the task.

    @JsonKey(name: 'relevantHistory') List<List<Reference>>? relevantHistory,
/// [restriction] If the Task.focus is a request resource and the task is
/// seeking fulfillment (i.e. is asking for the request to be actioned), this
/// element identifies any limitations on what parts of the referenced request
/// should be actioned.

    @JsonKey(name: 'restriction') Task_Restriction? restriction,
/// [input] Additional information that may be needed in the execution of
/// the task.

    @JsonKey(name: 'input') List<List<Task_Input>>? input,
/// [output] Outputs produced by the Task.

    @JsonKey(name: 'output') List<List<Task_Output>>? output,
  }) = _$Task;

  @override
  String get fhirType => 'Task';

  factory Task.fromJson(Map<String, dynamic> json) =>
      _$TaskFromJson(json);

  factory Task.fromYaml(dynamic yaml) => yaml is String
      ? Task.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Task.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Task cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Task.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TaskFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
