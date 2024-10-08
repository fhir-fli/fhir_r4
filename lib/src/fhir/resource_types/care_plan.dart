import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'care_plan.g.dart';

/// [CarePlan] /// Describes the intention of how one or more practitioners intend to deliver
/// care for a particular patient, group or community for a period of time,
/// possibly limited to care for a specific condition or set of conditions.
@JsonSerializable()
class CarePlan extends DomainResource {
  CarePlan({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.partOf,
    required this.status,
    this.statusElement,
    required this.intent,
    this.intentElement,
    this.category,
    this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.createdElement,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.CarePlan, fhirType: 'CarePlan');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this care plan by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire or
  /// other definition that is adhered to in whole or in part by this CarePlan.
  @JsonKey(name: 'instantiatesCanonical')
  final List<FhirCanonical>? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in part by
  /// this CarePlan.
  @JsonKey(name: 'instantiatesUri')
  final List<FhirUri>? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// A care plan that is fulfilled in whole or in part by this care plan.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [replaces] /// Completed or terminated care plan whose function is taken by this new care
  /// plan.
  @JsonKey(name: 'replaces')
  final List<Reference>? replaces;

  /// [partOf] /// A larger care plan of which this particular care plan is a component or
  /// step.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// Indicates whether the plan is currently being acted upon, represents future
  /// intentions or is now a historical record.
  @JsonKey(name: 'status')
  final RequestStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [intent] /// Indicates the level of authority/intentionality associated with the care
  /// plan and where the care plan fits into the workflow chain.
  @JsonKey(name: 'intent')
  final CarePlanIntent intent;
  @JsonKey(name: '_intent')
  final Element? intentElement;

  /// [category] /// Identifies what "kind" of plan this is to support differentiation between
  /// multiple co-existing plans; e.g. "Home health", "psychiatric", "asthma",
  /// "disease management", "wellness plan", etc.
  @JsonKey(name: 'category')
  final List<CodeableConcept>? category;

  /// [title] /// Human-friendly name for the care plan.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [description] /// A description of the scope and nature of the plan.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [subject] /// Identifies the patient or group whose intended care is described by the
  /// plan.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The Encounter during which this CarePlan was created or to which the
  /// creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [period] /// Indicates when the plan did (or is intended to) come into effect and end.
  @JsonKey(name: 'period')
  final Period? period;

  /// [created] /// Represents when this particular CarePlan record was created in the system,
  /// which is often a system-generated date.
  @JsonKey(name: 'created')
  final FhirDateTime? created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [author] /// When populated, the author is responsible for the care plan. The care plan
  /// is attributed to the author.
  @JsonKey(name: 'author')
  final Reference? author;

  /// [contributor] /// Identifies the individual(s) or organization who provided the contents of
  /// the care plan.
  @JsonKey(name: 'contributor')
  final List<Reference>? contributor;

  /// [careTeam] /// Identifies all people and organizations who are expected to be involved in
  /// the care envisioned by this plan.
  @JsonKey(name: 'careTeam')
  final List<Reference>? careTeam;

  /// [addresses] /// Identifies the conditions/problems/concerns/diagnoses/etc. whose management
  /// and/or mitigation are handled by this plan.
  @JsonKey(name: 'addresses')
  final List<Reference>? addresses;

  /// [supportingInfo] /// Identifies portions of the patient's record that specifically influenced
  /// the formation of the plan. These might include comorbidities, recent
  /// procedures, limitations, recent assessments, etc.
  @JsonKey(name: 'supportingInfo')
  final List<Reference>? supportingInfo;

  /// [goal] /// Describes the intended objective(s) of carrying out the care plan.
  @JsonKey(name: 'goal')
  final List<Reference>? goal;

  /// [activity] /// Identifies a planned action to occur as part of the plan. For example, a
  /// medication to be used, lab tests to perform, self-monitoring, education,
  /// etc.
  @JsonKey(name: 'activity')
  final List<CarePlanActivity>? activity;

  /// [note] /// General notes about the care plan not covered elsewhere.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory CarePlan.fromJson(Map<String, dynamic> json) =>
      _$CarePlanFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CarePlanToJson(this);

  @override
  CarePlan clone() => throw UnimplementedError();
  @override
  CarePlan copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    List<Reference>? partOf,
    RequestStatus? status,
    Element? statusElement,
    CarePlanIntent? intent,
    Element? intentElement,
    List<CodeableConcept>? category,
    FhirString? title,
    Element? titleElement,
    FhirString? description,
    Element? descriptionElement,
    Reference? subject,
    Reference? encounter,
    Period? period,
    FhirDateTime? created,
    Element? createdElement,
    Reference? author,
    List<Reference>? contributor,
    List<Reference>? careTeam,
    List<Reference>? addresses,
    List<Reference>? supportingInfo,
    List<Reference>? goal,
    List<CarePlanActivity>? activity,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CarePlan(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      category: category ?? this.category,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      period: period ?? this.period,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      author: author ?? this.author,
      contributor: contributor ?? this.contributor,
      careTeam: careTeam ?? this.careTeam,
      addresses: addresses ?? this.addresses,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      goal: goal ?? this.goal,
      activity: activity ?? this.activity,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CarePlan.fromYaml(dynamic yaml) => yaml is String
      ? CarePlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CarePlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CarePlan cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CarePlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CarePlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CarePlanActivity] /// Identifies a planned action to occur as part of the plan. For example, a
/// medication to be used, lab tests to perform, self-monitoring, education,
/// etc.
@JsonSerializable()
class CarePlanActivity extends BackboneElement {
  CarePlanActivity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CarePlanActivity');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [outcomeCodeableConcept] /// Identifies the outcome at the point when the status of the activity is
  /// assessed. For example, the outcome of an education activity could be
  /// patient understands (or not).
  @JsonKey(name: 'outcomeCodeableConcept')
  final List<CodeableConcept>? outcomeCodeableConcept;

  /// [outcomeReference] /// Details of the outcome or action resulting from the activity. The reference
  /// to an "event" resource, such as Procedure or Encounter or Observation, is
  /// the result/outcome of the activity itself. The activity can be conveyed
  /// using CarePlan.activity.detail OR using the CarePlan.activity.reference (a
  /// reference to a “request” resource).
  @JsonKey(name: 'outcomeReference')
  final List<Reference>? outcomeReference;

  /// [progress] /// Notes about the adherence/status/progress of the activity.
  @JsonKey(name: 'progress')
  final List<Annotation>? progress;

  /// [reference] /// The details of the proposed activity represented in a specific resource.
  @JsonKey(name: 'reference')
  final Reference? reference;

  /// [detail] /// A simple summary of a planned activity suitable for a general care plan
  /// system (e.g. form driven) that doesn't know about specific resources such
  /// as procedure etc.
  @JsonKey(name: 'detail')
  final CarePlanDetail? detail;
  factory CarePlanActivity.fromJson(Map<String, dynamic> json) =>
      _$CarePlanActivityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CarePlanActivityToJson(this);

  @override
  CarePlanActivity clone() => throw UnimplementedError();
  @override
  CarePlanActivity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? outcomeCodeableConcept,
    List<Reference>? outcomeReference,
    List<Annotation>? progress,
    Reference? reference,
    CarePlanDetail? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CarePlanActivity(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcomeCodeableConcept:
          outcomeCodeableConcept ?? this.outcomeCodeableConcept,
      outcomeReference: outcomeReference ?? this.outcomeReference,
      progress: progress ?? this.progress,
      reference: reference ?? this.reference,
      detail: detail ?? this.detail,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CarePlanActivity.fromYaml(dynamic yaml) => yaml is String
      ? CarePlanActivity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CarePlanActivity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CarePlanActivity cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CarePlanActivity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CarePlanActivity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CarePlanDetail] /// A simple summary of a planned activity suitable for a general care plan
/// system (e.g. form driven) that doesn't know about specific resources such
/// as procedure etc.
@JsonSerializable()
class CarePlanDetail extends BackboneElement {
  CarePlanDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kind,
    this.kindElement,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.doNotPerform,
    this.doNotPerformElement,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.scheduledStringElement,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'CarePlanDetail');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [kind] /// A description of the kind of resource the in-line definition of a care plan
  /// activity is representing. The CarePlan.activity.detail is an in-line
  /// definition when a resource is not referenced using
  /// CarePlan.activity.reference. For example, a MedicationRequest, a
  /// ServiceRequest, or a CommunicationRequest.
  @JsonKey(name: 'kind')
  final CarePlanActivityKind? kind;
  @JsonKey(name: '_kind')
  final Element? kindElement;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire or
  /// other definition that is adhered to in whole or in part by this CarePlan
  /// activity.
  @JsonKey(name: 'instantiatesCanonical')
  final List<FhirCanonical>? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in part by
  /// this CarePlan activity.
  @JsonKey(name: 'instantiatesUri')
  final List<FhirUri>? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final List<Element>? instantiatesUriElement;

  /// [code] /// Detailed description of the type of planned activity; e.g. what lab test,
  /// what procedure, what kind of encounter.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [reasonCode] /// Provides the rationale that drove the inclusion of this particular activity
  /// as part of the plan or the reason why the activity was prohibited.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource, such as the health condition(s), whose
  /// existence justifies this request and drove the inclusion of this particular
  /// activity as part of the plan.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [goal] /// Internal reference that identifies the goals that this activity is intended
  /// to contribute towards meeting.
  @JsonKey(name: 'goal')
  final List<Reference>? goal;

  /// [status] /// Identifies what progress is being made for the specific activity.
  @JsonKey(name: 'status')
  final CarePlanActivityStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// Provides reason why the activity isn't yet started, is on hold, was
  /// cancelled, etc.
  @JsonKey(name: 'statusReason')
  final CodeableConcept? statusReason;

  /// [doNotPerform] /// If true, indicates that the described activity is one that must NOT be
  /// engaged in when following the plan. If false, or missing, indicates that
  /// the described activity is one that should be engaged in when following the
  /// plan.
  @JsonKey(name: 'doNotPerform')
  final FhirBoolean? doNotPerform;
  @JsonKey(name: '_doNotPerform')
  final Element? doNotPerformElement;

  /// [scheduledTiming] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  @JsonKey(name: 'scheduledTiming')
  final Timing? scheduledTiming;

  /// [scheduledPeriod] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  @JsonKey(name: 'scheduledPeriod')
  final Period? scheduledPeriod;

  /// [scheduledString] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  @JsonKey(name: 'scheduledString')
  final FhirString? scheduledString;
  @JsonKey(name: '_scheduledString')
  final Element? scheduledStringElement;

  /// [location] /// Identifies the facility where the activity will occur; e.g. home, hospital,
  /// specific clinic, etc.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [performer] /// Identifies who's expected to be involved in the activity.
  @JsonKey(name: 'performer')
  final List<Reference>? performer;

  /// [productCodeableConcept] /// Identifies the food, drug or other product to be consumed or supplied in
  /// the activity.
  @JsonKey(name: 'productCodeableConcept')
  final CodeableConcept? productCodeableConcept;

  /// [productReference] /// Identifies the food, drug or other product to be consumed or supplied in
  /// the activity.
  @JsonKey(name: 'productReference')
  final Reference? productReference;

  /// [dailyAmount] /// Identifies the quantity expected to be consumed in a given day.
  @JsonKey(name: 'dailyAmount')
  final Quantity? dailyAmount;

  /// [quantity] /// Identifies the quantity expected to be supplied, administered or consumed
  /// by the subject.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [description] /// This provides a textual description of constraints on the intended activity
  /// occurrence, including relation to other activities. It may also include
  /// objectives, pre-conditions and end-conditions. Finally, it may convey
  /// specifics about the activity such as body site, method, route, etc.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory CarePlanDetail.fromJson(Map<String, dynamic> json) =>
      _$CarePlanDetailFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CarePlanDetailToJson(this);

  @override
  CarePlanDetail clone() => throw UnimplementedError();
  @override
  CarePlanDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CarePlanActivityKind? kind,
    Element? kindElement,
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    CodeableConcept? code,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? goal,
    CarePlanActivityStatus? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    Timing? scheduledTiming,
    Period? scheduledPeriod,
    FhirString? scheduledString,
    Element? scheduledStringElement,
    Reference? location,
    List<Reference>? performer,
    CodeableConcept? productCodeableConcept,
    Reference? productReference,
    Quantity? dailyAmount,
    Quantity? quantity,
    FhirString? description,
    Element? descriptionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CarePlanDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      code: code ?? this.code,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      goal: goal ?? this.goal,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      doNotPerformElement: doNotPerformElement ?? this.doNotPerformElement,
      scheduledTiming: scheduledTiming ?? this.scheduledTiming,
      scheduledPeriod: scheduledPeriod ?? this.scheduledPeriod,
      scheduledString: scheduledString ?? this.scheduledString,
      scheduledStringElement:
          scheduledStringElement ?? this.scheduledStringElement,
      location: location ?? this.location,
      performer: performer ?? this.performer,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      productReference: productReference ?? this.productReference,
      dailyAmount: dailyAmount ?? this.dailyAmount,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CarePlanDetail.fromYaml(dynamic yaml) => yaml is String
      ? CarePlanDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CarePlanDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CarePlanDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CarePlanDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CarePlanDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
