// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'task.freezed.dart';
part 'task.g.dart';

/// [Task] A task to be performed.
@freezed
class Task extends DomainResource with _$Task {
  /// [Task] A task to be performed.
  Task._();

  /// [Task] A task to be performed.
  ///
  /// [resourceType] This is a Task resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] The business identifier for this task.
  ///
  /// [instantiatesCanonical] The URL pointing to a *FHIR*-defined protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this Task.
  ///
  /// [instantiatesUri] The URL pointing to an *externally* maintained
  /// protocol, guideline, orderset or other definition that is adhered to in
  ///  whole or in part by this Task.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [basedOn] BasedOn refers to a higher-level authorization that triggered
  /// the creation of the task.  It references a "request" resource such as a
  /// ServiceRequest, MedicationRequest, ServiceRequest, CarePlan, etc. which is
  /// distinct from the "request" resource the task is seeking to fulfill.  This
  /// latter resource is referenced by FocusOn.  For example, based on a
  /// ServiceRequest (= BasedOn), a task is created to fulfill a
  ///  procedureRequest ( = FocusOn ) to collect a specimen from a patient.
  ///
  /// [groupIdentifier] An identifier that links together multiple tasks and
  ///  other requests that were created in the same context.
  ///
  /// [partOf] Task that this particular task is part of.
  ///
  /// [status] The current status of the task.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] An explanation as to why this task is held, failed, was
  ///  refused, etc.
  ///
  /// [businessStatus] Contains business-specific nuances of the business
  ///  state.
  ///
  /// [intent] Indicates the "level" of actionability associated with the Task,
  /// i.e. i+R[9]Cs this a proposed task, a planned task, an actionable task,
  ///  etc.
  ///
  /// [intentElement] Extensions for intent
  ///
  /// [priority] Indicates how quickly the Task should be addressed with
  ///  respect to other requests.
  ///
  /// [priorityElement] Extensions for priority
  ///
  /// [code] A name or code (or both) briefly describing what the task
  ///  involves.
  ///
  /// [description] A free-text description of what is to be performed.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [focus] The request being actioned or the resource being manipulated by
  ///  this task.
  ///
  /// [for] The entity who benefits from the performance of the service
  ///  specified in the task (e.g., the patient).
  ///
  /// [encounter] The healthcare event  (e.g. a patient and healthcare provider
  ///  interaction) during which this task was created.
  ///
  /// [executionPeriod] Identifies the time action was first taken against the
  /// task (start) and/or the time final action was taken against the task prior
  ///  to marking it as completed (end).
  ///
  /// [authoredOn] The date and time this task was created.
  ///
  /// [authoredOnElement] Extensions for authoredOn
  ///
  /// [lastModified] The date and time of last modification to this task.
  ///
  /// [lastModifiedElement] Extensions for lastModified
  ///
  /// [requester] The creator of the task.
  ///
  /// [performerType] The kind of participant that should perform the task.
  ///
  /// [owner] Individual organization or Device currently responsible for task
  ///  execution.
  ///
  /// [location] Principal physical location where the this task is performed.
  ///
  /// [reasonCode] A description or code indicating why this task needs to be
  ///  performed.
  ///
  /// [reasonReference] A resource reference indicating why this task needs to
  ///  be performed.
  ///
  /// [insurance] Insurance plans, coverage extensions, pre-authorizations
  ///  and/or pre-determinations that may be relevant to the Task.
  ///
  /// [note] Free-text information captured about the task as it progresses.
  ///
  /// [relevantHistory] Links to Provenance records for past versions of this
  /// Task that identify key state transitions or updates that are likely to be
  ///  relevant to a user looking at the current version of the task.
  ///
  /// [restriction] If the Task.focus is a request resource and the task is
  /// seeking fulfillment (i.e. is asking for the request to be actioned), this
  /// element identifies any limitations on what parts of the referenced request
  ///  should be actioned.
  ///
  /// [input] Additional information that may be needed in the execution of the
  ///  task.
  ///
  /// [output] Outputs produced by the Task.
  factory Task({
    @Default(R4ResourceType.Task)
    @JsonKey(unknownEnumValue: R4ResourceType.Task)

    /// [resourceType] This is a Task resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] The business identifier for this task.
    List<Identifier>? identifier,

    /// [instantiatesCanonical] The URL pointing to a *FHIR*-defined protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this Task.
    FhirCanonical? instantiatesCanonical,

    /// [instantiatesUri] The URL pointing to an *externally* maintained
    /// protocol, guideline, orderset or other definition that is adhered to in
    ///  whole or in part by this Task.
    FhirUri? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri') PrimitiveElement? instantiatesUriElement,

    /// [basedOn] BasedOn refers to a higher-level authorization that triggered
    /// the creation of the task.  It references a "request" resource such as a
    /// ServiceRequest, MedicationRequest, ServiceRequest, CarePlan, etc. which is
    /// distinct from the "request" resource the task is seeking to fulfill.  This
    /// latter resource is referenced by FocusOn.  For example, based on a
    /// ServiceRequest (= BasedOn), a task is created to fulfill a
    ///  procedureRequest ( = FocusOn ) to collect a specimen from a patient.
    List<Reference>? basedOn,

    /// [groupIdentifier] An identifier that links together multiple tasks and
    ///  other requests that were created in the same context.
    Identifier? groupIdentifier,

    /// [partOf] Task that this particular task is part of.
    List<Reference>? partOf,

    /// [status] The current status of the task.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusReason] An explanation as to why this task is held, failed, was
    ///  refused, etc.
    CodeableConcept? statusReason,

    /// [businessStatus] Contains business-specific nuances of the business
    ///  state.
    CodeableConcept? businessStatus,

    /// [intent] Indicates the "level" of actionability associated with the Task,
    /// i.e. i+R[9]Cs this a proposed task, a planned task, an actionable task,
    ///  etc.
    FhirCode? intent,

    /// [intentElement] Extensions for intent
    @JsonKey(name: '_intent') PrimitiveElement? intentElement,

    /// [priority] Indicates how quickly the Task should be addressed with
    ///  respect to other requests.
    FhirCode? priority,

    /// [priorityElement] Extensions for priority
    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,

    /// [code] A name or code (or both) briefly describing what the task
    ///  involves.
    CodeableConcept? code,

    /// [description] A free-text description of what is to be performed.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [focus] The request being actioned or the resource being manipulated by
    ///  this task.
    Reference? focus,

    /// [for] The entity who benefits from the performance of the service
    ///  specified in the task (e.g., the patient).
    @JsonKey(name: 'for') Reference? for_,

    /// [encounter] The healthcare event  (e.g. a patient and healthcare provider
    ///  interaction) during which this task was created.
    Reference? encounter,

    /// [executionPeriod] Identifies the time action was first taken against the
    /// task (start) and/or the time final action was taken against the task prior
    ///  to marking it as completed (end).
    Period? executionPeriod,

    /// [authoredOn] The date and time this task was created.
    FhirDateTime? authoredOn,

    /// [authoredOnElement] Extensions for authoredOn
    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,

    /// [lastModified] The date and time of last modification to this task.
    FhirDateTime? lastModified,

    /// [lastModifiedElement] Extensions for lastModified
    @JsonKey(name: '_lastModified') PrimitiveElement? lastModifiedElement,

    /// [requester] The creator of the task.
    Reference? requester,

    /// [performerType] The kind of participant that should perform the task.
    List<CodeableConcept>? performerType,

    /// [owner] Individual organization or Device currently responsible for task
    ///  execution.
    Reference? owner,

    /// [location] Principal physical location where the this task is performed.
    Reference? location,

    /// [reasonCode] A description or code indicating why this task needs to be
    ///  performed.
    CodeableConcept? reasonCode,

    /// [reasonReference] A resource reference indicating why this task needs to
    ///  be performed.
    Reference? reasonReference,

    /// [insurance] Insurance plans, coverage extensions, pre-authorizations
    ///  and/or pre-determinations that may be relevant to the Task.
    List<Reference>? insurance,

    /// [note] Free-text information captured about the task as it progresses.
    List<Annotation>? note,

    /// [relevantHistory] Links to Provenance records for past versions of this
    /// Task that identify key state transitions or updates that are likely to be
    ///  relevant to a user looking at the current version of the task.
    List<Reference>? relevantHistory,

    /// [restriction] If the Task.focus is a request resource and the task is
    /// seeking fulfillment (i.e. is asking for the request to be actioned), this
    /// element identifies any limitations on what parts of the referenced request
    ///  should be actioned.
    TaskRestriction? restriction,

    /// [input] Additional information that may be needed in the execution of the
    ///  task.
    List<TaskInput>? input,

    /// [output] Outputs produced by the Task.
    List<TaskOutput>? output,
  }) = _Task;

  @override
  String get fhirType => 'Task';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Task.fromYaml(dynamic yaml) => yaml is String
      ? Task.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Task.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Task cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  /// Acts like a constructor, returns a [Task], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Task.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TaskFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [TaskRestriction] A task to be performed.
@freezed

/// [TaskRestriction] A task to be performed.
@freezed
class TaskRestriction extends BackboneElement with _$TaskRestriction {
  /// [TaskRestriction] A task to be performed.
  TaskRestriction._();

  /// [TaskRestriction] A task to be performed.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [repetitions] Indicates the number of times the requested action should
  ///  occur.
  ///
  /// [repetitionsElement] Extensions for repetitions
  ///
  /// [period] Over what time-period is fulfillment sought.
  ///
  /// [recipient] For requests that are targeted to more than on potential
  ///  recipient/target, for whom is fulfillment sought?
  factory TaskRestriction({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [repetitions] Indicates the number of times the requested action should
    ///  occur.
    FhirPositiveInt? repetitions,

    /// [repetitionsElement] Extensions for repetitions
    @JsonKey(name: '_repetitions') PrimitiveElement? repetitionsElement,

    /// [period] Over what time-period is fulfillment sought.
    Period? period,

    /// [recipient] For requests that are targeted to more than on potential
    ///  recipient/target, for whom is fulfillment sought?
    List<Reference>? recipient,
  }) = _TaskRestriction;

  @override
  String get fhirType => 'TaskRestriction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TaskRestriction.fromYaml(dynamic yaml) => yaml is String
      ? TaskRestriction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TaskRestriction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TaskRestriction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TaskRestriction.fromJson(Map<String, dynamic> json) =>
      _$TaskRestrictionFromJson(json);

  /// Acts like a constructor, returns a [TaskRestriction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TaskRestriction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TaskRestrictionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [TaskInput] A task to be performed.
@freezed

/// [TaskInput] A task to be performed.
@freezed
class TaskInput extends BackboneElement with _$TaskInput {
  /// [TaskInput] A task to be performed.
  TaskInput._();

  /// [TaskInput] A task to be performed.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] A code or description indicating how the input is intended to be
  ///  used as part of the task execution.
  ///
  /// [valueBase64Binary] The value of the input parameter as a basic type.
  ///
  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  ///
  /// [valueBoolean] The value of the input parameter as a basic type.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueCanonical] The value of the input parameter as a basic type.
  ///
  /// [valueCanonicalElement] Extensions for valueCanonical
  ///
  /// [valueCode] The value of the input parameter as a basic type.
  ///
  /// [valueCodeElement] Extensions for valueCode
  ///
  /// [valueDate] The value of the input parameter as a basic type.
  ///
  /// [valueDateElement] Extensions for valueDate
  ///
  /// [valueDateTime] The value of the input parameter as a basic type.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valueDecimal] The value of the input parameter as a basic type.
  ///
  /// [valueDecimalElement] Extensions for valueDecimal
  ///
  /// [valueId] The value of the input parameter as a basic type.
  ///
  /// [valueIdElement] Extensions for valueId
  ///
  /// [valueInstant] The value of the input parameter as a basic type.
  ///
  /// [valueInstantElement] Extensions for valueInstant
  ///
  /// [valueInteger] The value of the input parameter as a basic type.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueMarkdown] The value of the input parameter as a basic type.
  ///
  /// [valueMarkdownElement] Extensions for valueMarkdown
  ///
  /// [valueOid] The value of the input parameter as a basic type.
  ///
  /// [valueOidElement] Extensions for valueOid
  ///
  /// [valuePositiveInt] The value of the input parameter as a basic type.
  ///
  /// [valuePositiveIntElement] Extensions for valuePositiveInt
  ///
  /// [valueString] The value of the input parameter as a basic type.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueTime] The value of the input parameter as a basic type.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueUnsignedInt] The value of the input parameter as a basic type.
  ///
  /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
  ///
  /// [valueUri] The value of the input parameter as a basic type.
  ///
  /// [valueUriElement] Extensions for valueUri
  ///
  /// [valueUrl] The value of the input parameter as a basic type.
  ///
  /// [valueUrlElement] Extensions for valueUrl
  ///
  /// [valueUuid] The value of the input parameter as a basic type.
  ///
  /// [valueUuidElement] Extensions for valueUuid
  ///
  /// [valueAddress] The value of the input parameter as a basic type.
  ///
  /// [valueAge] The value of the input parameter as a basic type.
  ///
  /// [valueAnnotation] The value of the input parameter as a basic type.
  ///
  /// [valueAttachment] The value of the input parameter as a basic type.
  ///
  /// [valueCodeableConcept] The value of the input parameter as a basic type.
  ///
  /// [valueCoding] The value of the input parameter as a basic type.
  ///
  /// [valueContactPoint] The value of the input parameter as a basic type.
  ///
  /// [valueCount] The value of the input parameter as a basic type.
  ///
  /// [valueDistance] The value of the input parameter as a basic type.
  ///
  /// [valueDuration] The value of the input parameter as a basic type.
  ///
  /// [valueHumanName] The value of the input parameter as a basic type.
  ///
  /// [valueIdentifier] The value of the input parameter as a basic type.
  ///
  /// [valueMoney] The value of the input parameter as a basic type.
  ///
  /// [valuePeriod] The value of the input parameter as a basic type.
  ///
  /// [valueQuantity] The value of the input parameter as a basic type.
  ///
  /// [valueRange] The value of the input parameter as a basic type.
  ///
  /// [valueRatio] The value of the input parameter as a basic type.
  ///
  /// [valueReference] The value of the input parameter as a basic type.
  ///
  /// [valueSampledData] The value of the input parameter as a basic type.
  ///
  /// [valueSignature] The value of the input parameter as a basic type.
  ///
  /// [valueTiming] The value of the input parameter as a basic type.
  ///
  /// [valueContactDetail] The value of the input parameter as a basic type.
  ///
  /// [valueContributor] The value of the input parameter as a basic type.
  ///
  /// [valueDataRequirement] The value of the input parameter as a basic type.
  ///
  /// [valueExpression] The value of the input parameter as a basic type.
  ///
  /// [valueParameterDefinition] The value of the input parameter as a basic
  ///  type.
  ///
  /// [valueRelatedArtifact] The value of the input parameter as a basic type.
  ///
  /// [valueTriggerDefinition] The value of the input parameter as a basic
  ///  type.
  ///
  /// [valueUsageContext] The value of the input parameter as a basic type.
  ///
  /// [valueDosage] The value of the input parameter as a basic type.
  ///
  /// [valueMeta] The value of the input parameter as a basic type.
  factory TaskInput({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] A code or description indicating how the input is intended to be
    ///  used as part of the task execution.
    required CodeableConcept type,

    /// [valueBase64Binary] The value of the input parameter as a basic type.
    FhirBase64Binary? valueBase64Binary,

    /// [valueBase64BinaryElement] Extensions for valueBase64Binary
    @JsonKey(name: '_valueBase64Binary')
    PrimitiveElement? valueBase64BinaryElement,

    /// [valueBoolean] The value of the input parameter as a basic type.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueCanonical] The value of the input parameter as a basic type.
    FhirCanonical? valueCanonical,

    /// [valueCanonicalElement] Extensions for valueCanonical
    @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,

    /// [valueCode] The value of the input parameter as a basic type.
    FhirCode? valueCode,

    /// [valueCodeElement] Extensions for valueCode
    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,

    /// [valueDate] The value of the input parameter as a basic type.
    FhirDate? valueDate,

    /// [valueDateElement] Extensions for valueDate
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueDateTime] The value of the input parameter as a basic type.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valueDecimal] The value of the input parameter as a basic type.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,

    /// [valueId] The value of the input parameter as a basic type.
    FhirId? valueId,

    /// [valueIdElement] Extensions for valueId
    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,

    /// [valueInstant] The value of the input parameter as a basic type.
    FhirInstant? valueInstant,

    /// [valueInstantElement] Extensions for valueInstant
    @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,

    /// [valueInteger] The value of the input parameter as a basic type.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueMarkdown] The value of the input parameter as a basic type.
    FhirMarkdown? valueMarkdown,

    /// [valueMarkdownElement] Extensions for valueMarkdown
    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,

    /// [valueOid] The value of the input parameter as a basic type.
    FhirOid? valueOid,

    /// [valueOidElement] Extensions for valueOid
    @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,

    /// [valuePositiveInt] The value of the input parameter as a basic type.
    FhirPositiveInt? valuePositiveInt,

    /// [valuePositiveIntElement] Extensions for valuePositiveInt
    @JsonKey(name: '_valuePositiveInt')
    PrimitiveElement? valuePositiveIntElement,

    /// [valueString] The value of the input parameter as a basic type.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueTime] The value of the input parameter as a basic type.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueUnsignedInt] The value of the input parameter as a basic type.
    FhirUnsignedInt? valueUnsignedInt,

    /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
    @JsonKey(name: '_valueUnsignedInt')
    PrimitiveElement? valueUnsignedIntElement,

    /// [valueUri] The value of the input parameter as a basic type.
    FhirUri? valueUri,

    /// [valueUriElement] Extensions for valueUri
    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,

    /// [valueUrl] The value of the input parameter as a basic type.
    FhirUrl? valueUrl,

    /// [valueUrlElement] Extensions for valueUrl
    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,

    /// [valueUuid] The value of the input parameter as a basic type.
    FhirUuid? valueUuid,

    /// [valueUuidElement] Extensions for valueUuid
    @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,

    /// [valueAddress] The value of the input parameter as a basic type.
    Address? valueAddress,

    /// [valueAge] The value of the input parameter as a basic type.
    Age? valueAge,

    /// [valueAnnotation] The value of the input parameter as a basic type.
    Annotation? valueAnnotation,

    /// [valueAttachment] The value of the input parameter as a basic type.
    Attachment? valueAttachment,

    /// [valueCodeableConcept] The value of the input parameter as a basic type.
    CodeableConcept? valueCodeableConcept,

    /// [valueCoding] The value of the input parameter as a basic type.
    Coding? valueCoding,

    /// [valueContactPoint] The value of the input parameter as a basic type.
    ContactPoint? valueContactPoint,

    /// [valueCount] The value of the input parameter as a basic type.
    Count? valueCount,

    /// [valueDistance] The value of the input parameter as a basic type.
    Distance? valueDistance,

    /// [valueDuration] The value of the input parameter as a basic type.
    FhirDuration? valueDuration,

    /// [valueHumanName] The value of the input parameter as a basic type.
    HumanName? valueHumanName,

    /// [valueIdentifier] The value of the input parameter as a basic type.
    Identifier? valueIdentifier,

    /// [valueMoney] The value of the input parameter as a basic type.
    Money? valueMoney,

    /// [valuePeriod] The value of the input parameter as a basic type.
    Period? valuePeriod,

    /// [valueQuantity] The value of the input parameter as a basic type.
    Quantity? valueQuantity,

    /// [valueRange] The value of the input parameter as a basic type.
    Range? valueRange,

    /// [valueRatio] The value of the input parameter as a basic type.
    Ratio? valueRatio,

    /// [valueReference] The value of the input parameter as a basic type.
    Reference? valueReference,

    /// [valueSampledData] The value of the input parameter as a basic type.
    SampledData? valueSampledData,

    /// [valueSignature] The value of the input parameter as a basic type.
    Signature? valueSignature,

    /// [valueTiming] The value of the input parameter as a basic type.
    Timing? valueTiming,

    /// [valueContactDetail] The value of the input parameter as a basic type.
    ContactDetail? valueContactDetail,

    /// [valueContributor] The value of the input parameter as a basic type.
    Contributor? valueContributor,

    /// [valueDataRequirement] The value of the input parameter as a basic type.
    DataRequirement? valueDataRequirement,

    /// [valueExpression] The value of the input parameter as a basic type.
    FhirExpression? valueExpression,

    /// [valueParameterDefinition] The value of the input parameter as a basic
    ///  type.
    ParameterDefinition? valueParameterDefinition,

    /// [valueRelatedArtifact] The value of the input parameter as a basic type.
    RelatedArtifact? valueRelatedArtifact,

    /// [valueTriggerDefinition] The value of the input parameter as a basic
    ///  type.
    TriggerDefinition? valueTriggerDefinition,

    /// [valueUsageContext] The value of the input parameter as a basic type.
    UsageContext? valueUsageContext,

    /// [valueDosage] The value of the input parameter as a basic type.
    Dosage? valueDosage,

    /// [valueMeta] The value of the input parameter as a basic type.
    FhirMeta? valueMeta,
  }) = _TaskInput;

  @override
  String get fhirType => 'TaskInput';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TaskInput.fromYaml(dynamic yaml) => yaml is String
      ? TaskInput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TaskInput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TaskInput cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TaskInput.fromJson(Map<String, dynamic> json) =>
      _$TaskInputFromJson(json);

  /// Acts like a constructor, returns a [TaskInput], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TaskInput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TaskInputFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [TaskOutput] A task to be performed.
@freezed

/// [TaskOutput] A task to be performed.
@freezed
class TaskOutput extends BackboneElement with _$TaskOutput {
  /// [TaskOutput] A task to be performed.
  TaskOutput._();

  /// [TaskOutput] A task to be performed.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The name of the Output parameter.
  ///
  /// [valueBase64Binary] The value of the Output parameter as a basic type.
  ///
  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  ///
  /// [valueBoolean] The value of the Output parameter as a basic type.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueCanonical] The value of the Output parameter as a basic type.
  ///
  /// [valueCanonicalElement] Extensions for valueCanonical
  ///
  /// [valueCode] The value of the Output parameter as a basic type.
  ///
  /// [valueCodeElement] Extensions for valueCode
  ///
  /// [valueDate] The value of the Output parameter as a basic type.
  ///
  /// [valueDateElement] Extensions for valueDate
  ///
  /// [valueDateTime] The value of the Output parameter as a basic type.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valueDecimal] The value of the Output parameter as a basic type.
  ///
  /// [valueDecimalElement] Extensions for valueDecimal
  ///
  /// [valueId] The value of the Output parameter as a basic type.
  ///
  /// [valueIdElement] Extensions for valueId
  ///
  /// [valueInstant] The value of the Output parameter as a basic type.
  ///
  /// [valueInstantElement] Extensions for valueInstant
  ///
  /// [valueInteger] The value of the Output parameter as a basic type.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueMarkdown] The value of the Output parameter as a basic type.
  ///
  /// [valueMarkdownElement] Extensions for valueMarkdown
  ///
  /// [valueOid] The value of the Output parameter as a basic type.
  ///
  /// [valueOidElement] Extensions for valueOid
  ///
  /// [valuePositiveInt] The value of the Output parameter as a basic type.
  ///
  /// [valuePositiveIntElement] Extensions for valuePositiveInt
  ///
  /// [valueString] The value of the Output parameter as a basic type.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueTime] The value of the Output parameter as a basic type.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueUnsignedInt] The value of the Output parameter as a basic type.
  ///
  /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
  ///
  /// [valueUri] The value of the Output parameter as a basic type.
  ///
  /// [valueUriElement] Extensions for valueUri
  ///
  /// [valueUrl] The value of the Output parameter as a basic type.
  ///
  /// [valueUrlElement] Extensions for valueUrl
  ///
  /// [valueUuid] The value of the Output parameter as a basic type.
  ///
  /// [valueUuidElement] Extensions for valueUuid
  ///
  /// [valueAddress] The value of the Output parameter as a basic type.
  ///
  /// [valueAge] The value of the Output parameter as a basic type.
  ///
  /// [valueAnnotation] The value of the Output parameter as a basic type.
  ///
  /// [valueAttachment] The value of the Output parameter as a basic type.
  ///
  /// [valueCodeableConcept] The value of the Output parameter as a basic type.
  ///
  /// [valueCoding] The value of the Output parameter as a basic type.
  ///
  /// [valueContactPoint] The value of the Output parameter as a basic type.
  ///
  /// [valueCount] The value of the Output parameter as a basic type.
  ///
  /// [valueDistance] The value of the Output parameter as a basic type.
  ///
  /// [valueDuration] The value of the Output parameter as a basic type.
  ///
  /// [valueHumanName] The value of the Output parameter as a basic type.
  ///
  /// [valueIdentifier] The value of the Output parameter as a basic type.
  ///
  /// [valueMoney] The value of the Output parameter as a basic type.
  ///
  /// [valuePeriod] The value of the Output parameter as a basic type.
  ///
  /// [valueQuantity] The value of the Output parameter as a basic type.
  ///
  /// [valueRange] The value of the Output parameter as a basic type.
  ///
  /// [valueRatio] The value of the Output parameter as a basic type.
  ///
  /// [valueReference] The value of the Output parameter as a basic type.
  ///
  /// [valueSampledData] The value of the Output parameter as a basic type.
  ///
  /// [valueSignature] The value of the Output parameter as a basic type.
  ///
  /// [valueTiming] The value of the Output parameter as a basic type.
  ///
  /// [valueContactDetail] The value of the Output parameter as a basic type.
  ///
  /// [valueContributor] The value of the Output parameter as a basic type.
  ///
  /// [valueDataRequirement] The value of the Output parameter as a basic type.
  ///
  /// [valueExpression] The value of the Output parameter as a basic type.
  ///
  /// [valueParameterDefinition] The value of the Output parameter as a basic
  ///  type.
  ///
  /// [valueRelatedArtifact] The value of the Output parameter as a basic type.
  ///
  /// [valueTriggerDefinition] The value of the Output parameter as a basic
  ///  type.
  ///
  /// [valueUsageContext] The value of the Output parameter as a basic type.
  ///
  /// [valueDosage] The value of the Output parameter as a basic type.
  ///
  /// [valueMeta] The value of the Output parameter as a basic type.
  factory TaskOutput({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The name of the Output parameter.
    required CodeableConcept type,

    /// [valueBase64Binary] The value of the Output parameter as a basic type.
    FhirBase64Binary? valueBase64Binary,

    /// [valueBase64BinaryElement] Extensions for valueBase64Binary
    @JsonKey(name: '_valueBase64Binary')
    PrimitiveElement? valueBase64BinaryElement,

    /// [valueBoolean] The value of the Output parameter as a basic type.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueCanonical] The value of the Output parameter as a basic type.
    FhirCanonical? valueCanonical,

    /// [valueCanonicalElement] Extensions for valueCanonical
    @JsonKey(name: '_valueCanonical') PrimitiveElement? valueCanonicalElement,

    /// [valueCode] The value of the Output parameter as a basic type.
    FhirCode? valueCode,

    /// [valueCodeElement] Extensions for valueCode
    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,

    /// [valueDate] The value of the Output parameter as a basic type.
    FhirDate? valueDate,

    /// [valueDateElement] Extensions for valueDate
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueDateTime] The value of the Output parameter as a basic type.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valueDecimal] The value of the Output parameter as a basic type.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,

    /// [valueId] The value of the Output parameter as a basic type.
    FhirId? valueId,

    /// [valueIdElement] Extensions for valueId
    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,

    /// [valueInstant] The value of the Output parameter as a basic type.
    FhirInstant? valueInstant,

    /// [valueInstantElement] Extensions for valueInstant
    @JsonKey(name: '_valueInstant') PrimitiveElement? valueInstantElement,

    /// [valueInteger] The value of the Output parameter as a basic type.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueMarkdown] The value of the Output parameter as a basic type.
    FhirMarkdown? valueMarkdown,

    /// [valueMarkdownElement] Extensions for valueMarkdown
    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,

    /// [valueOid] The value of the Output parameter as a basic type.
    FhirOid? valueOid,

    /// [valueOidElement] Extensions for valueOid
    @JsonKey(name: '_valueOid') PrimitiveElement? valueOidElement,

    /// [valuePositiveInt] The value of the Output parameter as a basic type.
    FhirPositiveInt? valuePositiveInt,

    /// [valuePositiveIntElement] Extensions for valuePositiveInt
    @JsonKey(name: '_valuePositiveInt')
    PrimitiveElement? valuePositiveIntElement,

    /// [valueString] The value of the Output parameter as a basic type.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueTime] The value of the Output parameter as a basic type.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueUnsignedInt] The value of the Output parameter as a basic type.
    FhirUnsignedInt? valueUnsignedInt,

    /// [valueUnsignedIntElement] Extensions for valueUnsignedInt
    @JsonKey(name: '_valueUnsignedInt')
    PrimitiveElement? valueUnsignedIntElement,

    /// [valueUri] The value of the Output parameter as a basic type.
    FhirUri? valueUri,

    /// [valueUriElement] Extensions for valueUri
    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,

    /// [valueUrl] The value of the Output parameter as a basic type.
    FhirUrl? valueUrl,

    /// [valueUrlElement] Extensions for valueUrl
    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,

    /// [valueUuid] The value of the Output parameter as a basic type.
    FhirUuid? valueUuid,

    /// [valueUuidElement] Extensions for valueUuid
    @JsonKey(name: '_valueUuid') PrimitiveElement? valueUuidElement,

    /// [valueAddress] The value of the Output parameter as a basic type.
    Address? valueAddress,

    /// [valueAge] The value of the Output parameter as a basic type.
    Age? valueAge,

    /// [valueAnnotation] The value of the Output parameter as a basic type.
    Annotation? valueAnnotation,

    /// [valueAttachment] The value of the Output parameter as a basic type.
    Attachment? valueAttachment,

    /// [valueCodeableConcept] The value of the Output parameter as a basic type.
    CodeableConcept? valueCodeableConcept,

    /// [valueCoding] The value of the Output parameter as a basic type.
    Coding? valueCoding,

    /// [valueContactPoint] The value of the Output parameter as a basic type.
    ContactPoint? valueContactPoint,

    /// [valueCount] The value of the Output parameter as a basic type.
    Count? valueCount,

    /// [valueDistance] The value of the Output parameter as a basic type.
    Distance? valueDistance,

    /// [valueDuration] The value of the Output parameter as a basic type.
    FhirDuration? valueDuration,

    /// [valueHumanName] The value of the Output parameter as a basic type.
    HumanName? valueHumanName,

    /// [valueIdentifier] The value of the Output parameter as a basic type.
    Identifier? valueIdentifier,

    /// [valueMoney] The value of the Output parameter as a basic type.
    Money? valueMoney,

    /// [valuePeriod] The value of the Output parameter as a basic type.
    Period? valuePeriod,

    /// [valueQuantity] The value of the Output parameter as a basic type.
    Quantity? valueQuantity,

    /// [valueRange] The value of the Output parameter as a basic type.
    Range? valueRange,

    /// [valueRatio] The value of the Output parameter as a basic type.
    Ratio? valueRatio,

    /// [valueReference] The value of the Output parameter as a basic type.
    Reference? valueReference,

    /// [valueSampledData] The value of the Output parameter as a basic type.
    SampledData? valueSampledData,

    /// [valueSignature] The value of the Output parameter as a basic type.
    Signature? valueSignature,

    /// [valueTiming] The value of the Output parameter as a basic type.
    Timing? valueTiming,

    /// [valueContactDetail] The value of the Output parameter as a basic type.
    ContactDetail? valueContactDetail,

    /// [valueContributor] The value of the Output parameter as a basic type.
    Contributor? valueContributor,

    /// [valueDataRequirement] The value of the Output parameter as a basic type.
    DataRequirement? valueDataRequirement,

    /// [valueExpression] The value of the Output parameter as a basic type.
    FhirExpression? valueExpression,

    /// [valueParameterDefinition] The value of the Output parameter as a basic
    ///  type.
    ParameterDefinition? valueParameterDefinition,

    /// [valueRelatedArtifact] The value of the Output parameter as a basic type.
    RelatedArtifact? valueRelatedArtifact,

    /// [valueTriggerDefinition] The value of the Output parameter as a basic
    ///  type.
    TriggerDefinition? valueTriggerDefinition,

    /// [valueUsageContext] The value of the Output parameter as a basic type.
    UsageContext? valueUsageContext,

    /// [valueDosage] The value of the Output parameter as a basic type.
    Dosage? valueDosage,

    /// [valueMeta] The value of the Output parameter as a basic type.
    FhirMeta? valueMeta,
  }) = _TaskOutput;

  @override
  String get fhirType => 'TaskOutput';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TaskOutput.fromYaml(dynamic yaml) => yaml is String
      ? TaskOutput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TaskOutput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TaskOutput cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TaskOutput.fromJson(Map<String, dynamic> json) =>
      _$TaskOutputFromJson(json);

  /// Acts like a constructor, returns a [TaskOutput], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TaskOutput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TaskOutputFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
