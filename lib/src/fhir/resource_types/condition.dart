import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'condition.g.dart';

/// [Condition] /// A clinical condition, problem, diagnosis, or other event, situation, issue,
/// or clinical concept that has risen to a level of concern.
@JsonSerializable()
class Condition extends DomainResource {
  Condition({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetDateTime,
    this.onsetDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.onsetStringElement,
    this.abatementDateTime,
    this.abatementDateTimeElement,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.abatementStringElement,
    this.recordedDate,
    this.recordedDateElement,
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
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Condition, fhirType: 'Condition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this condition by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [clinicalStatus] /// The clinical status of the condition.
  @JsonKey(name: 'clinicalStatus')
  final ConditionClinicalStatusCodes? clinicalStatus;

  /// [verificationStatus] /// The verification status to support the clinical status of the condition.
  @JsonKey(name: 'verificationStatus')
  final ConditionVerificationStatus? verificationStatus;

  /// [category] /// A category assigned to the condition.
  @JsonKey(name: 'category')
  final List<ConditionCategoryCodes>? category;

  /// [severity] /// A subjective assessment of the severity of the condition as evaluated by
  /// the clinician.
  @JsonKey(name: 'severity')
  final ConditionDiagnosisSeverity? severity;

  /// [code] /// Identification of the condition, problem or diagnosis.
  @JsonKey(name: 'code')
  final ConditionProblemDiagnosisCodes? code;

  /// [bodySite] /// The anatomical location where this condition manifests itself.
  @JsonKey(name: 'bodySite')
  final List<CodeableConcept>? bodySite;

  /// [subject] /// Indicates the patient or group who the condition record is associated with.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The Encounter during which this Condition was created or to which the
  /// creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [onsetDateTime] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  @JsonKey(name: 'onsetDateTime')
  final FhirDateTime? onsetDateTime;
  @JsonKey(name: '_onsetDateTime')
  final Element? onsetDateTimeElement;

  /// [onsetAge] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  @JsonKey(name: 'onsetAge')
  final Age? onsetAge;

  /// [onsetPeriod] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  @JsonKey(name: 'onsetPeriod')
  final Period? onsetPeriod;

  /// [onsetRange] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  @JsonKey(name: 'onsetRange')
  final Range? onsetRange;

  /// [onsetString] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  @JsonKey(name: 'onsetString')
  final FhirString? onsetString;
  @JsonKey(name: '_onsetString')
  final Element? onsetStringElement;

  /// [abatementDateTime] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  @JsonKey(name: 'abatementDateTime')
  final FhirDateTime? abatementDateTime;
  @JsonKey(name: '_abatementDateTime')
  final Element? abatementDateTimeElement;

  /// [abatementAge] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  @JsonKey(name: 'abatementAge')
  final Age? abatementAge;

  /// [abatementPeriod] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  @JsonKey(name: 'abatementPeriod')
  final Period? abatementPeriod;

  /// [abatementRange] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  @JsonKey(name: 'abatementRange')
  final Range? abatementRange;

  /// [abatementString] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  @JsonKey(name: 'abatementString')
  final FhirString? abatementString;
  @JsonKey(name: '_abatementString')
  final Element? abatementStringElement;

  /// [recordedDate] /// The recordedDate represents when this particular Condition record was
  /// created in the system, which is often a system-generated date.
  @JsonKey(name: 'recordedDate')
  final FhirDateTime? recordedDate;
  @JsonKey(name: '_recordedDate')
  final Element? recordedDateElement;

  /// [recorder] /// Individual who recorded the record and takes responsibility for its
  /// content.
  @JsonKey(name: 'recorder')
  final Reference? recorder;

  /// [asserter] /// Individual who is making the condition statement.
  @JsonKey(name: 'asserter')
  final Reference? asserter;

  /// [stage] /// Clinical stage or grade of a condition. May include formal severity
  /// assessments.
  @JsonKey(name: 'stage')
  final List<ConditionStage>? stage;

  /// [evidence] /// Supporting evidence / manifestations that are the basis of the Condition's
  /// verification status, such as evidence that confirmed or refuted the
  /// condition.
  @JsonKey(name: 'evidence')
  final List<ConditionEvidence>? evidence;

  /// [note] /// Additional information about the Condition. This is a general
  /// notes/comments entry for description of the Condition, its diagnosis and
  /// prognosis.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConditionToJson(this);

  @override
  Condition clone() => throw UnimplementedError();
  @override
  Condition copyWith({
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
    ConditionClinicalStatusCodes? clinicalStatus,
    ConditionVerificationStatus? verificationStatus,
    List<ConditionCategoryCodes>? category,
    ConditionDiagnosisSeverity? severity,
    ConditionProblemDiagnosisCodes? code,
    List<CodeableConcept>? bodySite,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? onsetDateTime,
    Element? onsetDateTimeElement,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    FhirString? onsetString,
    Element? onsetStringElement,
    FhirDateTime? abatementDateTime,
    Element? abatementDateTimeElement,
    Age? abatementAge,
    Period? abatementPeriod,
    Range? abatementRange,
    FhirString? abatementString,
    Element? abatementStringElement,
    FhirDateTime? recordedDate,
    Element? recordedDateElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
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
      onsetDateTimeElement: onsetDateTimeElement ?? this.onsetDateTimeElement,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      onsetStringElement: onsetStringElement ?? this.onsetStringElement,
      abatementDateTime: abatementDateTime ?? this.abatementDateTime,
      abatementDateTimeElement:
          abatementDateTimeElement ?? this.abatementDateTimeElement,
      abatementAge: abatementAge ?? this.abatementAge,
      abatementPeriod: abatementPeriod ?? this.abatementPeriod,
      abatementRange: abatementRange ?? this.abatementRange,
      abatementString: abatementString ?? this.abatementString,
      abatementStringElement:
          abatementStringElement ?? this.abatementStringElement,
      recordedDate: recordedDate ?? this.recordedDate,
      recordedDateElement: recordedDateElement ?? this.recordedDateElement,
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

  factory Condition.fromYaml(dynamic yaml) => yaml is String
      ? Condition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Condition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Condition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Condition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Condition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConditionStage] /// Clinical stage or grade of a condition. May include formal severity
/// assessments.
@JsonSerializable()
class ConditionStage extends BackboneElement {
  ConditionStage({
    super.id,
    super.extension_,
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
  }) : super(fhirType: 'ConditionStage');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [summary] /// A simple summary of the stage such as "Stage 3". The determination of the
  /// stage is disease-specific.
  @JsonKey(name: 'summary')
  final CodeableConcept? summary;

  /// [assessment] /// Reference to a formal record of the evidence on which the staging
  /// assessment is based.
  @JsonKey(name: 'assessment')
  final List<Reference>? assessment;

  /// [type] /// The kind of staging, such as pathological or clinical staging.
  @JsonKey(name: 'type')
  final ConditionStageType? type;
  factory ConditionStage.fromJson(Map<String, dynamic> json) =>
      _$ConditionStageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConditionStageToJson(this);

  @override
  ConditionStage clone() => throw UnimplementedError();
  @override
  ConditionStage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? summary,
    List<Reference>? assessment,
    ConditionStageType? type,
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

  factory ConditionStage.fromYaml(dynamic yaml) => yaml is String
      ? ConditionStage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConditionStage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConditionStage cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConditionStage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConditionStage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConditionEvidence] /// Supporting evidence / manifestations that are the basis of the Condition's
/// verification status, such as evidence that confirmed or refuted the
/// condition.
@JsonSerializable()
class ConditionEvidence extends BackboneElement {
  ConditionEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ConditionEvidence');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A manifestation or symptom that led to the recording of this condition.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [detail] /// Links to other relevant information, including pathology reports.
  @JsonKey(name: 'detail')
  final List<Reference>? detail;
  factory ConditionEvidence.fromJson(Map<String, dynamic> json) =>
      _$ConditionEvidenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConditionEvidenceToJson(this);

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

  factory ConditionEvidence.fromYaml(dynamic yaml) => yaml is String
      ? ConditionEvidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConditionEvidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConditionEvidence cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConditionEvidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConditionEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
