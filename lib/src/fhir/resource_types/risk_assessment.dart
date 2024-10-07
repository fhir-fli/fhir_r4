import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [RiskAssessment] /// An assessment of the likely outcome(s) for a patient or other subject as
/// well as the likelihood of each outcome.
class RiskAssessment extends DomainResource {
  RiskAssessment({
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
    this.basedOn,
    this.parent,
    required this.status,
    this.statusElement,
    this.method,
    this.code,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.mitigationElement,
    this.note,
  }) : super(resourceType: R4ResourceType.RiskAssessment);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier assigned to the risk assessment.
  final List<Identifier>? identifier;

  /// [basedOn] /// A reference to the request that is fulfilled by this risk assessment.
  final Reference? basedOn;

  /// [parent] /// A reference to a resource that this risk assessment is part of, such as a
  /// Procedure.
  final Reference? parent;

  /// [status] /// The status of the RiskAssessment, using the same statuses as an
  /// Observation.
  final FhirCode status;
  final Element? statusElement;

  /// [method] /// The algorithm, process or mechanism used to evaluate the risk.
  final CodeableConcept? method;

  /// [code] /// The type of the risk assessment performed.
  final CodeableConcept? code;

  /// [subject] /// The patient or group the risk assessment applies to.
  final Reference subject;

  /// [encounter] /// The encounter where the assessment was performed.
  final Reference? encounter;

  /// [occurrenceDateTime] /// The date (and possibly time) the risk assessment was performed.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The date (and possibly time) the risk assessment was performed.
  final Period? occurrencePeriod;

  /// [condition] /// For assessments or prognosis specific to a particular condition, indicates
  /// the condition being assessed.
  final Reference? condition;

  /// [performer] /// The provider or software application that performed the assessment.
  final Reference? performer;

  /// [reasonCode] /// The reason the risk assessment was performed.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Resources supporting the reason the risk assessment was performed.
  final List<Reference>? reasonReference;

  /// [basis] /// Indicates the source data considered as part of the assessment (for
  /// example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  final List<Reference>? basis;

  /// [prediction] /// Describes the expected outcome for the subject.
  final List<RiskAssessmentPrediction>? prediction;

  /// [mitigation] /// A description of the steps that might be taken to reduce the identified
  /// risk(s).
  final FhirString? mitigation;
  final Element? mitigationElement;

  /// [note] /// Additional comments about the risk assessment.
  final List<Annotation>? note;
  @override
  RiskAssessment clone() => throw UnimplementedError();
  RiskAssessment copy({
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
    Reference? basedOn,
    Reference? parent,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? method,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Reference? condition,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? basis,
    List<RiskAssessmentPrediction>? prediction,
    FhirString? mitigation,
    Element? mitigationElement,
    List<Annotation>? note,
  }) {
    return RiskAssessment(
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
      basedOn: basedOn ?? this.basedOn,
      parent: parent ?? this.parent,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      method: method ?? this.method,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      condition: condition ?? this.condition,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      basis: basis ?? this.basis,
      prediction: prediction ?? this.prediction,
      mitigation: mitigation ?? this.mitigation,
      mitigationElement: mitigationElement ?? this.mitigationElement,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [RiskAssessmentPrediction] /// Describes the expected outcome for the subject.
class RiskAssessmentPrediction extends BackboneElement {
  RiskAssessmentPrediction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.probabilityDecimalElement,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.relativeRiskElement,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
    this.rationaleElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [outcome] /// One of the potential outcomes for the patient (e.g. remission, death, a
  /// particular condition).
  final CodeableConcept? outcome;

  /// [probabilityDecimal] /// Indicates how likely the outcome is (in the specified timeframe).
  final FhirDecimal? probabilityDecimal;
  final Element? probabilityDecimalElement;

  /// [probabilityRange] /// Indicates how likely the outcome is (in the specified timeframe).
  final Range? probabilityRange;

  /// [qualitativeRisk] /// Indicates how likely the outcome is (in the specified timeframe), expressed
  /// as a qualitative value (e.g. low, medium, or high).
  final CodeableConcept? qualitativeRisk;

  /// [relativeRisk] /// Indicates the risk for this particular subject (with their specific
  /// characteristics) divided by the risk of the population in general. (Numbers
  /// greater than 1 = higher risk than the population, numbers less than 1 =
  /// lower risk.).
  final FhirDecimal? relativeRisk;
  final Element? relativeRiskElement;

  /// [whenPeriod] /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  final Period? whenPeriod;

  /// [whenRange] /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  final Range? whenRange;

  /// [rationale] /// Additional information explaining the basis for the prediction.
  final FhirString? rationale;
  final Element? rationaleElement;
  @override
  RiskAssessmentPrediction clone() => throw UnimplementedError();
  RiskAssessmentPrediction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? outcome,
    FhirDecimal? probabilityDecimal,
    Element? probabilityDecimalElement,
    Range? probabilityRange,
    CodeableConcept? qualitativeRisk,
    FhirDecimal? relativeRisk,
    Element? relativeRiskElement,
    Period? whenPeriod,
    Range? whenRange,
    FhirString? rationale,
    Element? rationaleElement,
  }) {
    return RiskAssessmentPrediction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      probabilityDecimal: probabilityDecimal ?? this.probabilityDecimal,
      probabilityDecimalElement:
          probabilityDecimalElement ?? this.probabilityDecimalElement,
      probabilityRange: probabilityRange ?? this.probabilityRange,
      qualitativeRisk: qualitativeRisk ?? this.qualitativeRisk,
      relativeRisk: relativeRisk ?? this.relativeRisk,
      relativeRiskElement: relativeRiskElement ?? this.relativeRiskElement,
      whenPeriod: whenPeriod ?? this.whenPeriod,
      whenRange: whenRange ?? this.whenRange,
      rationale: rationale ?? this.rationale,
      rationaleElement: rationaleElement ?? this.rationaleElement,
    );
  }
}
