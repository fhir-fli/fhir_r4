// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'care_plan.freezed.dart';
part 'care_plan.g.dart';

/// [CarePlan] Describes the intention of how one or more practitioners
@freezed
class CarePlan with _$CarePlan implements DomainResource {
  /// [CarePlan] Describes the intention of how one or more practitioners
  const CarePlan._();

  /// [CarePlan] Describes the intention of how one or more practitioners
  /// intend to deliver care for a particular patient, group or community for a
  /// period of time, possibly limited to care for a specific condition or set
  ///  of conditions.
  ///
  /// [resourceType] This is a CarePlan resource
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
  /// [identifier] Business identifiers assigned to this care plan by the
  /// performer or other systems which remain constant as the resource is
  ///  updated and propagates from server to server.
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [basedOn] A care plan that is fulfilled in whole or in part by this care
  ///  plan.
  ///
  /// [replaces] Completed or terminated care plan whose function is taken by
  ///  this new care plan.
  ///
  /// [partOf] A larger care plan of which this particular care plan is a
  ///  component or step.
  ///
  /// [status] Indicates whether the plan is currently being acted upon,
  ///  represents future intentions or is now a historical record.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [intent] Indicates the level of authority/intentionality associated with
  ///  the care plan and where the care plan fits into the workflow chain.
  ///
  /// [intentElement] Extensions for intent
  ///
  /// [category] Identifies what "kind" of plan this is to support
  /// differentiation between multiple co-existing plans; e.g. "Home health",
  ///  "psychiatric", "asthma", "disease management", "wellness plan", etc.
  ///
  /// [title] Human-friendly name for the care plan.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [description] A description of the scope and nature of the plan.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [subject] Identifies the patient or group whose intended care is
  ///  described by the plan.
  ///
  /// [encounter] The Encounter during which this CarePlan was created or to
  ///  which the creation of this record is tightly associated.
  ///
  /// [period] Indicates when the plan did (or is intended to) come into effect
  ///  and end.
  ///
  /// [created] Represents when this particular CarePlan record was created in
  ///  the system, which is often a system-generated date.
  ///
  /// [createdElement] Extensions for created
  ///
  /// [author] When populated, the author is responsible for the care plan.
  ///  The care plan is attributed to the author.
  ///
  /// [contributor] Identifies the individual(s) or organization who provided
  ///  the contents of the care plan.
  ///
  /// [careTeam] Identifies all people and organizations who are expected to be
  ///  involved in the care envisioned by this plan.
  ///
  /// [addresses] Identifies the conditions/problems/concerns/diagnoses/etc.
  ///  whose management and/or mitigation are handled by this plan.
  ///
  /// [supportingInfo] Identifies portions of the patient's record that
  /// specifically influenced the formation of the plan.  These might include
  ///  comorbidities, recent procedures, limitations, recent assessments, etc.
  ///
  /// [goal] Describes the intended objective(s) of carrying out the care plan.
  ///
  /// [activity] Identifies a planned action to occur as part of the plan.  For
  /// example, a medication to be used, lab tests to perform, self-monitoring,
  ///  education, etc.
  ///
  /// [note] General notes about the care plan not covered elsewhere.
  const factory CarePlan({
    @Default(R4ResourceType.CarePlan)
    @JsonKey(unknownEnumValue: R4ResourceType.CarePlan)

    /// [resourceType] This is a CarePlan resource
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

    /// [identifier] Business identifiers assigned to this care plan by the
    /// performer or other systems which remain constant as the resource is
    ///  updated and propagates from server to server.
    List<Identifier>? identifier,

    /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
    /// guideline, questionnaire or other definition that is adhered to in whole
    ///  or in part by this CarePlan.
    List<FhirCanonical>? instantiatesCanonical,

    /// [instantiatesUri] The URL pointing to an externally maintained protocol,
    /// guideline, questionnaire or other definition that is adhered to in whole
    ///  or in part by this CarePlan.
    List<FhirUri>? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri')
    List<PrimitiveElement>? instantiatesUriElement,

    /// [basedOn] A care plan that is fulfilled in whole or in part by this care
    ///  plan.
    List<Reference>? basedOn,

    /// [replaces] Completed or terminated care plan whose function is taken by
    ///  this new care plan.
    List<Reference>? replaces,

    /// [partOf] A larger care plan of which this particular care plan is a
    ///  component or step.
    List<Reference>? partOf,

    /// [status] Indicates whether the plan is currently being acted upon,
    ///  represents future intentions or is now a historical record.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [intent] Indicates the level of authority/intentionality associated with
    ///  the care plan and where the care plan fits into the workflow chain.
    FhirCode? intent,

    /// [intentElement] Extensions for intent
    @JsonKey(name: '_intent') PrimitiveElement? intentElement,

    /// [category] Identifies what "kind" of plan this is to support
    /// differentiation between multiple co-existing plans; e.g. "Home health",
    ///  "psychiatric", "asthma", "disease management", "wellness plan", etc.
    List<CodeableConcept>? category,

    /// [title] Human-friendly name for the care plan.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [description] A description of the scope and nature of the plan.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [subject] Identifies the patient or group whose intended care is
    ///  described by the plan.
    required Reference subject,

    /// [encounter] The Encounter during which this CarePlan was created or to
    ///  which the creation of this record is tightly associated.
    Reference? encounter,

    /// [period] Indicates when the plan did (or is intended to) come into effect
    ///  and end.
    Period? period,

    /// [created] Represents when this particular CarePlan record was created in
    ///  the system, which is often a system-generated date.
    FhirDateTime? created,

    /// [createdElement] Extensions for created
    @JsonKey(name: '_created') PrimitiveElement? createdElement,

    /// [author] When populated, the author is responsible for the care plan.
    ///  The care plan is attributed to the author.
    Reference? author,

    /// [contributor] Identifies the individual(s) or organization who provided
    ///  the contents of the care plan.
    List<Reference>? contributor,

    /// [careTeam] Identifies all people and organizations who are expected to be
    ///  involved in the care envisioned by this plan.
    List<Reference>? careTeam,

    /// [addresses] Identifies the conditions/problems/concerns/diagnoses/etc.
    ///  whose management and/or mitigation are handled by this plan.
    List<Reference>? addresses,

    /// [supportingInfo] Identifies portions of the patient's record that
    /// specifically influenced the formation of the plan.  These might include
    ///  comorbidities, recent procedures, limitations, recent assessments, etc.
    List<Reference>? supportingInfo,

    /// [goal] Describes the intended objective(s) of carrying out the care plan.
    List<Reference>? goal,

    /// [activity] Identifies a planned action to occur as part of the plan.  For
    /// example, a medication to be used, lab tests to perform, self-monitoring,
    ///  education, etc.
    List<CarePlanActivity>? activity,

    /// [note] General notes about the care plan not covered elsewhere.
    List<Annotation>? note,
  }) = _CarePlan;

  @override
  String get fhirType => 'CarePlan';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CarePlan.fromYaml(dynamic yaml) => yaml is String
      ? CarePlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CarePlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CarePlan cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CarePlan.fromJson(Map<String, dynamic> json) =>
      _$CarePlanFromJson(json);

  /// Acts like a constructor, returns a [CarePlan], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CarePlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CarePlanFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
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
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [CarePlanActivity] Describes the intention of how one or more
@freezed

/// [CarePlanActivity] Describes the intention of how one or more
@freezed
class CarePlanActivity with _$CarePlanActivity implements BackboneElement {
  /// [CarePlanActivity] Describes the intention of how one or more
  const CarePlanActivity._();

  /// [CarePlanActivity] Describes the intention of how one or more
  /// practitioners intend to deliver care for a particular patient, group or
  /// community for a period of time, possibly limited to care for a specific
  ///  condition or set of conditions.
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
  /// [outcomeCodeableConcept] Identifies the outcome at the point when the
  /// status of the activity is assessed.  For example, the outcome of an
  ///  education activity could be patient understands (or not).
  ///
  /// [outcomeReference] Details of the outcome or action resulting from the
  /// activity.  The reference to an "event" resource, such as Procedure or
  /// Encounter or Observation, is the result/outcome of the activity itself.
  /// The activity can be conveyed using CarePlan.activity.detail OR using the
  ///  CarePlan.activity.reference (a reference to a “request” resource).
  ///
  /// [progress] Notes about the adherence/status/progress of the activity.
  ///
  /// [reference] The details of the proposed activity represented in a
  ///  specific resource.
  ///
  /// [detail] A simple summary of a planned activity suitable for a general
  /// care plan system (e.g. form driven) that doesn't know about specific
  ///  resources such as procedure etc.
  const factory CarePlanActivity({
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

    /// [outcomeCodeableConcept] Identifies the outcome at the point when the
    /// status of the activity is assessed.  For example, the outcome of an
    ///  education activity could be patient understands (or not).
    List<CodeableConcept>? outcomeCodeableConcept,

    /// [outcomeReference] Details of the outcome or action resulting from the
    /// activity.  The reference to an "event" resource, such as Procedure or
    /// Encounter or Observation, is the result/outcome of the activity itself.
    /// The activity can be conveyed using CarePlan.activity.detail OR using the
    ///  CarePlan.activity.reference (a reference to a “request” resource).
    List<Reference>? outcomeReference,

    /// [progress] Notes about the adherence/status/progress of the activity.
    List<Annotation>? progress,

    /// [reference] The details of the proposed activity represented in a
    ///  specific resource.
    Reference? reference,

    /// [detail] A simple summary of a planned activity suitable for a general
    /// care plan system (e.g. form driven) that doesn't know about specific
    ///  resources such as procedure etc.
    CarePlanDetail? detail,
  }) = _CarePlanActivity;

  @override
  String get fhirType => 'CarePlanActivity';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CarePlanActivity.fromYaml(dynamic yaml) => yaml is String
      ? CarePlanActivity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CarePlanActivity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CarePlanActivity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CarePlanActivity.fromJson(Map<String, dynamic> json) =>
      _$CarePlanActivityFromJson(json);

  /// Acts like a constructor, returns a [CarePlanActivity], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CarePlanActivity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CarePlanActivityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CarePlanDetail] Describes the intention of how one or more
@freezed

/// [CarePlanDetail] Describes the intention of how one or more
@freezed
class CarePlanDetail with _$CarePlanDetail implements BackboneElement {
  /// [CarePlanDetail] Describes the intention of how one or more
  const CarePlanDetail._();

  /// [CarePlanDetail] Describes the intention of how one or more
  /// practitioners intend to deliver care for a particular patient, group or
  /// community for a period of time, possibly limited to care for a specific
  ///  condition or set of conditions.
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
  /// [kind] A description of the kind of resource the in-line definition of a
  /// care plan activity is representing.  The CarePlan.activity.detail is an
  /// in-line definition when a resource is not referenced using
  /// CarePlan.activity.reference.  For example, a MedicationRequest, a
  ///  ServiceRequest, or a CommunicationRequest.
  ///
  /// [kindElement] Extensions for kind
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, questionnaire or other definition that is adhered to in whole
  ///  or in part by this CarePlan activity.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [code] Detailed description of the type of planned activity; e.g. what
  ///  lab test, what procedure, what kind of encounter.
  ///
  /// [reasonCode] Provides the rationale that drove the inclusion of this
  /// particular activity as part of the plan or the reason why the activity was
  ///  prohibited.
  ///
  /// [reasonReference] Indicates another resource, such as the health
  /// condition(s), whose existence justifies this request and drove the
  ///  inclusion of this particular activity as part of the plan.
  ///
  /// [goal] Internal reference that identifies the goals that this activity is
  ///  intended to contribute towards meeting.
  ///
  /// [status] Identifies what progress is being made for the specific
  ///  activity.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] Provides reason why the activity isn't yet started, is on
  ///  hold, was cancelled, etc.
  ///
  /// [doNotPerform] If true, indicates that the described activity is one that
  /// must NOT be engaged in when following the plan.  If false, or missing,
  /// indicates that the described activity is one that should be engaged in
  ///  when following the plan.
  ///
  /// [doNotPerformElement] Extensions for doNotPerform
  ///
  /// [scheduledTiming] The period, timing or frequency upon which the
  ///  described activity is to occur.
  ///
  /// [scheduledPeriod] The period, timing or frequency upon which the
  ///  described activity is to occur.
  ///
  /// [scheduledString] The period, timing or frequency upon which the
  ///  described activity is to occur.
  ///
  /// [scheduledStringElement] Extensions for scheduledString
  ///
  /// [location] Identifies the facility where the activity will occur; e.g.
  ///  home, hospital, specific clinic, etc.
  ///
  /// [performer] Identifies who's expected to be involved in the activity.
  ///
  /// [productCodeableConcept] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  ///
  /// [productReference] Identifies the food, drug or other product to be
  ///  consumed or supplied in the activity.
  ///
  /// [dailyAmount] Identifies the quantity expected to be consumed in a given
  ///  day.
  ///
  /// [quantity] Identifies the quantity expected to be supplied, administered
  ///  or consumed by the subject.
  ///
  /// [description] This provides a textual description of constraints on the
  /// intended activity occurrence, including relation to other activities.  It
  /// may also include objectives, pre-conditions and end-conditions.  Finally,
  /// it may convey specifics about the activity such as body site, method,
  ///  route, etc.
  ///
  /// [descriptionElement] Extensions for description
  const factory CarePlanDetail({
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

    /// [kind] A description of the kind of resource the in-line definition of a
    /// care plan activity is representing.  The CarePlan.activity.detail is an
    /// in-line definition when a resource is not referenced using
    /// CarePlan.activity.reference.  For example, a MedicationRequest, a
    ///  ServiceRequest, or a CommunicationRequest.
    FhirCode? kind,

    /// [kindElement] Extensions for kind
    @JsonKey(name: '_kind') PrimitiveElement? kindElement,

    /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
    /// guideline, questionnaire or other definition that is adhered to in whole
    ///  or in part by this CarePlan activity.
    List<FhirCanonical>? instantiatesCanonical,

    /// [instantiatesUri] The URL pointing to an externally maintained protocol,
    /// guideline, questionnaire or other definition that is adhered to in whole
    ///  or in part by this CarePlan activity.
    List<FhirUri>? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri')
    List<PrimitiveElement>? instantiatesUriElement,

    /// [code] Detailed description of the type of planned activity; e.g. what
    ///  lab test, what procedure, what kind of encounter.
    CodeableConcept? code,

    /// [reasonCode] Provides the rationale that drove the inclusion of this
    /// particular activity as part of the plan or the reason why the activity was
    ///  prohibited.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Indicates another resource, such as the health
    /// condition(s), whose existence justifies this request and drove the
    ///  inclusion of this particular activity as part of the plan.
    List<Reference>? reasonReference,

    /// [goal] Internal reference that identifies the goals that this activity is
    ///  intended to contribute towards meeting.
    List<Reference>? goal,

    /// [status] Identifies what progress is being made for the specific
    ///  activity.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusReason] Provides reason why the activity isn't yet started, is on
    ///  hold, was cancelled, etc.
    CodeableConcept? statusReason,

    /// [doNotPerform] If true, indicates that the described activity is one that
    /// must NOT be engaged in when following the plan.  If false, or missing,
    /// indicates that the described activity is one that should be engaged in
    ///  when following the plan.
    FhirBoolean? doNotPerform,

    /// [doNotPerformElement] Extensions for doNotPerform
    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,

    /// [scheduledTiming] The period, timing or frequency upon which the
    ///  described activity is to occur.
    Timing? scheduledTiming,

    /// [scheduledPeriod] The period, timing or frequency upon which the
    ///  described activity is to occur.
    Period? scheduledPeriod,

    /// [scheduledString] The period, timing or frequency upon which the
    ///  described activity is to occur.
    String? scheduledString,

    /// [scheduledStringElement] Extensions for scheduledString
    @JsonKey(name: '_scheduledString') PrimitiveElement? scheduledStringElement,

    /// [location] Identifies the facility where the activity will occur; e.g.
    ///  home, hospital, specific clinic, etc.
    Reference? location,

    /// [performer] Identifies who's expected to be involved in the activity.
    List<Reference>? performer,

    /// [productCodeableConcept] Identifies the food, drug or other product to be
    ///  consumed or supplied in the activity.
    CodeableConcept? productCodeableConcept,

    /// [productReference] Identifies the food, drug or other product to be
    ///  consumed or supplied in the activity.
    Reference? productReference,

    /// [dailyAmount] Identifies the quantity expected to be consumed in a given
    ///  day.
    Quantity? dailyAmount,

    /// [quantity] Identifies the quantity expected to be supplied, administered
    ///  or consumed by the subject.
    Quantity? quantity,

    /// [description] This provides a textual description of constraints on the
    /// intended activity occurrence, including relation to other activities.  It
    /// may also include objectives, pre-conditions and end-conditions.  Finally,
    /// it may convey specifics about the activity such as body site, method,
    ///  route, etc.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
  }) = _CarePlanDetail;

  @override
  String get fhirType => 'CarePlanDetail';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CarePlanDetail.fromYaml(dynamic yaml) => yaml is String
      ? CarePlanDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CarePlanDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CarePlanDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CarePlanDetail.fromJson(Map<String, dynamic> json) =>
      _$CarePlanDetailFromJson(json);

  /// Acts like a constructor, returns a [CarePlanDetail], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CarePlanDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CarePlanDetailFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
