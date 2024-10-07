import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final List<Identifier>? identifier;
  final Reference? basedOn;
  final Reference? parent;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? method;
  final CodeableConcept? code;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Period? occurrencePeriod;
  final Reference? condition;
  final Reference? performer;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Reference>? basis;
  final List<RiskAssessmentPrediction>? prediction;
  final FhirString? mitigation;
  final Element? mitigationElement;
  final List<Annotation>? note;
  @override
  RiskAssessment clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableConcept? outcome;
  final FhirDecimal? probabilityDecimal;
  final Element? probabilityDecimalElement;
  final Range? probabilityRange;
  final CodeableConcept? qualitativeRisk;
  final FhirDecimal? relativeRisk;
  final Element? relativeRiskElement;
  final Period? whenPeriod;
  final Range? whenRange;
  final FhirString? rationale;
  final Element? rationaleElement;
  @override
  RiskAssessmentPrediction clone() => throw UnimplementedError();
}
