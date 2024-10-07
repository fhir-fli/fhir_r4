import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Condition] /// A clinical condition, problem, diagnosis, or other event, situation, issue,
/// or clinical concept that has risen to a level of concern.
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
  }) : super(resourceType: R4ResourceType.Condition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this condition by the performer or other
  /// systems which remain constant as the resource is updated and propagates
  /// from server to server.
  final List<Identifier>? identifier;

  /// [clinicalStatus] /// The clinical status of the condition.
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus] /// The verification status to support the clinical status of the condition.
  final CodeableConcept? verificationStatus;

  /// [category] /// A category assigned to the condition.
  final List<CodeableConcept>? category;

  /// [severity] /// A subjective assessment of the severity of the condition as evaluated by
  /// the clinician.
  final CodeableConcept? severity;

  /// [code] /// Identification of the condition, problem or diagnosis.
  final CodeableConcept? code;

  /// [bodySite] /// The anatomical location where this condition manifests itself.
  final List<CodeableConcept>? bodySite;

  /// [subject] /// Indicates the patient or group who the condition record is associated with.
  final Reference subject;

  /// [encounter] /// The Encounter during which this Condition was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [onsetDateTime] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  final FhirDateTime? onsetDateTime;
  final Element? onsetDateTimeElement;

  /// [onsetAge] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  final Age? onsetAge;

  /// [onsetPeriod] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  final Period? onsetPeriod;

  /// [onsetRange] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  final Range? onsetRange;

  /// [onsetString] /// Estimated or actual date or date-time the condition began, in the opinion
  /// of the clinician.
  final FhirString? onsetString;
  final Element? onsetStringElement;

  /// [abatementDateTime] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  final FhirDateTime? abatementDateTime;
  final Element? abatementDateTimeElement;

  /// [abatementAge] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  final Age? abatementAge;

  /// [abatementPeriod] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  final Period? abatementPeriod;

  /// [abatementRange] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  final Range? abatementRange;

  /// [abatementString] /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions are
  /// never really resolved, but they can abate.
  final FhirString? abatementString;
  final Element? abatementStringElement;

  /// [recordedDate] /// The recordedDate represents when this particular Condition record was
  /// created in the system, which is often a system-generated date.
  final FhirDateTime? recordedDate;
  final Element? recordedDateElement;

  /// [recorder] /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter] /// Individual who is making the condition statement.
  final Reference? asserter;

  /// [stage] /// Clinical stage or grade of a condition. May include formal severity
  /// assessments.
  final List<ConditionStage>? stage;

  /// [evidence] /// Supporting evidence / manifestations that are the basis of the Condition's
  /// verification status, such as evidence that confirmed or refuted the
  /// condition.
  final List<ConditionEvidence>? evidence;

  /// [note] /// Additional information about the Condition. This is a general
  /// notes/comments entry for description of the Condition, its diagnosis and
  /// prognosis.
  final List<Annotation>? note;
  @override
  Condition clone() => throw UnimplementedError();
  Condition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConditionStage] /// Clinical stage or grade of a condition. May include formal severity
/// assessments.
class ConditionStage extends BackboneElement {
  ConditionStage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [summary] /// A simple summary of the stage such as "Stage 3". The determination of the
  /// stage is disease-specific.
  final CodeableConcept? summary;

  /// [assessment] /// Reference to a formal record of the evidence on which the staging
  /// assessment is based.
  final List<Reference>? assessment;

  /// [type] /// The kind of staging, such as pathological or clinical staging.
  final CodeableConcept? type;
  @override
  ConditionStage clone() => throw UnimplementedError();
  ConditionStage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? summary,
    List<Reference>? assessment,
    CodeableConcept? type,
  }) {
    return ConditionStage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      summary: summary ?? this.summary,
      assessment: assessment ?? this.assessment,
      type: type ?? this.type,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConditionEvidence] /// Supporting evidence / manifestations that are the basis of the Condition's
/// verification status, such as evidence that confirmed or refuted the
/// condition.
class ConditionEvidence extends BackboneElement {
  ConditionEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A manifestation or symptom that led to the recording of this condition.
  final List<CodeableConcept>? code;

  /// [detail] /// Links to other relevant information, including pathology reports.
  final List<Reference>? detail;
  @override
  ConditionEvidence clone() => throw UnimplementedError();
  ConditionEvidence copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
  }) {
    return ConditionEvidence(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      detail: detail ?? this.detail,
    );
  }
}
