import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CarePlan]
/// Describes the intention of how one or more practitioners intend to
/// deliver care for a particular patient, group or community for a period
/// of time, possibly limited to care for a specific condition or set of
/// conditions.
class CarePlan extends DomainResource {
  /// Primary constructor for
  /// [CarePlan]

  const CarePlan({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.replaces,
    this.partOf,
    required this.status,
    required this.intent,
    this.category,
    this.title,
    this.description,
    required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
  }) : super(
          resourceType: R4ResourceType.CarePlan,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlan.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlan(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
      )!,
      intent: JsonParser.parsePrimitive<CarePlanIntent>(
        json,
        'intent',
        CarePlanIntent.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
      ),
      contributor: (json['contributor'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      activity: (json['activity'] as List<dynamic>?)
          ?.map<CarePlanActivity>(
            (v) => CarePlanActivity.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CarePlan]
  /// from a [String] or [YamlMap] object
  factory CarePlan.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlan.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlan.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlan '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlan]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlan.fromJsonString(
    String source,
  ) {
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

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan.
  final List<FhirUri>? instantiatesUri;

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

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// care plan and where the care plan fits into the workflow chain.
  final CarePlanIntent intent;

  /// [category]
  /// Identifies what "kind" of plan this is to support differentiation
  /// between multiple co-existing plans; e.g. "Home health", "psychiatric",
  /// "asthma", "disease management", "wellness plan", etc.
  final List<CodeableConcept>? category;

  /// [title]
  /// Human-friendly name for the care plan.
  final FhirString? title;

  /// [description]
  /// A description of the scope and nature of the plan.
  final FhirString? description;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('replaces', replaces);
    addField('partOf', partOf);
    addField('status', status);
    addField('intent', intent);
    addField('category', category);
    addField('title', title);
    addField('description', description);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('period', period);
    addField('created', created);
    addField('author', author);
    addField('contributor', contributor);
    addField('careTeam', careTeam);
    addField('addresses', addresses);
    addField('supportingInfo', supportingInfo);
    addField('goal', goal);
    addField('activity', activity);
    addField('note', note);
    return json;
  }

  @override
  CarePlan clone() => throw UnimplementedError();
  @override
  CarePlan copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    List<Reference>? partOf,
    RequestStatus? status,
    CarePlanIntent? intent,
    List<CodeableConcept>? category,
    FhirString? title,
    FhirString? description,
    Reference? subject,
    Reference? encounter,
    Period? period,
    FhirDateTime? created,
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
  }) {
    return CarePlan(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      category: category ?? this.category,
      title: title ?? this.title,
      description: description ?? this.description,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      period: period ?? this.period,
      created: created ?? this.created,
      author: author ?? this.author,
      contributor: contributor ?? this.contributor,
      careTeam: careTeam ?? this.careTeam,
      addresses: addresses ?? this.addresses,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      goal: goal ?? this.goal,
      activity: activity ?? this.activity,
      note: note ?? this.note,
    );
  }
}

/// [CarePlanActivity]
/// Identifies a planned action to occur as part of the plan. For example,
/// a medication to be used, lab tests to perform, self-monitoring,
/// education, etc.
class CarePlanActivity extends BackboneElement {
  /// Primary constructor for
  /// [CarePlanActivity]

  const CarePlanActivity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanActivity.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlanActivity(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      outcomeCodeableConcept: (json['outcomeCodeableConcept'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      outcomeReference: (json['outcomeReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      progress: (json['progress'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reference: JsonParser.parseObject<Reference>(
        json,
        'reference',
        Reference.fromJson,
      ),
      detail: JsonParser.parseObject<CarePlanDetail>(
        json,
        'detail',
        CarePlanDetail.fromJson,
      ),
    );
  }

  /// Deserialize [CarePlanActivity]
  /// from a [String] or [YamlMap] object
  factory CarePlanActivity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlanActivity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlanActivity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlanActivity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlanActivity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlanActivity.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('outcomeCodeableConcept', outcomeCodeableConcept);
    addField('outcomeReference', outcomeReference);
    addField('progress', progress);
    addField('reference', reference);
    addField('detail', detail);
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
    );
  }
}

/// [CarePlanDetail]
/// A simple summary of a planned activity suitable for a general care plan
/// system (e.g. form driven) that doesn't know about specific resources
/// such as procedure etc.
class CarePlanDetail extends BackboneElement {
  /// Primary constructor for
  /// [CarePlanDetail]

  const CarePlanDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kind,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    required this.status,
    this.statusReason,
    this.doNotPerform,
    this.scheduledX,
    this.location,
    this.performer,
    this.productX,
    this.dailyAmount,
    this.quantity,
    this.description,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlanDetail(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      kind: JsonParser.parsePrimitive<CarePlanActivityKind>(
        json,
        'kind',
        CarePlanActivityKind.fromJson,
      ),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<CarePlanActivityStatus>(
        json,
        'status',
        CarePlanActivityStatus.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
      ),
      scheduledX: JsonParser.parsePolymorphic<ScheduledXCarePlanDetail>(json, {
        'scheduledTiming': Timing.fromJson,
        'scheduledPeriod': Period.fromJson,
        'scheduledString': FhirString.fromJson,
      }),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      productX: JsonParser.parsePolymorphic<ProductXCarePlanDetail>(json, {
        'productCodeableConcept': CodeableConcept.fromJson,
        'productReference': Reference.fromJson,
      }),
      dailyAmount: JsonParser.parseObject<Quantity>(
        json,
        'dailyAmount',
        Quantity.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [CarePlanDetail]
  /// from a [String] or [YamlMap] object
  factory CarePlanDetail.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CarePlanDetail.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CarePlanDetail.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CarePlanDetail '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CarePlanDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CarePlanDetail.fromJsonString(
    String source,
  ) {
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

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan activity.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan activity.
  final List<FhirUri>? instantiatesUri;

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

  /// [scheduledX]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final ScheduledXCarePlanDetail? scheduledX;

  /// [location]
  /// Identifies the facility where the activity will occur; e.g. home,
  /// hospital, specific clinic, etc.
  final Reference? location;

  /// [performer]
  /// Identifies who's expected to be involved in the activity.
  final List<Reference>? performer;

  /// [productX]
  /// Identifies the food, drug or other product to be consumed or supplied
  /// in the activity.
  final ProductXCarePlanDetail? productX;

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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('kind', kind);
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('code', code);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('goal', goal);
    addField('status', status);
    addField('statusReason', statusReason);
    addField('doNotPerform', doNotPerform);
    if (scheduledX != null) {
      final fhirType = scheduledX!.fhirType;
      addField('scheduled${fhirType.capitalize()}', scheduledX);
    }

    addField('location', location);
    addField('performer', performer);
    if (productX != null) {
      final fhirType = productX!.fhirType;
      addField('product${fhirType.capitalize()}', productX);
    }

    addField('dailyAmount', dailyAmount);
    addField('quantity', quantity);
    addField('description', description);
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    CodeableConcept? code,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? goal,
    CarePlanActivityStatus? status,
    CodeableConcept? statusReason,
    FhirBoolean? doNotPerform,
    ScheduledXCarePlanDetail? scheduledX,
    Reference? location,
    List<Reference>? performer,
    ProductXCarePlanDetail? productX,
    Quantity? dailyAmount,
    Quantity? quantity,
    FhirString? description,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CarePlanDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      code: code ?? this.code,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      goal: goal ?? this.goal,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      scheduledX: scheduledX ?? this.scheduledX,
      location: location ?? this.location,
      performer: performer ?? this.performer,
      productX: productX ?? this.productX,
      dailyAmount: dailyAmount ?? this.dailyAmount,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
    );
  }
}
