import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CarePlan]
/// Describes the intention of how one or more practitioners intend to
/// deliver care for a particular patient, group or community for a period
/// of time, possibly limited to care for a specific condition or set of
/// conditions.
class CarePlan extends DomainResource {
  /// Primary constructor for [CarePlan]

  CarePlan({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,

    /// Extensions for [instantiatesCanonical]
    this.instantiatesCanonicalElement,
    this.instantiatesUri,

    /// Extensions for [instantiatesUri]
    this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.partOf,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.intent,

    /// Extensions for [intent]
    this.intentElement,
    this.category,
    this.title,

    /// Extensions for [title]
    this.titleElement,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    required this.subject,
    this.encounter,
    this.period,
    this.created,

    /// Extensions for [created]
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
  }) : super(
          resourceType: R4ResourceType.CarePlan,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlan.fromJson(Map<String, dynamic> json) {
    return CarePlan(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? (json['instantiatesCanonical'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? (json['_instantiatesCanonical'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? (json['instantiatesUri'] as List<dynamic>)
              .map<FhirUri>(
                (dynamic v) => FhirUri.fromJson(v as dynamic),
              )
              .toList()
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? (json['_instantiatesUri'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      replaces: json['replaces'] != null
          ? (json['replaces'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: RequestStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      intent: CarePlanIntent.fromJson(json['intent']),
      intentElement: json['_intent'] != null
          ? Element.fromJson(
              json['_intent'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(
              json['_title'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      created: json['created'] != null
          ? FhirDateTime.fromJson(json['created'])
          : null,
      createdElement: json['_created'] != null
          ? Element.fromJson(
              json['_created'] as Map<String, dynamic>,
            )
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      contributor: json['contributor'] != null
          ? (json['contributor'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      careTeam: json['careTeam'] != null
          ? (json['careTeam'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      addresses: json['addresses'] != null
          ? (json['addresses'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      goal: json['goal'] != null
          ? (json['goal'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      activity: json['activity'] != null
          ? (json['activity'] as List<dynamic>)
              .map<CarePlanActivity>(
                (dynamic v) => CarePlanActivity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (dynamic v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CarePlan] from a [String] or [YamlMap] object
  factory CarePlan.fromYaml(dynamic yaml) => yaml is String
      ? CarePlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CarePlan.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('CarePlan cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CarePlan] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CarePlan.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CarePlan';

  /// [identifier]
  /// Business identifiers assigned to this care plan by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan.
  final List<FhirCanonical>? instantiatesCanonical;

  /// Extensions for [instantiatesCanonical]
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan.
  final List<FhirUri>? instantiatesUri;

  /// Extensions for [instantiatesUri]
  final List<Element>? instantiatesUriElement;

  /// [basedOn]
  /// A care plan that is fulfilled in whole or in part by this care plan.
  final List<Reference>? basedOn;

  /// [replaces]
  /// Completed or terminated care plan whose function is taken by this new
  /// care plan.
  final List<Reference>? replaces;

  /// [partOf]
  /// A larger care plan of which this particular care plan is a component or
  /// step.
  final List<Reference>? partOf;

  /// [status]
  /// Indicates whether the plan is currently being acted upon, represents
  /// future intentions or is now a historical record.
  final RequestStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// care plan and where the care plan fits into the workflow chain.
  final CarePlanIntent intent;

  /// Extensions for [intent]
  final Element? intentElement;

  /// [category]
  /// Identifies what "kind" of plan this is to support differentiation
  /// between multiple co-existing plans; e.g. "Home health", "psychiatric",
  /// "asthma", "disease management", "wellness plan", etc.
  final List<CodeableConcept>? category;

  /// [title]
  /// Human-friendly name for the care plan.
  final FhirString? title;

  /// Extensions for [title]
  final Element? titleElement;

  /// [description]
  /// A description of the scope and nature of the plan.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;

  /// [subject]
  /// Identifies the patient or group whose intended care is described by the
  /// plan.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this CarePlan was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [period]
  /// Indicates when the plan did (or is intended to) come into effect and
  /// end.
  final Period? period;

  /// [created]
  /// Represents when this particular CarePlan record was created in the
  /// system, which is often a system-generated date.
  final FhirDateTime? created;

  /// Extensions for [created]
  final Element? createdElement;

  /// [author]
  /// When populated, the author is responsible for the care plan. The care
  /// plan is attributed to the author.
  final Reference? author;

  /// [contributor]
  /// Identifies the individual(s) or organization who provided the contents
  /// of the care plan.
  final List<Reference>? contributor;

  /// [careTeam]
  /// Identifies all people and organizations who are expected to be involved
  /// in the care envisioned by this plan.
  final List<Reference>? careTeam;

  /// [addresses]
  /// Identifies the conditions/problems/concerns/diagnoses/etc. whose
  /// management and/or mitigation are handled by this plan.
  final List<Reference>? addresses;

  /// [supportingInfo]
  /// Identifies portions of the patient's record that specifically
  /// influenced the formation of the plan. These might include
  /// comorbidities, recent procedures, limitations, recent assessments, etc.
  final List<Reference>? supportingInfo;

  /// [goal]
  /// Describes the intended objective(s) of carrying out the care plan.
  final List<Reference>? goal;

  /// [activity]
  /// Identifies a planned action to occur as part of the plan. For example,
  /// a medication to be used, lab tests to perform, self-monitoring,
  /// education, etc.
  final List<CarePlanActivity>? activity;

  /// [note]
  /// General notes about the care plan not covered elsewhere.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (instantiatesCanonicalElement != null &&
        instantiatesCanonicalElement!.isNotEmpty) {
      json['_instantiatesCanonical'] =
          instantiatesCanonicalElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.toJson()).toList();
    }
    if (instantiatesUriElement != null && instantiatesUriElement!.isNotEmpty) {
      json['_instantiatesUri'] =
          instantiatesUriElement!.map((Element v) => v.toJson()).toList();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((Reference v) => v.toJson()).toList();
    }
    if (replaces != null && replaces!.isNotEmpty) {
      json['replaces'] = replaces!.map((Reference v) => v.toJson()).toList();
    }
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['intent'] = intent.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['subject'] = subject.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (created?.value != null) {
      json['created'] = created!.toJson();
    }
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (author != null) {
      json['author'] = author!.toJson();
    }
    if (contributor != null && contributor!.isNotEmpty) {
      json['contributor'] =
          contributor!.map((Reference v) => v.toJson()).toList();
    }
    if (careTeam != null && careTeam!.isNotEmpty) {
      json['careTeam'] = careTeam!.map((Reference v) => v.toJson()).toList();
    }
    if (addresses != null && addresses!.isNotEmpty) {
      json['addresses'] = addresses!.map((Reference v) => v.toJson()).toList();
    }
    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] =
          supportingInfo!.map((Reference v) => v.toJson()).toList();
    }
    if (goal != null && goal!.isNotEmpty) {
      json['goal'] = goal!.map((Reference v) => v.toJson()).toList();
    }
    if (activity != null && activity!.isNotEmpty) {
      json['activity'] =
          activity!.map((CarePlanActivity v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

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
}

/// [CarePlanActivity]
/// Identifies a planned action to occur as part of the plan. For example,
/// a medication to be used, lab tests to perform, self-monitoring,
/// education, etc.
class CarePlanActivity extends BackboneElement {
  /// Primary constructor for [CarePlanActivity]

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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanActivity.fromJson(Map<String, dynamic> json) {
    return CarePlanActivity(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outcomeCodeableConcept: json['outcomeCodeableConcept'] != null
          ? (json['outcomeCodeableConcept'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outcomeReference: json['outcomeReference'] != null
          ? (json['outcomeReference'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      progress: json['progress'] != null
          ? (json['progress'] as List<dynamic>)
              .map<Annotation>(
                (dynamic v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reference: json['reference'] != null
          ? Reference.fromJson(
              json['reference'] as Map<String, dynamic>,
            )
          : null,
      detail: json['detail'] != null
          ? CarePlanDetail.fromJson(
              json['detail'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CarePlanActivity] from a [String] or [YamlMap] object
  factory CarePlanActivity.fromYaml(dynamic yaml) => yaml is String
      ? CarePlanActivity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CarePlanActivity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CarePlanActivity cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CarePlanActivity] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlanActivity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CarePlanActivity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CarePlanActivity';

  /// [outcomeCodeableConcept]
  /// Identifies the outcome at the point when the status of the activity is
  /// assessed. For example, the outcome of an education activity could be
  /// patient understands (or not).
  final List<CodeableConcept>? outcomeCodeableConcept;

  /// [outcomeReference]
  /// Details of the outcome or action resulting from the activity. The
  /// reference to an "event" resource, such as Procedure or Encounter or
  /// Observation, is the result/outcome of the activity itself. The activity
  /// can be conveyed using CarePlan.activity.detail OR using the
  /// CarePlan.activity.reference (a reference to a “request” resource).
  final List<Reference>? outcomeReference;

  /// [progress]
  /// Notes about the adherence/status/progress of the activity.
  final List<Annotation>? progress;

  /// [reference]
  /// The details of the proposed activity represented in a specific
  /// resource.
  final Reference? reference;

  /// [detail]
  /// A simple summary of a planned activity suitable for a general care plan
  /// system (e.g. form driven) that doesn't know about specific resources
  /// such as procedure etc.
  final CarePlanDetail? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (outcomeCodeableConcept != null && outcomeCodeableConcept!.isNotEmpty) {
      json['outcomeCodeableConcept'] = outcomeCodeableConcept!
          .map((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (outcomeReference != null && outcomeReference!.isNotEmpty) {
      json['outcomeReference'] =
          outcomeReference!.map((Reference v) => v.toJson()).toList();
    }
    if (progress != null && progress!.isNotEmpty) {
      json['progress'] = progress!.map((Annotation v) => v.toJson()).toList();
    }
    if (reference != null) {
      json['reference'] = reference!.toJson();
    }
    if (detail != null) {
      json['detail'] = detail!.toJson();
    }
    return json;
  }

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
}

/// [CarePlanDetail]
/// A simple summary of a planned activity suitable for a general care plan
/// system (e.g. form driven) that doesn't know about specific resources
/// such as procedure etc.
class CarePlanDetail extends BackboneElement {
  /// Primary constructor for [CarePlanDetail]

  CarePlanDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kind,

    /// Extensions for [kind]
    this.kindElement,
    this.instantiatesCanonical,

    /// Extensions for [instantiatesCanonical]
    this.instantiatesCanonicalElement,
    this.instantiatesUri,

    /// Extensions for [instantiatesUri]
    this.instantiatesUriElement,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    this.statusReason,
    this.doNotPerform,

    /// Extensions for [doNotPerform]
    this.doNotPerformElement,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,

    /// Extensions for [scheduledString]
    this.scheduledStringElement,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,

    /// Extensions for [description]
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanDetail.fromJson(Map<String, dynamic> json) {
    return CarePlanDetail(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      kind: json['kind'] != null
          ? CarePlanActivityKind.fromJson(json['kind'])
          : null,
      kindElement: json['_kind'] != null
          ? Element.fromJson(
              json['_kind'] as Map<String, dynamic>,
            )
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? (json['instantiatesCanonical'] as List<dynamic>)
              .map<FhirCanonical>(
                (dynamic v) => FhirCanonical.fromJson(v as dynamic),
              )
              .toList()
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? (json['_instantiatesCanonical'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? (json['instantiatesUri'] as List<dynamic>)
              .map<FhirUri>(
                (dynamic v) => FhirUri.fromJson(v as dynamic),
              )
              .toList()
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? (json['_instantiatesUri'] as List<dynamic>)
              .map<Element>(
                (dynamic v) => Element.fromJson(v as Map<String, dynamic>),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      goal: json['goal'] != null
          ? (json['goal'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: CarePlanActivityStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson(json['doNotPerform'])
          : null,
      doNotPerformElement: json['_doNotPerform'] != null
          ? Element.fromJson(
              json['_doNotPerform'] as Map<String, dynamic>,
            )
          : null,
      scheduledTiming: json['scheduledTiming'] != null
          ? Timing.fromJson(
              json['scheduledTiming'] as Map<String, dynamic>,
            )
          : null,
      scheduledPeriod: json['scheduledPeriod'] != null
          ? Period.fromJson(
              json['scheduledPeriod'] as Map<String, dynamic>,
            )
          : null,
      scheduledString: json['scheduledString'] != null
          ? FhirString.fromJson(json['scheduledString'])
          : null,
      scheduledStringElement: json['_scheduledString'] != null
          ? Element.fromJson(
              json['_scheduledString'] as Map<String, dynamic>,
            )
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productCodeableConcept: json['productCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['productCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      productReference: json['productReference'] != null
          ? Reference.fromJson(
              json['productReference'] as Map<String, dynamic>,
            )
          : null,
      dailyAmount: json['dailyAmount'] != null
          ? Quantity.fromJson(
              json['dailyAmount'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(
              json['_description'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [CarePlanDetail] from a [String] or [YamlMap] object
  factory CarePlanDetail.fromYaml(dynamic yaml) => yaml is String
      ? CarePlanDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? CarePlanDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'CarePlanDetail cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [CarePlanDetail] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlanDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CarePlanDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'CarePlanDetail';

  /// [kind]
  /// A description of the kind of resource the in-line definition of a care
  /// plan activity is representing. The CarePlan.activity.detail is an
  /// in-line definition when a resource is not referenced using
  /// CarePlan.activity.reference. For example, a MedicationRequest, a
  /// ServiceRequest, or a CommunicationRequest.
  final CarePlanActivityKind? kind;

  /// Extensions for [kind]
  final Element? kindElement;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan activity.
  final List<FhirCanonical>? instantiatesCanonical;

  /// Extensions for [instantiatesCanonical]
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan activity.
  final List<FhirUri>? instantiatesUri;

  /// Extensions for [instantiatesUri]
  final List<Element>? instantiatesUriElement;

  /// [code]
  /// Detailed description of the type of planned activity; e.g. what lab
  /// test, what procedure, what kind of encounter.
  final CodeableConcept? code;

  /// [reasonCode]
  /// Provides the rationale that drove the inclusion of this particular
  /// activity as part of the plan or the reason why the activity was
  /// prohibited.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource, such as the health condition(s), whose
  /// existence justifies this request and drove the inclusion of this
  /// particular activity as part of the plan.
  final List<Reference>? reasonReference;

  /// [goal]
  /// Internal reference that identifies the goals that this activity is
  /// intended to contribute towards meeting.
  final List<Reference>? goal;

  /// [status]
  /// Identifies what progress is being made for the specific activity.
  final CarePlanActivityStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [statusReason]
  /// Provides reason why the activity isn't yet started, is on hold, was
  /// cancelled, etc.
  final CodeableConcept? statusReason;

  /// [doNotPerform]
  /// If true, indicates that the described activity is one that must NOT be
  /// engaged in when following the plan. If false, or missing, indicates
  /// that the described activity is one that should be engaged in when
  /// following the plan.
  final FhirBoolean? doNotPerform;

  /// Extensions for [doNotPerform]
  final Element? doNotPerformElement;

  /// [scheduledTiming]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Timing? scheduledTiming;

  /// [scheduledPeriod]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Period? scheduledPeriod;

  /// [scheduledString]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final FhirString? scheduledString;

  /// Extensions for [scheduledString]
  final Element? scheduledStringElement;

  /// [location]
  /// Identifies the facility where the activity will occur; e.g. home,
  /// hospital, specific clinic, etc.
  final Reference? location;

  /// [performer]
  /// Identifies who's expected to be involved in the activity.
  final List<Reference>? performer;

  /// [productCodeableConcept]
  /// Identifies the food, drug or other product to be consumed or supplied
  /// in the activity.
  final CodeableConcept? productCodeableConcept;

  /// [productReference]
  /// Identifies the food, drug or other product to be consumed or supplied
  /// in the activity.
  final Reference? productReference;

  /// [dailyAmount]
  /// Identifies the quantity expected to be consumed in a given day.
  final Quantity? dailyAmount;

  /// [quantity]
  /// Identifies the quantity expected to be supplied, administered or
  /// consumed by the subject.
  final Quantity? quantity;

  /// [description]
  /// This provides a textual description of constraints on the intended
  /// activity occurrence, including relation to other activities. It may
  /// also include objectives, pre-conditions and end-conditions. Finally, it
  /// may convey specifics about the activity such as body site, method,
  /// route, etc.
  final FhirString? description;

  /// Extensions for [description]
  final Element? descriptionElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (kind != null) {
      json['kind'] = kind!.toJson();
    }
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.toJson()).toList();
    }
    if (instantiatesCanonicalElement != null &&
        instantiatesCanonicalElement!.isNotEmpty) {
      json['_instantiatesCanonical'] =
          instantiatesCanonicalElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.toJson()).toList();
    }
    if (instantiatesUriElement != null && instantiatesUriElement!.isNotEmpty) {
      json['_instantiatesUri'] =
          instantiatesUriElement!.map((Element v) => v.toJson()).toList();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((Reference v) => v.toJson()).toList();
    }
    if (goal != null && goal!.isNotEmpty) {
      json['goal'] = goal!.map((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    if (doNotPerform?.value != null) {
      json['doNotPerform'] = doNotPerform!.toJson();
    }
    if (doNotPerformElement != null) {
      json['_doNotPerform'] = doNotPerformElement!.toJson();
    }
    if (scheduledTiming != null) {
      json['scheduledTiming'] = scheduledTiming!.toJson();
    }
    if (scheduledPeriod != null) {
      json['scheduledPeriod'] = scheduledPeriod!.toJson();
    }
    if (scheduledString?.value != null) {
      json['scheduledString'] = scheduledString!.toJson();
    }
    if (scheduledStringElement != null) {
      json['_scheduledString'] = scheduledStringElement!.toJson();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((Reference v) => v.toJson()).toList();
    }
    if (productCodeableConcept != null) {
      json['productCodeableConcept'] = productCodeableConcept!.toJson();
    }
    if (productReference != null) {
      json['productReference'] = productReference!.toJson();
    }
    if (dailyAmount != null) {
      json['dailyAmount'] = dailyAmount!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    return json;
  }

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
}
