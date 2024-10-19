// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [CarePlan]
/// Describes the intention of how one or more practitioners intend to
/// deliver care for a particular patient, group or community for a period
/// of time, possibly limited to care for a specific condition or set of
/// conditions.
@Entity()
class CarePlan extends DomainResource {
  /// Primary constructor for
  /// [CarePlan]

  CarePlan({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  factory CarePlan.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlan(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
        json['instantiatesCanonical'] as List<dynamic>?,
        json['_instantiatesCanonical'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      instantiatesUri: parsePrimitiveList<FhirUri>(
        json['instantiatesUri'] as List<dynamic>?,
        json['_instantiatesUri'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      replaces: json['replaces'] != null
          ? (json['replaces'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: RequestStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      intent: CarePlanIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
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
      created: (json['created'] != null || json['_created'] != null)
          ? FhirDateTime.fromJson({
              'value': json['created'],
              '_value': json['_created'],
            })
          : null,
      author: json['author'] != null
          ? Reference.fromJson(
              json['author'] as Map<String, dynamic>,
            )
          : null,
      contributor: json['contributor'] != null
          ? (json['contributor'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      careTeam: json['careTeam'] != null
          ? (json['careTeam'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      addresses: json['addresses'] != null
          ? (json['addresses'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      goal: json['goal'] != null
          ? (json['goal'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      activity: json['activity'] != null
          ? (json['activity'] as List<dynamic>)
              .map<CarePlanActivity>(
                (v) => CarePlanActivity.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [CarePlan]
  /// from a [String] or [YamlMap] object
  factory CarePlan.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? CarePlan.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? CarePlan.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'CarePlan '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [CarePlan]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'CarePlan';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [identifier]
  /// Business identifiers assigned to this care plan by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan.
  List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan.
  List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// A care plan that is fulfilled in whole or in part by this care plan.
  List<Reference>? basedOn;

  /// [replaces]
  /// Completed or terminated care plan whose function is taken by this new
  /// care plan.
  List<Reference>? replaces;

  /// [partOf]
  /// A larger care plan of which this particular care plan is a component or
  /// step.
  List<Reference>? partOf;

  /// [status]
  /// Indicates whether the plan is currently being acted upon, represents
  /// future intentions or is now a historical record.
  RequestStatus status;

  /// [intent]
  /// Indicates the level of authority/intentionality associated with the
  /// care plan and where the care plan fits into the workflow chain.
  CarePlanIntent intent;

  /// [category]
  /// Identifies what "kind" of plan this is to support differentiation
  /// between multiple co-existing plans; e.g. "Home health", "psychiatric",
  /// "asthma", "disease management", "wellness plan", etc.
  List<CodeableConcept>? category;

  /// [title]
  /// Human-friendly name for the care plan.
  FhirString? title;

  /// [description]
  /// A description of the scope and nature of the plan.
  FhirString? description;

  /// [subject]
  /// Identifies the patient or group whose intended care is described by the
  /// plan.
  Reference subject;

  /// [encounter]
  /// The Encounter during which this CarePlan was created or to which the
  /// creation of this record is tightly associated.
  Reference? encounter;

  /// [period]
  /// Indicates when the plan did (or is intended to) come into effect and
  /// end.
  Period? period;

  /// [created]
  /// Represents when this particular CarePlan record was created in the
  /// system, which is often a system-generated date.
  FhirDateTime? created;

  /// [author]
  /// When populated, the author is responsible for the care plan. The care
  /// plan is attributed to the author.
  Reference? author;

  /// [contributor]
  /// Identifies the individual(s) or organization who provided the contents
  /// of the care plan.
  List<Reference>? contributor;

  /// [careTeam]
  /// Identifies all people and organizations who are expected to be involved
  /// in the care envisioned by this plan.
  List<Reference>? careTeam;

  /// [addresses]
  /// Identifies the conditions/problems/concerns/diagnoses/etc. whose
  /// management and/or mitigation are handled by this plan.
  List<Reference>? addresses;

  /// [supportingInfo]
  /// Identifies portions of the patient's record that specifically
  /// influenced the formation of the plan. These might include
  /// comorbidities, recent procedures, limitations, recent assessments, etc.
  List<Reference>? supportingInfo;

  /// [goal]
  /// Describes the intended objective(s) of carrying out the care plan.
  List<Reference>? goal;

  /// [activity]
  /// Identifies a planned action to occur as part of the plan. For example,
  /// a medication to be used, lab tests to perform, self-monitoring,
  /// education, etc.
  List<CarePlanActivity>? activity;

  /// [note]
  /// General notes about the care plan not covered elsewhere.
  List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson8 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson9 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (replaces != null && replaces!.isNotEmpty) {
      json['replaces'] = replaces!.map((e) => e.toJson()).toList();
    }

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    final fieldJson13 = status.toJson();
    json['status'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_status'] = fieldJson13['_value'];
    }

    final fieldJson14 = intent.toJson();
    json['intent'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_intent'] = fieldJson14['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (title != null) {
      final fieldJson16 = title!.toJson();
      json['title'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_title'] = fieldJson16['_value'];
      }
    }

    if (description != null) {
      final fieldJson17 = description!.toJson();
      json['description'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_description'] = fieldJson17['_value'];
      }
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (created != null) {
      final fieldJson21 = created!.toJson();
      json['created'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_created'] = fieldJson21['_value'];
      }
    }

    if (author != null) {
      json['author'] = author!.toJson();
    }

    if (contributor != null && contributor!.isNotEmpty) {
      json['contributor'] = contributor!.map((e) => e.toJson()).toList();
    }

    if (careTeam != null && careTeam!.isNotEmpty) {
      json['careTeam'] = careTeam!.map((e) => e.toJson()).toList();
    }

    if (addresses != null && addresses!.isNotEmpty) {
      json['addresses'] = addresses!.map((e) => e.toJson()).toList();
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] = supportingInfo!.map((e) => e.toJson()).toList();
    }

    if (goal != null && goal!.isNotEmpty) {
      json['goal'] = goal!.map((e) => e.toJson()).toList();
    }

    if (activity != null && activity!.isNotEmpty) {
      json['activity'] = activity!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
@Entity()
class CarePlanActivity extends BackboneElement {
  /// Primary constructor for
  /// [CarePlanActivity]

  CarePlanActivity({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
  factory CarePlanActivity.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlanActivity(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outcomeCodeableConcept: json['outcomeCodeableConcept'] != null
          ? (json['outcomeCodeableConcept'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outcomeReference: json['outcomeReference'] != null
          ? (json['outcomeReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      progress: json['progress'] != null
          ? (json['progress'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
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

  /// Deserialize [CarePlanActivity]
  /// from a [String] or [YamlMap] object
  factory CarePlanActivity.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? CarePlanActivity.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? CarePlanActivity.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'CarePlanActivity '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [CarePlanActivity]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'CarePlanActivity';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [outcomeCodeableConcept]
  /// Identifies the outcome at the point when the status of the activity is
  /// assessed. For example, the outcome of an education activity could be
  /// patient understands (or not).
  List<CodeableConcept>? outcomeCodeableConcept;

  /// [outcomeReference]
  /// Details of the outcome or action resulting from the activity. The
  /// reference to an "event" resource, such as Procedure or Encounter or
  /// Observation, is the result/outcome of the activity itself. The activity
  /// can be conveyed using CarePlan.activity.detail OR using the
  /// CarePlan.activity.reference (a reference to a “request” resource).
  List<Reference>? outcomeReference;

  /// [progress]
  /// Notes about the adherence/status/progress of the activity.
  List<Annotation>? progress;

  /// [reference]
  /// The details of the proposed activity represented in a specific
  /// resource.
  Reference? reference;

  /// [detail]
  /// A simple summary of a planned activity suitable for a general care plan
  /// system (e.g. form driven) that doesn't know about specific resources
  /// such as procedure etc.
  CarePlanDetail? detail;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (outcomeCodeableConcept != null && outcomeCodeableConcept!.isNotEmpty) {
      json['outcomeCodeableConcept'] =
          outcomeCodeableConcept!.map((e) => e.toJson()).toList();
    }

    if (outcomeReference != null && outcomeReference!.isNotEmpty) {
      json['outcomeReference'] =
          outcomeReference!.map((e) => e.toJson()).toList();
    }

    if (progress != null && progress!.isNotEmpty) {
      json['progress'] = progress!.map((e) => e.toJson()).toList();
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
@Entity()
class CarePlanDetail extends BackboneElement {
  /// Primary constructor for
  /// [CarePlanDetail]

  CarePlanDetail({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CarePlanDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return CarePlanDetail(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      kind: (json['kind'] != null || json['_kind'] != null)
          ? CarePlanActivityKind.fromJson({
              'value': json['kind'],
              '_value': json['_kind'],
            })
          : null,
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
        json['instantiatesCanonical'] as List<dynamic>?,
        json['_instantiatesCanonical'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      instantiatesUri: parsePrimitiveList<FhirUri>(
        json['instantiatesUri'] as List<dynamic>?,
        json['_instantiatesUri'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      goal: json['goal'] != null
          ? (json['goal'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: CarePlanActivityStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      doNotPerform:
          (json['doNotPerform'] != null || json['_doNotPerform'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['doNotPerform'],
                  '_value': json['_doNotPerform'],
                })
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
      scheduledString:
          (json['scheduledString'] != null || json['_scheduledString'] != null)
              ? FhirString.fromJson({
                  'value': json['scheduledString'],
                  '_value': json['_scheduledString'],
                })
              : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
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
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
    );
  }

  /// Deserialize [CarePlanDetail]
  /// from a [String] or [YamlMap] object
  factory CarePlanDetail.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? CarePlanDetail.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? CarePlanDetail.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'CarePlanDetail '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [CarePlanDetail]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'CarePlanDetail';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [kind]
  /// A description of the kind of resource the in-line definition of a care
  /// plan activity is representing. The CarePlan.activity.detail is an
  /// in-line definition when a resource is not referenced using
  /// CarePlan.activity.reference. For example, a MedicationRequest, a
  /// ServiceRequest, or a CommunicationRequest.
  CarePlanActivityKind? kind;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire
  /// or other definition that is adhered to in whole or in part by this
  /// CarePlan activity.
  List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// questionnaire or other definition that is adhered to in whole or in
  /// part by this CarePlan activity.
  List<FhirUri>? instantiatesUri;

  /// [code]
  /// Detailed description of the type of planned activity; e.g. what lab
  /// test, what procedure, what kind of encounter.
  CodeableConcept? code;

  /// [reasonCode]
  /// Provides the rationale that drove the inclusion of this particular
  /// activity as part of the plan or the reason why the activity was
  /// prohibited.
  List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource, such as the health condition(s), whose
  /// existence justifies this request and drove the inclusion of this
  /// particular activity as part of the plan.
  List<Reference>? reasonReference;

  /// [goal]
  /// Internal reference that identifies the goals that this activity is
  /// intended to contribute towards meeting.
  List<Reference>? goal;

  /// [status]
  /// Identifies what progress is being made for the specific activity.
  CarePlanActivityStatus status;

  /// [statusReason]
  /// Provides reason why the activity isn't yet started, is on hold, was
  /// cancelled, etc.
  CodeableConcept? statusReason;

  /// [doNotPerform]
  /// If true, indicates that the described activity is one that must NOT be
  /// engaged in when following the plan. If false, or missing, indicates
  /// that the described activity is one that should be engaged in when
  /// following the plan.
  FhirBoolean? doNotPerform;

  /// [scheduledTiming]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  Timing? scheduledTiming;

  /// [scheduledPeriod]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  Period? scheduledPeriod;

  /// [scheduledString]
  /// The period, timing or frequency upon which the described activity is to
  /// occur.
  FhirString? scheduledString;

  /// [location]
  /// Identifies the facility where the activity will occur; e.g. home,
  /// hospital, specific clinic, etc.
  Reference? location;

  /// [performer]
  /// Identifies who's expected to be involved in the activity.
  List<Reference>? performer;

  /// [productCodeableConcept]
  /// Identifies the food, drug or other product to be consumed or supplied
  /// in the activity.
  CodeableConcept? productCodeableConcept;

  /// [productReference]
  /// Identifies the food, drug or other product to be consumed or supplied
  /// in the activity.
  Reference? productReference;

  /// [dailyAmount]
  /// Identifies the quantity expected to be consumed in a given day.
  Quantity? dailyAmount;

  /// [quantity]
  /// Identifies the quantity expected to be supplied, administered or
  /// consumed by the subject.
  Quantity? quantity;

  /// [description]
  /// This provides a textual description of constraints on the intended
  /// activity occurrence, including relation to other activities. It may
  /// also include objectives, pre-conditions and end-conditions. Finally, it
  /// may convey specifics about the activity such as body site, method,
  /// route, etc.
  FhirString? description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (kind != null) {
      final fieldJson2 = kind!.toJson();
      json['kind'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_kind'] = fieldJson2['_value'];
      }
    }

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson3 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson4 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (goal != null && goal!.isNotEmpty) {
      json['goal'] = goal!.map((e) => e.toJson()).toList();
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }

    if (doNotPerform != null) {
      final fieldJson11 = doNotPerform!.toJson();
      json['doNotPerform'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_doNotPerform'] = fieldJson11['_value'];
      }
    }

    if (scheduledTiming != null) {
      json['scheduledTiming'] = scheduledTiming!.toJson();
    }

    if (scheduledPeriod != null) {
      json['scheduledPeriod'] = scheduledPeriod!.toJson();
    }

    if (scheduledString != null) {
      final fieldJson14 = scheduledString!.toJson();
      json['scheduledString'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_scheduledString'] = fieldJson14['_value'];
      }
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((e) => e.toJson()).toList();
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

    if (description != null) {
      final fieldJson21 = description!.toJson();
      json['description'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_description'] = fieldJson21['_value'];
      }
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
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    CodeableConcept? code,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? goal,
    CarePlanActivityStatus? status,
    CodeableConcept? statusReason,
    FhirBoolean? doNotPerform,
    Timing? scheduledTiming,
    Period? scheduledPeriod,
    FhirString? scheduledString,
    Reference? location,
    List<Reference>? performer,
    CodeableConcept? productCodeableConcept,
    Reference? productReference,
    Quantity? dailyAmount,
    Quantity? quantity,
    FhirString? description,
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
      scheduledTiming: scheduledTiming ?? this.scheduledTiming,
      scheduledPeriod: scheduledPeriod ?? this.scheduledPeriod,
      scheduledString: scheduledString ?? this.scheduledString,
      location: location ?? this.location,
      performer: performer ?? this.performer,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      productReference: productReference ?? this.productReference,
      dailyAmount: dailyAmount ?? this.dailyAmount,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
