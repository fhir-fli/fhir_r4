import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Condition]
/// A clinical condition, problem, diagnosis, or other event, situation,
/// issue, or clinical concept that has risen to a level of concern.
class Condition extends DomainResource {
  /// Primary constructor for [Condition]

  Condition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.abatementDateTime,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Condition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Condition.fromJson(
    Map<String, dynamic> json,
  ) {
    return Condition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      clinicalStatus: json['clinicalStatus'] != null
          ? CodeableConcept.fromJson(
              json['clinicalStatus'] as Map<String, dynamic>,
            )
          : null,
      verificationStatus: json['verificationStatus'] != null
          ? CodeableConcept.fromJson(
              json['verificationStatus'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      severity: json['severity'] != null
          ? CodeableConcept.fromJson(
              json['severity'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      bodySite: json['bodySite'] != null
          ? (json['bodySite'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      onsetDateTime: json['onsetDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['onsetDateTime'],
              '_value': json['_onsetDateTime'],
            })
          : null,
      onsetAge: json['onsetAge'] != null
          ? Age.fromJson(
              json['onsetAge'] as Map<String, dynamic>,
            )
          : null,
      onsetPeriod: json['onsetPeriod'] != null
          ? Period.fromJson(
              json['onsetPeriod'] as Map<String, dynamic>,
            )
          : null,
      onsetRange: json['onsetRange'] != null
          ? Range.fromJson(
              json['onsetRange'] as Map<String, dynamic>,
            )
          : null,
      onsetString: json['onsetString'] != null
          ? FhirString.fromJson({
              'value': json['onsetString'],
              '_value': json['_onsetString'],
            })
          : null,
      abatementDateTime: json['abatementDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['abatementDateTime'],
              '_value': json['_abatementDateTime'],
            })
          : null,
      abatementAge: json['abatementAge'] != null
          ? Age.fromJson(
              json['abatementAge'] as Map<String, dynamic>,
            )
          : null,
      abatementPeriod: json['abatementPeriod'] != null
          ? Period.fromJson(
              json['abatementPeriod'] as Map<String, dynamic>,
            )
          : null,
      abatementRange: json['abatementRange'] != null
          ? Range.fromJson(
              json['abatementRange'] as Map<String, dynamic>,
            )
          : null,
      abatementString: json['abatementString'] != null
          ? FhirString.fromJson({
              'value': json['abatementString'],
              '_value': json['_abatementString'],
            })
          : null,
      recordedDate: json['recordedDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['recordedDate'],
              '_value': json['_recordedDate'],
            })
          : null,
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              json['recorder'] as Map<String, dynamic>,
            )
          : null,
      asserter: json['asserter'] != null
          ? Reference.fromJson(
              json['asserter'] as Map<String, dynamic>,
            )
          : null,
      stage: json['stage'] != null
          ? (json['stage'] as List<dynamic>)
              .map<ConditionStage>(
                (v) => ConditionStage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      evidence: json['evidence'] != null
          ? (json['evidence'] as List<dynamic>)
              .map<ConditionEvidence>(
                (v) => ConditionEvidence.fromJson(
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

  /// Deserialize [Condition] from a [String]
  /// or [YamlMap] object
  factory Condition.fromYaml(dynamic yaml) => yaml is String
      ? Condition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Condition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Condition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Condition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Condition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Condition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Condition';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifiers assigned to this condition by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the condition.
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus]
  /// The verification status to support the clinical status of the
  /// condition.
  final CodeableConcept? verificationStatus;

  /// [category]
  /// A category assigned to the condition.
  final List<CodeableConcept>? category;

  /// [severity]
  /// A subjective assessment of the severity of the condition as evaluated
  /// by the clinician.
  final CodeableConcept? severity;

  /// [code]
  /// Identification of the condition, problem or diagnosis.
  final CodeableConcept? code;

  /// [bodySite]
  /// The anatomical location where this condition manifests itself.
  final List<CodeableConcept>? bodySite;

  /// [subject]
  /// Indicates the patient or group who the condition record is associated
  /// with.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this Condition was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [onsetDateTime]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  final FhirDateTime? onsetDateTime;

  /// [onsetAge]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  final Age? onsetAge;

  /// [onsetPeriod]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  final Period? onsetPeriod;

  /// [onsetRange]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  final Range? onsetRange;

  /// [onsetString]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  final FhirString? onsetString;

  /// [abatementDateTime]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  final FhirDateTime? abatementDateTime;

  /// [abatementAge]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  final Age? abatementAge;

  /// [abatementPeriod]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  final Period? abatementPeriod;

  /// [abatementRange]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  final Range? abatementRange;

  /// [abatementString]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  final FhirString? abatementString;

  /// [recordedDate]
  /// The recordedDate represents when this particular Condition record was
  /// created in the system, which is often a system-generated date.
  final FhirDateTime? recordedDate;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter]
  /// Individual who is making the condition statement.
  final Reference? asserter;

  /// [stage]
  /// Clinical stage or grade of a condition. May include formal severity
  /// assessments.
  final List<ConditionStage>? stage;

  /// [evidence]
  /// Supporting evidence / manifestations that are the basis of the
  /// Condition's verification status, such as evidence that confirmed or
  /// refuted the condition.
  final List<ConditionEvidence>? evidence;

  /// [note]
  /// Additional information about the Condition. This is a general
  /// notes/comments entry for description of the Condition, its diagnosis
  /// and prognosis.
  final List<Annotation>? note;
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
      json['language'] = language!.toJson();
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

    if (clinicalStatus != null) {
      json['clinicalStatus'] = clinicalStatus!.toJson();
    }

    if (verificationStatus != null) {
      json['verificationStatus'] = verificationStatus!.toJson();
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (severity != null) {
      json['severity'] = severity!.toJson();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (bodySite != null && bodySite!.isNotEmpty) {
      json['bodySite'] = bodySite!.map((e) => e.toJson()).toList();
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (onsetDateTime != null) {
      final fieldJson16 = onsetDateTime!.toJson();
      json['onsetDateTime'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_onsetDateTime'] = fieldJson16['_value'];
      }
    }

    if (onsetAge != null) {
      json['onsetAge'] = onsetAge!.toJson();
    }

    if (onsetPeriod != null) {
      json['onsetPeriod'] = onsetPeriod!.toJson();
    }

    if (onsetRange != null) {
      json['onsetRange'] = onsetRange!.toJson();
    }

    if (onsetString != null) {
      final fieldJson20 = onsetString!.toJson();
      json['onsetString'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_onsetString'] = fieldJson20['_value'];
      }
    }

    if (abatementDateTime != null) {
      final fieldJson21 = abatementDateTime!.toJson();
      json['abatementDateTime'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_abatementDateTime'] = fieldJson21['_value'];
      }
    }

    if (abatementAge != null) {
      json['abatementAge'] = abatementAge!.toJson();
    }

    if (abatementPeriod != null) {
      json['abatementPeriod'] = abatementPeriod!.toJson();
    }

    if (abatementRange != null) {
      json['abatementRange'] = abatementRange!.toJson();
    }

    if (abatementString != null) {
      final fieldJson25 = abatementString!.toJson();
      json['abatementString'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_abatementString'] = fieldJson25['_value'];
      }
    }

    if (recordedDate != null) {
      final fieldJson26 = recordedDate!.toJson();
      json['recordedDate'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_recordedDate'] = fieldJson26['_value'];
      }
    }

    if (recorder != null) {
      json['recorder'] = recorder!.toJson();
    }

    if (asserter != null) {
      json['asserter'] = asserter!.toJson();
    }

    if (stage != null && stage!.isNotEmpty) {
      json['stage'] = stage!.map((e) => e.toJson()).toList();
    }

    if (evidence != null && evidence!.isNotEmpty) {
      json['evidence'] = evidence!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  Condition clone() => throw UnimplementedError();
  @override
  Condition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    List<CodeableConcept>? category,
    CodeableConcept? severity,
    CodeableConcept? code,
    List<CodeableConcept>? bodySite,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? onsetDateTime,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    FhirString? onsetString,
    FhirDateTime? abatementDateTime,
    Age? abatementAge,
    Period? abatementPeriod,
    Range? abatementRange,
    FhirString? abatementString,
    FhirDateTime? recordedDate,
    Reference? recorder,
    Reference? asserter,
    List<ConditionStage>? stage,
    List<ConditionEvidence>? evidence,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Condition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      category: category ?? this.category,
      severity: severity ?? this.severity,
      code: code ?? this.code,
      bodySite: bodySite ?? this.bodySite,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      onsetDateTime: onsetDateTime ?? this.onsetDateTime,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      abatementDateTime: abatementDateTime ?? this.abatementDateTime,
      abatementAge: abatementAge ?? this.abatementAge,
      abatementPeriod: abatementPeriod ?? this.abatementPeriod,
      abatementRange: abatementRange ?? this.abatementRange,
      abatementString: abatementString ?? this.abatementString,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      stage: stage ?? this.stage,
      evidence: evidence ?? this.evidence,
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

/// [ConditionStage]
/// Clinical stage or grade of a condition. May include formal severity
/// assessments.
class ConditionStage extends BackboneElement {
  /// Primary constructor for [ConditionStage]

  ConditionStage({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionStage.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConditionStage(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      summary: json['summary'] != null
          ? CodeableConcept.fromJson(
              json['summary'] as Map<String, dynamic>,
            )
          : null,
      assessment: json['assessment'] != null
          ? (json['assessment'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ConditionStage] from a [String]
  /// or [YamlMap] object
  factory ConditionStage.fromYaml(dynamic yaml) => yaml is String
      ? ConditionStage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConditionStage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ConditionStage cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConditionStage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionStage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConditionStage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConditionStage';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [summary]
  /// A simple summary of the stage such as "Stage 3". The determination of
  /// the stage is disease-specific.
  final CodeableConcept? summary;

  /// [assessment]
  /// Reference to a formal record of the evidence on which the staging
  /// assessment is based.
  final List<Reference>? assessment;

  /// [type]
  /// The kind of staging, such as pathological or clinical staging.
  final CodeableConcept? type;
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

    if (summary != null) {
      json['summary'] = summary!.toJson();
    }

    if (assessment != null && assessment!.isNotEmpty) {
      json['assessment'] = assessment!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    return json;
  }

  @override
  ConditionStage clone() => throw UnimplementedError();
  @override
  ConditionStage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? summary,
    List<Reference>? assessment,
    CodeableConcept? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConditionStage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      summary: summary ?? this.summary,
      assessment: assessment ?? this.assessment,
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConditionEvidence]
/// Supporting evidence / manifestations that are the basis of the
/// Condition's verification status, such as evidence that confirmed or
/// refuted the condition.
class ConditionEvidence extends BackboneElement {
  /// Primary constructor for [ConditionEvidence]

  ConditionEvidence({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionEvidence.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConditionEvidence(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConditionEvidence] from a [String]
  /// or [YamlMap] object
  factory ConditionEvidence.fromYaml(dynamic yaml) => yaml is String
      ? ConditionEvidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConditionEvidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ConditionEvidence cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConditionEvidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionEvidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConditionEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConditionEvidence';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// A manifestation or symptom that led to the recording of this condition.
  final List<CodeableConcept>? code;

  /// [detail]
  /// Links to other relevant information, including pathology reports.
  final List<Reference>? detail;
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

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConditionEvidence clone() => throw UnimplementedError();
  @override
  ConditionEvidence copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConditionEvidence(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
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
